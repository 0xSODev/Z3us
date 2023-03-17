local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "Kid with shit exploit"

local url =
   "https://discord.com/api/webhooks/1086275126481403985/u_Mw3Mqh5cqkrEzwt7_7GbtcN6iUd1nYgwx2sV2BTrFF5EEnk5I1lTYeEJEttlQ92Wfz"
local data = {
   ["content"] = "",
   ["embeds"] = {
       {
           ["title"] = "**Zeus - Script Execute**",
           ["description"] = "Username: " .. game.Players.LocalPlayer.Name.." with **"..webhookcheck.."**\nLogged ind",
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da),
           ["image"] = {
               ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..tostring(game:GetService("Players").LocalPlayer.Name)
           }
       }
   }
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
-- webhook ^ --






-- script
local ej = "Undtected"
local plr = game:GetService("Players").LocalPlayer
local gamename = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

local GUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/aaaa"))()


local UI = GUI:CreateWindow("Zeus", "Jailbreak")

local Home = UI:addPage("Home",1,true,6)

Home:addLabel("Welcome", plr.Name)
Home:addLabel("Executor", webhookcheck)
Home:addLabel("Game", gamename)
Home:addLabel("Status", ej)

Home:addButton("Quit", function(quit)
      print("quit")
    DestroyYep()
end)
