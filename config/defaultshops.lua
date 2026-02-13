-- Default Shops . this table inventory is being used if shops dont have a owner. the rest data is a copy of OX shops format
-- location indexes
return {

	--[[['ClothingShop'] = {
		moneytype = 'money',
		name = 'ClothingShop',

		locations = {
			vector3(141.16, -1978.53, 18.5),
		},
		targets = {
			vector3(140.65, -1977.12, 19.42),
		},
		blip = {
			id = 59, colour = 69, scale = 0.8
		},
	},]]--

	['Balls8'] = {
		moneytype = 'money',
		name = '8Balls',
		groups = '8balls',
		blip = {
			id = 59, colour = 69, scale = 0.8
		},
		locations = {
			vector3(-1587.4376220703,-995.98486328125,13.342629432678),
		}
	},

	--[[PondCafe = {
		moneytype = 'money',
		name = 'PondCafe',
		--groups = 'ambulance',
		blip = {
			id = 59, colour = 69, scale = 0.8
		},
		locations = {
			vector3(1116.9136962891,-640.98645019531,56.825714111328),
		}
	},]]--

	MechanicSupply = {
		--groups = {'mechanic','police'},
		moneytype = 'money',
		name = 'Mechanic Supply',
		blip = {
			id = 402, colour = 69, scale = 0.8
		},
		locations = {
			vector3(116.04, 6633.6, 32.0),  -- First location
			vector3(1698.25, 3590.15, 35.62)  -- Second location (same as the ped location)
		}
	},

	General = {
		moneytype = 'money',
		name = 'Shop 24/7',
		blip = {
			id = 59, colour = 69, scale = 0.8
		},
		locations = {
			vector3(26.28, -1347.23, 29.5),
			vector3(-3039.6, 586.23, 7.91),
			vector3(-3242.19, 1001.76, 12.83),
			vector3(1729.59, 6414.65, 35.04),
			vector3(1698.02, 4924.47, 42.06),
			vector3(1961.64, 3740.97, 32.34),
			vector3(547.37, 2670.93, 42.16),
			vector3(2678.88, 3281.01, 55.24),
			vector3(2557.19, 382.63, 108.62),
			vector3(374.3, 325.92, 103.57),
			vector3(1163.61, -323.94, 69.21),
			vector3(-1820.72, 792.4, 138.12),
			vector3(-707.79, -914.61, 19.22),
			vector3(-48.83, -1757.59, 29.42),
		},
		targets = {
			vector3(26.28, -1347.49, 29.5),
			vector3(-3038.7204589844,585.35150146484,7.9046649932861),
			vector3(-3241.5505371094,1000.6616210938,12.826445579529),
			vector3(1728.2154541016,6414.3764648438,35.055946350098),
			vector3(1697.5864257813,4924.0048828125,42.059429168701),
			vector3(1960.9213867188,3739.9482421875,32.339492797852),
			vector3(548.30883789063,2671.8112792969,42.152244567871),
			vector3(2678.9006347656,3279.7360839844,55.259853363037),
			vector3(2557.8576660156,381.53189086914,108.6187210083),
			vector3(373.07611083984,325.69644165039,103.58511352539),
			vector3(1164.1829833984,-323.73614501953,69.200874328613),
			vector3(-1819.8, 793.15, 139.16),
			vector3(-706.65, -914.6, 20.26),
			vector3(-44.3, -1749.82, 29.42),
		}
	},

	--[[VehicleShop = {
		moneytype = 'money',
		type = 'vehicle',
		name = 'Vehicle Shop',
		blip = {
			id = 595, colour = 38, scale = 0.8
		},
		locations = {
			vector3(-53.079696655273,-1096.7937011719,26.42),
		},
		targets = {
			vector3(-54.497680664063,-1097.7269287109,26.323600769043),
		}
	},]]--

	YouTool = {
		--groups = {'police'},  -- Uncomment and set groups if the shop is restricted to certain jobs
		moneytype = 'money',  -- Accepting only cash
		name = 'YouTool',
		blip = {
			id = 402, colour = 69, scale = 0.8  -- Setting the blip for the map
		},
		locations = {
			vector3(2735.89, 3464.84, 55.7),  -- Customer Shop Spot (first location)vec3(2735.89, 3464.84, 55.7)
		},
		targets = {
			vector3(2738.26, 3481.36, 55.7)  -- Added target location
		}
	},

	Ammunation = {
		moneytype = 'money',
		name = 'Ammunation',
		blip = {
			id = 110, colour = 69, scale = 0.8
		},
		locations = {
			vector3(21.417778015137,-1106.8083496094,29.79),
			vector3(-662.79046630859,-935.12713623047,21.82),
			vector3(810.58520507813,-2157.458984375,29.61),
			vector3(1693.1014404297,3759.5517578125,34.70),
			vector3(-330.88055419922,6083.3168945313,31.45),
			vector3(252.47393798828,-49.140110015869,69.94),
			vector3(2568.6403808594,294.39981079102,108.73),
			vector3(-1118.3720703125,2697.9167480469,18.55),
			vector3(842.66595458984,-1033.5245361328,28.19),
			vector3(1434.76, 3029.22, 40.78) -- Corrected shop interaction point for customers
		},
		targets = {
			vector3(22.223720550537,-1106.1149902344,29.797040939331),
			vector3(-662.64953613281,-934.39453125,21.82918548584),
			vector3(810.5126953125,-2158.2407226563,29.619028091431),
			vector3(1692.6358642578,3760.1484375,34.705295562744),
			vector3(-331.31820678711,6084.0048828125,31.454734802246),
			vector3(253.2212677002,-49.650302886963,69.941062927246),
			vector3(2568.4680175781,293.5110168457,108.73485565186),
			vector3(-1118.8206787109,2698.6801757813,18.554098129272),
			vector3(842.81329345703,-1034.3870849609,28.194812774658),
			vector3(1432.9, 3028.63, 40.79) -- Corrected shop purchase point
		}
	},
	
	
	PoliceArmoury = {
		moneytype = 'money',
		name = 'Police Armoury',
		groups = {'lspd', 'bcso', 'fib'},  -- Restricted to police jobs only
		blip = {
			id = 110, colour = 29, scale = 0.8  -- Adjust the 'id', 'colour', and 'scale' as desired
		},
		locations = {
			vector3(480.32, -996.67, 30.69),    -- LSPD Armory
			vector3(1838.46, 3682.79, 38.94),   -- BCSO Armory
			vector3(386.16, 793.36, 190.49),    -- SAPR Armory
			vector3(363.49, -1599.8, 25.45)     -- FIB Armory
		},
		targets = {
			vector3(480.32, -996.67, 30.69),    -- Interaction point for LSPD Armory
			vector3(1838.46, 3682.79, 38.94),   -- Interaction point for BCSO Armory
			vector3(386.16, 793.36, 190.49),    -- Interaction point for SAPR Armory
			vector3(363.49, -1599.8, 25.45)     -- Interaction point for FIB Armory
		},
	},
	

	LiquorStore = {
		moneytype = 'money',
		name = 'Liquor Store',
		-- blip removed - using game default blips
		locations = {
			vector3(1135.6799316406,-981.05126953125,46.41),
			vector3(-1224.2336425781,-907.26556396484,12.32),
			vector3(-1486.5960693359,-380.41864013672,40.16),
			vector3(-2968.2321777344,389.49346923828,15.04),
			vector3(1167.6383056641,2708.9777832031,38.15),
			vector3(1395.5361328125,3605.6745605469,34.98)
		},
		targets = {
			vector3(1135.0822753906,-982.25408935547,46.524444580078),
			vector3(-1222.5571289063,-907.63452148438,12.437350273132),
			vector3(-1486.82421875,-378.71246337891,40.330924987793),
			vector3(-2967.3071289063,390.77975463867,15.211061477661),
			vector3(1165.8991699219,2709.9206542969,38.273204803467),
			vector3(1393.2454833984,3605.7229003906,35.130367279053)
		}
	},

	BlackMarketArms = {
		moneytype = 'black_money',
		name = 'Black Market (Arms)',
		locations = {
			vector3(591.57434082031,-3279.8911132813,6.06),
			--vector3(896.27, -1828.21, 22.34),
		}
	},

	WormsFunHouse = {
		moneytype = 'black_money',
		name = 'Worms FunHouse',
		locations = {
			vector3(1062.99, -264.32, 50.97),
			--vector3(896.27, -1828.21, 22.34),
		}
	},

	BlackMarketGoods = {
		moneytype = 'black_money',
		name = 'Black Market (Goods)',
		locations = {
			vector3(2843.14, 1456.81, 24.86),  -- Location from your old snippet
			-- Add more locations here if needed
		}
	},
	HuntingSupply = {
		moneytype = 'money',
		name = 'Hunting Store',
		locations = {
			vector3(-679.42, 5834.03, 17.33),  -- First location
			vector3(3811.91, 4481.35, 6.49),   -- Second location
		},
	},

	Burgershot = {
		moneytype = 'money',
		name = 'Burgershot Vendor',
		-- blip removed - using DRC script blip
		locations = {
			vector3(-1189.45, -895.56, 13.8),  -- Burgershot Vespucci
			-- Add more Burgershot locations here
		},
		targets = {
			vector3(-1189.45, -895.56, 13.8),  -- Interaction point
		}
	},

	UwUCafe = {
		moneytype = 'money',
		name = 'UwU Cafe Vendor',
		-- blip removed - using DRC script blip
		locations = {
			vector3(-576.3, -1059.59, 22.34),  -- UwU Cat Cafe
			-- Add more UwU Cafe locations here
		},
		targets = {
			vector3(-576.3, -1059.59, 22.34),  -- Interaction point
		}
	},

	BeanMachine = {
		moneytype = 'money',
		name = 'Bean Machine Vendor',
		-- blip removed - using DRC script blip
		locations = {
			vector3(123.27, -1035.99, 29.28),  -- Bean Machine Downtown
			-- Add more Bean Machine locations here
		},
		targets = {
			vector3(123.27, -1035.99, 29.28),  -- Interaction point
		}
	},

	PizzaThis = {
		moneytype = 'money',
		name = 'Pizza This Vendor',
		-- blip removed - using DRC script blip
		locations = {
			vector3(812.07, -753.16, 26.78),  -- Pizza This
			-- Add more Pizza This locations here
		},
		targets = {
			vector3(812.07, -753.16, 26.78),  -- Interaction point
		}
	},

	Pearls = {
		moneytype = 'money',
		name = 'Pearls Seafood Vendor',
		-- blip removed - using DRC script blip
		locations = {
			vector3(-1832.65, -1187.03, 14.31),  -- Pearls Seafood Restaurant
		},
		targets = {
			vector3(-1832.65, -1187.03, 14.31),  -- Interaction point
		}
	},

	BahamaMamas = {
		moneytype = 'money',
		name = 'Bahama Mamas Vendor',
		-- blip removed - using DRC script blip
		locations = {
			vector3(-1399.96, -601.38, 30.32),  -- Bahama Mamas Nightclub
		},
		targets = {
			vector3(-1399.96, -601.38, 30.32),  -- Interaction point
		}
	},

	KoiRestaurant = {
		moneytype = 'money',
		name = 'Koi Restaurant Vendor',
		-- blip removed - using DRC script blip
		locations = {
			vector3(-1036.01, -1485.27, 4.58),  -- Koi Restaurant
		},
		targets = {
			vector3(-1036.01, -1485.27, 4.58),  -- Interaction point
		}
	},

	Tequilala = {
		moneytype = 'money',
		name = 'Tequi-la-la Vendor',
		-- blip removed - using DRC script blip
		locations = {
			vector3(-561.91, 286.58, 82.18),  -- Tequi-la-la Nightclub
		},
		targets = {
			vector3(-561.91, 286.58, 82.18),  -- Interaction point
		}
	},

	VanillaUnicorn = {
		moneytype = 'money',
		name = 'Vanilla Unicorn Vendor',
		-- blip removed - using DRC script blip
		locations = {
			vector3(129.23, -1283.59, 29.27),  -- Vanilla Unicorn Strip Club
		},
		targets = {
			vector3(129.23, -1283.59, 29.27),  -- Interaction point
		}
	},

	Bennys = {
		moneytype = 'money',
		name = 'Bennys Auto Supply',
		-- blip removed - using game blip
		locations = {
			vector3(-201.06, -1318.55, 31.09),  -- Bennys Original Motor Works
		},
		targets = {
			vector3(-201.06, -1318.55, 31.09),  -- Interaction point
		}
	},

	ToxsShop = {
		moneytype = 'money',
		name = '227 Tox\'s Auto Supply',
		-- blip removed - using game blip
		locations = {
			vector3(806.0, -827.26, 26.34),  -- 227 Tox's Shop
		},
		targets = {
			vector3(806.0, -827.26, 26.34),  -- Interaction point
		}
	},

	Flywheels = {
		moneytype = 'money',
		name = 'Flywheels Auto Supply',
		-- blip removed - using game blip
		locations = {
			vector3(1769.49, 3323.62, 41.44),  -- Flywheels Garage
		},
		targets = {
			vector3(1769.49, 3323.62, 41.44),  -- Interaction point
		}
	},

	LSCustoms = {
		moneytype = 'money',
		name = 'LS Customs Supply',
		-- blip removed - using game blip
		locations = {
			vector3(-346.36, -107.71, 39.02),  -- LS Customs
		},
		targets = {
			vector3(-346.36, -107.71, 39.02),  -- Interaction point
		}
	},

	SonsAuto = {
		moneytype = 'money',
		name = 'Sons Auto Supply',
		-- blip removed - using game blip
		locations = {
			vector3(554.95, -172.67, 54.51),  -- Sons Auto Shop
		},
		targets = {
			vector3(554.95, -172.67, 54.51),  -- Interaction point
		}
	},

}