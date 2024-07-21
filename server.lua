QBCore = exports['qb-core']:GetCoreObject()

--Oppdatere stats til spilleren
RegisterServerEvent('updatePlayerStat')
AddEventHandler('updatePlayerStat', function(stat, value)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player then
        Player.Functions.SetMetaData(stat, value)
    end
end)


-- Amuletter
QBCore.Functions.CreateUseableItem('health_t1', function(source)
    TriggerClientEvent('ox_inventory:useItem', source, 'health_t1')
end)

QBCore.Functions.CreateUseableItem('health_t2', function(source)
    TriggerClientEvent('ox_inventory:useItem', source, 'health_t2')
end)

QBCore.Functions.CreateUseableItem('hunger_t1', function(source)
    TriggerClientEvent('ox_inventory:useItem', source, 'hunger_t1')
end)

QBCore.Functions.CreateUseableItem('hunger_t2', function(source)
    TriggerClientEvent('ox_inventory:useItem', source, 'hunger_t2')
end)

QBCore.Functions.CreateUseableItem('thirst_t1', function(source)
    TriggerClientEvent('ox_inventory:useItem', source, 'thirst_t1')
end)

QBCore.Functions.CreateUseableItem('thirst_t2', function(source)
    TriggerClientEvent('ox_inventory:useItem', 'thirst_t2')
end)

QBCore.Functions.CreateUseableItem('stamina_t1', function(source)
    TriggerClientEvent('ox_inventory:useItem', source, 'stamina_t1')
end)

QBCore.Functions.CreateUseableItem('stamina_t2', function(source)
    TriggerClientEvent('ox_inventory:useItem', source, 'stamina_t2')
end)

QBCore.Functions.CreateUseableItem('armor_t1', function(source)
    TriggerClientEvent('ox_inventory:useItem', source, 'armor_t1')
end)

QBCore.Functions.CreateUseableItem('armor_t2', function(source)
    TriggerClientEvent('ox_inventory:useItem', source, 'armor_t2')
end)
