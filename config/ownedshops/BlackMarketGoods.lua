return {
    [1] = {
        AttachmentsCustomiseOnly = true,  -- Set to false since this shop is for goods, not just attachments
        moneytype = 'black_money',
        label = 'Black Market (Goods)',
        coord = vec3(2743.14, 1456.81, 24.86),  -- Shop purchase point from the old snippet
        price = 50000000,  -- Example price; you can adjust this as needed
        supplieritem = shared.Storeitems.BlackMarketGoods,  -- Reference to your BlackMarketGoods items
        selfdeliver = {model = `rumpo`, coord = vec4(2543.14, 1456.81, 24.86, 270.0)},  -- Delivery coordinates from the old snippet

        ped = function()
            local model = `g_m_m_chigoon_02`  -- Example ped model for the black market dealer; you can change this to any ped model you prefer
            RequestModel(model)
            while not HasModelLoaded(model) do
                Wait(0)
            end

            local ped = CreatePed(4, model, 2843.14, 1456.81, 23.86, 63.44, false, true)
            SetBlockingOfNonTemporaryEvents(ped, true)
            SetEntityInvincible(ped, true)
            FreezeEntityPosition(ped, true)
        end,
    },
}