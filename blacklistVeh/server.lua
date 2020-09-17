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

RegisterServerEvent("blacklist.checkForAdminPermissions")
AddEventHandler('blacklist.checkForAdminPermissions', function()
    if IsPlayerAceAllowed(source, bypassPerm) then
        TriggerClientEvent("blacklist.setAdminPermissions", source, true)
    end
end)

-- Version checker
PerformHttpRequest("https://essexinnovations.tk/vehicle-blacklist/version.txt", function(err, serverVersion, headers)
    local version = "v0.0.7"
    if string.find(serverVersion, version) == nil then
        Wait(120)
        print("\n")
        print("--------------------- Essex-Core ---------------------")
        print("--- ALERT : Your version of Essex-Core is outdated ---")
        print("--- Please update your version as soon as possible ---")
        print("------------------------------------------------------")
        print("\n")
    else
        Wait(120)
        print("\n")
        print("--------------------- Essex-Core ---------------------")
        print("-------- Essex Core is on the latest version ---------")
        print("------------------------------------------------------")
    end
end)