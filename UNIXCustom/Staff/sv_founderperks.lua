RegisterCommand("fix", function(source, args, rawcommand)
  local user_id = vRP.getUserId({source})
  if user_id ~= nil and vRP.hasPermission({user_id, "founder.perks"}) then
    FRGStaffClient.FounderFixVeh(source)
  end
end)

RegisterServerEvent("FRG:checkfounderperks")
AddEventHandler("FRG:checkfounderperks", function()
    local source = source
    local user_id = vRP.getUserId({source})
    if user_id ~= nil and vRP.hasPermission({user_id, "founder.perks"}) then
        TriggerClientEvent("FRG:founderperks",source)
    end
end)


RegisterCommand("getid", function(source, args, rawCommand)
  local user_id = vRP.getUserId({source})
  local target_id = vRP.getUserId({args[1]})
  if args[1] then
      if target_id == nil then
        TriggerClientEvent('chat:addMessage', source, { args = { '^1[Server]', "Invalid id" } })
      else
        TriggerClientEvent('chat:addMessage', source, { args = { '^1[Server]', "Perm id: "..target_id } })
      end

      else
          TriggerClientEvent('chat:addMessage', source, { args = { '^1[Server]', 'Usage: /getpermid (id)' } })
      end

end, false)


RegisterCommand("getmyid", function(source, args, rawCommand)
  local user_id = vRP.getUserId({source})
  TriggerClientEvent('chat:addMessage', source, { args = { '^1[Server]', "My Perm Id: "..user_id } })
  TriggerClientEvent('chat:addMessage', source, { args = { '^1[Server]', "My Temp Id: "..source } })
end, false)