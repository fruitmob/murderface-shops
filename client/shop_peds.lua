-- Shop Vendor Peds (Proximity-Based)
-- Uses lib.points to spawn peds only when a player is nearby.
-- Saves ~52 entity slots when no player is near these locations.
-- All female clerks use models from mypeds_replacements (thicc pack).

local spawnedPeds = {}
local PED_SPAWN_RADIUS = 40.0 -- Distance in meters to start loading ped

local shopPeds = {
    -- Balls8 Pool Hall
    {
        modelName = 'a_f_y_hipster_01',
        coords = vector4(-1586.34, -994.36, 13.08, 42.92),  -- spawns at Z 12.08
        scenario = 'WORLD_HUMAN_HANG_OUT_STREET'
    },

    -- Up-n-Atom
    {
        modelName = 'a_f_y_bevhills_01',
        coords = vector4(89.94, 288.52, 110.21, 120.92),
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- Burgershot
    {
        modelName = 'a_f_y_vinewood_03',
        coords = vector4(-1189.45, -895.56, 13.8, 34.39),
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- UwU Cafe
    {
        modelName = 'a_f_y_hipster_04',
        coords = vector4(-576.3, -1059.59, 22.34, 167.36),
        scenario = 'WORLD_HUMAN_HANG_OUT_STREET'
    },

    -- Pizza This
    {
        modelName = 'a_f_y_beach_01',
        coords = vector4(812.07, -753.16, 26.78, 84.9),
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- Liquor Store #1 (facing entrance)
    {
        modelName = 'a_f_y_tourist_01',
        coords = vector4(1135.6799316406, -981.05126953125, 46.41, 165.0),
        scenario = 'WORLD_HUMAN_HANG_OUT_STREET'
    },

    -- Liquor Store #2 - Bartender (facing entrance)
    {
        modelName = 's_f_y_bartender_01',
        coords = vector4(-1224.2336425781, -907.26556396484, 12.32, 25.0),
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- Liquor Store #3 (facing entrance)
    {
        modelName = 'a_f_m_bevhills_01',
        coords = vector4(-1486.5960693359, -380.41864013672, 40.16, 230.0),
        scenario = 'WORLD_HUMAN_HANG_OUT_STREET'
    },

    -- Liquor Store #4 - Bartender (facing entrance)
    {
        modelName = 's_f_y_baywatch_01',
        coords = vector4(-2968.2321777344, 389.49346923828, 15.04, 85.0),
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- Liquor Store #5 (facing entrance)
    {
        modelName = 'a_f_y_bevhills_03',
        coords = vector4(1167.6383056641, 2708.9777832031, 38.15, 355.0),
        scenario = 'WORLD_HUMAN_HANG_OUT_STREET'
    },

    -- Liquor Store #6 - Bartender (facing entrance)
    {
        modelName = 'a_f_m_beach_01',
        coords = vector4(1395.5361328125, 3605.6745605469, 34.98, 285.0),
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- Pearls Seafood
    {
        modelName = 'a_f_y_bevhills_01',
        coords = vector4(-1832.65, -1187.03, 14.31, 241.08),
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },


    -- Koi Restaurant
    {
        modelName = 'a_f_y_beach_01',
        coords = vector4(-1036.01, -1485.27, 4.58, 61.99),
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- Tequilala
    {
        modelName = 'a_f_y_bevhills_02',
        coords = vector4(-561.91, 286.58, 82.18, 252.99),
        scenario = 'WORLD_HUMAN_HANG_OUT_STREET'
    },

    -- Vanilla Unicorn
    {
        modelName = 'a_f_y_topless_01',
        coords = vector4(129.23, -1283.59, 29.27, 119.36),
        scenario = 'WORLD_HUMAN_HANG_OUT_STREET'
    },

    -- Cyber Bar
    {
        modelName = 'a_f_y_clubcust_01',
        coords = vector4(335.75, -915.12, 29.26, 179.83),
        scenario = 'WORLD_HUMAN_HANG_OUT_STREET'
    },

    -- Cyber Club (underground nightclub - dancing)
    {
        modelName = 'csb_stripper_01',
        coords = vector4(377.30, -935.36, 25.59, 2.74),
        animDict = 'anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity',
        animName = 'hi_dance_facedj_09_v2_female^1'
    },

    -- Bennys - Mechanic
    {
        modelName = 's_m_y_xmech_01',
        coords = vector4(-201.06, -1318.55, 31.09, 89.26),
        scenario = 'WORLD_HUMAN_CLIPBOARD'
    },

    -- 227 Tox's Shop - Mechanic
    {
        modelName = 's_m_y_xmech_02',
        coords = vector4(806.0, -827.26, 26.34, 91.94),
        scenario = 'WORLD_HUMAN_CLIPBOARD'
    },

    -- Flywheels - Mechanic
    {
        modelName = 's_m_y_xmech_01',
        coords = vector4(1769.49, 3323.62, 41.44, 219.09),
        scenario = 'WORLD_HUMAN_CLIPBOARD'
    },

    -- LS Customs - Mechanic
    {
        modelName = 's_m_y_xmech_02',
        coords = vector4(-346.36, -107.71, 39.02, 346.52),
        scenario = 'WORLD_HUMAN_CLIPBOARD'
    },

    -- Sons Auto - Mechanic
    {
        modelName = 's_m_y_xmech_01',
        coords = vector4(554.95, -172.67, 54.51, 182.86),
        scenario = 'WORLD_HUMAN_CLIPBOARD'
    },

    -- Police Armory #1 - Mission Row (LSPD)
    {
        modelName = 's_m_y_cop_01',
        coords = vector4(480.32, -996.67, 30.69, 90.0),
        scenario = 'WORLD_HUMAN_GUARD_STAND'
    },

    -- Police Armory #2 - Sandy Shores (BCSO)
    {
        modelName = 's_m_y_sheriff_01',
        coords = vector4(1838.46, 3682.79, 38.94, 90.0),
        scenario = 'WORLD_HUMAN_GUARD_STAND'
    },

    -- Police Armory #3 - Paleto Bay (SAPR)
    {
        modelName = 's_m_y_ranger_01',
        coords = vector4(386.16, 793.36, 190.49, 90.0),
        scenario = 'WORLD_HUMAN_GUARD_STAND'
    },

    -- Police Armory #4 - FIB Headquarters
    {
        modelName = 's_m_m_fiboffice_01',
        coords = vector4(363.49, -1599.8, 25.45, 90.0),
        scenario = 'WORLD_HUMAN_GUARD_STAND'
    },

    -- FMRP: Bean Machine commented out (no MLO, DRC stopped)
    --[[{
        modelName = 'a_f_y_tourist_01',
        coords = vector4(123.27, -1035.99, 29.28, 76.69),
        scenario = 'WORLD_HUMAN_AA_COFFEE'
    },]]--

    -----------------------------------------------------------------------
    -- General Stores (24/7 & LTD Gas) - Shopkeepers
    -- Restored 2026-02-20: previously spawned by owned shop ped() funcs;
    -- now here since player ownership is disabled.
    -----------------------------------------------------------------------

    -- 24/7 #125
    {
        modelName = 'a_f_y_bevhills_03',
        coords = vector4(29.74, -1343.16, 29.50, 178.68),
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- 24/7 #804
    {
        modelName = 's_f_y_baywatch_01',
        coords = vector4(-3044.45, 588.09, 7.91, 286.59),
        scenario = 'WORLD_HUMAN_AA_COFFEE'
    },

    -- 24/7 #905
    {
        modelName = 'a_f_m_beach_01',
        coords = vector4(-3246.01, 1005.44, 12.83, 260.25),
        scenario = 'WORLD_HUMAN_HANG_OUT_STREET'
    },

    -- 24/7 #3030
    {
        modelName = 'a_f_y_beach_01',
        coords = vector4(1734.31, 6416.55, 35.04, 149.37),
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- LTD Gas #2013
    {
        modelName = 'a_f_y_vinewood_03',
        coords = vector4(1697.06, 4923.51, 42.06, 321.87),
        scenario = 'WORLD_HUMAN_AA_COFFEE'
    },

    -- 24/7 #1036
    {
        modelName = 'a_f_y_hipster_04',
        coords = vector4(1962.42, 3746.29, 32.34, 209.32),
        scenario = 'WORLD_HUMAN_HANG_OUT_STREET'
    },

    -- 24/7 #928
    {
        modelName = 'a_f_y_bevhills_01',
        coords = vector4(544.56, 2666.60, 42.16, 2.96),
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- 24/7 #957
    {
        modelName = 'a_f_m_bevhills_01',
        coords = vector4(2677.09, 3285.97, 55.24, 241.57),
        scenario = 'WORLD_HUMAN_AA_COFFEE'
    },

    -- 24/7 #402
    {
        modelName = 's_f_y_bartender_01',
        coords = vector4(2553.30, 386.08, 108.62, 270.94),
        scenario = 'WORLD_HUMAN_HANG_OUT_STREET'
    },

    -- 24/7 #574
    {
        modelName = 'a_f_y_tourist_01',
        coords = vector4(378.64, 329.16, 103.57, 165.05),
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- LTD Gas #411
    {
        modelName = 'a_f_y_bevhills_03',
        coords = vector4(1164.98, -324.28, 69.21, 81.0),
        scenario = 'WORLD_HUMAN_AA_COFFEE'
    },

    -- LTD Gas #817 (Richman)
    {
        modelName = 'a_f_y_beach_01',
        coords = vector4(-1819.21, 793.35, 138.08, 129.45),
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- LTD Gas #366
    {
        modelName = 'a_f_m_beach_01',
        coords = vector4(-705.84, -914.7, 19.22, 83.75),
        scenario = 'WORLD_HUMAN_HANG_OUT_STREET'
    },

    -- LTD Gas #817 (Davis)
    {
        modelName = 'a_f_y_vinewood_03',
        coords = vector4(-47.51, -1759.14, 29.42, 44.54),
        scenario = 'WORLD_HUMAN_AA_COFFEE'
    },

    -- 24/7 Paleto
    {
        modelName = 's_f_y_baywatch_01',
        coords = vector4(160.6, 6641.73, 31.7, 219.26),  -- spawns at Z 30.7
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },


    -----------------------------------------------------------------------
    -- Ammunation Stores
    -----------------------------------------------------------------------

    -- Ammunation #1 - Downtown
    {
        modelName = 'a_f_y_bevhills_01',
        coords = vector4(22.14, -1106.02, 29.80, 161.94),
        scenario = 'WORLD_HUMAN_GUARD_STAND'
    },

    -- Ammunation #2 - Little Seoul
    {
        modelName = 'a_f_y_beach_01',
        coords = vector4(-662.51, -934.26, 21.83, 178.16),
        scenario = 'WORLD_HUMAN_HANG_OUT_STREET'
    },

    -- Ammunation #3 - East LS
    {
        modelName = 'a_f_m_bevhills_01',
        coords = vector4(810.48, -2158.22, 29.61, 1.03),
        scenario = 'WORLD_HUMAN_GUARD_STAND'
    },

    -- Ammunation #9 - Rockford
    {
        modelName = 'a_f_y_vinewood_03',
        coords = vector4(842.72, -1034.59, 28.20, 2.17),
        scenario = 'WORLD_HUMAN_HANG_OUT_STREET'
    },

    -- Ammunation #8 - Route 68
    {
        modelName = 's_f_y_bartender_01',
        coords = vector4(-1118.79, 2698.95, 18.59, 222.36),
        scenario = 'WORLD_HUMAN_GUARD_STAND'
    },

    -- Ammunation #7 - Chumash
    {
        modelName = 'a_f_y_tourist_01',
        coords = vector4(2568.15, 293.38, 108.74, 359.08),
        scenario = 'WORLD_HUMAN_HANG_OUT_STREET'
    },

    -- Ammunation #6 - Pillbox
    {
        modelName = 'a_f_y_bevhills_03',
        coords = vector4(253.26, -50.02, 69.94, 69.22),
        scenario = 'WORLD_HUMAN_GUARD_STAND'
    },

    -- Ammunation #5 - Paleto Bay
    {
        modelName = 'a_f_m_beach_01',
        coords = vector4(-331.27, 6084.23, 31.46, 220.74),
        scenario = 'WORLD_HUMAN_HANG_OUT_STREET'
    },

    -- Ammunation #4 - Sandy Shores
    {
        modelName = 'a_f_y_hipster_04',
        coords = vector4(1692.24, 3759.79, 34.70, 219.16),
        scenario = 'WORLD_HUMAN_GUARD_STAND'
    },

    -- Ammunation #10 - Patoche Sandy Shores
    {
        modelName = 's_f_y_baywatch_01',
        coords = vector4(1433.64, 3027.98, 40.79, 314.18),
        scenario = 'WORLD_HUMAN_HANG_OUT_STREET'
    },

    -----------------------------------------------------------------------
    -- Black Market Shops
    -----------------------------------------------------------------------

    -- Black Market (Arms)
    {
        modelName = 'a_m_m_eastsa_01',
        coords = vector4(591.57, -3279.89, 6.07, 95.83),
        scenario = 'WORLD_HUMAN_GUARD_STAND'
    },

    -- Black Market (Goods)
    {
        modelName = 'g_m_m_chigoon_02',
        coords = vector4(2843.14, 1456.81, 24.86, 63.44),
        scenario = 'WORLD_HUMAN_GUARD_STAND'
    },

    -----------------------------------------------------------------------
    -- Mechanic Supply Stores
    -----------------------------------------------------------------------

    -- MechanicSupply #1 (Paleto)
    {
        modelName = 's_m_m_autoshop_01',
        coords = vector4(114.06, 6631.91, 31.97, 313.68),
        scenario = 'WORLD_HUMAN_CLIPBOARD'
    },

    -- MechanicSupply #2 (Sandy Shores)
    {
        modelName = 's_m_m_autoshop_01',
        coords = vector4(1698.25, 3590.15, 35.62, 116.42),
        scenario = 'WORLD_HUMAN_CLIPBOARD'
    },

    -----------------------------------------------------------------------
    -- Specialty Shops
    -----------------------------------------------------------------------

    -- Worms FunHouse
    {
        modelName = 'a_f_y_bevhills_01',
        coords = vector4(1064.26, -262.62, 50.93, 145.29),
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- YouTool
    {
        modelName = 'a_f_m_bevhills_01',
        coords = vector4(2735.18, 3462.74, 55.7, 341.4),
        scenario = 'WORLD_HUMAN_CLIPBOARD'
    },

    -- MegaMart
    {
        modelName = 'a_f_y_vinewood_03',
        coords = vector4(89.54, -1745.3, 30.09, 315.5),  -- spawns at Z 29.09
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -----------------------------------------------------------------------
    -- Sewer MLO - Shops & Ambient Peds (2026-02-20)
    -----------------------------------------------------------------------

    -- FMRP: all sewer peds commented out (MLO pulled)
    --     -- SewerMarket "The Rat's Nest"
    --     {
    --         modelName = 'a_f_y_beach_01',
    --         coords = vector4(194.6, -1681.14, -0.53, 56.69),  -- spawns at Z -1.53
    --         scenario = 'WORLD_HUMAN_SMOKING'
    --     },
    -- 
    --     -- SewerBistro "The Underbelly"
    --     {
    --         modelName = 's_f_y_bartender_01',
    --         coords = vector4(187.07, -1627.02, -0.08, 184.61),  -- spawns at Z -1.08 (lowered 1.0)
    --         scenario = 'WORLD_HUMAN_AA_COFFEE'
    --     },
    -- 
    --     -- Sewer Ambient Ped #1 - Biker smoking near the table/couch area
    --     {
    --         modelName = 'g_m_y_lost_01',
    --         coords = vector4(188.55, -1680.23, -0.53, 223.43),  -- spawns at Z -1.53 (lowered 1.0)
    --         scenario = 'WORLD_HUMAN_SMOKING'
    --     },
    -- 
    --     -- Sewer Ambient Ped #2 - Hipster girl drinking, offset from ped #1
    --     {
    --         modelName = 'a_f_y_hipster_04',
    --         coords = vector4(189.8, -1681.4, -0.53, 40.0),  -- spawns at Z -1.53 (lowered 1.0)
    --         scenario = 'WORLD_HUMAN_AA_COFFEE'
    --     },
    -- 
    --     -- Sewer Ambient Ped #3 - Beach bum on phone, offset from ped #1
    --     {
    --         modelName = 'a_m_m_trampbeac_01',
    --         coords = vector4(187.2, -1679.1, -0.53, 130.0),  -- spawns at Z -1.53 (lowered 1.0)
    --         scenario = 'WORLD_HUMAN_STAND_MOBILE'
    --     },
    -- 
    --     -- SewerChopShop
    --     {
    --         modelName = 'a_f_y_tourist_01',
    --         coords = vector4(161.04, -1659.39, -0.53, 291.4),  -- spawns at Z -1.53 (lowered 1.0)
    --         scenario = 'WORLD_HUMAN_WELDING'
    --     },
    -- 
    -----------------------------------------------------------------------
    -- Locksmith Shop (2026-02-20)
    -----------------------------------------------------------------------

    -- LocksmithShop
    {
        modelName = 'a_f_y_bevhills_03',
        coords = vector4(163.89, -1807.18, 30.32, 315.74),  -- spawns at Z 29.32
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -----------------------------------------------------------------------
    -- New Shops (2026-02-22)
    -----------------------------------------------------------------------

    -- FarmSupply - Gardener at Grapeseed
    {
        modelName = 's_m_m_gardener_01',
        coords = vector4(1655.54, 4874.4, 42.04, 278.52),  -- spawns at Z 41.04
        scenario = 'WORLD_HUMAN_GARDENER_PLANT'
    },

    -- MeatLocker
    {
        modelName = 'a_f_m_beach_01',
        coords = vector4(-126.07, 1896.64, 197.33, 181.49),  -- spawns at Z 196.33
        scenario = 'WORLD_HUMAN_SMOKING'
    },

    -- PetShop
    {
        modelName = 'a_f_y_bevhills_01',
        coords = vector4(-1470.95, -135.1, 51.09, 352.29),  -- spawns at Z 50.09
        scenario = 'WORLD_HUMAN_HANG_OUT_STREET'
    },

    -- TechShop
    {
        modelName = 'a_f_m_bevhills_01',
        coords = vector4(-915.44, -149.77, 46.27, 210.99),  -- spawns at Z 45.27
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- Digi Den (Upstairs)
    {
        modelName = 'a_f_y_vinewood_03',
        coords = vector4(1133.89, -467.91, 66.49, 169.42),  -- spawns at Z 65.49
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- Digi Den Basement (Downstairs)
    {
        modelName = 'a_f_y_beach_01',
        coords = vector4(1135.91, -467.2, 62.81, 79.35),  -- spawns at Z 61.81
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- Digi Den #2
    {
        modelName = 's_f_y_baywatch_01',
        coords = vector4(384.36, -831.3, 29.29, 270.19),  -- spawns at Z 28.29
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- Hookies Bait & Seafood - Dock worker
    {
        modelName = 's_m_y_dockwork_01',
        coords = vector4(-2178.52, 4279.11, 49.18, 59.04),  -- spawns at Z 48.18
        scenario = 'WORLD_HUMAN_SMOKING'
    },

    -- Seagull Raceway Pit Stop - Mechanic
    {
        modelName = 's_m_y_xmech_02',
        coords = vector4(1338.16, 6650.85, 10.4, 174.56),  -- spawns at Z 9.4
        scenario = 'WORLD_HUMAN_CLIPBOARD'
    },

    -- Seagull Raceway Garage - Mechanic (pit area)
    {
        modelName = 's_m_m_autoshop_01',
        coords = vector4(1306.23, 6624.54, 10.41, 12.74),  -- spawns at Z 9.41
        scenario = 'WORLD_HUMAN_WELDING'
    },

    -- Clothing Store - Grapeseed
    {
        modelName = 'a_f_y_hipster_04',
        coords = vector4(1693.2, 4828.11, 42.07, 188.66),
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- Clothing Store - Rockford Hills
    {
        modelName = 'a_f_y_bevhills_01',
        coords = vector4(-705.5, -149.22, 37.42, 122.0),
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- Clothing Store - Del Perro
    {
        modelName = 'a_f_y_tourist_01',
        coords = vector4(-1192.61, -768.4, 17.32, 216.6),
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- Clothing Store - Pillbox Hill
    {
        modelName = 'a_f_y_vinewood_03',
        coords = vector4(425.91, -801.03, 29.49, 177.79),
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- Clothing Store - Hawick
    {
        modelName = 'a_f_y_bevhills_03',
        coords = vector4(-168.73, -301.41, 39.73, 238.67),
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- Clothing Store - Strawberry
    {
        modelName = 'a_f_m_beach_01',
        coords = vector4(75.39, -1398.28, 29.38, 6.73),
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- Clothing Store - Vespucci
    {
        modelName = 's_f_y_bartender_01',
        coords = vector4(-827.39, -1075.93, 11.33, 294.31),
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- Clothing Store - Morningwood
    {
        modelName = 'a_f_y_beach_01',
        coords = vector4(-1445.86, -240.78, 49.82, 36.17),
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- Clothing Store - Paleto Bay
    {
        modelName = 'a_f_m_bevhills_01',
        coords = vector4(9.22, 6515.74, 31.88, 131.27),
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- Clothing Store - Harmony
    {
        modelName = 's_f_y_baywatch_01',
        coords = vector4(615.35, 2762.72, 42.09, 170.51),
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- Clothing Store - Sandy Shores
    {
        modelName = 'a_f_y_bevhills_01',
        coords = vector4(1191.61, 2710.91, 38.22, 269.96),
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- Clothing Store - Chumash
    {
        modelName = 'a_f_y_hipster_04',
        coords = vector4(-3171.32, 1043.56, 20.86, 334.3),
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- Clothing Store - Route 68
    {
        modelName = 'a_f_y_vinewood_03',
        coords = vector4(-1105.52, 2707.79, 19.11, 317.19),
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- Clothing Store - La Mesa
    {
        modelName = 'a_f_y_tourist_01',
        coords = vector4(-1119.24, -1440.6, 5.23, 300.5),
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- Clothing Store - Burton
    {
        modelName = 'a_f_y_bevhills_03',
        coords = vector4(124.82, -224.36, 54.56, 335.41),
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -----------------------------------------------------------------------
    -- Barber Shops (2026-03-08)
    -----------------------------------------------------------------------

    -- Barber Shop - Rockford Hills
    {
        modelName = 'a_f_m_beach_01',
        coords = vector4(-814.22, -183.7, 37.57, 116.91),
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- Barber Shop - South LS
    {
        modelName = 'a_f_y_beach_01',
        coords = vector4(136.78, -1708.4, 29.29, 144.19),
        scenario = 'WORLD_HUMAN_HANG_OUT_STREET'
    },

    -- Barber Shop - Del Perro
    {
        modelName = 's_f_y_bartender_01',
        coords = vector4(-1282.57, -1116.84, 6.99, 89.25),
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- Barber Shop - Sandy Shores
    {
        modelName = 'a_f_y_vinewood_03',
        coords = vector4(1931.41, 3729.73, 32.84, 212.08),
        scenario = 'WORLD_HUMAN_HANG_OUT_STREET'
    },

    -- Barber Shop - Mirror Park
    {
        modelName = 'a_f_y_bevhills_01',
        coords = vector4(1212.8, -472.9, 65.2, 60.94),
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- Barber Shop - Hawick
    {
        modelName = 'a_f_m_bevhills_01',
        coords = vector4(-32.9, -152.3, 56.1, 335.22),
        scenario = 'WORLD_HUMAN_HANG_OUT_STREET'
    },

    -- Barber Shop - Paleto Bay
    {
        modelName = 'a_f_y_hipster_04',
        coords = vector4(-278.1, 6228.5, 30.7, 49.32),
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -----------------------------------------------------------------------
    -- Rick's Garage Lab (2026-03-10)
    -----------------------------------------------------------------------

    -- PortalLab - Thicc lab assistant
    {
        modelName = 'a_f_y_bevhills_01',
        coords = vector4(-3198.48, 1174.35, 9.71, 257.29),  -- spawns at Z 9.71
        scenario = 'WORLD_HUMAN_DRUG_DEALER'
    },

    -----------------------------------------------------------------------
    -- The Rusty Spoke (2026-03-10)
    -- Biker chick bartender, trailer park bar near Grapeseed (h=177.64)
    -----------------------------------------------------------------------

    -- BikerBar - Lost MC female bartender
    {
        modelName = 'g_f_y_lost_01',
        coords = vector4(2194.83, 5581.68, 54.36, 177.64),  -- spawns at Z 53.36
        scenario = 'WORLD_HUMAN_SMOKING'
    },

    -----------------------------------------------------------------------
    -- Casino Bar (2026-03-10) - Second casino location
    -----------------------------------------------------------------------

    -- CasinoBar - Female bartender
    {
        modelName = 's_f_y_bartender_01',
        coords = vector4(1113.5, -2316.73, 24.45, 81.82),  -- spawns at Z 23.45
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -----------------------------------------------------------------------
    -- Fight Medic (2026-03-13) - Underground boxing ring
    -----------------------------------------------------------------------

    -- FightMedic - Ring girl
    {
        modelName = 'a_f_y_fitness_01',
        coords = vector4(-519.15, -1724.85, 19.16, 346.62),  -- spawns at Z 18.16
        scenario = 'WORLD_HUMAN_PARTYING'
    },
}

-- Proximity-based ped spawning using lib.points
-- Peds spawn when player enters radius, despawn when they leave
for i, pedData in ipairs(shopPeds) do
    lib.points.new({
        coords = vec3(pedData.coords.x, pedData.coords.y, pedData.coords.z),
        distance = PED_SPAWN_RADIUS,
        onEnter = function()
            local model = lib.requestModel(pedData.modelName)
            if not model then return end

            local ped = CreatePed(4, model, pedData.coords.x, pedData.coords.y, pedData.coords.z - 1.0, pedData.coords.w, false, true)
            if DoesEntityExist(ped) then
                SetEntityAsMissionEntity(ped, true, true)
                SetBlockingOfNonTemporaryEvents(ped, true)
                SetEntityInvincible(ped, true)
                FreezeEntityPosition(ped, true)
                if pedData.scenario then
                    TaskStartScenarioInPlace(ped, pedData.scenario, 0, true)
                elseif pedData.animDict and pedData.animName then
                    lib.requestAnimDict(pedData.animDict)
                    TaskPlayAnim(ped, pedData.animDict, pedData.animName, 8.0, -8.0, -1, 1, 0, false, false, false)
                    RemoveAnimDict(pedData.animDict)
                end
                spawnedPeds[i] = ped
            end
            SetModelAsNoLongerNeeded(model)
        end,
        onExit = function()
            local ped = spawnedPeds[i]
            if ped and DoesEntityExist(ped) then
                DeleteEntity(ped)
            end
            spawnedPeds[i] = nil
        end,
    })
end

-- Cleanup on resource stop
AddEventHandler('onResourceStop', function(resourceName)
    if resourceName ~= cache.resource then return end
    for _, ped in pairs(spawnedPeds) do
        if DoesEntityExist(ped) then
            DeleteEntity(ped)
        end
    end
    spawnedPeds = {}
end)
