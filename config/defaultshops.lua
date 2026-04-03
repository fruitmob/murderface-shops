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
			id = 73, colour = 8, scale = 0.8
		},
	},]]--

	['Balls8'] = {
		moneytype = 'money',
		name = '8Balls',
		blip = {
			id = 93, colour = 27, scale = 0.7
		},
		locations = {
			vector3(-1587.5, -993.33, 13.08),  -- Manual placement
		},
		targets = {
			vector3(-1587.5, -993.33, 13.08),
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
		groups = {'mechanic', 'lscustoms', 'sonsauto', 'allcare', 'bennys'},
		moneytype = 'money',
		name = 'Mechanic Supply',
		blip = {
			id = 402, colour = 25, scale = 0.7
		},
		locations = {
			vector3(116.04, 6633.6, 32.0),  -- First location (already offset from ped)
			vector3(1696.91, 3589.48, 35.62),  -- Second location offset in front of ped (h=116.42)
			vector3(1203.64, 2646.94, 37.81),  -- LS Customs Sandy Shores (h=46.77)
		}
	},

	General = {
		moneytype = 'money',
		name = 'Shop 24/7',
		blip = {
			id = 59, colour = 2, scale = 0.7
		},
		locations = {
			vector3(29.72, -1344.16, 29.5),           -- #125
			vector3(-3043.49, 588.38, 7.91),           -- #804
			vector3(-3245.02, 1005.27, 12.83),           -- #905
			vector3(1733.80, 6415.69, 35.04),           -- #3030
			vector3(1697.68, 4924.30, 42.06),           -- LTD #2013
			vector3(1962.91, 3745.42, 32.34),           -- #1036
			vector3(544.51, 2667.60, 42.16),           -- #928
			vector3(2677.97, 3285.49, 55.24),           -- #957
			vector3(2554.30, 386.10, 108.62),           -- #402
			vector3(378.38, 328.19, 103.57),           -- #574
			vector3(1163.99, -324.12, 69.21),           -- LTD #411
			vector3(-1819.98, 792.71, 138.08),           -- LTD #817R
			vector3(-706.83, -914.59, 19.22),           -- LTD #366
			vector3(-48.21, -1758.43, 29.42),           -- LTD #817D
			vector3(161.23, 6640.96, 31.7),           -- Paleto
			vector3(814.38, -782.57, 26.17),           -- Downtown Vinewood (no ped)
			vector3(2005.40, 3784.14, 32.2),           -- Sandy Shores (no ped)
		},
		targets = {
			vector3(29.72, -1344.16, 29.5),           -- #125
			vector3(-3043.49, 588.38, 7.91),           -- #804
			vector3(-3245.02, 1005.27, 12.83),           -- #905
			vector3(1733.80, 6415.69, 35.04),           -- #3030
			vector3(1697.68, 4924.30, 42.06),           -- LTD #2013
			vector3(1962.91, 3745.42, 32.34),           -- #1036
			vector3(544.51, 2667.60, 42.16),           -- #928
			vector3(2677.97, 3285.49, 55.24),           -- #957
			vector3(2554.30, 386.10, 108.62),           -- #402
			vector3(378.38, 328.19, 103.57),           -- #574
			vector3(1163.99, -324.12, 69.21),           -- LTD #411
			vector3(-1819.98, 792.71, 138.08),           -- LTD #817R
			vector3(-706.83, -914.59, 19.22),           -- LTD #366
			vector3(-48.21, -1758.43, 29.42),           -- LTD #817D
			vector3(161.23, 6640.96, 31.7),           -- Paleto
			vector3(814.38, -782.57, 26.17),           -- Downtown Vinewood (no ped)
			vector3(2005.40, 3784.14, 32.2),           -- Sandy Shores (no ped)
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
			id = 402, colour = 25, scale = 0.7  -- Setting the blip for the map
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
			id = 110, colour = 69, scale = 0.7
		},
		-- "locations" = store interact point (press E) when ox_target is OFF
		-- "targets"   = store interact point (press E) when ox_target is ON
		-- Ped spawns are in shop_peds.lua (Ammunation section)
		locations = {
			vector3(21.83, -1106.97, 29.8),           -- #1 Downtown
			vector3(-662.54, -935.26, 21.83),          -- #2 Little Seoul
			vector3(810.46, -2157.22, 29.61),          -- #3 East LS
			vector3(1692.87, 3759.01, 34.7),          -- #4 Sandy Shores
			vector3(-330.62, 6083.47, 31.46),          -- #5 Paleto Bay
			vector3(252.33, -49.67, 69.94),            -- #6 Pillbox
			vector3(2568.17, 294.38, 108.74),          -- #7 Chumash
			vector3(-1118.12, 2698.21, 18.59),         -- #8 Route 68
			vector3(842.68, -1033.59, 28.2),          -- #9 Rockford
			vector3(1434.76, 3029.22, 40.78)           -- #10 Patoche Sandy Shores
		},
		targets = {
			vector3(21.83, -1106.97, 29.8),           -- #1 Downtown
			vector3(-662.54, -935.26, 21.83),          -- #2 Little Seoul
			vector3(810.46, -2157.22, 29.61),          -- #3 East LS
			vector3(1692.87, 3759.01, 34.7),          -- #4 Sandy Shores
			vector3(-330.62, 6083.47, 31.46),          -- #5 Paleto Bay
			vector3(252.33, -49.67, 69.94),            -- #6 Pillbox
			vector3(2568.17, 294.38, 108.74),          -- #7 Chumash
			vector3(-1118.12, 2698.21, 18.59),         -- #8 Route 68
			vector3(842.68, -1033.59, 28.2),          -- #9 Rockford
			vector3(1432.9, 3028.63, 40.79)            -- #10 Patoche Sandy Shores
		}
	},
	
	
	PoliceArmoury = {
		moneytype = 'money',
		name = 'Police Armoury',
		groups = {'lspd', 'bcso', 'fib', 'sapr', 'sasp'},  -- Restricted to police jobs only
		blip = {
			id = 110, colour = 29, scale = 0.7  -- Adjust the 'id', 'colour', and 'scale' as desired
		},
		locations = {
			vector3(478.82, -996.67, 30.69),    -- LSPD Armory - offset in front of ped (h=90)
			vector3(1836.96, 3682.79, 38.94),   -- BCSO Armory - offset in front of ped (h=90)
			vector3(384.66, 793.36, 190.49),    -- SAPR Armory - offset in front of ped (h=90)
			vector3(361.99, -1599.8, 25.45)     -- FIB Armory - offset in front of ped (h=90)
		},
		targets = {
			vector3(478.82, -996.67, 30.69),    -- LSPD Armory
			vector3(1836.96, 3682.79, 38.94),   -- BCSO Armory
			vector3(384.66, 793.36, 190.49),    -- SAPR Armory
			vector3(361.99, -1599.8, 25.45)     -- FIB Armory
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
			vector3(590.08, -3280.04, 6.06),  -- Offset in front of ped (h=95.83)
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
			vector3(2841.80, 1457.48, 24.86),  -- Offset in front of ped (h=63.44)
		}
	},
	-----------------------------------------------------------------------
	-- Sewer MLO Shops (2026-02-20) - No blips; hidden underground market
	-----------------------------------------------------------------------

	--[[SewerMarket = {
		moneytype = 'black_money',
		name = 'The Rat\'s Nest',
		-- No blip - underground market is word-of-mouth only
		locations = {
			vector3(193.35, -1680.32, -1.53),  -- Offset in front of ped (h=56.69)
		},
		targets = {
			vector3(193.35, -1680.32, -1.53),
		}
	},]]-- -- FMRP: sewer MLO pulled

	-- FMRP: commented out - sewer MLO pulled
	--[[SewerBistro = {
		moneytype = 'money',
		name = 'The Underbelly',
		locations = {
			vector3(187.19, -1628.52, -1.08),
		},
		targets = {
			vector3(187.19, -1628.52, -1.08),
		}
	},]]--
	LocksmithShop = {
		moneytype = 'money',
		name = 'Locksmith',
		blip = {
			id = 478, colour = 4, scale = 0.7  -- Key icon, blue
		},
		locations = {
			vector3(164.94, -1806.11, 28.32),  -- Offset in front of ped (h=315.74)
		},
		targets = {
			vector3(164.94, -1806.11, 28.32),
		}
	},

	-- FMRP: Commented out — gg_hunting v2.0.6 handles this location now
	-- HuntingSupply = {
	-- 	moneytype = 'money',
	-- 	name = 'Hunting Store',
	-- 	locations = {
	-- 		vector3(-679.42, 5834.03, 17.33),  -- First location
	-- 		vector3(3811.91, 4481.35, 6.49),   -- Second location
	-- 	},
	-- },

	UpnAtom = {
		moneytype = 'money',
		name = 'Up-n-Atom Vendor',
		-- blip removed - using DRC script blip
		locations = {
			vector3(88.54, 287.85, 110.21),  -- Customer side of counter (h=280.75)
		},
		targets = {
			vector3(88.54, 287.85, 110.21),
		}
	},

	Burgershot = {
		moneytype = 'money',
		name = 'Burgershot Vendor',
		-- blip removed - using DRC script blip
		locations = {
			vector3(-1190.30, -894.32, 13.8),  -- Offset in front of ped (h=34.39)
		},
		targets = {
			vector3(-1190.30, -894.32, 13.8),
		}
	},

	UwUCafe = {
		moneytype = 'money',
		name = 'UwU Cafe Vendor',
		-- blip removed - using DRC script blip
		locations = {
			vector3(-576.63, -1061.05, 22.34),  -- Offset in front of ped (h=167.36)
		},
		targets = {
			vector3(-576.63, -1061.05, 22.34),
		}
	},

	-- FMRP: commented out - no Bean Machine MLO installed, DRC stopped
	--[[BeanMachine = {
		moneytype = 'money',
		name = 'Bean Machine Vendor',
		locations = {
			vector3(121.81, -1035.64, 29.28),
		},
		targets = {
			vector3(121.81, -1035.64, 29.28),
		}
	},]]--

	-- FMRP: commented out - no Pizza This MLO installed, DRC stopped
	--[[PizzaThis = {
		moneytype = 'money',
		name = 'Pizza This Vendor',
		locations = {
			vector3(810.58, -753.03, 26.78),
		},
		targets = {
			vector3(810.58, -753.03, 26.78),
		}
	},]]--

	Pearls = {
		moneytype = 'money',
		name = 'Pearls Seafood Vendor',
		-- blip removed - using DRC script blip
		locations = {
			vector3(-1831.34, -1187.76, 14.31),  -- Offset in front of ped (h=241.08)
		},
		targets = {
			vector3(-1831.34, -1187.76, 14.31),
		}
	},

	BahamaMamas = {
		moneytype = 'money',
		name = 'Bahama Mamas Vendor',
		-- blip removed - using DRC script blip
		locations = {
			vector3(-1398.54, -601.86, 30.32),  -- Offset in front of ped (h=251.44)
		},
		targets = {
			vector3(-1398.54, -601.86, 30.32),
		}
	},

	-- FMRP: commented out - no Koi MLO installed, DRC stopped
	--[[KoiRestaurant = {
		moneytype = 'money',
		name = 'Koi Restaurant Vendor',
		locations = {
			vector3(-1037.33, -1484.57, 4.58),
		},
		targets = {
			vector3(-1037.33, -1484.57, 4.58),
		}
	},]]--

	Tequilala = {
		moneytype = 'money',
		name = 'Tequi-la-la Vendor',
		-- blip removed - using DRC script blip
		locations = {
			vector3(-560.48, 286.14, 82.18),  -- Offset in front of ped (h=252.99)
		},
		targets = {
			vector3(-560.48, 286.14, 82.18),
		}
	},

	VanillaUnicorn = {
		moneytype = 'money',
		name = 'Vanilla Unicorn Vendor',
		-- blip removed - using DRC script blip
		locations = {
			vector3(127.92, -1284.33, 29.27),  -- Offset in front of ped (h=119.36)
		},
		targets = {
			vector3(127.92, -1284.33, 29.27),
		}
	},
	ToxsShop = {
		groups = {'mechanic', 'lscustoms', 'sonsauto', 'allcare', 'bennys'},
		moneytype = 'money',
		name = '227 Tox\'s Auto Supply',
		-- blip removed - using game blip
		locations = {
			vector3(804.50, -827.31, 26.34),  -- Offset in front of ped (h=91.94)
		},
		targets = {
			vector3(804.50, -827.31, 26.34),
		}
	},
	-----------------------------------------------------------------------
	-- New Shops (2026-02-22)
	-----------------------------------------------------------------------

	FarmSupply = {
		moneytype = 'money',
		name = 'Farm Supply',
		blip = {
			id = 478, colour = 25, scale = 0.7  -- Store icon, green
		},
		locations = {
			vector3(1657.02, 4874.62, 42.04),  -- Offset in front of ped (h=278.52)
		},
		targets = {
			vector3(1657.02, 4874.62, 42.04),
		}
	},

	MeatLocker = {
		moneytype = 'money',
		name = 'Meat Locker',
		blip = {
			id = 207, colour = 1, scale = 0.7  -- Steak icon, red
		},
		locations = {
			vector3(-126.03, 1895.14, 197.33),  -- Offset in front of ped (h=181.49)
		},
		targets = {
			vector3(-126.03, 1895.14, 197.33),
		}
	},

	TechShop = {
		moneytype = 'money',
		name = 'Tech Shop',
		blip = {
			id = 521, colour = 26, scale = 0.7  -- Computer icon, light blue
		},
		locations = {
			vector3(-914.67, -151.06, 46.27),  -- Offset in front of ped (h=210.99)
		},
		targets = {
			vector3(-914.67, -151.06, 46.27),
		}
	},

	PetShop = {
		moneytype = 'money',
		name = 'Pet Shop',
		blip = {
			id = 273, colour = 46, scale = 0.7  -- Paw print icon, dark green
		},
		locations = {
			vector3(-1470.75, -133.61, 51.09),  -- LS Pet Shop (h=352.29)
			vector3(561.55, 2752.74, 42.16),    -- Sandy Shores Pet Shop (h=182.96)
		},
		targets = {
			vector3(-1470.75, -133.61, 51.09),
			vector3(561.55, 2752.74, 42.16),
		},
		ped = function()
			local model = `a_f_y_vinewood_01`
			lib.requestModel(model)
			-- LS location
			local ped1 = CreatePed(4, model, -1470.75, -133.61, 50.09, 352.29, false, true)
			while not DoesEntityExist(ped1) do Wait(1) end
			SetBlockingOfNonTemporaryEvents(ped1, true)
			SetEntityInvincible(ped1, true)
			FreezeEntityPosition(ped1, true)
			-- Sandy Shores location
			local ped2 = CreatePed(4, model, 561.55, 2752.74, 41.16, 182.96, false, true)
			while not DoesEntityExist(ped2) do Wait(1) end
			SetBlockingOfNonTemporaryEvents(ped2, true)
			SetEntityInvincible(ped2, true)
			FreezeEntityPosition(ped2, true)
		end,
	},

	DigiDen = {
		moneytype = 'money',
		name = 'Digi Den',
		blip = {
			id = 521, colour = 26, scale = 0.7  -- Computer icon, light blue
		},
		locations = {
			vector3(1133.61, -469.38, 66.49),  -- Upstairs, offset in front of ped (h=169.42)
			vector3(384.36, -831.3, 29.29),    -- Second location (h=270.19)
		},
		targets = {
			vector3(1133.61, -469.38, 66.49),
			vector3(384.36, -831.3, 29.29),
		}
	},

	DigiDenBasement = {
		moneytype = 'black_money',
		name = 'Digi Den Basement',
		-- No blip - hidden underground tech black market
		locations = {
			vector3(1134.44, -466.92, 62.81),  -- Downstairs, offset in front of ped (h=79.35)
		},
		targets = {
			vector3(1134.44, -466.92, 62.81),
		}
	},

	Hookies = {
		moneytype = 'money',
		name = 'Hookies Bait & Seafood',
		blip = {
			id = 68, colour = 3, scale = 0.7  -- Boat icon, light blue
		},
		locations = {
			vector3(-2178.52, 4279.11, 49.18),  -- Offset in front of ped (h=59.04)
		},
		targets = {
			vector3(-2178.52, 4279.11, 49.18),
		}
	},

	SeagullRaceway = {
		moneytype = 'money',
		name = 'Seagull Raceway Pit Stop',
		blip = {
			id = 326, colour = 1, scale = 0.7  -- Racing flag icon, red
		},
		locations = {
			vector3(1338.16, 6650.85, 10.4),  -- Offset in front of ped (h=174.56)
		},
		targets = {
			vector3(1338.16, 6650.85, 10.4),
		}
	},
	-----------------------------------------------------------------------
	-- Rick's Garage Lab (2026-03-10) - Chumash area garage
	-- Rick & Morty themed scientist selling illicit compounds & lab supplies
	-----------------------------------------------------------------------

	PortalLab = {
		moneytype = 'black_money',
		name = "Rick's Garage Lab",
		-- No blip - you find Rick, Rick doesn't find you
		locations = {
			vector3(-3198.48, 1174.35, 9.71),  -- Garage lab (h=257.29)
		},
		targets = {
			vector3(-3198.48, 1174.35, 9.71),
		}
	},

	-----------------------------------------------------------------------
	-- Casino Bar (2026-03-10) - Second casino location
	-----------------------------------------------------------------------

	CasinoBar = {
		moneytype = 'money',
		name = 'Casino Bar',
		-- blip disabled: casino already has its own map blip
		locations = {
			vector3(1113.5, -2316.73, 24.45),
		},
		targets = {
			vector3(1113.5, -2316.73, 24.45),
		}
	},

	-----------------------------------------------------------------------
	-- The Rusty Spoke (2026-03-10) - Trailer park biker bar, Grapeseed area
	-----------------------------------------------------------------------

	BikerBar = {
		moneytype = 'money',
		name = 'The Rusty Spoke',
		blip = {
			id = 52, colour = 40, scale = 0.8  -- Bar/drink icon, orange
		},
		locations = {
			vector3(2194.83, 5581.68, 53.36),  -- Trailer park bar (h=177.64)
		},
		targets = {
			vector3(2194.83, 5581.68, 53.36),
		}
	},
	-----------------------------------------------------------------------
	-- Alamo Isle Cafe (2026-03-10) - Island cafe/restaurant, Alamo Sea
	-----------------------------------------------------------------------

	AlamoIsle = {
		moneytype = 'money',
		name = 'Alamo Isle Cafe',
		blip = {
			id = 47, colour = 69, scale = 0.7  -- Restaurant icon, teal
		},
		locations = {
			vector3(229.44, 3998.06, 50.15),  -- 1 unit in front of ped (h=54.73)
		},
		targets = {
			vector3(229.44, 3998.06, 50.15),
		},
		ped = function()
			local model = `s_f_y_bartender_01`
			lib.requestModel(model)
			local ped = CreatePed(4, model, 230.26, 3997.48, 49.15, 54.73, false, true)
			while not DoesEntityExist(ped) do Wait(1) end
			SetBlockingOfNonTemporaryEvents(ped, true)
			SetEntityInvincible(ped, true)
			FreezeEntityPosition(ped, true)
		end,
	},

	-----------------------------------------------------------------------
	-- The Old House (2026-03-10) - Creepy black market, no blip
	-----------------------------------------------------------------------

	CreepyHouse = {
		moneytype = 'black_money',
		name = 'The Old House',
		-- No blip - word of mouth only
		locations = {
			vector3(1532.79, 1687.10, 113.36),  -- 1 unit in front of ped (h=33.18)
		},
		targets = {
			vector3(1532.79, 1687.10, 113.36),
		},
		ped = function()
			local model = `u_m_y_zombie_01`
			lib.requestModel(model)
			local ped = CreatePed(4, model, 1533.34, 1686.26, 112.36, 33.18, false, true)
			while not DoesEntityExist(ped) do Wait(1) end
			SetBlockingOfNonTemporaryEvents(ped, true)
			SetEntityInvincible(ped, true)
			FreezeEntityPosition(ped, true)
		end,
	},
	CoolBeans = {
		moneytype = 'money',
		name = 'Cool Beans',
		blip = {
			id = 47, colour = 49, scale = 0.7  -- Restaurant icon, brown
		},
		locations = {
			vector3(-1218.15, -1493.84, 3.37),  -- 1 unit in front of ped (h=28.79)
		},
		targets = {
			vector3(-1218.15, -1493.84, 3.37),
		},
	},
	TruthOrganic = {
		moneytype = 'money',
		name = 'Truth Organic',
		blip = {
			id = 478, colour = 25, scale = 0.7  -- Store icon, green-yellow
		},
		locations = {
			vector3(-1226.04, -1483.99, 3.37),  -- 1 unit in front of ped (h=33.87)
		},
		targets = {
			vector3(-1226.04, -1483.99, 3.37),
		},
	},
	-----------------------------------------------------------------------
	-- Arcade Bar (2026-03-11) - Near Pug Paintball entrance
	-----------------------------------------------------------------------

	-----------------------------------------------------------------------
	-- Fight Medic (2026-03-13) - Underground boxing ring medical supplies
	-----------------------------------------------------------------------

	FightMedic = {
		moneytype = 'money',
		name = 'Fight Medic',
		blip = {
			id = 153, colour = 1, scale = 0.7  -- Ambulance icon, red
		},
		locations = {
			vector3(-519.15, -1724.85, 19.16),
		},
		targets = {
			vector3(-519.15, -1724.85, 19.16),
		},
	},
	CyberBar = {
		moneytype = 'money',
		name = 'Cyber Bar',
		blip = {
			id = 93, colour = 48, scale = 0.7  -- Bar icon, neon blue
		},
		locations = {
			vector3(335.75, -915.12, 29.26),  -- Cyber Bar (h=179.83)
		},
		targets = {
			vector3(335.75, -915.12, 29.26),
		},
	},

	CyberClub = {
		moneytype = 'black_money',
		name = 'Cyber Club',
		-- No blip - secret underground nightclub
		locations = {
			vector3(377.30, -935.36, 25.59),  -- Underground nightclub beneath Cyber Bar (h=2.74)
		},
		targets = {
			vector3(377.30, -935.36, 25.59),
		},
	},
	-----------------------------------------------------------------------
	-- White Widow (2026-03-14) - Weed seed & supply shop
	-----------------------------------------------------------------------

	WhiteWidow = {
		moneytype = 'money',
		name = 'White Widow',
		blip = {
			id = 496, colour = 2, scale = 0.7  -- Weed icon, green
		},
		locations = {
			vector3(187.60, -242.03, 54.07),  -- White Widow storefront (h=248.69)
		},
		targets = {
			vector3(187.60, -242.03, 54.07),
		},
		ped = function()
			local model = `a_f_y_hipster_02`
			lib.requestModel(model)
			local ped = CreatePed(4, model, 188.40, -241.50, 53.07, 248.69, false, true)
			while not DoesEntityExist(ped) do Wait(1) end
			SetBlockingOfNonTemporaryEvents(ped, true)
			SetEntityInvincible(ped, true)
			FreezeEntityPosition(ped, true)
			TaskStartScenarioInPlace(ped, 'WORLD_HUMAN_SMOKING', 0, true)
		end,
	},


	-----------------------------------------------------------------------
	-- White Widow South (weed dispensary)
	-----------------------------------------------------------------------
	WhiteWidowSouth = {
		moneytype = 'money',
		name = 'White Widow',
		blip = {
			id = 496, colour = 2, scale = 0.7  -- Weed icon, green
		},
		locations = {
			vector3(229.21, -1955.96, 23.06),
		},
		targets = {
			vector3(229.21, -1955.96, 23.06),
		},
		ped = function()
			local model = `a_f_y_fitness_01`
			lib.requestModel(model)
			local ped = CreatePed(4, model, 228.47, -1955.28, 22.06, 227.38, false, true)
			while not DoesEntityExist(ped) do Wait(1) end
			SetBlockingOfNonTemporaryEvents(ped, true)
			SetEntityInvincible(ped, true)
			FreezeEntityPosition(ped, true)
			TaskStartScenarioInPlace(ped, 'WORLD_HUMAN_SMOKING', 0, true)
		end,
	},


	-----------------------------------------------------------------------
	-- Pier 76 Car Club Lounge
	-----------------------------------------------------------------------
	Pier76Lounge = {
		moneytype = 'money',
		name = 'Pier 76 Lounge',
		locations = {
			vector3(527.99, -3088.65, 6.08),
		},
		targets = {
			vector3(527.99, -3088.65, 6.08),
		},
		ped = function()
			local model = `a_f_y_topless_01`
			lib.requestModel(model)
			local ped = CreatePed(4, model, 527.97, -3089.65, 5.08, 359.14, false, true)
			while not DoesEntityExist(ped) do Wait(1) end
			SetBlockingOfNonTemporaryEvents(ped, true)
			SetEntityInvincible(ped, true)
			FreezeEntityPosition(ped, true)
			TaskStartScenarioInPlace(ped, 'WORLD_HUMAN_HANG_OUT_STREET', 0, true)
		end,
	},


	-----------------------------------------------------------------------
	-- Pier 76 Mech Shop (self-service)
	-----------------------------------------------------------------------
	Pier76MechShop = {
		moneytype = 'money',
		name = 'Pier 76 Mech Shop',
		locations = {
			vector3(547.22, -3076.82, -1.87),
		},
		targets = {
			vector3(547.22, -3076.82, -1.87),
		},
		ped = function()
			local model = `a_f_y_fitness_01`
			lib.requestModel(model)
			local ped = CreatePed(4, model, 547.29, -3077.82, -2.87, 4.25, false, true)
			while not DoesEntityExist(ped) do Wait(1) end
			SetBlockingOfNonTemporaryEvents(ped, true)
			SetEntityInvincible(ped, true)
			FreezeEntityPosition(ped, true)
			TaskStartScenarioInPlace(ped, 'WORLD_HUMAN_WELDING', 0, true)
		end,
	},



	-----------------------------------------------------------------------
	-- Leap Frog Cafe
	-----------------------------------------------------------------------
	LeapFrogCafe = {
		moneytype = 'money',
		name = 'Leap Frog Cafe',
		blip = {
			id = 621, colour = 2, scale = 0.6
		},
		locations = {
			vector3(1116.52, -643.08, 56.82),
		},
		targets = {
			vector3(1116.52, -643.08, 56.82),
		},
		ped = function()
			local model = `a_f_y_bevhills_01`
			lib.requestModel(model)
			local ped = CreatePed(4, model, 1116.44, -642.08, 55.82, 184.6, false, true)
			while not DoesEntityExist(ped) do Wait(1) end
			SetBlockingOfNonTemporaryEvents(ped, true)
			SetEntityInvincible(ped, true)
			FreezeEntityPosition(ped, true)
			TaskStartScenarioInPlace(ped, 'WORLD_HUMAN_AA_COFFEE', 0, true)
		end,
	},

	-----------------------------------------------------------------------
	-- Wipeout Pit Stop
	-----------------------------------------------------------------------
	WipeoutPitStop = {
		moneytype = 'money',
		name = 'Wipeout Pit Stop',
		locations = {
			vector3(-881.79, -2860.43, -39.75),
		},
		targets = {
			vector3(-881.79, -2860.43, -39.75),
		},
		ped = function()
			local model = `a_f_y_fitness_01`
			lib.requestModel(model)
			local ped = CreatePed(4, model, -880.79, -2860.46, -40.75, 88.25, false, true)
			while not DoesEntityExist(ped) do Wait(1) end
			SetBlockingOfNonTemporaryEvents(ped, true)
			SetEntityInvincible(ped, true)
			FreezeEntityPosition(ped, true)
			TaskStartScenarioInPlace(ped, 'WORLD_HUMAN_HANG_OUT_STREET', 0, true)
		end,
	},

}
