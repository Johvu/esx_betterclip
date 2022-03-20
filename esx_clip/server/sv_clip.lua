ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)



RegisterServerEvent('esx_lipas:remove')
AddEventHandler('esx_lipas:remove', function(hash)
	local xPlayer = ESX.GetPlayerFromId(source)
	local weaponName = ESX.GetWeaponFromHash(hash)
	--print(weaponName.name)
	xPlayer.addWeaponAmmo(weaponName.name, Config.Ammo )
	xPlayer.removeInventoryItem('clip', 1)
end)

ESX.RegisterUsableItem('clip', function(source)
	TriggerClientEvent('esx_lipas:lipas', source)
end)

