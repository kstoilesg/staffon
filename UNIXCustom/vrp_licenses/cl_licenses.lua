RMenu.Add('vrp_licensemenu', 'main', RageUI.CreateMenu("License Menu", "~r~FRG RP"))
RMenu.Add('vrp_licensemenus', 'main', RageUI.CreateMenu("License Menu", "~b~Bought Licenses"))
RMenu:Get('vrp_licensemenu', 'main'):SetPosition(1350, 10)
RMenu:Get('vrp_licensemenus', 'main'):SetPosition(1350, 10) 

drivingl = nil

-- RageUI.CreateWhile(wait, menu, key, closure)
RageUI.CreateWhile(1.0, RMenu:Get('vrp_licensemenu', 'main'), nil, function()

    -- RageUI.IsVisible(menu, header, glare, instructional, items, panels)
    RageUI.IsVisible(RMenu:Get('vrp_licensemenu', 'main'), true, false, true, function()
    rebelBtn()
    heroinBtn()
    weedBtn()
    gangBtn()
    cocaineBtn()
    DogeBtn()
    EthBtn()
    BtcBtn()

end, function()
    ---Panels
end)
end)

function rebelBtn() 
    RageUI.Button("Rebel License" , nil, {
        RightLabel = "£15,000,000",
    }, true, function(Hovered, Active, Selected)
        if Selected then
            TriggerServerEvent('FRG:buyRebel')
        end
    end)
end

function heroinBtn() 
    RageUI.Button("Heroin License" , nil, {
        RightLabel = "£10,000,000",
    }, true, function(Hovered, Active, Selected)
        if Selected then
            TriggerServerEvent('FRG:buyHeroin')
        end
    end)
end


function gangBtn() 
    RageUI.Button("Gang License" , nil, {
        RightLabel = "£500,000",
    }, true, function(Hovered, Active, Selected)
        if Selected then
            TriggerServerEvent('FRG:buyGang')
        end
    end)
end

function weedBtn() 
    RageUI.Button("Weed License" , nil, {
        RightLabel = "50,000",
    }, true, function(Hovered, Active, Selected)
        if Selected then
            TriggerServerEvent('FRG:buyWeed')
        end
    end)
end

function cocaineBtn() 
    RageUI.Button("Cocaine License" , nil, {
        RightLabel = "£10,000",
    }, true, function(Hovered, Active, Selected)
        if Selected then
            TriggerServerEvent('FRG:buyCocaine')
        end
    end)
end

function DogeBtn() 
    RageUI.Button("DogeCoin License" , nil, {
        RightLabel = "£5,000,000",
    }, true, function(Hovered, Active, Selected)
        if Selected then
            TriggerServerEvent('FRG:buyDoge')
        end
    end)
end

function EthBtn() 
    RageUI.Button("Ethereum License" , nil, {
        RightLabel = "£10,000,000",
    }, true, function(Hovered, Active, Selected)
        if Selected then
            TriggerServerEvent('FRG:buyHeroin')
        end
    end)
end


function BtcBtn() 
    RageUI.Button("Bitcoin License" , nil, {
        RightLabel = "£20,000,000",
    }, true, function(Hovered, Active, Selected)
        if Selected then
            TriggerServerEvent('FRG:buyGang')
        end
    end)
end

isInMenu = false
currentMenu = nil
Citizen.CreateThread(function()
    while true do 
        for i, m in pairs(cfg.licenseshopCoords) do 
            -- local x,y,z = table.unpack(m)
            local v1 = vector3(m.x,m.y,m.z)
            plyrPed = GetEntityCoords(PlayerPedId(-1))
                if isInMenu == false then
                    if math.sqrt(#(plyrPed-v1)) <= 0.7 then
                        RageUI.Visible(RMenu:Get("vrp_licensemenu", "main"), true)
                        isInMenu = true
                        currentMenu = i
                    end
                end
                if #(plyrPed-v1) <= 0.7 == false and isInMenu and i == currentMenu then
                    RageUI.Visible(RMenu:Get("vrp_licensemenu", "main"), false)
                    isInMenu = false
                    currentMenu = nil
                end
            end
        Citizen.Wait(100)
    end
end)

Citizen.CreateThread(function()
    while true do
        for k, v in pairs(cfg.licenseshopCoords) do
            -- local x,y,z = table.unpack(v)
            DrawMarker(27, v.x, v.y, 8.4100000000000, 0, 0, 0, 0, 0, 0, 1.200, 1.200, 1.200, 109, 14, 21, 250, true, false, false, false)
        end
        Citizen.Wait(0)
    end
end)


RegisterNetEvent('FRG:buyRebel')
AddEventHandler('FRG:buyRebel', function()
    notify('~g~Bought Rebel License!')
end)

RegisterNetEvent('FRG:buyHeroin')
AddEventHandler('FRG:buyHeroin', function()
    notify('~g~Bought Heroin License!')
end)

RegisterNetEvent('FRG:buyWeed')
AddEventHandler('FRG:buyWeed', function()
    notify('~g~Bought Weed License!')
end)

RegisterNetEvent('FRG:buyGang')
AddEventHandler('FRG:buyGang', function()
    notify('~g~Bought Gang License!')
end)

RegisterNetEvent('FRG:buyCocaine')
AddEventHandler('FRG:buyCocaine', function()
    notify('~g~Bought Cocaine License!')
end)


RegisterNetEvent('FRG:buyDoge')
AddEventHandler('FRG:buyDoge', function()
    notify('~g~Bought DogeCoin License!')
end)

RegisterNetEvent('FRG:buyEth')
AddEventHandler('FRG:buyEth', function()
    notify('~g~Bought Ethereum License!')
end)

RegisterNetEvent('FRG:buyBtc')
AddEventHandler('FRG:buyBtc', function()
    notify('~g~Bought Bitcoin License!')
end)


RegisterNetEvent('FRG:notEnoughMoney')
AddEventHandler('FRG:notEnoughMoney', function()
    notify('~r~Not enough money!')
end)

RegisterNetEvent('FRG:duplicateLicense')
AddEventHandler('FRG:duplicateLicense', function()
    notify('~r~You already own this license!')
end)


-- RageUI.CreateWhile(wait, menu, key, closure)
RageUI.CreateWhile(1.0, RMenu:Get('vrp_licensemenus', 'main'), nil, function()

    -- RageUI.IsVisible(menu, header, glare, instructional, items, panels)
    RageUI.IsVisible(RMenu:Get('vrp_licensemenus', 'main'), true, false, true, function()
        for i = 1, 15, 1 do
            if licenses_have[i] ~= nil then
                RageUI.Button(license_names[i].." License" , nil, {}, true, function()
                end)
            end
        end
end, function()
    ---Panels
    end)
end)

visible = false
licenses_have = nil

license_names = {"Rebel"}
Citizen.CreateThread(function()
    while true do
        if IsControlJustPressed(0, 167,true) then
            visible = not visible
            if visible then TriggerServerEvent('FRG:getLicenses')
            else RageUI.Visible(RMenu:Get("vrp_licensemenus", "main"), visible) end            
        end
        Citizen.Wait(0)
    end
end)

license_names = {"Heroin"}
Citizen.CreateThread(function()
    while true do
        if IsControlJustPressed(0, 167,true) then
            visible = not visible
            if visible then TriggerServerEvent('FRG:getLicenses')
            else RageUI.Visible(RMenu:Get("vrp_licensemenus", "main"), visible) end            
        end
        Citizen.Wait(0)
    end
end)

license_names = {"Weed"}
Citizen.CreateThread(function()
    while true do
        if IsControlJustPressed(0, 167,true) then
            visible = not visible
            if visible then TriggerServerEvent('FRG:getLicenses')
            else RageUI.Visible(RMenu:Get("vrp_licensemenus", "main"), visible) end            
        end
        Citizen.Wait(0)
    end
end)

license_names = {"Gang"}
Citizen.CreateThread(function()
    while true do
        if IsControlJustPressed(0, 167,true) then
            visible = not visible
            if visible then TriggerServerEvent('FRG:getLicenses')
            else RageUI.Visible(RMenu:Get("vrp_licensemenus", "main"), visible) end            
        end
        Citizen.Wait(0)
    end
end)

license_names = {"Cocaine"}
Citizen.CreateThread(function()
    while true do
        if IsControlJustPressed(0, 167,true) then
            visible = not visible
            if visible then TriggerServerEvent('FRG:getLicenses')
            else RageUI.Visible(RMenu:Get("vrp_licensemenus", "main"), visible) end            
        end
        Citizen.Wait(0)
    end
end)

license_names = {"Doge"}
Citizen.CreateThread(function()
    while true do
        if IsControlJustPressed(0, 167,true) then
            visible = not visible
            if visible then TriggerServerEvent('FRG:getLicenses')
            else RageUI.Visible(RMenu:Get("vrp_licensemenus", "main"), visible) end            
        end
        Citizen.Wait(0)
    end
end)

license_names = {"Ethereum"}
Citizen.CreateThread(function()
    while true do
        if IsControlJustPressed(0, 167,true) then
            visible = not visible
            if visible then TriggerServerEvent('FRG:getLicenses')
            else RageUI.Visible(RMenu:Get("vrp_licensemenus", "main"), visible) end            
        end
        Citizen.Wait(0)
    end
end)

license_names = {"Bitcoin"}
Citizen.CreateThread(function()
    while true do
        if IsControlJustPressed(0, 167,true) then
            visible = not visible
            if visible then TriggerServerEvent('FRG:getLicenses')
            else RageUI.Visible(RMenu:Get("vrp_licensemenus", "main"), visible) end            
        end
        Citizen.Wait(0)
    end
end)


RegisterNetEvent('FRG:returnLicenses')
AddEventHandler('FRG:returnLicenses', function(values)
    licenses_have = values
    RageUI.Visible(RMenu:Get("vrp_licensemenus", "main"), visible)
end) 

 function notify(msg)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(msg)
    DrawNotification(true, false)
end
