local url = "https://raw.githubusercontent.com/0xSODev/Z3us/main/scripts"

local games = {
    [606849621] = "Jailbreak";
    [6284583030] = "Pet Simulator X";
}

for i,v in next, games do
    games[i] = table.concat(v:split(' '), '_')
end

local name = games[game.PlaceId] or games[game.GameId]
return loadstring(game:HttpGet(url.. "/"..(name or "coolScript")..".lua"))()
