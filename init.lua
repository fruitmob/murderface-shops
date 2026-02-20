ESX,QBCORE = nil, nil
shared = {}

-- ========================================
-- LANGUAGE SETTINGS
-- ========================================
-- Change language file (config/locales/%s.lua)
-- Available: 'en' for English, or create your own (e.g., 'es' for Spanish)
shared.lang = 'en'

-- ========================================
-- UI CONFIGURATION
-- ========================================
-- Use ox_inventory's built-in shop UI (experimental)
-- false = Use the full-featured custom UI (recommended)
-- true = Use ox_inventory UI (requires specific ox_inventory fork)
shared.oxShops = false

-- ========================================
-- PLAYER PERMISSIONS
-- ========================================
-- Allow shop owners to create custom items?
-- false = Only admins can add new items via /storeadmin (recommended)
-- true = Shop owners can add items (requires items to exist in ox_inventory)
shared.allowplayercreateitem = false

-- ========================================
-- TARGETING SYSTEM
-- ========================================
-- Use ox_target for shop interactions?
-- true = Modern targeting (requires ox_target) (recommended)
-- false = Use proximity markers (old-school drawtext)
shared.target = false  -- FMRP: proximity text UI (ox_lib showTextUI) — ox_target disabled

-- ========================================
-- FINANCING SYSTEM (Player Loans)
-- ========================================
-- Minimum shop purchase price to enable financing option
shared.FinanceMinimum = 500000

-- Down payment percentage (20 = 20% upfront)
shared.FinanceDownPayment = 20

-- Interest rate (10 = 10% interest on remaining balance)
shared.FinanceInterest = 10

-- Maximum days to repay loan
shared.FinanceMaxDays = 30

-- Maximum total debt a player can have before being blocked from new loans
shared.MaxDebt = 1000000

-- ========================================
-- DEFAULT STOCK AMOUNTS
-- ========================================
-- How much stock each item gets when a player first buys a shop
-- Default shops (24/7, Ammunation) have INFINITE stock - this doesn't affect them
-- Only affects OWNED shops (purchasable by players)
shared.defaultStock = {
	General = 100,          -- 24/7 stores start with 100 of each item
	Ammunation = 20,        -- Gun stores start with 20 of each weapon
	VehicleShop = 10,       -- Vehicle dealers start with 10 of each vehicle
	BlackMarketArms = 20,   -- Black markets start with 20 of each item
}

-- ========================================
-- PAYMENT SETTINGS
-- ========================================
-- Where does shop revenue go?
-- false = Money stays in shop cashier (owner withdraws manually) (recommended)
-- true = Money auto-deposits to owner's bank account
shared.SendtoBank = false
shared.VehicleKeysType = {
	['export'] = false, -- if false it will use trigger events
	['client'] = true, -- if false it will use server event or server exports
}
shared.VehicleKeys = function(plate,source) -- vehicle keys
	-- first parameter expected is plate
	local sendvehiclekeys
	if IsDuplicityVersion() then
		if shared.VehicleKeysType['export'] then -- server export edit this if your using server exports vehicle keys
			func = function()
				sendvehiclekeys = exports.renzu_garage.GiveVehicleKey -- replace this
			end
			if pcall(func, result or false) then
				return sendvehiclekeys(nil,plate,source)
			end
		elseif shared.VehicleKeysType['client'] and shared.VehicleKeysType['export'] then -- do not edit this condition
			TriggerClientEvent('murderface-shops:Vehiclekeys', source, plate)

		elseif shared.VehicleKeysType['client'] then -- client events from server   edit this if your using client events vehicle keys
			-- Server Events Keys
			TriggerClientEvent('vehiclekeys:client:SetOwner', source, plate) -- this is non existing and example only

		else -- server events from server edit this
			-- Server Events Keys
			-- ex TriggerEvent('GiveKeys', plate, source) -- this is non existing and example only

		end
	elseif not IsDuplicityVersion() then -- client exports edit this if your using exports in client
		if shared.VehicleKeysType['export'] then
			func = function()
				sendvehiclekeys = exports.renzu_garage.GiveVehicleKey -- replace this
			end
			if pcall(func, result or false) then
				return sendvehiclekeys(nil,plate)
			end
		else -- if triggered using client
			TriggerEvent('vehiclekeys:client:SetOwner', plate) -- this is non existing and example only
		end
	end
end

-- ========================================
-- FRAMEWORK & INVENTORY (AUTO-DETECTED)
-- ========================================
-- These are set automatically based on what resources are running
-- You can manually override if needed, but usually auto-detection works fine

-- Framework: ESX, QBCORE, or QBX
-- Auto-detected based on running resources
shared.framework = 'QBCORE'

-- Inventory: ox_inventory or qb-inventory
-- Auto-detected based on running resources
shared.inventory = 'ox_inventory'

-- ========================================
-- AUTO-DETECTION (Don't edit unless you know what you're doing)
-- ========================================
-- Automatically detects and configures framework
if GetResourceState('es_extended') == 'started' then
	shared.framework = 'ESX'
	ESX = exports['es_extended']:getSharedObject()
	print('[Murderface Shops] ESX Legacy detected')
elseif GetResourceState('qbx_core') == 'started' then
	shared.framework = 'QBX'
	-- QBX uses exports differently - no GetCoreObject needed
	-- Functions are accessed directly via exports.qbx_core
	print('[Murderface Shops] QBX Core detected')
elseif GetResourceState('qb-core') == 'started' then
	shared.framework = 'QBCORE'
	QBCore = exports['qb-core']:GetCoreObject()
	print('[Murderface Shops] QB-Core detected')
end

-- Automatically detects inventory system
if GetResourceState('ox_inventory') == 'started' then
	shared.inventory = 'ox_inventory'
	print('[Murderface Shops] ox_inventory detected')
elseif GetResourceState('qb-inventory') == 'started' then
	shared.inventory = 'qb-inventory'
	print('[Murderface Shops] qb-inventory detected')
end

MultiCategory = function(blacklist,whitelist,data,...)
	local newtable = {}
	local i = 1
	local whitelisted = false
	for k,v in pairs(whitelist) do whitelisted = true end
	if not whitelisted then
		local t = {...}
		for k,v in pairs(t) do
			if type(v) == 'table' then
				for k,v in pairs(v) do
					if not blacklist[v.type] then
						newtable[i] = v
						i = i + 1
					end
				end
			end
		end
	else
		for k,v in pairs(data) do
			if whitelist[v.type] then
				newtable[i] = v
				i = i + 1
			end
		end
	end
	return newtable
end

function request(file)
	local name = ('%s.lua'):format(file)
	local content = LoadResourceFile(GetCurrentResourceName(),name)
	local f, err = load(content)
	return f()
end

-- do not edit
shared.Storeitems = request('config/storeitems')
shared.Shops = request('config/defaultshops')
shared.OwnedShops = request('config/ownedshops/init')
shared.MovableShops = request('config/movableshop')
shared.locales = request('config/locales/'..shared.lang)
shared.playerbooth = request('config/stalls')
request('config/shipping')

-- DISABLED: Automotive shop items are now defined individually in storeitems.lua
-- No need to map to AutomotiveSupply since each shop has its own item list
-- shared.Storeitems.Bennys = shared.Storeitems.AutomotiveSupply
-- shared.Storeitems.ToxsShop = shared.Storeitems.AutomotiveSupply
-- shared.Storeitems.Flywheels = shared.Storeitems.AutomotiveSupply
-- shared.Storeitems.LSCustoms = shared.Storeitems.AutomotiveSupply
-- shared.Storeitems.SonsAuto = shared.Storeitems.AutomotiveSupply

-- DISABLED: ox_inventory handles weapon components natively; injecting the
-- murderface-shops Components table creates hundreds of broken shop entries
-- (at_skin_perseus, at_skin_camo, etc.) with no item defs or images.
-- Ammunation/BlackMarketArms items are defined in storeitems.lua instead.
-- if shared.inventory == 'ox_inventory' then
-- 	for k,v in pairs(Components) do
-- 		table.insert(shared.Storeitems.Ammunation,v)
-- 		table.insert(shared.Storeitems.BlackMarketArms,v)
-- 	end
if shared.inventory == 'qb-inventory' then
	local weapons = {}
	Components = {}
	Citizen.CreateThreadNow(function()
		Wait(1000)
		-- SAFETY: Check QBCore exists before accessing
		if not QBCore or not QBCore.Shared or not QBCore.Shared.Weapons then
			print('[Murderface Shops] Warning: QBCore.Shared.Weapons not available, skipping weapon components loading')
			return
		end
		local weaponshared = QBCore.Shared.Weapons
		for k,v in pairs(weaponshared) do
			Wait(0)
			local data = exports['qb-weapons']:getConfigWeaponAttachments(v.name:upper()) -- if there is a way to fetch single all the datas of weapon atachment from qbweapons it will be more opt
			if data then
				for k,weapon in pairs(data) do
					if not Components[weapon.item] then Components[weapon.item] = {} end
					Components[weapon.item] = {
						name = weapon.item,
						label = weaponshared[weapon.item] and weaponshared[weapon.item].label or k,
						type = weapon.type,
						price = 1500,
						category = 'attachments',
						client = { component = {weapon.component}}
					}
				end
			end
		end
		for k,v in pairs(Components) do
			table.insert(shared.Storeitems.Ammunation,v)
			table.insert(shared.Storeitems.BlackMarketArms,v)
		end
	end)
end

Utils = {}
if not IsDuplicityVersion() then
	self = self or {}  -- Initialize self if it doesn't exist yet
	Utils.CreateMenu = function(data)
		lib.registerContext({
			id = data.id,
			title = data.title,
			onExit = function()
				--data.OnExit()
			end,
			options = data.options
		})
		lib.showContext(data.id)
	end
	Utils.Proccesed = function(data)
		lib.progressBar({
			duration = data.duration,
			label = data.label,
			useWhileDead = false,
			canCancel = false,
			anim = {
				dict = data.dict,
				clip = data.clip
			},
			disable = {
				car = true,
			}
		})
		local callback = lib.callback.await('murderface-shops:proccessed',100, data)
		if not callback then
			lib.notify({
				title = 'Not Enough Ingredients',
				type = 'error'
			})
		end
	end
	self.ImagesPath = function(item)
		local url = ''
		if shared.inventory == 'ox_inventory' then
			if item then
				url = 'https://cfx-nui-ox_inventory/web/images/'..item..'.png'
			else
				url = 'https://cfx-nui-ox_inventory/web/images/'
			end
			return url
		else
			if item then
				url = 'https://cfx-nui-qb-inventory/html/images/'..item:lower()..'.png'
			else
				url = 'https://cfx-nui-qb-inventory/html/images/'
			end
			return url
		end
	end
	self.LoadJobShops = function()
		for k,zones in pairs(self.JobSpheres) do
			if zones then
				if not shared.target and zones.remove then
					zones:remove()
				else
					rzone = function()
						return exports.ox_target:removeZone(zones)
					end
					if pcall(rzone,ret or false) then end
				end
			end
		end
		local jobshop = GlobalState.JobShop
		for k,shops in pairs(shared.OwnedShops) do
			for k,shop in pairs(shops) do
				if self.PlayerData and self.PlayerData.job and self.PlayerData.job.name and jobshop[shop.label] == self.PlayerData.job.name then
					if not shared.target then
						self.temporalspheres[shop.label] = self.Add(shop.coord,'My Store '..shop.label,self.StoreOwner,false,shop)
						self.JobSpheres[self.PlayerData.job.name] = self.temporalspheres[shop.label]
					else
						local zone = self.addTarget(shop.coord,'My Store '..shop.label,self.StoreOwner,false,shop)
						self.JobSpheres[self.PlayerData.job.name] = zone
					end
				end
			end
		end
	end
	self.Playerloaded = function()
		if shared.framework == 'ESX' then
			RegisterNetEvent('esx:playerLoaded', function(xPlayer)
				self.PlayerData = xPlayer
				self.LoadShops()
				self.LoadJobShops()
				self.LoadDefaultShops()

			end)
		elseif shared.framework == 'QBX' then
			RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
				Wait(1500)
				self.PlayerData = exports.qbx_core:GetPlayerData()
				if self.PlayerData.job ~= nil then
					self.PlayerData.job.grade = self.PlayerData.job.grade.level
				end
				if self.PlayerData.identifier == nil then
					self.PlayerData.identifier = self.PlayerData.license
				end
				self.LoadShops()
				self.LoadJobShops()
				self.LoadDefaultShops()

			end)
		elseif shared.framework == 'QBCORE' then
			RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
				Wait(1500)
				self.PlayerData = QBCore.Functions.GetPlayerData()
				if self.PlayerData.job ~= nil then
					self.PlayerData.job.grade = self.PlayerData.job.grade.level
				end
				if self.PlayerData.identifier == nil then
					self.PlayerData.identifier = self.PlayerData.license
				end
				self.LoadShops()
				self.LoadJobShops()
				self.LoadDefaultShops()

			end)
		end
	end

	self.GetPlayerData = function()
		if shared.framework == 'ESX' then
			return ESX.GetPlayerData()
		elseif shared.framework == 'QBX' then
			local Player = exports.qbx_core:GetPlayerData()
			if Player.job ~= nil then
				Player.job.grade = Player.job.grade.level
			end
			if Player.identifier == nil then
				Player.identifier = Player.license
			end
			return Player
		else
			local Player = QBCore.Functions.GetPlayerData()
			if Player.job ~= nil then
				Player.job.grade = Player.job.grade.level
			end
			if Player.identifier == nil then
				Player.identifier = Player.license
			end
			return Player
		end
	end

	self.SetJob = function()
		if shared.framework == 'ESX' then
			RegisterNetEvent('esx:setJob', function(job)
				self.PlayerData.job = job
				self.LoadDefaultShops()
				self.LoadJobShops()
				self.LoadShops()
			end)
		elseif shared.framework == 'QBX' or shared.framework == 'QBCORE' then
			RegisterNetEvent('QBCore:Client:OnJobUpdate', function(job)
				self.PlayerData.job = job
				self.PlayerData.job.grade = self.PlayerData.job.grade.level
				self.LoadDefaultShops()
				self.LoadJobShops()
				self.LoadShops()
			end)
		end
	end

	self.getInventoryItems = function(name)
		if shared.inventory == 'ox_inventory' then
			return exports.ox_inventory:Search('count', name)
		elseif shared.inventory == 'qb-inventory' then
			local count = 0
			local PlayerData
			if shared.framework == 'QBX' then
				PlayerData = exports.qbx_core:GetPlayerData()
			else
				PlayerData = QBCore.Functions.GetPlayerData()
			end
			for _, item in pairs(PlayerData.items) do
				if name == item.name then
					count = count + 1
				end
			end
			return count
		end
	end

	-- RUN RESOURCE
	self.Playerloaded()
	self.SetJob()
	-- NOTE: Handlers() and StartUp() are defined in client/main.lua and will be called from there
	-- Commenting these out to prevent errors during script loading
	-- self.Handlers()
	-- self.StartUp()

	-- EXPORTS FOR ALL FUNCTION
	exports('Shops', function ()
		return self
	end)

	-- SHITY 3dME
	RegisterCommand('bubble', function(source,args)
		local Functions = exports['murderface-shops']:Shops()
		Functions.CreateBubbleSpeechSync({id = GetPlayerServerId(PlayerId()), title = GetPlayerName(PlayerId()), message = args[1], bagname = 'player:', ms = 5000})
	end)
end