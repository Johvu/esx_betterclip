ESX          = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx_lipas:lipas')
AddEventHandler('esx_lipas:lipas', function()
  ped = GetPlayerPed(-1)
  if IsPedArmed(ped, 4) then
    hash=GetSelectedPedWeapon(ped)
    if hash~=nil then
      TriggerServerEvent('esx_lipas:remove', hash)
      ESX.ShowNotification(_U('use'))
    else
      ESX.ShowNotification(_U('no_weapon'))
    end
  else
    ESX.ShowNotification(_U('is_melee'))
  end
end)
