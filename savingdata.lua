local players = player.GetAll()

for k ,v in pairs(players) do
    local ping = tostring(v:Ping())
    local SteamID64 = tostring(v:SteamID64())
    file.Write("our_addon_name_"..SteamID64..".txt", ping)
end