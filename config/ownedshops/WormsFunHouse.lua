return {
    [1] = {
        AttachmentsCustomiseOnly = true,
        moneytype = 'black_money',
        label = 'Worms FunHouse',
        coord = vec3(1059.0, -261.73, 50.96),  -- Shop purchase point
        price = 40000000,
        supplieritem = shared.Storeitems.WormsFunHouse,
        selfdeliver = {model = `rumpo`, coord = vec4(1066.7, -266.63, 50.98, 180.0)},  -- Delivery coordinates

        ped = function()
            local model = `s_m_y_clown_01`  -- Clown ped model
            RequestModel(model)
            while not HasModelLoaded(model) do
                Wait(0)
            end

            local ped = CreatePed(4, model, 1064.26, -262.62, 49.93, 145.29, false, true)
            SetBlockingOfNonTemporaryEvents(ped, true)
            SetEntityInvincible(ped, true)
            FreezeEntityPosition(ped, true)
        end,
    },
}