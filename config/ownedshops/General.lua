return {
	[1] = {
		moneytype = 'money',
		label = '24/7 #125',
		coord = vec3(29.616605758667, -1338.5325927734, 29.31859588623),
		price = 1000000,
		supplieritem = shared.Storeitems.General,

		ped = function()
			local model = `mp_m_shopkeep_01`
			RequestModel(model)
			while not HasModelLoaded(model) do
				Wait(0)
			end
			local ped = CreatePed(4, model, 24.78742980957, -1347.2814941406, 28.5, 270.0, false, true)  -- Z reduced by 1
			SetBlockingOfNonTemporaryEvents(ped, true)
			SetEntityInvincible(ped, true)
			FreezeEntityPosition(ped, true)
		end,
	},
	[2] = {
		moneytype = 'money',
		label = '24/7 #804',
		coord = vec3(-3048.84765625, 586.72723388672, 7.91),
		price = 1000000,
		supplieritem = shared.Storeitems.General,

		ped = function()
			local model = `mp_m_shopkeep_01`
			RequestModel(model)
			while not HasModelLoaded(model) do
				Wait(0)
			end
			local ped = CreatePed(4, model, -3039.1418457031, 584.80383300781, 6.91, 0.0, false, true)  -- Z reduced by 1
			SetBlockingOfNonTemporaryEvents(ped, true)
			SetEntityInvincible(ped, true)
			FreezeEntityPosition(ped, true)
		end,
	},
	[3] = {
		moneytype = 'money',
		label = '24/7 #905',
		coord = vec3(-3250.5290527344, 1005.8305053711, 12.711438179016),
		price = 1000000,
		supplieritem = shared.Storeitems.General,

		ped = function()
			local model = `mp_m_shopkeep_01`
			RequestModel(model)
			while not HasModelLoaded(model) do
				Wait(0)
			end
			local ped = CreatePed(4, model, -3242.2729492188, 1000.2940673828, 11.83, 0.0, false, true)  -- Z reduced by 1
			SetBlockingOfNonTemporaryEvents(ped, true)
			SetEntityInvincible(ped, true)
			FreezeEntityPosition(ped, true)
		end,
	},
	[4] = {
		moneytype = 'money',
		label = '24/7 #3030',
		coord = vec3(1736.2431640625, 6420.8251953125, 34.931205749512),
		price = 1000000,
		supplieritem = shared.Storeitems.General,

		ped = function()
			local model = `mp_m_shopkeep_01`
			RequestModel(model)
			while not HasModelLoaded(model) do
				Wait(0)
			end
			local ped = CreatePed(4, model, 1728.169921875, 6415.1547851563, 34.04, 242.61, false, true)  -- Z reduced by 1
			SetBlockingOfNonTemporaryEvents(ped, true)
			SetEntityInvincible(ped, true)
			FreezeEntityPosition(ped, true)
		end,
	},
	[5] = {
		moneytype = 'money',
		label = 'LTD Gas #2013',
		coord = vec3(1707.2940673828, 4921.876953125, 41.884521484375),
		price = 1000000,
		supplieritem = shared.Storeitems.General,

		ped = function()
			local model = `mp_m_shopkeep_01`
			RequestModel(model)
			while not HasModelLoaded(model) do
				Wait(0)
			end
			local ped = CreatePed(4, model, 1698.3466796875, 4923.1606445313, 41.06, 0.0, false, true)  -- Z reduced by 1
			SetBlockingOfNonTemporaryEvents(ped, true)
			SetEntityInvincible(ped, true)
			FreezeEntityPosition(ped, true)
		end,
	},
	[6] = {
		moneytype = 'money',
		label = '24/7 #1036',
		coord = vec3(1960.04, 3748.98, 32.34),
		price = 1000000,
		supplieritem = shared.Storeitems.General,

		ped = function()
			local model = `mp_m_shopkeep_01`
			RequestModel(model)
			while not HasModelLoaded(model) do
				Wait(0)
			end
			local ped = CreatePed(4, model, 1960.3355712891, 3740.2058105469, 31.34, 296.26, false, true)  -- Z reduced by 1
			SetBlockingOfNonTemporaryEvents(ped, true)
			SetEntityInvincible(ped, true)
			FreezeEntityPosition(ped, true)
		end,
	},
	[7] = {
		moneytype = 'money',
		label = '24/7 #928',
		coord = vec3(545.18743896484, 2662.0126953125, 42.122165679932),
		price = 1000000,
		supplieritem = shared.Storeitems.General,

		ped = function()
			local model = `mp_m_shopkeep_01`
			RequestModel(model)
			while not HasModelLoaded(model) do
				Wait(0)
			end
			local ped = CreatePed(4, model, 548.76641845703, 2671.2221679688, 41.16, 98.36, false, true)  -- Z reduced by 1
			SetBlockingOfNonTemporaryEvents(ped, true)
			SetEntityInvincible(ped, true)
			FreezeEntityPosition(ped, true)
		end,
	},
	[8] = {
		moneytype = 'money',
		label = '24/7 #957',
		coord = vec3(2672.8735351563, 3288.0895996094, 55.12544631958),
		price = 1000000,
		supplieritem = shared.Storeitems.General,

		ped = function()
			local model = `mp_m_shopkeep_01`
			RequestModel(model)
			while not HasModelLoaded(model) do
				Wait(0)
			end
			local ped = CreatePed(4, model, 2678.1159667969, 3279.7211914063, 54.24, 329.48, false, true)  -- Z reduced by 1
			SetBlockingOfNonTemporaryEvents(ped, true)
			SetEntityInvincible(ped, true)
			FreezeEntityPosition(ped, true)
		end,
	},
	[9] = {
		moneytype = 'money',
		label = '24/7 #402',
		coord = vec3(2548.6779785156, 386.21823120117, 108.58219909668),
		price = 1000000,
		supplieritem = shared.Storeitems.General,

		ped = function()
			local model = `mp_m_shopkeep_01`
			RequestModel(model)
			while not HasModelLoaded(model) do
				Wait(0)
			end
			local ped = CreatePed(4, model, 2557.1896972656, 381.14154052734, 107.62, 0.0, false, true)  -- Z reduced by 1
			SetBlockingOfNonTemporaryEvents(ped, true)
			SetEntityInvincible(ped, true)
			FreezeEntityPosition(ped, true)
		end,
	},
	[10] = {
		moneytype = 'money',
		label = '24/7 #574',
		coord = vec3(379.61529541016, 333.65734863281, 103.46820068359),
		price = 1000000,
		supplieritem = shared.Storeitems.General,

		ped = function()
			local model = `mp_m_shopkeep_01`
			RequestModel(model)
			while not HasModelLoaded(model) do
				Wait(0)
			end
			local ped = CreatePed(4, model, 372.89, 326.04, 102.57, 268.53, false, true) -- Z reduced by 1
			SetBlockingOfNonTemporaryEvents(ped, true)
			SetEntityInvincible(ped, true)
			FreezeEntityPosition(ped, true)
		end,
	},
	[11] = {
		moneytype = 'money',
		label = 'LTD Gas #411',
		coord = vec3(1158.9858398438, -315.35827636719, 69.182777404785),
		price = 1000000,
		supplieritem = shared.Storeitems.General,

		ped = function()
			local model = `mp_m_shopkeep_01`
			RequestModel(model)
			while not HasModelLoaded(model) do
				Wait(0)
			end
			local ped = CreatePed(4, model, 1164.98, -324.28, 68.21, 81.0, false, true) -- Z reduced by 1
			SetBlockingOfNonTemporaryEvents(ped, true)
			SetEntityInvincible(ped, true)
			FreezeEntityPosition(ped, true)
		end,
    },
	[12] = {
		moneytype = 'money',
		label = 'LTD Gas 817',
		coord = vec3(-1828.11, 797.81, 138.18),
		price = 1000000, -- Adjust price as needed
		supplieritem = shared.Storeitems.General,
	
		ped = function()
			local model = `mp_m_shopkeep_01`
			RequestModel(model)
			while not HasModelLoaded(model) do
				Wait(0)
			end
			local ped = CreatePed(4, model, -1819.21, 793.35, 137.08, 129.45, false, true)
			SetBlockingOfNonTemporaryEvents(ped, true)
			SetEntityInvincible(ped, true)
			FreezeEntityPosition(ped, true)
		end,
	},
	[13] = {
		moneytype = 'money',
		label = 'LTD Gas 366',
		coord = vector3(-709.56, -905.43, 19.22),
		price = 1000000, -- Adjust price as needed
		supplieritem = shared.Storeitems.General,
	
		ped = function()
			local model = `mp_m_shopkeep_01`
			RequestModel(model)
			while not HasModelLoaded(model) do
				Wait(0)
			end
			local ped = CreatePed(4, model, vector3(-705.84, -914.7, 18.22), 83.75, false, true)
			SetBlockingOfNonTemporaryEvents(ped, true)
			SetEntityInvincible(ped, true)
			FreezeEntityPosition(ped, true)
		end,
	},
	[14] = {
		moneytype = 'money',
		label = 'LTD Gas 817',
		coord = vector3(-44.3, -1749.82, 29.42),
		price = 1000000, -- Adjust price as needed
		supplieritem = shared.Storeitems.General,
	
		ped = function()
			local model = `mp_m_shopkeep_01`
			RequestModel(model)
			while not HasModelLoaded(model) do
				Wait(0)
			end
			local ped = CreatePed(4, model, vector3(-47.51, -1759.14, 28.42), 44.54, false, true)
			SetBlockingOfNonTemporaryEvents(ped, true)
			SetEntityInvincible(ped, true)
			FreezeEntityPosition(ped, true)
		end,
	},
	
}
