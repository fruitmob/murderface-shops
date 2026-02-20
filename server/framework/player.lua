-- QBX-safe player wrapper
-- Creates normalized player object without mutating framework objects

---@class NormalizedPlayer
---@field source number
---@field identifier string
---@field citizenid string
---@field job table
---@field gang table
---@field Functions table
---@field PlayerData table

---Create a normalized player object that works across ESX/QBCore/QBX
---@param src number Player source
---@return NormalizedPlayer?
function GetPlayerFromId(src)
    if not src or src == 0 then return nil end

    local player = {}
    player.source = src

    if shared.framework == 'ESX' then
        local xPlayer = ESX.GetPlayerFromId(src)
        if not xPlayer then return nil end
        return xPlayer -- ESX already has proper structure

    elseif shared.framework == 'QBX' then
        local qbxPlayer = exports.qbx_core:GetPlayer(src)
        if not qbxPlayer or not qbxPlayer.PlayerData then return nil end

        -- QBX: Create wrapper WITHOUT mutating original object
        player.identifier = qbxPlayer.PlayerData.license
        player.citizenid = qbxPlayer.PlayerData.citizenid
        player.job = qbxPlayer.PlayerData.job or {}
        player.gang = qbxPlayer.PlayerData.gang or {}
        player.PlayerData = qbxPlayer.PlayerData

        -- Money functions using QBX player object methods
        player.getMoney = function()
            -- QBX stores money in PlayerData.money table
            return qbxPlayer.PlayerData.money and qbxPlayer.PlayerData.money.cash or 0
        end

        player.addMoney = function(value)
            -- Use player object's Functions table
            if qbxPlayer.Functions and qbxPlayer.Functions.AddMoney then
                return qbxPlayer.Functions.AddMoney('cash', tonumber(value), 'murderface-shops')
            end
            return false
        end

        player.removeMoney = function(value)
            -- Use player object's Functions table
            if qbxPlayer.Functions and qbxPlayer.Functions.RemoveMoney then
                return qbxPlayer.Functions.RemoveMoney('cash', tonumber(value), 'murderface-shops')
            end
            return false
        end

        player.getAccount = function(type)
            type = type == 'money' and 'cash' or type
            -- Get money from PlayerData
            local amount = qbxPlayer.PlayerData.money and qbxPlayer.PlayerData.money[type] or 0
            return {money = amount}
        end

        player.addAccountMoney = function(type, value)
            type = type == 'money' and 'cash' or type
            -- Use player object's Functions table
            if qbxPlayer.Functions and qbxPlayer.Functions.AddMoney then
                return qbxPlayer.Functions.AddMoney(type, tonumber(value), 'murderface-shops')
            end
            return false
        end

        player.removeAccountMoney = function(type, val)
            type = type == 'money' and 'cash' or type
            -- Use player object's Functions table
            if qbxPlayer.Functions and qbxPlayer.Functions.RemoveMoney then
                return qbxPlayer.Functions.RemoveMoney(type, tonumber(val), 'murderface-shops')
            end
            return false
        end

        -- Notification
        player.showNotification = function(msg)
            TriggerClientEvent('ox_lib:notify', src, {
                title = 'Shops',
                description = msg,
                type = 'info'
            })
        end

        -- Inventory functions - use ox_inventory directly if available
        if shared.inventory == 'ox_inventory' then
            player.addInventoryItem = function(item, amount, info, slot)
                return exports.ox_inventory:AddItem(src, item, amount, info, slot)
            end

            player.removeInventoryItem = function(item, amount, slot)
                return exports.ox_inventory:RemoveItem(src, item, amount, nil, slot)
            end

            player.getInventoryItem = function(item)
                local count = exports.ox_inventory:Search(src, 'count', item)
                return {count = count, amount = count}
            end
        else
            -- QBX native inventory (qb-inventory style)
            player.addInventoryItem = function(item, amount, info, slot)
                local qbxPlayer = exports.qbx_core:GetPlayer(src)
                if not qbxPlayer then return false end
                return qbxPlayer.Functions.AddItem(item, amount, slot or false, info)
            end

            player.removeInventoryItem = function(item, amount, slot)
                local qbxPlayer = exports.qbx_core:GetPlayer(src)
                if not qbxPlayer then return false end
                return qbxPlayer.Functions.RemoveItem(item, amount, slot or false)
            end

            player.getInventoryItem = function(item)
                local qbxPlayer = exports.qbx_core:GetPlayer(src)
                if not qbxPlayer then return {count = 0, amount = 0} end
                local itemData = qbxPlayer.Functions.GetItemByName(item) or {}
                return {
                    count = itemData.amount or 0,
                    amount = itemData.amount or 0
                }
            end
        end

        -- Admin check
        player.getGroup = function()
            return exports.qbx_core:IsOptin(src) and 'admin' or 'user'
        end

        return player

    elseif shared.framework == 'QBCORE' then
        local qbPlayer = QBCore.Functions.GetPlayer(src)
        if not qbPlayer then return nil end

        -- QB: Create wrapper
        player.identifier = qbPlayer.PlayerData.license
        player.citizenid = qbPlayer.PlayerData.citizenid
        player.job = qbPlayer.PlayerData.job or {}
        player.gang = qbPlayer.PlayerData.gang or {}
        player.PlayerData = qbPlayer.PlayerData

        -- Reuse same functions as QBX but with QBCore
        player.getMoney = function()
            return qbPlayer.PlayerData.money.cash
        end

        player.addMoney = function(value)
            return qbPlayer.Functions.AddMoney('cash', tonumber(value))
        end

        player.removeMoney = function(value)
            return qbPlayer.Functions.RemoveMoney('cash', tonumber(value))
        end

        player.getAccount = function(type)
            type = type == 'money' and 'cash' or type
            return {money = qbPlayer.PlayerData.money[type] or 0}
        end

        player.addAccountMoney = function(type, value)
            type = type == 'money' and 'cash' or type
            return qbPlayer.Functions.AddMoney(type, tonumber(value))
        end

        player.removeAccountMoney = function(type, val)
            type = type == 'money' and 'cash' or type
            return qbPlayer.Functions.RemoveMoney(type, tonumber(val))
        end

        player.showNotification = function(msg)
            TriggerClientEvent('QBCore:Notify', src, msg)
        end

        player.addInventoryItem = function(item, amount, info, slot)
            return qbPlayer.Functions.AddItem(item, amount, slot or false, info)
        end

        player.removeInventoryItem = function(item, amount, slot)
            return qbPlayer.Functions.RemoveItem(item, amount, slot or false)
        end

        player.getInventoryItem = function(item)
            local itemData = qbPlayer.Functions.GetItemByName(item) or {}
            return {
                count = itemData.amount or 0,
                amount = itemData.amount or 0
            }
        end

        player.getGroup = function()
            return QBCore.Functions.GetPermission(src)
        end

        return player
    end

    return nil
end

---Get player from identifier (citizenid/identifier)
---@param identifier string
---@return NormalizedPlayer?
function GetPlayerFromIdentifier(identifier)
    if shared.framework == 'ESX' then
        local xPlayer = ESX.GetPlayerFromIdentifier(identifier)
        if not xPlayer then return nil end
        return xPlayer

    elseif shared.framework == 'QBX' then
        local src = exports.qbx_core:GetPlayerByCitizenId(identifier)
        if not src then return nil end
        return GetPlayerFromId(src)

    elseif shared.framework == 'QBCORE' then
        local src = QBCore.Functions.GetSource(identifier)
        if not src then return nil end
        return GetPlayerFromId(src)
    end

    return nil
end

-- Export functions
_G.GetPlayerFromId = GetPlayerFromId
_G.GetPlayerFromIdentifier = GetPlayerFromIdentifier
