ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(100)
    end
end)

local position = {
	{x = -706.08,  y = -914.44,  z = 19.2},
	{x = 1959.84,  y = 3740.44,  z = 32.36},
	{x = 373.875, y = 325.896, z = 102.566+0.50},
    {x = 2557.458, y = 382.282, z = 107.622+0.50},
    {x = -3038.939, y = 585.954, z = 6.908+0.50},
    {x = -3241.927, y = 1001.462, z = 11.830+0.50},
    {x = 547.431, y = 2671.710, z = 41.156+0.50},
    {x = 1961.464, y = 3740.672, z = 31.343+0.50},
    {x = 2678.916, y = 3280.671,z =  54.241+0.50},
    {x = 1729.216, y = 6414.131, z = 34.037+0.50},
    {x = 1135.808, y = -982.281,z =  45.415+0.50},
    {x = -1222.915,y =  -906.983, z = 11.326+0.50},
    {x = -1487.553,y =  -379.107, z = 39.163+0.50},
    {x = -2968.243, y = 390.910, z = 14.043+0.50},
    {x = 1166.02, y = 2708.930,z =  37.157+0.50},
    {x = 1392.562, y = 3604.684, z = 33.980+0.50},
    {x = 26.14, y = -1347.37, z = 29.5+0.50},
    {x = -48.519, y = -1757.514,z =  28.421+0.50},
    {x = 1163.373, y = -323.801, z = 68.205+0.50},
    {x = -707.501,y =  -914.260, z = 18.215+0.50},
    {x = -1820.523,y =  792.518, z = 137.118+0.50},
    {x = 1698.388,y =  4924.404, z = 41.063+0.50}
}


CRIfruit              = {}
CRIfruit.DrawDistance = 100
CRIfruit.Size         = {x = 1.0, y = 1.0, z = 1.0}
CRIfruit.Color        = {r = 255, g = 0, b = 0}
CRIfruit.Type         = 29

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local coords, letSleep = GetEntityCoords(PlayerPedId()), true

        for k in pairs(position) do
            if (CRIfruit.Type ~= -1 and GetDistanceBetweenCoords(coords, position[k].x, position[k].y, position[k].z, true) < CRIfruit.DrawDistance) then
                DrawMarker(CRIfruit.Type, position[k].x, position[k].y, position[k].z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, CRIfruit.Size.x, CRIfruit.Size.y, CRIfruit.Size.z, CRIfruit.Color.r, CRIfruit.Color.g, CRIfruit.Color.b, 100, false, true, 2, false, false, false, false)
                letSleep = false
            end
        end

        if letSleep then
            Citizen.Wait(500)
        end
    end
end)


RMenu.Add('jojo', 'main', RageUI.CreateMenu("Supérette", "Remplissez vos besoins géneraux"))
RMenu.Add('jojo', 'nourriture', RageUI.CreateSubMenu(RMenu:Get('jojo', 'main'), "Achat Nourriture", "~b~Nourriture"))
RMenu.Add('jojo', 'boissons', RageUI.CreateSubMenu(RMenu:Get('jojo', 'main'), "Achat Boissons", "~b~Boisson"))
RMenu.Add('jojo', 'multi', RageUI.CreateSubMenu(RMenu:Get('jojo', 'main'), "Achat Multimédia", "~b~Multimédia"))


Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('jojo', 'main'), true, false, true, function()


            RageUI.ButtonWithStyle("Achat Nourriture", nil, {RightLabel = "→"},true, function ()
            end, RMenu:Get('jojo', 'nourriture'))


            RageUI.ButtonWithStyle("Achat Boissons", nil, {RightLabel = "→"},true, function ()
            end, RMenu:Get('jojo', 'boissons'))

            RageUI.ButtonWithStyle("Achat Multimédia", nil, {RightLabel = "→"},true, function ()
            end, RMenu:Get('jojo', 'multi'))

        end, function()
        end)

        RageUI.IsVisible(RMenu:Get('jojo', 'nourriture'), true, false, true, function()
        
            RageUI.ButtonWithStyle("Pain", nil, {RightLabel = "~g~10 €"}, true, function(Hovered, Active, Selected) --Prix a modif ici et dans le server.lua
                if (Selected) then
                    TriggerServerEvent('flashjojo:Buypain')
                end
            end)



            RageUI.ButtonWithStyle("Viande de Boeuf", nil, {RightLabel = "~g~12 €"}, true, function(Hovered, Active, Selected) --Prix a modif ici et dans le server.lua
                if (Selected) then
                    TriggerServerEvent('flashjojo:Buyboeuf')
                end
            end)



            RageUI.ButtonWithStyle("Sandwitch", nil, {RightLabel = "~g~18 €"}, true, function(Hovered, Active, Selected) --Prix a modif ici et dans le server.lua
                if (Selected) then
                    TriggerServerEvent('flashjojo:Buysandwitch')
                end
            end)



            RageUI.ButtonWithStyle("Hamburger", nil, {RightLabel = "~g~19 €"}, true, function(Hovered, Active, Selected) --Prix a modif ici et dans le server.lua
                if (Selected) then
                    TriggerServerEvent('flashjojo:Buyhamburger')
                end
            end)


            RageUI.ButtonWithStyle("Chips", nil, {RightLabel = "~g~22 €"}, true, function(Hovered, Active, Selected) --Prix a modif ici et dans le server.lua
                if (Selected) then
                    TriggerServerEvent('flashjojo:Buychips')
                end
            end)

            
            RageUI.ButtonWithStyle("Saucisson", nil, {RightLabel = "~g~24 €"}, true, function(Hovered, Active, Selected) --Prix a modif ici et dans le server.lua
                if (Selected) then
                    TriggerServerEvent('flashjojo:Buysaucisson')
                end
            end)


        end, function()
        end)

        RageUI.IsVisible(RMenu:Get('jojo', 'boissons'), true, false, true, function()
        
            RageUI.ButtonWithStyle("Eau", nil, {RightLabel = "~g~5 €"}, true, function(Hovered, Active, Selected) --Prix a modif ici et dans le server.lua
                if (Selected) then
                    TriggerServerEvent('flashjojo:Buyeau')
                end
            end)

            RageUI.ButtonWithStyle("Café", nil, {RightLabel = "~g~7 €"}, true, function(Hovered, Active, Selected) --Prix a modif ici et dans le server.lua
                if (Selected) then
                    TriggerServerEvent('flashjojo:Buycafe')
                end
            end)

            RageUI.ButtonWithStyle("Coca-Cola", nil, {RightLabel = "~g~8 €"}, true, function(Hovered, Active, Selected) --Prix a modif ici et dans le server.lua
                if (Selected) then
                    TriggerServerEvent('flashjojo:Buycoca')
                end
            end)

            RageUI.ButtonWithStyle("Redbull", nil, {RightLabel = "~g~12 €"}, true, function(Hovered, Active, Selected) --Prix a modif ici et dans le server.lua
                if (Selected) then
                    TriggerServerEvent('flashjojo:Buyredbull')
                end
            end)

            RageUI.ButtonWithStyle("CapriSun", nil, {RightLabel = "~g~14 €"}, true, function(Hovered, Active, Selected) --Prix a modif ici et dans le server.lua
                if (Selected) then
                    TriggerServerEvent('flashjojo:Buycaprisun')
                end
            end)

            RageUI.ButtonWithStyle("Limonade", nil, {RightLabel = "~g~18 €"}, true, function(Hovered, Active, Selected) --Prix a modif ici et dans le server.lua
                if (Selected) then
                    TriggerServerEvent('flashjojo:Buylimonade')
                end
            end)

            
        end, function()
        end)

        RageUI.IsVisible(RMenu:Get('jojo', 'multi'), true, true, true, function()
        
            RageUI.ButtonWithStyle("Téléphone", nil, {RightLabel = "~g~150 €"}, true, function(Hovered, Active, Selected) --Prix a modif ici et dans le server.lua
                if (Selected) then
                    TriggerServerEvent('flashjojo:BuyPhone')
                end
            end)

            RageUI.ButtonWithStyle("Carte Sim", nil, {RightLabel = "~g~50 €"}, true, function(Hovered, Active, Selected) --Prix a modif ici et dans le server.lua
                if (Selected) then
                    TriggerServerEvent('flashjojo:BuySim')
                end
            end)

            
        end, function()
        end)


        Citizen.Wait(0)
    end
end)

Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
    
            for k in pairs(position) do
    
                local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
    
                if dist <= 1.0 then
                    ESX.ShowHelpNotification("Appuyez sur [~b~E~w~] pour parler au LTD")
                    if IsControlJustPressed(1,51) then
                        RageUI.Visible(RMenu:Get('jojo', 'main'), not RageUI.Visible(RMenu:Get('jojo', 'main')))
                    end   
                end
            end
        end
    end)
    
    local v1 = vector3(-657.16, -858.92, 25.49)
    
    function Draw3DText(x, y, z, text)
        local onScreen, _x, _y = World3dToScreen2d(x, y, z)
        local p = GetGameplayCamCoords()
        local distance = GetDistanceBetweenCoords(p.x, p.y, p.z, x, y, z, 1)
        local scale = (1 / distance) * 2
        local fov = (1 / GetGameplayCamFov()) * 100
        local scale = scale * fov
        if onScreen then
            SetTextScale(0.0, 0.35)
            SetTextFont(0)
            SetTextProportional(1)
            SetTextColour(255, 255, 255, 255)
            SetTextDropshadow(0, 0, 0, 0, 255)
            SetTextEdge(2, 0, 0, 0, 150)
            SetTextDropShadow()
            SetTextOutline()
            SetTextEntry("STRING")
            SetTextCentre(1)
            AddTextComponentString(text)
            DrawText(_x,_y)
        end
    end
    
    local distance = 20
    

    Citizen.CreateThread(function()

        for k in pairs(position) do
    
        local blip = AddBlipForCoord(position[k].x, position[k].y, position[k].z)
    
        SetBlipSprite(blip, 59)
        SetBlipColour(blip, 2)
        SetBlipScale(blip, 0.6)
        SetBlipAsShortRange(blip, true)
    
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString("LTD")
        EndTextCommandSetBlipName(blip)
        end
    end)
    