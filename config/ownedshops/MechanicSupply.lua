return {
	[1] = {
		moneytype = 'money',
		label = 'MechanicSupply 1', -- Identifier for each store; do not rename once a player has purchased this store
		coord = vec3(110.4, 6634.6, 32.18), -- Owner management coordinates
		price = 1000000,
		supplieritem = shared.Storeitems.MechanicSupply,

		ped = function()
			local model = `s_m_m_autoshop_01`  -- Example ped model, change if needed
			RequestModel(model)
			while not HasModelLoaded(model) do
				Wait(0)
			end
			-- Spawn the ped at the first location with the height adjusted
			local ped = CreatePed(4, model, 114.06, 6631.91, 30.97, 313.68, false, true)
			SetBlockingOfNonTemporaryEvents(ped, true)
			SetEntityInvincible(ped, true)
			FreezeEntityPosition(ped, true)
		end,
	},
	[2] = {
		moneytype = 'money',
		label = 'MechanicSupply 2', -- Identifier for each store; do not rename once a player has purchased this store
		coord = vec3(1700.0, 3592.0, 35.62), -- Example management coordinates for the second location
		price = 1000000,
		supplieritem = shared.Storeitems.MechanicSupply,

		ped = function()
			local model = `s_m_m_autoshop_01`  -- Example ped model, change if needed
			RequestModel(model)
			while not HasModelLoaded(model) do
				Wait(0)
			end
			-- Spawn the ped at the second location
			local ped = CreatePed(4, model, 1698.25, 3590.15, 34.62, 116.42, false, true)
			SetBlockingOfNonTemporaryEvents(ped, true)
			SetEntityInvincible(ped, true)
			FreezeEntityPosition(ped, true)
		end,
	}
}
