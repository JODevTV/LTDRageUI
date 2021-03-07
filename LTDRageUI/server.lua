ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterNetEvent('flashjojo:BuyPhone')
AddEventHandler('flashjojo:BuyPhone', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 150 --Prix
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('phone', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('flashjojo:BuySim')
AddEventHandler('flashjojo:BuySim', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 50 --Prix
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('sim', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('flashjojo:Buypain')
AddEventHandler('flashjojo:Buypain', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 10 --Prix
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('bread', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('flashjojo:Buyboeuf')
AddEventHandler('flashjojo:Buyboeuf', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 12 --Prix
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('viande', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('flashjojo:Buysandwitch')
AddEventHandler('flashjojo:Buysandwitch', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 18 --Prix
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('sandwich', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('flashjojo:Buychips')
AddEventHandler('flashjojo:Buychips', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 22 --Prix
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('bolchips', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('flashjojo:Buysaucisson')
AddEventHandler('flashjojo:Buysaucisson', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 24 --Prix
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('saucisson', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('flashjojo:Buyeau')
AddEventHandler('flashjojo:Buyeau', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 5 --Prix
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('water', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('flashjojo:Buycafe')
AddEventHandler('flashjojo:Buycafe', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 7 --Prix
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('coffee', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('flashjojo:Buycoca')
AddEventHandler('flashjojo:Buycoca', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 8 --Prix
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('coffe', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('flashjojo:Buyredbull')
AddEventHandler('flashjojo:Buyredbull', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 12 --Prix
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('energy', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('flashjojo:Buycaprisu')
AddEventHandler('flashjojo:Buycaprisu', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 14 --Prix
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('soda', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('flashjojo:Buylimonade')
AddEventHandler('flashjojo:Buylimonade', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 18 --Prix
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('limonade', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

