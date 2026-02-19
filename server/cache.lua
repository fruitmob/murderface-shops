-- Server-side shop cache system
-- Replaces GlobalState abuse with MySQL-backed cache

local ShopCache = {}
local CACHE_TTL = 300000 -- 5 minutes cache TTL

---@class CachedShop
---@field shop string
---@field owner string
---@field money table
---@field items table
---@field employee table
---@field cashier table
---@field customitems table
---@field job string
---@field lastUpdated number

-- In-memory cache with TTL
local cache = {}

---Get shop data from cache or MySQL
---@param shopLabel string
---@return CachedShop?
local function GetShopData(shopLabel)
    local now = GetGameTimer()

    -- Check cache first
    if cache[shopLabel] and (now - cache[shopLabel].lastUpdated) < CACHE_TTL then
        return cache[shopLabel]
    end

    -- Cache miss or expired - query MySQL
    local result = MySQL.query.await('SELECT * FROM `renzu_stores` WHERE `shop` = ?', {shopLabel})

    if not result or #result == 0 then
        return nil
    end

    local shopData = result[1]

    -- Parse JSON fields
    local parsed = {
        shop = shopData.shop,
        owner = shopData.owner,
        money = json.decode(shopData.money or '{}'),
        items = json.decode(shopData.items or '{}'),
        employee = json.decode(shopData.employee or '{}'),
        cashier = json.decode(shopData.cashier or '{}'),
        customitems = json.decode(shopData.customitems or '{}'),
        job = shopData.job,
        lastUpdated = now
    }

    -- Update cache
    cache[shopLabel] = parsed

    return parsed
end

-- SECURITY: Whitelist of allowed column names to prevent SQL injection
local ALLOWED_FIELDS = {
    owner = true, money = true, items = true,
    employee = true, cashier = true, customitems = true, job = true,
}

---Update shop data in cache and MySQL
---@param shopLabel string
---@param field string Column name (must be in ALLOWED_FIELDS whitelist)
---@param value any
---@return boolean success
local function UpdateShopData(shopLabel, field, value)
    if not ALLOWED_FIELDS[field] then
        print(('[Renzu Shops Security] Blocked SQL update with invalid field: %s (shop: %s)'):format(field, shopLabel))
        return false
    end

    -- Update MySQL first
    local encodedValue = type(value) == 'table' and json.encode(value) or value

    local success = MySQL.query.await(
        'UPDATE `renzu_stores` SET `'..field..'` = ? WHERE `shop` = ?',
        {encodedValue, shopLabel}
    )

    if not success then
        return false
    end

    -- Invalidate cache to force refresh on next read
    cache[shopLabel] = nil

    -- Update minimal GlobalState (for client checks)
    local shopData = GetShopData(shopLabel)
    if shopData then
        GlobalState['Stores_'..shopLabel] = {
            owner = shopData.owner,
            isOwned = true,
            job = shopData.job
        }
    end

    return true
end

---Get all shops (used for initial load)
---@return table<string, CachedShop>
local function GetAllShops()
    local result = MySQL.query.await('SELECT * FROM `renzu_stores`', {})

    if not result then
        return {}
    end

    local shops = {}
    local now = GetGameTimer()

    for _, row in ipairs(result) do
        local parsed = {
            shop = row.shop,
            owner = row.owner,
            money = json.decode(row.money or '{}'),
            items = json.decode(row.items or '{}'),
            employee = json.decode(row.employee or '{}'),
            cashier = json.decode(row.cashier or '{}'),
            customitems = json.decode(row.customitems or '{}'),
            job = row.job,
            lastUpdated = now
        }

        shops[row.shop] = parsed
        cache[row.shop] = parsed

        -- Set minimal GlobalState for client
        GlobalState['Stores_'..row.shop] = {
            owner = parsed.owner,
            isOwned = true,
            job = parsed.job
        }
    end

    return shops
end

---Invalidate cache for a specific shop
---@param shopLabel string
local function InvalidateCache(shopLabel)
    cache[shopLabel] = nil
end

---Clear entire cache (use sparingly)
local function ClearCache()
    cache = {}
end

---Update multiple fields at once (batch operation)
---@param shopLabel string
---@param fields table<string, any> Key-value pairs to update
---@return boolean success
local function UpdateShopFields(shopLabel, fields)
    for field, value in pairs(fields) do
        local success = UpdateShopData(shopLabel, field, value)
        if not success then
            print(string.format('[ShopCache] Failed to update %s.%s', shopLabel, field))
            return false
        end
    end
    return true
end

---Modify shop data using a callback function (transactional)
---@param shopLabel string
---@param callback function Function that modifies shop data
---@return boolean success
local function ModifyShopData(shopLabel, callback)
    local shopData = GetShopData(shopLabel)
    if not shopData then
        return false
    end

    -- Execute modification callback
    local success, result = pcall(callback, shopData)
    if not success then
        print(string.format('[ShopCache] Modification callback failed for %s: %s', shopLabel, result))
        return false
    end

    -- Invalidate cache to force fresh read on next access
    InvalidateCache(shopLabel)

    return true
end

-- Callbacks for client requests
lib.callback.register('renzu_shops:getShopData', function(source, shopLabel)
    return GetShopData(shopLabel)
end)

lib.callback.register('renzu_shops:getShopStock', function(source, shopLabel)
    local shop = GetShopData(shopLabel)
    if not shop then return nil end

    return {
        items = shop.items,
        customitems = shop.customitems
    }
end)

lib.callback.register('renzu_shops:getShopMoney', function(source, shopLabel, moneyType)
    local shop = GetShopData(shopLabel)
    if not shop then return 0 end

    return shop.money[moneyType] or 0
end)

-- Export functions
ShopCache.GetShopData = GetShopData
ShopCache.UpdateShopData = UpdateShopData
ShopCache.GetAllShops = GetAllShops
ShopCache.InvalidateCache = InvalidateCache
ShopCache.ClearCache = ClearCache
ShopCache.UpdateShopFields = UpdateShopFields
ShopCache.ModifyShopData = ModifyShopData

return ShopCache
