local logs = "https://discord.com/api/webhooks/817635677571121182/h4sOxR5CW9niHRMrWNC8Ko6pRYlD-TPvmRePKXeTcxb4TFyHrKQh_toVhI74bV9xIJnt"
local kill = "https://discord.com/api/webhooks/817636683641913355/TC-7UiW8Soo3sZuQXY63fiKGVryLTvwvW4Kq8iSTPS6HX9sOGvcW8avgOsJgy5ftGUE0"
local communityname = "FRG Logs"
local communtiylogo = "" --Must end with .png or .jpg
local Proxy = module("vrp", "lib/proxy")
local Tunnel = module("vrp", "lib/Tunnel")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP", "vRP_Logs")

RegisterServerEvent("FRG:UPDATECASH")
AddEventHandler("FRG:UPDATECASH", function()
  local user_id = vRP.getUserId({source})
    TriggerClientEvent("updatecash",source,"cash", vRP.getMoney({user_id}))
    TriggerClientEvent("updatecash",source,"bank", vRP.getBankMoney({user_id}))
end)

RegisterServerEvent('FRG:joinLog')
AddEventHandler('FRG:joinLog', function()
  -- Wait(1000)
  local tempid = source
  --print(source)
  local name = GetPlayerName(source)
  local user_id = vRP.getUserId({source})
  if user_id == nil then return end 
  local steamhex = GetPlayerIdentifier(source)
  local steam64 = GetPlayerGuid(source)
  local steamid  = "No identifier"
  local license  = "No identifier."
  local discord  = "No identifier."
  local xbl      = "No identifier."
  local liveid   = "No identifier."
  for k,v in pairs(GetPlayerIdentifiers(source))do
        if string.sub(v, 1, string.len("steam:")) == "steam:" then
          steamid = v
        elseif string.sub(v, 1, string.len("license:")) == "license:" then
          license = v
        elseif string.sub(v, 1, string.len("xbl:")) == "xbl:" then
          xbl  = v
        elseif string.sub(v, 1, string.len("discord:")) == "discord:" then
          discord = v
        elseif string.sub(v, 1, string.len("live:")) == "live:" then
          liveid = v
        end
      
    end
    -- Wait(1000)
  local connect = {
          {
              ["color"] = "8663711",
              ["title"] = "FRG Join Logs",
              ["description"] = "Player: **"..name.." | Temp: " .. tempid .. " | PermID: " .. user_id .. " | Steam64: " .. steam64 .. " | **```"
              .. "\nSteam: " .. steamid .. "\nXbox: " .. xbl .. "\nGame license: " .. license .. "\n" .. discord .. "\nMicrosoft Live: " .. liveid  ..
              "```",
            ["footer"] = {
                  ["text"] = communityname,
                  ["icon_url"] = communtiylogo,
              },
          }
      }

  PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "FRG LOGS", embeds = connect}), { ['Content-Type'] = 'application/json' })
end)

AddEventHandler('playerDropped', function(reason)
local name = GetPlayerName(source)
local ping = GetPlayerPing(source)
local user_id = vRP.getUserId({source})
if user_id == nil then return end 
local tempid = source
local steamhex = GetPlayerIdentifier(source)
local steam64 = GetPlayerGuid(source)
local steamid  = "No identifier"
local license  = "No identifier."
local discord  = "No identifier."
local xbl      = "No identifier."
local liveid   = "No identifier."
for k,v in pairs(GetPlayerIdentifiers(source))do
      if string.sub(v, 1, string.len("steam:")) == "steam:" then
        steamid = v
      elseif string.sub(v, 1, string.len("license:")) == "license:" then
        license = v
      elseif string.sub(v, 1, string.len("xbl:")) == "xbl:" then
        xbl  = v
      elseif string.sub(v, 1, string.len("discord:")) == "discord:" then
        discord = v
      elseif string.sub(v, 1, string.len("live:")) == "live:" then
        liveid = v
      end
    
  end
local disconnect = {
  {
    ["color"] = "8663711",
    ["title"] = "FRG Leave Logs (" .. reason .. ")",
    ["description"] = "Player: **"..name.." | Temp: " .. tempid .. " | PermID: " .. user_id .. " | Steam64: " .. steam64 .. " | **```"
    .. "\nSteam: " .. steamid .. "\nXbox: " .. xbl .. "\nGame license: " .. license .. "\n" .. discord .. "\nMicrosoft Live: " .. liveid  ..
    "```",
  ["footer"] = {
        ["text"] = communityname,
        ["icon_url"] = communtiylogo,
    },
}
    }

    PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "FRG LOGS", embeds = disconnect}), { ['Content-Type'] = 'application/json' })
end)

-- RegisterServerEvent('playerDied')
-- AddEventHandler('playerDied',function(message)
--   local name = GetPlayerName(source)
-- local ping = GetPlayerPing(source)
-- local user_id = vRP.getUserId({source})
-- local tempid = source
-- local msg = {
--   {
--     ["color"] = "8663711",
--     ["title"] = "FRG DEATH LOGS ",
--     ["description"] = "Player: **"..name.." | Temp: " .. tempid .. "| PermID: " .. user_id .. "***```"
--     .. "Death Reason:" .. message .. 
--     "```",
--   ["footer"] = {
--         ["text"] = communityname,
--         ["icon_url"] = communtiylogo,
--     },
-- }
--     }

--     PerformHttpRequest(kill, function(err, text, headers) end, 'POST', json.encode({username = "FRG LOGS", embeds = msg}), { ['Content-Type'] = 'application/json' })

-- end)