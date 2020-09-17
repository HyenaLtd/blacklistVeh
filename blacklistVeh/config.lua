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

   ___           __ _        ___         _         _        _ 
  / __|___ _ _  / _(_)__ _  |_ _|_ _  __| |_  _ __| |___ __(_)
 | (__/ _ \ ' \|  _| / _` |  | || ' \/ _| | || / _` / -_|_-<_ 
  \___\___/_||_|_| |_\__, | |___|_||_\__|_|\_,_\__,_\___/__(_)
                     |___/                                    

    - Vehicle blacklists
    - Notification configurations
    - Permission configurations
    - Auto updating information

   ___           __ _        ___       __                    _   _          _ 
  / __|___ _ _  / _(_)__ _  |_ _|_ _  / _|___ _ _ _ __  __ _| |_(_)___ _ _ (_)
 | (__/ _ \ ' \|  _| / _` |  | || ' \|  _/ _ \ '_| '  \/ _` |  _| / _ \ ' \ _ 
  \___\___/_||_|_| |_\__, | |___|_||_|_| \___/_| |_|_|_\__,_|\__|_\___/_||_(_)
                     |___/                                                    
    - Please note. When adding cars, weapons or peds that all characterization is uppercase (A, B, C not a, b, c)
    - When making separate lines you are required to place a comma (,) on all lines except the last, as seen below.
    - Links for lists of vehicles, weapons and peds can be found in the next section.

  _    _      _         _____  _   _              _  _     _      _ 
 | |  (_)_ _ | |__ ___ / / _ \| |_| |_  ___ _ _  | || |___| |_ __(_)
 | |__| | ' \| / /(_-</ / (_) |  _| ' \/ -_) '_| | __ / -_) | '_ \_ 
 |____|_|_||_|_\_\/__/_/ \___/ \__|_||_\___|_|   |_||_\___|_| .__(_)
                                                            |_|     
    - List of vehicles: https://wiki.rage.mp/index.php?title=Vehicles
    - List of peds: https://wiki.rage.mp/index.php?title=Peds
    - List of weapons: https://wiki.rage.mp/index.php?title=Weapons
    - Creator's Discord: HyenaLtd#0001 (Discord ID: 210057481458548738)
    - Designed for EZ-FiveM Roleplay and Scott's Designs Servers (His Discord ID: 625418659694641154)
    - Might be released later on to the public, all depends on completion of script.
            
 __   __   _    _    _       ___         _   _          _ 
 \ \ / /__| |_ (_)__| |___  / __| ___ __| |_(_)___ _ _ (_)
  \ V / -_) ' \| / _| / -_) \__ \/ -_) _|  _| / _ \ ' \ _ 
   \_/\___|_||_|_\__|_\___| |___/\___\__|\__|_\___/_||_(_)
    - Add all vehicles you want to be blacklisted.
]]

-- Restricted vehicles.
blacklists = {
    "APC",
    "BALLER5",
    "BALLER6",
    "BLIMP",
    "BLIMP2",
    "BLAZER4",
    "BLAZER5",
    "BRICKADE",
    "BUZZARD",
    "BOXVILLE5",
    "CARGOPLANE",
    "COG552",
    "COGNOSCENTI2",
    "DUKES2",
    "DUNE2",
    "DUNE3",
    "DUNE4",
    "DUNE5",
    "DUMP",
    "HYDRA",
    "INSURGENT",
    "INSURGENT2",
    "INSURGENT3",
    "JET",
    "KURUMA2",
    "LAZER",
    "LIMO2",
    "MARSHALL",
    "MONSTER",
    "RHINO",
    "SAVAGE",
    "SCHAFTER5",
    "SCHAFTER6",
    "SHEAVA",
    "SHOTARO",
    "SKYLIFT",
    "TECHNICAL",
    "TECHNICAL2",
    "TECHNICAL3",
    "TROPHYTRUCK",
    "TROPHYTRUCK2",
    "TUG",
    "VALKYRIE",
    "VALKYRIE2",
    "XLS2",
    "OPPRESSOR",
    "TAMPA3",
    "TRAILERSMALL2",
    "ARDENT",
    "HALFTRACK",
    "PHANTOM2",
    "RUINER2",
    "VOLTIC2",
    "WASTELANDER",
    "NIGHTSHARK",
    "CARTRAILER",
    "RAMPTRUCK",
    "HUNTER",
    "VIGILANTE",
    "BOMBUSHKA",
    "ROGUE",
    "ALPHAZ1",
    "STARLING",
    "TULA",
    "RIOT2",
    "AKULA",
    "AVENGER",
    "AVENGER2",
    "BARRAGE",
    "CHERNOBOG",
    "KHANJALI",
    "STROMBERG",
    "VOLATOL",
    "THRUSTER",
    "PYRO",
    "MOGUL",
    "NOKOTA",
    "BOMBUSHKA",
    "MOLOTOK",
    "MICROLIGHT",
    "REVOLTER",
    "DELUXO",
    "SEABREEZE",
    "CARACARA",
    "ISSI4",
    "ISSI5",
    "ISSI6",
    "DOMINATOR4",
    "DOMINATOR5",
    "DOMINATOR6",
    "IMPALER",
    "IMPALER2",
    "IMPALER3",
    "IMPALER4",
    "IMPERATOR",
    "IMPERATOR2",
    "IMPERATOR3",
    "RUINER3",
    "SLAMVAN4",
    "SLAMVAN5",
    "SLAMVAN6",
    "COMET4",
    "ZR380",
    "ZR3802",
    "ZR3803",
    "DEATHBIKE",
    "DEATHBIKE2",
    "DEATHBIKE3",
    "OPPRESSOR2",
    "BRUISER",
    "BRUISER2",
    "BRUISER3",
    "BRUTUS",
    "BRUTUS2",
    "BRUTUS3",
    "MENACER",
    "MONSTER3",
    "MONSTER4",
    "MONSTER5",
    "RCBANDITO",
    "CUTTER",
    "RUMPO3",
    "MULE4",
    "HAULER2",
    "CERBERUS",
    "CERBERUS2",
    "CERBERUS3",
    "PHANTOM3",
    "POUNDER2",
    "TERBYTE",
    "CABLECAR",
    "FRIEGHT",
    "FRIEGHTCAR",
    "FRIEGHTCONT1",
    "FRIEGHTCONT2",
    "FRIEGHTGRAIN",
    "METROTRAIN",
    "TANKERCAR",
}

-- Restricted peds
blacklistPeds = {
	"s_m_y_seb_01",
	"s_m_y_seb_02",
}

blacklistWeaps = {
    "WEAPON_FIREWORK",
}

-- Switches back to this ped when the user is in a blacklisted ped
newdmodel = GetHashKey("a_m_y_hipster_01")

-- Notification configuration
notification = "~r~This model is blacklisted, you are not allowed to drive it."
pedNotification = "~r~Restricted Ped Model."
weapNotification = "~r~Restricted Weapon Model."

-- Permissions configuration
bypassPerm = "blacklist.bypass"