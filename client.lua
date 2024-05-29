local function applyItemEffect(item)
    local stat = Config.Items[item].stat
    local tier = Config.Items[item].tier
    local value = Config.Items[item].value

    if Config.Stats[stat].current < value then
        Config.Stats[stat].regenThreshold = value
    end
end

RegisterNetEvent('ox_inventory:useItem', function(item)
    if Config.Items[item] then
        applyItemEffect(item)
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10000) -- HoT vært 10 sekund, må kansje tweekes litt på
        for stat, data in pairs(Config.Stats) do
            if data.current < data.regenThreshold then
                data.current = data.current + data.regenRate
                if data.current > data.regenThreshold then
                    data.current = data.regenThreshold
                end
                TriggerServerEvent('updatePlayerStat', stat, data.current)
            end
        end
    end
end)
