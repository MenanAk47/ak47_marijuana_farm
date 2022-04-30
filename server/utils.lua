ESX = nil
TriggerEvent(Config.SharedObjectName, function(obj) ESX = obj end)

TriggerEvent('esx_society:registerSociety', 'marijuana', 'marijuana', 'society_marijuana', 'society_marijuana', 'society_marijuana', {type = 'private'})
TriggerEvent('society:registerSociety', 'marijuana', 'marijuana', 'society_marijuana', 'society_marijuana', 'society_marijuana', {type = 'private'})

function getSocietyMoney()
	local money = nil
	TriggerEvent('esx_addonaccount:getSharedAccount', 'society_marijuana', function(account)
       money = account.money
    end)
    while money == nil do Citizen.Wait(0) end
    return money
end

function addSocietyMoney(money)
	TriggerEvent('esx_addonaccount:getSharedAccount', 'society_marijuana', function(account)
       account.addMoney(money)
    end)
end

function removeSocietyMoney(money)
	TriggerEvent('esx_addonaccount:getSharedAccount', 'society_marijuana', function(account)
       account.removeMoney(money)
    end)
end

function CanCarryItem(xPlayer, item, count)
	if Config.CheckCanCarryItem then
		if type(xPlayer.canCarryItem) == "table" or type(xPlayer.canCarryItem) == "function" then
	        return xPlayer.canCarryItem(item, count)
	    else
	    	local xItem = xPlayer.getInventoryItem(item)
	        if xItem.limit ~= -1 and (xItem.count + count) > xItem.limit then
	            return false
	        else
	            return true
	        end
	    end
	else
		return true
	end
end