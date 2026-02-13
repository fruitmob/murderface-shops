return {
	[1] = {
		AttachmentsCustomiseOnly = true,
		moneytype = 'money',
		item = true,
		label = 'Ammunation #1',
		coord = vec3(13.674331665039,-1106.5460205078,29.791040420532),
		price = 10000000,
		supplieritem = shared.Storeitems.Ammunation,

		ped = function()
			local model = `s_f_y_stripper_01`
			RequestModel(model)
			while not HasModelLoaded(model) do
				Wait(0)
			end
			local ped = CreatePed(4, model, 22.55, -1105.33, 28.8, 157.97, false, true)
			SetBlockingOfNonTemporaryEvents(ped, true)
			SetEntityInvincible(ped, true)
			FreezeEntityPosition(ped, true)
		end,
	},
	[2] = {
		AttachmentsCustomiseOnly = true,
		moneytype = 'money',
		label = 'Ammunation #2',
		coord = vec3(-666.94177246094,-933.37286376953,21.279521942139),
		price = 10000000,
		supplieritem = shared.Storeitems.Ammunation,

		ped = function()
			local model = `s_f_y_stripper_02`
			RequestModel(model)
			while not HasModelLoaded(model) do
				Wait(0)
			end
			local ped = CreatePed(4, model, -662.87, -933.32, 20.83, 179.01, false, true)
			SetBlockingOfNonTemporaryEvents(ped, true)
			SetEntityInvincible(ped, true)
			FreezeEntityPosition(ped, true)
		end,
	},
	[3] = {
		AttachmentsCustomiseOnly = true,
		moneytype = 'money',
		label = 'Ammunation #3',
		coord = vec3(818.20385742188,-2155.0041503906,29.5869312286381),
		price = 7000000,
		supplieritem = shared.Storeitems.Ammunation,

		ped = function()
			local model = `s_f_y_stripperlite`
			RequestModel(model)
			while not HasModelLoaded(model) do
				Wait(0)
			end
			local ped = CreatePed(4, model, 810.49, -2159.23, 28.62, 357.97, false, true)
			SetBlockingOfNonTemporaryEvents(ped, true)
			SetEntityInvincible(ped, true)
			FreezeEntityPosition(ped, true)
		end,
	},
	[4] = {
		AttachmentsCustomiseOnly = true,
		moneytype = 'money',
		label = 'Ammunation #4',
		coord = vec3(1689.0349121094,3757.6052246094,34.447074890137),
		price = 5000000,
		supplieritem = shared.Storeitems.Ammunation,

		ped = function()
			local model = `s_f_y_stripper_01`
			RequestModel(model)
			while not HasModelLoaded(model) do
				Wait(0)
			end
			local ped = CreatePed(4, model, 1691.68, 3760.75, 33.71, 225.33, false, true)
			SetBlockingOfNonTemporaryEvents(ped, true)
			SetEntityInvincible(ped, true)
			FreezeEntityPosition(ped, true)
		end,
	},
	[5] = {
		AttachmentsCustomiseOnly = true,
		moneytype = 'money',
		label = 'Ammunation #5',
		coord = vec3(-335.00173950195,6081.755859375,31.320747375488),
		price = 5000000,
		supplieritem = shared.Storeitems.Ammunation,

		ped = function()
			local model = `s_f_y_stripper_02`
			RequestModel(model)
			while not HasModelLoaded(model) do
				Wait(0)
			end
			local ped = CreatePed(4, model, -332.34, 6084.66, 30.45, 218.03, false, true)
			SetBlockingOfNonTemporaryEvents(ped, true)
			SetEntityInvincible(ped, true)
			FreezeEntityPosition(ped, true)
		end,
	},
	[6] = {
		AttachmentsCustomiseOnly = true,
		moneytype = 'money',
		label = 'Ammunation #6',
		coord = vec3(255.35807800293,-46.139972686768,69.681571960449),
		price = 10000000,
		supplieritem = shared.Storeitems.Ammunation,

		ped = function()
			local model = `s_f_y_stripperlite`
			RequestModel(model)
			while not HasModelLoaded(model) do
				Wait(0)
			end
			local ped = CreatePed(4, model, 254.49, -49.69, 68.94, 67.96, false, true)
			SetBlockingOfNonTemporaryEvents(ped, true)
			SetEntityInvincible(ped, true)
			FreezeEntityPosition(ped, true)
		end,
	},
	[7] = {
		AttachmentsCustomiseOnly = true,
		moneytype = 'money',
		label = 'Ammunation #7',
		coord = vec3(2572.6040039063,292.72711181641,108.76517486572),
		price = 6000000,
		supplieritem = shared.Storeitems.Ammunation,

		ped = function()
			local model = `s_f_y_stripper_01`
			RequestModel(model)
			while not HasModelLoaded(model) do
				Wait(0)
			end
			local ped = CreatePed(4, model, 2568.67, 292.33, 107.73, 357.61, false, true)
			SetBlockingOfNonTemporaryEvents(ped, true)
			SetEntityInvincible(ped, true)
			FreezeEntityPosition(ped, true)
		end,
	},
	[8] = {
		AttachmentsCustomiseOnly = true,
		moneytype = 'money',
		label = 'Ammunation #8',
		coord = vec3(-1122.4675292969,2696.6733398438,18.369832992554),
		price = 5000000,
		supplieritem = shared.Storeitems.Ammunation,

		ped = function()
			local model = `s_f_y_stripper_02`
			RequestModel(model)
			while not HasModelLoaded(model) do
				Wait(0)
			end
			local ped = CreatePed(4, model, -1119.91, 2699.33, 17.55, 219.52, false, true)
			SetBlockingOfNonTemporaryEvents(ped, true)
			SetEntityInvincible(ped, true)
			FreezeEntityPosition(ped, true)
		end,
	},
	[9] = {
		AttachmentsCustomiseOnly = true,
		moneytype = 'money',
		label = 'Ammunation #9',
		coord = vec3(847.06878662109,-1035.2108154297,28.160404205322),
		price = 10000000,
		supplieritem = shared.Storeitems.Ammunation,

		ped = function()
			local model = `s_f_y_stripperlite`
			RequestModel(model)
			while not HasModelLoaded(model) do
				Wait(0)
			end
			local ped = CreatePed(4, model, 842.79, -1035.5, 27.19, 1.4, false, true)
			SetBlockingOfNonTemporaryEvents(ped, true)
			SetEntityInvincible(ped, true)
			FreezeEntityPosition(ped, true)
		end,
	},
	[10] = {
		AttachmentsCustomiseOnly = true,
		moneytype = 'money',
		label = 'Ammunation #10',
		coord = vec3(1425.09, 3018.12, 40.77),  -- Updated store purchase point
		price = 5000000,
		supplieritem = shared.Storeitems.Ammunation,
	
		ped = function()
			local model = `s_f_y_stripper_01`
			RequestModel(model)
			while not HasModelLoaded(model) do
				Wait(0)
			end
			local ped = CreatePed(4, model, 1433.64, 3027.98, 39.79, 314.18, false, true)  -- Updated ped location with Z reduced by 1
			SetBlockingOfNonTemporaryEvents(ped, true)
			SetEntityInvincible(ped, true)
			FreezeEntityPosition(ped, true)
		end,
	},
}
