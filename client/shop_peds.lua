-- Shop Vendor Peds
-- Spawns peds at restaurant vendor locations

print('^2^2^2 ========== SHOP PEDS SCRIPT LOADED ========== ^0')

local spawnedPeds = {}

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
        scenario = 'WORLD_HUMAN_AA_COFFEE'  -- Drinking coffee animation (perfect for a barista!)
    },
}

local function SpawnShopPed(pedData)
    local model = GetHashKey(pedData.modelName)

    print('^3[Shop Peds]^0 Requesting model:', pedData.modelName)
    RequestModel(model)

    local timeout = 0
    while not HasModelLoaded(model) and timeout < 100 do
        Wait(100)
        timeout = timeout + 1
    end

    if not HasModelLoaded(model) then
        print('^1[Shop Peds]^0 ERROR: Failed to load ped model!')
        return nil
    end

    print('^3[Shop Peds]^0 Creating ped at coords:', pedData.coords.x, pedData.coords.y, pedData.coords.z)
    -- Subtract 1.0 from Z to place ped on ground (accounts for ped model height)
    local ped = CreatePed(4, model, pedData.coords.x, pedData.coords.y, pedData.coords.z - 1.0, pedData.coords.w, false, true)

    if not DoesEntityExist(ped) then
        print('^1[Shop Peds]^0 ERROR: Failed to create ped!')
        return nil
    end

    SetEntityAsMissionEntity(ped, true, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetEntityInvincible(ped, true)
    FreezeEntityPosition(ped, true)

    -- Make ped look natural
    if pedData.scenario then
        TaskStartScenarioInPlace(ped, pedData.scenario, 0, true)
    end

    SetModelAsNoLongerNeeded(model)

    print('^2[Shop Peds]^0 Successfully spawned ped!')

    return ped
end

CreateThread(function()
    -- Wait for game to load
    print('^3[Shop Peds]^0 Starting ped spawner...')
    Wait(2000)

    print('^3[Shop Peds]^0 Attempting to spawn ' .. #shopPeds .. ' peds')

    -- Spawn all shop peds
    for i, pedData in ipairs(shopPeds) do
        print('^3[Shop Peds]^0 Spawning ped #' .. i)
        local ped = SpawnShopPed(pedData)
        if ped then
            table.insert(spawnedPeds, ped)
        end
        Wait(500) -- Small delay between spawns
    end

    print('^2[Shop Peds]^0 Finished! Successfully spawned ' .. #spawnedPeds .. ' vendor peds')
end)

-- Cleanup on resource stop
AddEventHandler('onResourceStop', function(resourceName)
    if resourceName == GetCurrentResourceName() then
        for _, ped in ipairs(spawnedPeds) do
            if DoesEntityExist(ped) then
                DeleteEntity(ped)
            end
        end
        spawnedPeds = {}
    end
end)
