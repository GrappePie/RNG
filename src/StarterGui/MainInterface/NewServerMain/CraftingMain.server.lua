local ReplicatedStorage = game.ReplicatedStorage
local player = script.Parent.Parent.Parent.Parent
local ReplicaRemoteEvents = ReplicatedStorage.ReplicaRemoteEvents
local datastore = require(game.ServerStorage.ModuleScripts.DataStore)
local raritydb = require(game.ReplicatedStorage.Modules.DB.RarityDB)
local itemdb = require(game.ReplicatedStorage.Modules.DB.ItemDB)
local recipedb = require(game.ReplicatedStorage.Modules.DB.RecipesDB)
local Inventory = require(game.ReplicatedStorage.Modules.Inventory)
local auracontroll = require(game.ReplicatedStorage.Modules.AuraControll)

script.Parent.Parent.RemoteFunction:WaitForChild("Craft\n" .. player.UserId.."Client").OnServerEvent:Connect(function(plr, todo, craftingitem, iteminsert, amountofitem)
	if plr.Name ~= player.Name then
		return
	end
	
	local Data = datastore.GetStore(plr, true)
	local changedata = datastore.GetChangeStore(plr, true)
	
	if todo == "Insert" then
		local whatisit = nil
		if itemdb[iteminsert] == nil then
			whatisit = "Aura"
		else
			whatisit = "Item"
		end
		
		if not recipedb[craftingitem] then
			return
		end
		
		local founditem = false
		
		for i, v in pairs(recipedb[craftingitem].Ingredients) do
			if v[1] == iteminsert then
				founditem = true
			end
		end
		
		if founditem == false then
			return
		end
		
		if whatisit == "Item" then
			if Data.Inventory[iteminsert].amount < tonumber(amountofitem) then
				return
			end
		end
		
		if not Data.CraftingProgress then
			Data.CraftingProgress = {}
		end
		
		if not Data.CraftingProgress[craftingitem] then
			Data.CraftingProgress[craftingitem] = {
				[iteminsert] = 0		
			}
		end

		if not Data.CraftingProgress[craftingitem][iteminsert] then
			Data.CraftingProgress[craftingitem][iteminsert] = 0
		end
		changedata:SetValue({"CraftingProgress", craftingitem}, Data.CraftingProgress[craftingitem])
		
		for i, v in pairs(recipedb[craftingitem].Ingredients) do
			if v[1] == iteminsert then
				if Data.CraftingProgress[craftingitem][iteminsert] >= v[2] then
					return
				end
			end
		end
		
		if whatisit == "Item" then
			Inventory.StealItems(player, iteminsert, tonumber(amountofitem), "Crafted")
		else
			local TotalOfAura = 0
			for i, v in pairs(Data.InventoryAuras) do
				if v.Name == iteminsert then
					TotalOfAura += 1
				end
			end
			if TotalOfAura < tonumber(amountofitem) then
				print("Erm")
				return
			end
			local remaining = tonumber(amountofitem)
			for i = #Data.InventoryAuras, 1, -1 do
				local v = Data.InventoryAuras[i]
				if tostring(v.Name) == tostring(iteminsert) then
					if remaining > 0 then
						remaining -= 1
						table.remove(Data.InventoryAuras, i)
						changedata:SetValue({"InventoryAuras"}, Data.InventoryAuras)

						if Data.EquippedAuraIndex then
							if Data.EquippedAuraIndex == i then
								Data.EquippedAuraIndex = nil
								auracontroll.EquipAura(plr.Character, "DontDeleteMe")
							elseif Data.EquippedAuraIndex > i then
								Data.EquippedAuraIndex = Data.EquippedAuraIndex - 1
								changedata:SetValue({"EquippedAuraIndex"}, Data.EquippedAuraIndex)
							end
						end
					end
				end
			end
		end
		
		Data.CraftingProgress[craftingitem][iteminsert] += amountofitem
		
		
		changedata:SetValue({"CraftingProgress", craftingitem, iteminsert}, Data.CraftingProgress[craftingitem][iteminsert])
	end
	
	if todo == "Craft" then
		local CraftingProgress = Data.CraftingProgress[craftingitem]
		local TotalToComplete = #recipedb[craftingitem].Ingredients
		local Completed = 0
		for i, v in pairs(recipedb[craftingitem].Ingredients) do
			if CraftingProgress[v[1]] >= v[2] then
				Completed += 1
			end
		end
		if Completed >= TotalToComplete then
			--print("Completed AYYY")
			if recipedb[craftingitem].OneTimeCraft == true then
				if Data.Inventory[craftingitem] then
					--script.Parent.Parent.RemoteFunction:WaitForChild("Craft\n" .. player.UserId.."Client"):FireClient(plr, true)
					return false
				else
					Inventory.GiveItems(player, craftingitem, 1, craftingitem)
					script.Parent.Parent.RemoteFunction:WaitForChild("Craft\n" .. player.UserId.."Client"):FireClient(plr, true)
					game.ReplicatedStorage.Remotes.Crafting:FireClient(plr, craftingitem)
					return true
				end
				
			elseif recipedb[craftingitem].Type == "Aura" then		
				local okaytable = {Locked = false, Name = craftingitem}
				table.insert(Data.InventoryAuras, okaytable)
				changedata:SetValue("InventoryAuras", Data.InventoryAuras)
				script.Parent.Parent.RemoteFunction:WaitForChild("Craft\n" .. player.UserId.."Client"):FireClient(plr, true)
				game.ReplicatedStorage.Remotes.Crafting:FireClient(plr, craftingitem)
				changedata:SetValue({"CraftingProgress", craftingitem}, nil)
				return true
			else
				Inventory.GiveItems(player, craftingitem, 1, craftingitem)
				script.Parent.Parent.RemoteFunction:WaitForChild("Craft\n" .. player.UserId.."Client"):FireClient(plr, true)
				game.ReplicatedStorage.Remotes.Crafting:FireClient(plr, craftingitem)
				changedata:SetValue({"CraftingProgress", craftingitem}, nil)
				return true
			end
		end
	end
	
	return true
	
end)

game.ReplicatedStorage.Remotes.AutoCraftChange.OnServerEvent:Connect(function(plr, change)
	if plr.Name ~= player.Name then
		return
	end
	
	local Data = datastore.GetStore(plr, true)
	local changedata = datastore.GetChangeStore(plr, true)
	
	Data.AutoCrafting = change
	changedata:SetValue({"AutoCrafting"}, Data.AutoCrafting)
end)