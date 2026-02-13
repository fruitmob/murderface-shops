-- REFACTORED: Use new player wrapper system (see server/framework/player.lua)
-- Player normalization functions are now loaded from player.lua

-- Initialize Inventory table (must be done before any Inventory.* functions are defined)
Inventory = Inventory or setmetatable({},{})

-- Vehicle table configuration
if shared.framework == 'ESX' then
	vehicletable = 'owned_vehicles'
	vehiclemod = 'vehicle'
	owner = 'owner'
	stored = 'stored'
	garage = 'Garage A'
	columns = '`plate`, `'..vehiclemod..'`, `'..owner..'`, `'..stored..'`, `job`'
	values = '?, ?, ?, ?, ?'
elseif shared.framework == 'QBCORE' or shared.framework == 'QBX' then
	vehicletable = 'player_vehicles'
	vehiclemod = 'mods'
	owner = 'license'
	stored = 'state'
	garage_id = 'garage'
	type_ = 'vehicle'
	playertable = 'players'
	playeridentifier = 'citizenid'
	playeraccounts = 'money'
	garage = 'pillboxgarage'
	columns = '`plate`, `'..vehiclemod..'`, `'..owner..'`, `'..stored..'`, `job`, `citizenid`, `hash`, `garage`, `vehicle`'
	values = '?, ?, ?, ?, ?, ?, ?, ?, ?'
end

-- Load player normalization wrapper
request('server/framework/player')

-- SECURITY: Whitelist allowed table/column names to prevent SQL injection
local ALLOWED_TABLES = {
	players = true,
	users = true,
	player_vehicles = true,
	owned_vehicles = true,
	renzu_stores = true,
	movableshops = true,
	financedata = true
}

local ALLOWED_COLUMNS = {
	money = true,
	accounts = true,
	citizenid = true,
	identifier = true,
	license = true
}

---Modify player bank balance when offline (with SQL injection protection)
---@param id string Player identifier
---@param amount number Amount to add/remove
---@param minus boolean? True to subtract
---@param type string? Account type (default: 'bank')
ModifyFromBankOffline = function(id, amount, minus, type)
	type = type or 'bank'

	-- SECURITY: Validate table/column names
	if not ALLOWED_TABLES[playertable] then
		print('[Renzu Shops] SECURITY: Invalid table name blocked: '..tostring(playertable))
		return false
	end

	if not ALLOWED_COLUMNS[playeraccounts] then
		print('[Renzu Shops] SECURITY: Invalid column name blocked: '..tostring(playeraccounts))
		return false
	end

	-- Use parameterized query (MySQL.query automatically escapes)
	local query = 'SELECT ?? FROM ?? WHERE ?? = ?'
	local result = MySQL.query.await(query, {playeraccounts, playertable, playeridentifier, id})

	if not result or not result[1] then
		return false
	end

	local accounts = json.decode(result[1][playeraccounts])

	if not accounts then
		return false
	end

	if not minus then
		accounts[type] = (accounts[type] or 0) + amount
	else
		accounts[type] = (accounts[type] or 0) - amount
	end

	local updateQuery = 'UPDATE ?? SET ?? = ? WHERE ?? = ?'
	MySQL.query.await(updateQuery, {playertable, playeraccounts, json.encode(accounts), playeridentifier, id})

	return true
end

---Get bank balance when player offline
---@param id string Player identifier
---@return number?
GetMoneyFromBankOffline = function(id)
	if not ALLOWED_TABLES[playertable] or not ALLOWED_COLUMNS[playeraccounts] then
		return nil
	end

	local result = MySQL.query.await('SELECT ?? FROM ?? WHERE ?? = ?', {playeraccounts, playertable, playeridentifier, id})

	if not result or not result[1] then
		return nil
	end

	local accounts = json.decode(result[1][playeraccounts])
	return accounts and accounts.bank or 0
end

Inventory.AddItem = function(source, item, count, metadata, slot)
	-- Use ox_inventory directly if available
	if shared.inventory == 'ox_inventory' then
		return exports.ox_inventory:AddItem(source, item, count, metadata, slot)
	end

	-- Handle money separately
	if item == 'money' then
		local xPlayer = GetPlayerFromId(source)
		if not xPlayer then
			-- Handle stash/booth identifiers
			if not tonumber(source) then
				local identifier = source:gsub('Hotdog:', ''):gsub('Burger:', ''):gsub('Taco:', '')
				local offlinePlayer = GetPlayerFromIdentifier(identifier)
				if offlinePlayer then
					offlinePlayer.addAccountMoney('cash', count)
				end
			end
			return false
		end
		return xPlayer.addAccountMoney('cash', count)
	end

	-- qb-inventory item handling
	local added = exports['qb-inventory']:AddItem(source, item, count, slot, metadata)
	if not added then
		-- Fallback to stash
		if not slot then
			local stash = exports['qb-inventory']:GetStashItems(source)
			slot = exports['qb-inventory']:GetFirstSlotByItem(stash, item, metadata)
			if not slot then
				for i = 1, 50 do
					if not stash[i] then
						slot = i
						break
					end
				end
			end
		end
		exports['qb-inventory']:AddToStash(source, slot, nil, item, count, metadata)
	end

	return added
end

Inventory.RemoveItem = function(source, item, count, metadata, slot)
	-- Use ox_inventory directly if available
	if shared.inventory == 'ox_inventory' then
		return exports.ox_inventory:RemoveItem(source, item, count, metadata, slot)
	end

	-- Handle money separately
	if item == 'money' then
		local xPlayer = GetPlayerFromId(source)
		if not xPlayer then
			-- Handle stash/booth identifiers
			if not tonumber(source) then
				local identifier = source:gsub('Hotdog:', ''):gsub('Burger:', ''):gsub('Taco:', '')
				local offlinePlayer = GetPlayerFromIdentifier(identifier)
				if offlinePlayer then
					offlinePlayer.removeAccountMoney('cash', count)
				end
			end
			return false
		end
		return xPlayer.removeMoney(count)
	end

	-- qb-inventory item handling
	local removed = exports['qb-inventory']:RemoveItem(source, item, count, slot, metadata)
	if not removed then
		-- Fallback to stash
		if not slot then
			local stash = exports['qb-inventory']:GetStashItems(source)
			slot = exports['qb-inventory']:GetFirstSlotByItem(stash, item, metadata)
			if not slot then
				for i = 1, 50 do
					if not stash[i] then
						slot = i
						break
					end
				end
			end
		end
		exports['qb-inventory']:RemoveFromStash(source, slot, item, count, metadata)
	end

	return removed
end

-- Export security functions
_G.ModifyFromBankOffline = ModifyFromBankOffline
_G.GetMoneyFromBankOffline = GetMoneyFromBankOffline
