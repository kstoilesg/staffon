fx_version 'bodacious'
games { 'gta5' }
files {
    'Core/MenuAPI.dll',
}

client_scripts {
  'lib/Proxy.lua',
  'lib/Tunnel.lua',
  'Core/ConflictClient.net.dll',
  'nopeds/nopeds.lua',
  'RichPresence/client.lua',
  'Staff/cl_staffon.lua',
  'Staff/cl_founderperks.lua',
  "DiscordLogs/JoinLeaveLogs/client.lua",
  'Inventory/client/main.lua',
  'Seatbelt/config.lua',
  'Seatbelt/client.lua',
  'dpemotes/NativeUI.lua',
  'dpemotes/Config.lua',
  'dpemotes/Client/*.lua',
  'addGroup/lib/Proxy.lua',
  'addgroup/lib/Tunnel.lua',
  'DiscordWL/client.lua',
  'addGroup/cl_homeblips.lua',
  'Staff/cl_staffdv.lua',
  'coords/coords.lua',
  'RealisticVehicleFailure/config.lua',
  'RealisticVehicleFailure/client.lua',
  'GunPullout/client.lua',
  'NPAS/heli_client.lua',
  'Tackle/lib/Proxy.lua',
  'Tackle/lib/Tunnel.lua',
  'Tackle/client.lua',
}

server_scripts {
    "DiscordWL/config.lua",
    'Core/ConflictServer.net.dll',
    "DiscordWL/server.lua",
    "@vrp/lib/utils.lua",
    "Staff/sv_staffon.lua",
    "Staff/sv_founderperks.lua",
    "DiscordLogs/JoinLeaveLogs/serverlog.lua",
    'addGroup/addgroup.lua',
    'addGroup/sv_homeblips.lua',
    'Staff/sv_staffdv.lua',
    'RealisticVehicleFailure/config.lua',
    'RealisticVehicleFailure/server.lua',
    'NPAS/heli_server.lua',
    'Tackle/server.lua',
    'RichPresence/server.lua',
}

server_export "IsRolePresent"
server_export "GetRoles"
client_debug_mode 'false'
server_debug_mode 'false'
