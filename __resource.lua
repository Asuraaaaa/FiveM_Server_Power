resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'ESX Advanced Drugs '

version '0.2.0'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'locales/it.lua',
	'config.lua',
	'server/main.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'locales/it.lua',
	'config.lua',
	'client/main.lua',
	'client/drugs.lua'
}

dependencies {
	'es_extended'
}