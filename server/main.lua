ESX = nil
RegisterServerEvent('esx_advanceddrugs:mixDrugs')
AddEventHandler('esx_advanceddrugs:mixDrugs', function(item1, item2, item3)
	
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)	
    -- Ottieni numero attuale di materie prime nell'inventario
    local i1, i2, i3 = xPlayer.getInventoryItem(item1.name),xPlayer.getInventoryItem(item2.name),xPlayer.getInventoryItem(item3.name)

    if i1.count > 0 and i2.count > 0 and i3.count < item3.limit  then
        -- Rimuove droghe utilizzate dall elenco
        xPlayer.removeInventoryItem(item1.name, 1)
        xPlayer.removeInventoryItem(item2.name, 1)
        -- Aggiunta droga processata
        xPlayer.addInventoryItem(item3.name, 1)
        TriggerClientEvent('esx:showNotification', _source, _U('drugs_processed'))
    elseif i3.count == item3.limit then
        TriggerClientEvent('esx:showNotification', _source, _U('drugs_processingfull'))
    else
        TriggerClientEvent('esx:showNotification', _source, _U('drugs_processingenough'))
    end  
--playersProcessingMeth[_source] = nil
--print(('esx_meth: %s attempted to exploit meth processing!'):format(GetPlayerIdentifiers(source)[1]))
end)