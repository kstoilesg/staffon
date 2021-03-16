function FRGStaffClientT.FounderFixVeh()
	local playerPed =PlayerPedId()
	local vehicle = GetVehiclePedIsIn(playerPed, false)

	SetVehicleEngineHealth(vehicle, 1000)
	SetVehicleEngineOn( vehicle, true, true )
	SetVehicleFixed(vehicle)
	SetVehicleDamage(vehicle, 0, 0, 0, 0, 0, false)
	vRP.notify({"~g~Your vehicle has been fixed!"})
	exports["FRG_Fuel"]:SetFuel(vehicle, 1000)
end

RegisterCommand("getfuel", function()
	local playerPed =PlayerPedId()
	local vehicle = GetVehiclePedIsIn(playerPed, false)
	print(exports["FRG_Fuel"]:GetFuel(vehicle))

end)
