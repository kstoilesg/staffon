local Proxy = module("vrp", "lib/proxy")
local Tunnel = module("vrp", "lib/Tunnel")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP", "FRG_Staff")

FRGStaffServer = {}
Tunnel.bindInterface("FRG_Staff",FRGStaffServer)
Proxy.addInterface("FRG_Staff",FRGStaffServer)
FRGStaffClient = Tunnel.getInterface("FRG_Staff","FRG_Staff")

function FRGStaffServer.UpdateStaffTable(name, r, g, b)
  local user_id = vRP.getUserId({source})
  if user_id ~= nil and vRP.hasPermission({user_id, "admin.menu"}) then
    TriggerClientEvent("UpdateTable", -1, name, r,g,b, source)
  end
end

function FRGStaffServer.UpdateStaffTable2()
  local user_id = vRP.getUserId({source})
  if user_id ~= nil and vRP.hasPermission({user_id, "admin.menu"}) then
    TriggerClientEvent("UpdateTable2", -1,source)
  end
end

function FRGStaffServer.StaffOff()
  local user_id = vRP.getUserId({source})
  if user_id ~= nil and vRP.hasPermission({user_id, "admin.menu"}) then
    FRGStaffClient.StaffOff(source)
  end
end


RegisterCommand("staffoff", function(source, args, rawcommand)
  local user_id = vRP.getUserId({source})
  if user_id ~= nil and vRP.hasPermission({user_id, "admin.menu"}) then
    FRGStaffClient.StaffOff(source)
    print("Staffing off")
  end
end)

RegisterCommand("staffon", function(source, args, rawcommand)
  local user_id = vRP.getUserId({source})
  if user_id ~= nil and vRP.hasPermission({user_id, "admin.menu"}) then
    FRGStaffClient.StaffOn(source)
  else
    vRPclient.notify(source, {"~r~You aren't staff."})
  end
end)