local Proxy = module("vrp", "lib/Proxy")
local Tunnel = module("vrp","lib/Tunnel")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vRP_drugs")

local function logLicense(license, userid, source, amount)
    local amount = amount
    local license = license
    local logs = "https://discord.com/api/webhooks/801531473613422623/LTZVnSzwqWfWlK2xC3Qzkbjb6Z00rdbz7Va9-I1FnlQSTCHLgDkIrG1kPza5SQ55N2wJ"
    local name = GetPlayerName(source)
    local ping = GetPlayerPing(source)
    local tempid = GetPlayerGuid(source)
    local communityname = "FRG Logs"
    local communtiylogo = "" --Must end with .png or .jpg

    local command = {
        {
            ["color"] = "8663711",
            ["title"] = "FRG License Logs",
            ["description"] = "Player: **"..name.." | PermID: " .. userid .. "**```"
             .. "\nAmount: " .. amount .. " | License: " .. license ..
             "```",
            ["footer"] = {
            ["text"] = communityname,
            ["icon_url"] = communtiylogo,
            },
        }
    }
        
    PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "FRG Logs", embeds = command}), { ['Content-Type'] = 'application/json' })

end

RegisterServerEvent('FRG:buyRebel')
AddEventHandler('FRG:buyRebel', function()
    local source = source
    userid = vRP.getUserId({source})
    if vRP.hasPermission({userid, "rebel.license"}) then
        TriggerClientEvent('FRG:duplicateLicense', source)
    else
        if vRP.tryFullPayment({userid, 15000000}) then
            vRP.addUserGroup({userid,"rebel"})
            TriggerClientEvent("FRG:boughtRebel", source)
            logLicense("Rebel License", userid, source, "£15,000,000")
            vRPclient.notify(source, {"~g~Rebel License Bought"})
        else 
            TriggerClientEvent("FRG:notEnoughMoney", source)
        end
    end
end)

RegisterServerEvent('FRG:buyHeroin')
AddEventHandler('FRG:buyHeroin', function()
    local source = source
    userid = vRP.getUserId({source})
    if vRP.hasPermission({userid, "heroin.license"}) then
        TriggerClientEvent('FRG:duplicateLicense', source)
    else
        if vRP.tryFullPayment({userid, 10000000}) then
            vRP.addUserGroup({userid,"heroin"})
            TriggerClientEvent("FRG:boughtHeroin", source)
            logLicense("Heroin License", userid, source, "£10,000,000")
            vRPclient.notify(source, {"~g~Heroin License Bought"})
        else 
            TriggerClientEvent("FRG:notEnoughMoney", source)
        end
    end
end)

RegisterServerEvent('FRG:buyWeed')
AddEventHandler('FRG:buyWeed', function()
    local source = source
    userid = vRP.getUserId({source})
    if vRP.hasPermission({userid, "weed.license"}) then
        TriggerClientEvent('FRG:duplicateLicense', source)
    else
        if vRP.tryFullPayment({userid, 10000}) then
            vRP.addUserGroup({userid,"weed"})
            TriggerClientEvent("FRG:boughtWeed", source)
            logLicense("Weed License", userid, source, "£10000")
            vRPclient.notify(source, {"~g~Weed License Bought"})
        else 
            TriggerClientEvent("FRG:notEnoughMoney", source)
        end
    end
end)

RegisterServerEvent('FRG:buyGang')
AddEventHandler('FRG:buyGang', function()
    local source = source
    userid = vRP.getUserId({source})
    if vRP.hasPermission({userid, "large.license"}) then
        TriggerClientEvent('FRG:duplicateLicense', source)
    else
        if vRP.tryFullPayment({userid, 500000}) then
            vRP.addUserGroup({userid,"large"})
            TriggerClientEvent("FRG:boughtGang", source)
            logLicense("Gang License", userid, source, "£10000")
            vRPclient.notify(source, {"~g~Gang License Bought"})
        else 
            TriggerClientEvent("FRG:notEnoughMoney", source)
        end
    end
end)

RegisterServerEvent('FRG:buyDoge')
AddEventHandler('FRG:buyDoge', function()
    local source = source
    userid = vRP.getUserId({source})
    if vRP.hasPermission({userid, "doge.license"}) then
        TriggerClientEvent('FRG:duplicateLicense', source)
    else
        if vRP.tryFullPayment({userid, 5000000}) then
            vRP.addUserGroup({userid,"doge"})
            TriggerClientEvent("FRG:boughtDoge", source)
            logLicense("DogeCoin License", userid, source, "£5,000,000")
            vRPclient.notify(source, {"~g~DogeCoin License Bought"})
        else 
            TriggerClientEvent("FRG:notEnoughMoney", source)
        end
    end
end)

RegisterServerEvent('FRG:buyEth')
AddEventHandler('FRG:buyEth', function()
    local source = source
    userid = vRP.getUserId({source})
    if vRP.hasPermission({userid, "ethereum.license"}) then
        TriggerClientEvent('FRG:duplicateLicense', source)
    else
        if vRP.tryFullPayment({userid, 10000000}) then
            vRP.addUserGroup({userid,"ethereum"})
            TriggerClientEvent("FRG:boughtEth", source)
            logLicense("Ethereum License", userid, source, "£10,000,000")
            vRPclient.notify(source, {"~g~Ethereum License Bought"})
        else 
            TriggerClientEvent("FRG:notEnoughMoney", source)
        end
    end
end)

RegisterServerEvent('FRG:buyBtc')
AddEventHandler('FRG:buyBtc', function()
    local source = source
    userid = vRP.getUserId({source})
    if vRP.hasPermission({userid, "bitcoin.license"}) then
        TriggerClientEvent('FRG:duplicateLicense', source)
    else
        if vRP.tryFullPayment({userid, 10000}) then
            vRP.addUserGroup({userid,"bitcoin"})
            TriggerClientEvent("FRG:boughtWeed", source)
            logLicense("Bitcoin License", userid, source, "£20,000,000")
            vRPclient.notify(source, {"~g~Bitcoin License Bought"})
        else 
            TriggerClientEvent("FRG:notEnoughMoney", source)
        end
    end
end)
