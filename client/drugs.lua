local isPickingUp, isProcessing = false, false

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)

		for k,v in  pairs(Config.Processes) do
			if GetDistanceBetweenCoords(coords, v.coords, true) < 1 then
				if not isProcessing then
					ESX.ShowHelpNotification(v.hint)
				end

				if IsControlJustReleased(0, Keys['E']) and not isProcessing then
					Process(v.item1, v.item2, v.item3, v)
				end
			end
		end
	end
end)		

function Process(item1, item2, item3, zone)
	isProcessing = true
	ESX.ShowNotification(_U('drugs_processingstarted'))
	TriggerServerEvent('esx_advanceddrugs:mixDrugs', item1, item2, item3)
	local timeLeft = Config.Delays.MethProcessing / 1000
	local playerPed = PlayerPedId()

	while timeLeft > 0 do
		Citizen.Wait(1000)
		timeLeft = timeLeft - 1

		if GetDistanceBetweenCoords(GetEntityCoords(playerPed), zone.coords, false) > 4 then
			ESX.ShowNotification(_U('drugs_processingtoofar'))
			TriggerServerEvent('esx_advanceddrugs:cancelProcessing')
			break
		end
	end

	isProcessing = false
end
