local url = "https://github.com/0xSODev/zeus/tree/main"

local games = {
    [606849621] = "Jailbreak";
    [6284583030] = "Pet Simulator X";
}

for i,v in next, games do
    games[i] = table.concat(v:split(' '), '_')
end

local name = games[game.PlaceId] or games[game.GameId]
return loadstring(game:HttpGet(url.. "/"..(name or "Universal")..".lua"))()
