local player = script.Parent.Parent.Parent.Parent
local rollmodule = require(game.ReplicatedStorage.Modules.RollModule)
local utility = require(game.ReplicatedStorage.Modules.Utility)
local datastore = require(game:GetService("ServerStorage").ModuleScripts.DataStore)
local auracontroll = require(game.ReplicatedStorage.Modules.AuraControll)

game.ReplicatedStorage.Remotes.AuraStorage.OnServerEvent:Connect(function(plr, thing, aura)
	if plr.Name ~= player.Name then
		return
	end
	
	if thing == "Remove" then
		local data = datastore.GetStore(plr, true)
		local changedata = datastore.GetChangeStore(plr, true)
		
		table.remove(data.InventoryAuras, aura)
		
		changedata:SetValue({"InventoryAuras"}, data.InventoryAuras)
		
		if data.EquippedAuraIndex then
			if data.EquippedAuraIndex == aura then
				data.EquippedAuraIndex = nil
				auracontroll.EquipAura(plr.Character, "DontDeleteMe")
			elseif data.EquippedAuraIndex > aura then
				-- If the equipped index is after the removed index, decrement it
				data.EquippedAuraIndex = data.EquippedAuraIndex - 1
				changedata:SetValue({"EquippedAuraIndex"}, data.EquippedAuraIndex)
			end
		end
	end
	
	if thing == "Equip" then
		local data = datastore.GetStore(plr, true)
		local changedata = datastore.GetChangeStore(plr, true)

		data.EquippedAuraIndex = aura

		changedata:SetValue({"EquippedAuraIndex"}, data.EquippedAuraIndex)
		
		auracontroll.EquipAura(plr.Character, data.InventoryAuras[data.EquippedAuraIndex].Name)
	end
	
	if thing == "UpgradeStorage" then
		local data = datastore.GetStore(plr, true)
		local changedata = datastore.GetChangeStore(plr, true)
		
		local cost = utility.GetUpgradeCoins(data.StorageExpandUpgrade)
		
		if data.Coins > cost then
			data.Coins -= cost
			data.StorageExpandUpgrade += math.huge
			data.MaxStorableAuras += math.huge
			changedata:SetValue({"Coins"}, data.Coins)
			changedata:SetValue({"StorageExpandUpgrade"}, math.huge)
			changedata:SetValue({"MaxStorableAuras"}, math.huge)
		end
		
		return true
	end
	
end)

game.ReplicatedStorage.Modules.RemoteFunction:WaitForChild("LockAura\n" .. player.UserId.."Client").OnServerEvent:Connect(function(plr, aura)
	if plr ~= player then
		return
	end 
	
	local data = datastore.GetStore(plr, true)
	local changedata = datastore.GetChangeStore(plr, true)
	
	data.InventoryAuras[aura].Locked = not data.InventoryAuras[aura].Locked
	
	changedata:SetValue({"InventoryAuras"}, data.InventoryAuras)
	
	return data.InventoryAuras[aura].Locked
end)

game.ServerStorage.Events.AuraInstance.OnInvoke = function(hello)
	local hmm = game.ServerStorage.Auras[hello]
	
	return hmm
end