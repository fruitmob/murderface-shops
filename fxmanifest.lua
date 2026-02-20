fx_version 'cerulean'
lua54 'yes'
game 'gta5'
--use_experimental_fxv2_oal 'yes'

author       'Murderface (FMRP)'
version      '3.0.0'
license      'LGPL-3.0-or-later'
repository   'https://github.com/fruitmob/murderface-shops'
description  'murderface-shops - Advanced shop system for FiveM (Qbox Edition) - QBX support, MySQL caching, security fixes, and custom shops.'
--shared_script '@renzu_shield/init.lua' -- legacy/disabled

shared_scripts {
    '@ox_lib/init.lua',
    'data/*.lua',
}
ui_page {
    'web/dist/nui.html',
}

client_scripts {
    'init.lua',
    'client/test.lua',
    'client/main.lua',
    'client/shop_peds.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'init.lua',
    'server/db/sql.lua',
    'server/cache.lua',                  -- NEW: MySQL caching system
    'server/framework/player.lua',       -- NEW: QBX-safe player wrapper
    'server/framework/main.lua',
    'server/main.lua'
}

files {
    'web/dist/**/*',
    'config/ownedshops/*.lua',
    'config/locales/*.lua',
    'config/*.lua',
}