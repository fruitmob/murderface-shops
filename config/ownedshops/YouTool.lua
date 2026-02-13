return {
    [1] = {
        AttachmentsCustomiseOnly = true,
        moneytype = 'money',
        item = true,
        label = 'YouTool',  -- Simplified label since there's only one location
        coord = vec3(2747.91, 3505.53, 55.7),  -- Shop purchase pointvec3
        price = 5000000,
        supplieritem = shared.Storeitems.YouTool,  -- Correctly referenced items

        ped = function()
            local model = `u_f_o_eileen`  -- Ped model
            RequestModel(model)
            while not HasModelLoaded(model) do
                Wait(0)
            end
            -- Ped coordinates and heading
            local ped = CreatePed(4, model, 2735.18, 3462.74, 54.7, 341.4, false, true)
            SetBlockingOfNonTemporaryEvents(ped, true)
            SetEntityInvincible(ped, true)
            FreezeEntityPosition(ped, true)
        end,
    },
}
