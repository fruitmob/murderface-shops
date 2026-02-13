fx_version 'cerulean'
lua54 'yes'
game 'gta5'
--use_experimental_fxv2_oal 'yes'

author       'Murderface (Original by renzuzu)'
version      '2.0.0-murderface-qbx'
license      'LGPL-3.0-or-later'
repository   'https://github.com/renzuzu/renzu_shops'
description  'Renzu Shops - Murderface Fork (Qbox Edition) - Enhanced and maintained version with QBX support, bug fixes, MySQL caching, comprehensive documentation, and custom shops.'
--shared_script '@renzu_shield/init.lua'

shared_scripts {
    '@ox_lib/init.lua',
    'data/*.lua',
}
ui_page {
    'web/index.html',
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
    'web/index.html',
    'web/script.js',
    'web/style.css',
    -- 'web/levelup.gif',          -- Commenting out this line
    -- 'web/audio/*.ogg',          -- Commenting out this line
    'config/ownedshops/*.lua',
    'config/locales/*.lua',
    'config/*.lua',
}