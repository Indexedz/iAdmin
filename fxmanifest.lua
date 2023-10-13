fx_version "cerulean"
lua54 'yes'
game "gta5"

--ui_page 'web/mirror/index.html'
ui_page 'web/dist/index.html'

shared_script {
  '@Index/loaders/string.lua',
  "@Index/imports/main.lua",
  '@ox_lib/init.lua',
  'init.lua'
}

client_script "resources/**/client.lua"
server_script "resources/**/server.lua"

files {
  --'web/mirror/index.html',
  'web/dist/index.html',
  'web/dist/**/*',

  'data/*.lua',
  'modules/**/*.lua',
  'modules/**/*.json'
}
