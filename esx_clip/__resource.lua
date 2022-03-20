resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'Clip'

version '1.0.0'

server_scripts {
  '@es_extended/locale.lua',
  'server/sv_clip.lua',
  'locales/en.lua',
  'config.lua',
	'locales/fi.lua'
}

client_scripts {
  '@es_extended/locale.lua',
  'client/cl_clip.lua',
  'locales/en.lua',
  'config.lua',
  'locales/fi.lua'

}
