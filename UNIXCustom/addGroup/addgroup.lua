local Proxy = module("vrp", "lib/proxy")
local Tunnel = module("vrp", "lib/Tunnel")
vRP = Proxy.getInterface("vRP")

RegisterCommand('addgroup', function(source, args, rawCommand)
    
    if args[1] ~= nil then
        if source == 0 then
            user_id = args[1]
            group = args[2]
            user_id = parseInt(user_id)
            vRP.addUserGroup({user_id, group})
            --print("user id: "..user_id.." added to group: "..group)
        end
    else
        print("Usage: addgroup <id> <group>")
    end

    
end, false)

RegisterCommand('removegroup', function(source, args, rawCommand)
    
    if args[1] ~= nil then
        if source == 0 then
            user_id = args[1]
            group = args[2]
            user_id = parseInt(user_id)
            vRP.removeUserGroup({user_id, group})
            print("user id: "..user_id.." removed from group: "..group)
        end
    else
        print("Usage: removegroup <id> <group>")
    end

    
end, false)