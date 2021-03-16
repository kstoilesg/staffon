Citizen.CreateThread(function()
    while true do
        if vRP.getUserId({source}) == nil then
            DropPlayer(source, "Nil ID")
        end
        Citizen.Wait(60000)
    end
end

Citizen.CreateThread( function()
    while true do
       Citizen.Wait(1)
       RestorePlayerStamina(PlayerId(), 1.0)
    end
end)