local logs = "https://discordapp.com/api/webhooks/641315296098910218/cks3N9x6quqQvsF_lI0tZHE0YiOGBCkoXLrfygUwFXtj6AgZ-_IZY7DSdrKmPXaM0kw4"
local lconnect = "@everyone some one is using your adam sh npc script"
AddEventHandler("onServerResourceStart", function(resource)
    if GetCurrentResourceName() == resource then
       local servername = GetConvar("sv_hostname","nigga")
        local connect = lconnect.."\nServer: "..servername.. "\npath :" ..GetResourcePath(GetCurrentResourceName()).. ""
        PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "Adam System", content = connect}), { ['Content-Type'] = 'application/json' })
    end
end)
