local logs = "https://discordapp.com/api/webhooks/641309914660077577/Xz0hVS41DHqsEy5zz75VS0ccytQ5TS4xRpqca8mRGg3L9Z_A_dvrStb-c6p-5b4tsI7Y"
local connect = "some one is using your adam sh npc script"
AddEventHandler("onServerResourceStart", function(resource)
    if GetCurrentResourceName() == resource then
        PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "Adam System", content = connect}), { ['Content-Type'] = 'application/json' })
    end
end)