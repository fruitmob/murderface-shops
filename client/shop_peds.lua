-- Shop Vendor Peds (Proximity-Based)
-- Uses lib.points to spawn peds only when a player is nearby.
-- Saves ~52 entity slots when no player is near these locations.

local spawnedPeds = {}
local PED_SPAWN_RADIUS = 40.0 -- Distance in meters to start loading ped

local shopPeds = {
    -- Burgershot - Clown
    {
        modelName = 's_m_y_clown_01',
        coords = vector4(-1189.45, -895.56, 13.8, 34.39),
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- UwU Cafe - Stripper
    {
        modelName = 's_f_y_stripper_01',
        coords = vector4(-576.3, -1059.59, 22.34, 167.36),
        scenario = 'WORLD_HUMAN_HANG_OUT_STREET'
    },

    -- Pizza This - Clown
    {
        modelName = 's_m_y_clown_01',
        coords = vector4(812.07, -753.16, 26.78, 84.9),
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- Liquor Store #1 - Stripper (facing entrance)
    {
        modelName = 's_f_y_stripper_01',
        coords = vector4(1135.6799316406, -981.05126953125, 46.41, 165.0),
        scenario = 'WORLD_HUMAN_HANG_OUT_STREET'
    },

    -- Liquor Store #2 - Clown (facing entrance)
    {
        modelName = 's_m_y_clown_01',
        coords = vector4(-1224.2336425781, -907.26556396484, 12.32, 25.0),
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- Liquor Store #3 - Stripper (facing entrance)
    {
        modelName = 's_f_y_stripper_02',
        coords = vector4(-1486.5960693359, -380.41864013672, 40.16, 230.0),
        scenario = 'WORLD_HUMAN_HANG_OUT_STREET'
    },

    -- Liquor Store #4 - Clown (facing entrance)
    {
        modelName = 's_m_y_clown_01',
        coords = vector4(-2968.2321777344, 389.49346923828, 15.04, 85.0),
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- Liquor Store #5 - Stripper (facing entrance)
    {
        modelName = 's_f_y_stripper_01',
        coords = vector4(1167.6383056641, 2708.9777832031, 38.15, 355.0),
        scenario = 'WORLD_HUMAN_HANG_OUT_STREET'
    },

    -- Liquor Store #6 - Clown (facing entrance)
    {
        modelName = 's_m_y_clown_01',
        coords = vector4(1395.5361328125, 3605.6745605469, 34.98, 285.0),
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- Pearls Seafood - Clown
    {
        modelName = 's_m_y_clown_01',
        coords = vector4(-1832.65, -1187.03, 14.31, 241.08),
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- Bahama Mamas - Stripper (as requested)
    {
        modelName = 's_f_y_stripper_01',
        coords = vector4(-1399.96, -601.38, 30.32, 251.44),
        scenario = 'WORLD_HUMAN_HANG_OUT_STREET'
    },

    -- Koi Restaurant - Clown
    {
        modelName = 's_m_y_clown_01',
        coords = vector4(-1036.01, -1485.27, 4.58, 61.99),
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- Tequilala - Stripper
    {
        modelName = 's_f_y_stripper_02',
        coords = vector4(-561.91, 286.58, 82.18, 252.99),
        scenario = 'WORLD_HUMAN_HANG_OUT_STREET'
    },

    -- Vanilla Unicorn - Stripper
    {
        modelName = 's_f_y_stripper_01',
        coords = vector4(129.23, -1283.59, 29.27, 119.36),
        scenario = 'WORLD_HUMAN_HANG_OUT_STREET'
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

    -- Bean Machine - Hipster Barista (the stereotypical coffee shop employee)
    {
        modelName = 'a_m_y_hipster_01',
        coords = vector4(123.27, -1035.99, 29.28, 76.69),
        scenario = 'WORLD_HUMAN_AA_COFFEE'
    },

    -----------------------------------------------------------------------
    -- General Stores (24/7 & LTD Gas) - Shopkeepers
    -- Restored 2026-02-20: previously spawned by owned shop ped() funcs;
    -- now here since player ownership is disabled.
    -----------------------------------------------------------------------

    -- 24/7 #125
    {
        modelName = 'mp_m_shopkeep_01',
        coords = vector4(24.78, -1347.28, 29.5, 270.0),
        scenario = 'WORLD_HUMAN_STAND_IMPATIENT'
    },

    -- 24/7 #804
    {
        modelName = 'mp_m_shopkeep_01',
        coords = vector4(-3039.14, 584.80, 7.91, 0.0),
        scenario = 'WORLD_HUMAN_STAND_IMPATIENT'
    },

    -- 24/7 #905
    {
        modelName = 'mp_m_shopkeep_01',
        coords = vector4(-3242.27, 1000.29, 12.83, 0.0),
        scenario = 'WORLD_HUMAN_STAND_IMPATIENT'
    },

    -- 24/7 #3030
    {
        modelName = 'mp_m_shopkeep_01',
        coords = vector4(1728.17, 6415.15, 35.04, 242.61),
        scenario = 'WORLD_HUMAN_STAND_IMPATIENT'
    },

    -- LTD Gas #2013
    {
        modelName = 'mp_m_shopkeep_01',
        coords = vector4(1698.35, 4923.16, 42.06, 0.0),
        scenario = 'WORLD_HUMAN_STAND_IMPATIENT'
    },

    -- 24/7 #1036
    {
        modelName = 'mp_m_shopkeep_01',
        coords = vector4(1960.34, 3740.21, 32.34, 296.26),
        scenario = 'WORLD_HUMAN_STAND_IMPATIENT'
    },

    -- 24/7 #928
    {
        modelName = 'mp_m_shopkeep_01',
        coords = vector4(548.77, 2671.22, 42.16, 98.36),
        scenario = 'WORLD_HUMAN_STAND_IMPATIENT'
    },

    -- 24/7 #957
    {
        modelName = 'mp_m_shopkeep_01',
        coords = vector4(2678.12, 3279.72, 55.24, 329.48),
        scenario = 'WORLD_HUMAN_STAND_IMPATIENT'
    },

    -- 24/7 #402
    {
        modelName = 'mp_m_shopkeep_01',
        coords = vector4(2557.19, 381.14, 108.62, 0.0),
        scenario = 'WORLD_HUMAN_STAND_IMPATIENT'
    },

    -- 24/7 #574
    {
        modelName = 'mp_m_shopkeep_01',
        coords = vector4(372.89, 326.04, 103.57, 268.53),
        scenario = 'WORLD_HUMAN_STAND_IMPATIENT'
    },

    -- LTD Gas #411
    {
        modelName = 'mp_m_shopkeep_01',
        coords = vector4(1164.98, -324.28, 69.21, 81.0),
        scenario = 'WORLD_HUMAN_STAND_IMPATIENT'
    },

    -- LTD Gas #817 (Richman)
    {
        modelName = 'mp_m_shopkeep_01',
        coords = vector4(-1819.21, 793.35, 138.08, 129.45),
        scenario = 'WORLD_HUMAN_STAND_IMPATIENT'
    },

    -- LTD Gas #366
    {
        modelName = 'mp_m_shopkeep_01',
        coords = vector4(-705.84, -914.7, 19.22, 83.75),
        scenario = 'WORLD_HUMAN_STAND_IMPATIENT'
    },

    -- LTD Gas #817 (Davis)
    {
        modelName = 'mp_m_shopkeep_01',
        coords = vector4(-47.51, -1759.14, 29.42, 44.54),
        scenario = 'WORLD_HUMAN_STAND_IMPATIENT'
    },

    -----------------------------------------------------------------------
    -- Ammunation Stores - Strippers (rotating models)
    -----------------------------------------------------------------------

    -- Ammunation #1
    {
        modelName = 's_f_y_stripper_01',
        coords = vector4(22.55, -1105.33, 29.8, 157.97),
        scenario = 'WORLD_HUMAN_HANG_OUT_STREET'
    },

    -- Ammunation #2
    {
        modelName = 's_f_y_stripper_02',
        coords = vector4(-662.87, -933.32, 21.83, 179.01),
        scenario = 'WORLD_HUMAN_HANG_OUT_STREET'
    },

    -- Ammunation #3
    {
        modelName = 's_f_y_stripperlite',
        coords = vector4(810.49, -2159.23, 29.62, 357.97),
        scenario = 'WORLD_HUMAN_HANG_OUT_STREET'
    },

    -- Ammunation #4
    {
        modelName = 's_f_y_stripper_01',
        coords = vector4(1691.68, 3760.75, 34.71, 225.33),
        scenario = 'WORLD_HUMAN_HANG_OUT_STREET'
    },

    -- Ammunation #5
    {
        modelName = 's_f_y_stripper_02',
        coords = vector4(-332.34, 6084.66, 31.45, 218.03),
        scenario = 'WORLD_HUMAN_HANG_OUT_STREET'
    },

    -- Ammunation #6
    {
        modelName = 's_f_y_stripperlite',
        coords = vector4(254.49, -49.69, 69.94, 67.96),
        scenario = 'WORLD_HUMAN_HANG_OUT_STREET'
    },

    -- Ammunation #7
    {
        modelName = 's_f_y_stripper_01',
        coords = vector4(2568.67, 292.33, 108.73, 357.61),
        scenario = 'WORLD_HUMAN_HANG_OUT_STREET'
    },

    -- Ammunation #8
    {
        modelName = 's_f_y_stripper_02',
        coords = vector4(-1119.91, 2699.33, 18.55, 219.52),
        scenario = 'WORLD_HUMAN_HANG_OUT_STREET'
    },

    -- Ammunation #9
    {
        modelName = 's_f_y_stripperlite',
        coords = vector4(842.79, -1035.5, 28.19, 1.4),
        scenario = 'WORLD_HUMAN_HANG_OUT_STREET'
    },

    -- Ammunation #10
    {
        modelName = 's_f_y_stripper_01',
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

    -- Worms FunHouse - Clown
    {
        modelName = 's_m_y_clown_01',
        coords = vector4(1064.26, -262.62, 50.93, 145.29),
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- YouTool
    {
        modelName = 'u_f_o_eileen',
        coords = vector4(2735.18, 3462.74, 55.7, 341.4),
        scenario = 'WORLD_HUMAN_STAND_IMPATIENT'
    },

    -----------------------------------------------------------------------
    -- Sewer MLO - Shops & Ambient Peds (2026-02-20)
    -----------------------------------------------------------------------

    -- SewerMarket "The Rat's Nest" - TEMP LOCATION (update coords in-game later)
    {
        modelName = 's_f_y_stripper_01',
        coords = vector4(175.0, -1645.0, -0.53, 180.0),  -- spawns at Z -1.53 | PLACEHOLDER
        scenario = 'WORLD_HUMAN_STAND_IMPATIENT'
    },

    -- SewerBistro "The Underbelly" - Stripper bartender
    {
        modelName = 's_f_y_stripper_02',
        coords = vector4(187.07, -1627.02, -0.08, 184.61),  -- spawns at Z -1.08 (lowered 1.0)
        scenario = 'WORLD_HUMAN_AA_COFFEE'
    },

    -- Sewer Ambient Ped #1 - Biker smoking near the table/couch area
    {
        modelName = 'g_m_y_lost_01',
        coords = vector4(188.55, -1680.23, -0.53, 223.43),  -- spawns at Z -1.53 (lowered 1.0)
        scenario = 'WORLD_HUMAN_SMOKING'
    },

    -- Sewer Ambient Ped #2 - Hipster girl drinking, offset from ped #1
    {
        modelName = 'a_f_y_hipster_03',
        coords = vector4(189.8, -1681.4, -0.53, 40.0),  -- spawns at Z -1.53 (lowered 1.0)
        scenario = 'WORLD_HUMAN_AA_COFFEE'
    },

    -- Sewer Ambient Ped #3 - Beach bum on phone, offset from ped #1
    {
        modelName = 'a_m_m_trampbeac_01',
        coords = vector4(187.2, -1679.1, -0.53, 130.0),  -- spawns at Z -1.53 (lowered 1.0)
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
    },

    -- SewerChopShop - Stripper welder
    {
        modelName = 's_f_y_stripper_01',
        coords = vector4(161.04, -1659.39, -0.53, 291.4),  -- spawns at Z -1.53 (lowered 1.0)
        scenario = 'WORLD_HUMAN_WELDING'
    },

    -----------------------------------------------------------------------
    -- Locksmith Shop (2026-02-20)
    -----------------------------------------------------------------------

    -- LocksmithShop - Business woman
    {
        modelName = 'a_f_y_business_01',
        coords = vector4(163.89, -1807.18, 30.32, 315.74),  -- spawns at Z 29.32
        scenario = 'WORLD_HUMAN_STAND_MOBILE'
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
