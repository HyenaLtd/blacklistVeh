--[[
     /$$      /$$                           /$$  /$$$$$$            /$$$$$$                   
    | $$$    /$$$                          | $$ /$$__  $$          /$$__  $$                  
    | $$$$  /$$$$ /$$   /$$  /$$$$$$   /$$$$$$$| $$  \__//$$   /$$| $$  \__//$$$$$$  /$$   /$$
    | $$ $$/$$ $$| $$  | $$ /$$__  $$ /$$__  $$| $$$$   | $$  | $$| $$$$   /$$__  $$|  $$ /$$/
    | $$  $$$| $$| $$  | $$| $$$$$$$$| $$  | $$| $$_/   | $$  | $$| $$_/  | $$  \ $$ \  $$$$/ 
    | $$\  $ | $$| $$  | $$| $$_____/| $$  | $$| $$     | $$  | $$| $$    | $$  | $$  >$$  $$ 
    | $$ \/  | $$|  $$$$$$/|  $$$$$$$|  $$$$$$$| $$     |  $$$$$$$| $$    |  $$$$$$/ /$$/\  $$
    |__/     |__/ \______/  \_______/ \_______/|__/      \____  $$|__/     \______/ |__/  \__/
                                                        /$$  | $$                            
                                                        |  $$$$$$/                            
                                                        \______/                                                                                                                                          
,--.   ,--.     ,--.     ,--.      ,--.           ,-----.  ,--.              ,--.    ,--.,--.        ,--.   
 \  `.'  /,---. |  ,---. `--' ,---.|  | ,---.     |  |) /_ |  | ,--,--. ,---.|  |,-. |  |`--' ,---.,-'  '-. 
  \     /| .-. :|  .-.  |,--.| .--'|  || .-. :    |  .-.  \|  |' ,-.  || .--'|     / |  |,--.(  .-''-.  .-' 
   \   / \   --.|  | |  ||  |\ `--.|  |\   --.    |  '--' /|  |\ '-'  |\ `--.|  \  \ |  ||  |.-'  `) |  |   
    `-'   `----'`--' `--'`--' `---'`--' `----'    `------' `--' `--`--' `---'`--'`--'`--'`--'`----'  `--'   
                                                                                                            
]]

function notify()
        SetNotificationTextEntry("STRING")
        AddTextComponentSubstringPlayerName(notification)
        DrawNotification(true, true)
end

function notifyped()
    SetNotificationTextEntry("STRING")
    AddTextComponentSubstringPlayerName(pedNotification)
    DrawNotification(true, true)
end

function notifyweap()
    SetNotificationTextEntry("STRING")
    AddTextComponentSubstringPlayerName(weapNotification)
    DrawNotification(true, true)
end

function DeleteE(entity)
	Citizen.InvokeNative(0xAE3CBE5BF394C9C9, Citizen.PointerValueIntInitialized(entity))
end

allowedToBypass = false
                        
RegisterNetEvent("blacklist.setAdminPermissions")
AddEventHandler("blacklist.setAdminPermissions", function(allowed)
    if allowed then
        allowedToBypass = allowed
    end
end)

TriggerServerEvent("blacklist.checkForAdminPermissions")

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        if not allowedToBypass then
		local ped = GetPlayerPed(-1)
        if DoesEntityExist(ped) and not IsEntityDead(ped) then
            local ped = PlayerPedId()
            veh = nil
        
            if IsPedInAnyVehicle(ped, false) then
                veh = GetVehiclePedIsUsing(ped)
            else
                veh = GetVehiclePedIsTryingToEnter(ped)
            end
            
            
            if veh and DoesEntityExist(veh) then
                local model = GetEntityModel(veh)
                local driver = GetPedInVehicleSeat(veh, -1)
                if driver == ped then
                    for i = 1, #blacklists do
                        local rmodel1 = GetHashKey(blacklists[i])
                        if (model == rmodel1) or (GetVehicleClass(veh) == 19) then -- Military
                            notify()
                            DeleteE(veh)
                            ClearPedTasksImmediately(ped)
                        end
                    end
                    end
                end
            end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        local ped_l = GetPlayerPed(-1)
        local plymodel = GetEntityModel(ped_l)	
        if not allowedToBypass then
            for i = 1, #blacklistPeds, 1 do
                local rstmodel = GetHashKey(blacklistPeds[i])
                if plymodel == rstmodel then
                    RequestModel(newdmodel)
                    while not HasModelLoaded(newdmodel) do
                        Citizen.Wait(400)
                    end
                    SetPlayerModel(PlayerId(), newdmodel)
                    notifyped()
                end
            end
        end
    end
end)

Citizen.CreateThread(function()
    local ped_l = GetPlayerPed(-1)
    if not allowedToBypass then
    while true do
        Citizen.Wait(1)
        for i = 1, #blacklistWeaps, 1 do
            local rweap = GetHashKey(blacklistWeaps[i])
            if HasPedGotWeapon(ped_l, rweap, false) then
                RemoveWeaponFromPed(ped_l, rweap)
                notifyweap()
            end
            local temp, cweap = GetCurrentPedWeapon(ped_l, true)
            if GetWeaponDamageType(cweap) == 5 then
                RemoveWeaponFromPed(ped_l, cweap)
                notifyweap()
            end
        end	
    end
end
end)