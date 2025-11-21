-- What the sigma?

local function v_u_1(...)
	warn(...)
	print(debug.traceback())
end
local _ = print
local v_u_2 = game:GetService("HttpService")
local v3 = game:GetService("ReplicatedStorage")
local v4 = game:GetService("ServerStorage")
local v_u_5 = game:GetService("RunService")
local v6 = v3:WaitForChild("Modules")
local v_u_7 = require(v6:WaitForChild("DB"):WaitForChild("ItemDB"))
require(v6:WaitForChild("DB"):WaitForChild("RecipesDB"))
local v_u_8 = require(v6:WaitForChild("DB"):WaitForChild("PotionRecipesDB"))
local v_u_9 = require(v6:WaitForChild("DB"):WaitForChild("RecipesDB"))
local v_u_10 = require(v6:WaitForChild("Utility"))
local v_u_11 = require(v6:WaitForChild("Quest"))
require(v6:WaitForChild("RemoteFunction"))
local v_u_12 = script:WaitForChild("OnGotItems")
local v_u_13 = script:WaitForChild("OnStoleItems")
local v_u_14 = script:WaitForChild("Failed")
local v_u_15 = {}
local v_u_16 = v_u_5:IsServer()

if v_u_16 then
	v_u_16 = require(v4:WaitForChild("ModuleScripts"):WaitForChild("DataStore"))
end
local v_u_17 = {
	["OnGotItems"] = v_u_12.OnClientEvent,
	["OnStoleItems"] = v_u_13.OnClientEvent,
	["Failed"] = v_u_14.OnClientEvent,
	["Item"] = v3:FindFirstChild("Assets"):FindFirstChild("Item")
}
local v_u_18, v_u_19, v_u_20, v_u_21
if v_u_5:IsServer() then
	v_u_18 = require(v4:WaitForChild("ModuleScripts"):WaitForChild("GearHandlerServer"))
	v_u_19 = require(v4:WaitForChild("ModuleScripts"):WaitForChild("Coin"))
	v_u_20 = require(v4:WaitForChild("ModuleScripts"):WaitForChild("DataLogs"))
	v_u_21 = v4:WaitForChild("Events"):WaitForChild("ItemCollected")
	v4:WaitForChild("Events"):WaitForChild("GiveItems")
else
	v_u_19 = nil
	v_u_20 = nil
	v_u_18 = nil
	v_u_21 = nil
end
local function v_u_27(p22)
	-- upvalues: (copy) v_u_27
	local v23 = {}
	for v24, v26 in p22 do
		if typeof(v26) == "table" then
			local v26 = v_u_27(v26) or v26
		end
		v23[v24] = v26
	end
	return v23
end
function romanToInteger(p28)
	local v29 = {
		["I"] = 1,
		["V"] = 5,
		["X"] = 10,
		["L"] = 50,
		["C"] = 100,
		["D"] = 500,
		["M"] = 1000
	}
	local v30 = 0
	local v31 = 0
	for v32 = #p28, 1, -1 do
		local v33 = v29[string.upper((string.sub(p28, v32, v32)))]
		if not v33 then
			return nil
		end
		if v33 < v30 then
			v31 = v31 - v33
		else
			v31 = v31 + v33
		end
		v30 = v33
	end
	return v31
end
local function v_u_41(p34, p35)
	-- upvalues: (copy) v_u_16, (copy) v_u_9, (copy) v_u_8
	local v36 = v_u_16.GetStore(p34, true).AutoCrafting
	if v36 ~= "" then
		if v_u_9[v36] then
			if v_u_9[v36].Ingredients[p35] then
				return true
			end
		else
			local v37, v38 = string.match(v36, "([%s%w%p]+) ([IVXCM]+)")
			if v37 then
				local v39 = romanToInteger(v38)
				for _, v40 in v_u_8[v37].potions[v39].ingredients do
					if v40[1] == p35 then
						return true
					end
				end
			end
		end
	end
end
local function v_u_54(p42, p43)
	-- upvalues: (copy) v_u_16, (copy) v_u_9, (copy) v_u_8
	local v44 = v_u_16.GetStore(p42, true)
	local v45 = v44.AutoCrafting
	if v_u_9[v45] then
		local v46 = v44.CraftingProgress
		local v47 = v_u_9[v45]
		return not v46[v45] and true or not v46[v45][p43] and true or v46[v45][p43] < v47.Ingredients[p43]
	end
	local v48, v49 = string.match(v45, "([%s%w%p]+) ([IVXCM]+)")
	if v48 then
		local v50 = romanToInteger(v49)
		local v51 = v44.PotionCraftingProgress
		local v52 = nil
		for _, v53 in v_u_8[v48].potions[v50].ingredients do
			if v53[1] == p43 then
				v52 = v53[2]
			end
		end
		return not v51[v45] and true or not v51[v45][p43] and true or (v52 or (1 / 0)) > v51[v45][p43]
	end
end
function v_u_17.InitInventory(p55)
	--print("Tying")
	-- upvalues: (copy) v_u_5, (copy) v_u_16, (copy) v_u_2, (ref) v_u_19, (copy) v_u_7, (copy) v_u_12, (ref) v_u_18
	if not v_u_5:IsClient() then
		local v56 = v_u_16.GetStore(p55, true)
		local changeStore = v_u_16.GetChangeStore(p55, true)
		local v57 = {}
		if v56.Tools ~= "NONE" then
			for _, v58 in v56.Tools do
				if not v57[v58] then
					v57[v58] = {
						["amount"] = 0,
						["equipped"] = false
					}
				end
				local v59 = v57[v58]
				v59.amount = v59.amount + 1
			end
			changeStore:SetValue("Tools", "NONE")
			changeStore:SetValue("Inventory", v57)
		end
		local v60 = v56.Inventory
		if type(v60) == "string" then
			changeStore:SetValue("Inventory", v_u_2:JSONDecode(v56.Inventory))
		end
		if not v56.Inventory then
			changeStore:SetValue("Inventory", {})
		end
		local v61 = v56.Inventory
		local v62 = 0
		if v61.Coin then
			v62 = v62 + v61.Coin.amount * 50
			v61.Coin = nil
		end
		if v61["Gilded Coin"] then
			v62 = v62 + v61["Gilded Coin"].amount * 100
			v61["Gilded Coin"] = nil
		end
		if 0 < v62 then
			print(p55)
			print(v62)
			--v_u_19.AddCoins(p55, v62, false)
		end
		for v63, v64 in v61 do
			if not v63:find("__") then
				if not v_u_7[v63] then
					v61[v63] = nil
				end
				v_u_12:FireClient(p55, v63, v_u_7[v63], v64.amount)
			end
		end
		if v61.__equippedItems then
			if v61.__equippedItems.rightGear == "Jackpot Gauntlet" then
				v61.__equippedItems.rightGear = ""
				v61.__equippedItems.leftGear = "Jackpot Gauntlet"
			elseif v61.__equippedItems.leftGear == "Subzero Device" then
				v61.__equippedItems.rightGear = "Subzero Device"
				v61.__equippedItems.leftGear = ""
			elseif v61.__equippedItems.leftGear == "Windstorm Device" then
				v61.__equippedItems.leftGear = ""
				v61.__equippedItems.rightGear = "Windstorm Device"
			end
		end
		if v61.__equippedItems then
			v56.LeftGear = v61.__equippedItems.leftGear
			v56.RightGear = v61.__equippedItems.rightGear
			v61.__equippedItems = nil
			v61.__currentEquippedItem = nil
		elseif v61.__currentEquippedItem then
			v56.LeftGear = v61.__currentEquippedItem
			v56.RightGear = ""
			v61.__currentEquippedItem = nil
		end
		if v56.LeftGear then
			v_u_18.EquipGear(p55, v56.LeftGear)
		else
			v56.LeftGear = ""
		end
		if v56.RightGear then
			v_u_18.EquipGear(p55, v56.RightGear)
		else
			v56.RightGear = ""
		end
		changeStore:SetValue("Inventory", v61)
	end
end
function v_u_17.GetInventory(p65)
	-- upvalues: (copy) v_u_5, (copy) v_u_16
	if v_u_5:IsServer() then
		return v_u_16.GetStore(p65, true).Inventory
	end
end
function v_u_17.GiveItems(p66, p67, p68, p69)
	-- upvalues: (copy) v_u_5, (copy) v_u_7, (copy) v_u_16, (copy) v_u_27, (ref) v_u_20, (copy) v_u_11, (ref) v_u_21, (copy) v_u_12, (copy) v_u_41, (copy) v_u_54, (copy) v_u_9, (copy) v_u_17, (copy) v_u_8, (copy) v_u_1
	if not v_u_5:IsClient() then
		local v70 = v_u_7[p67]
		if v70 then
			local v71 = v_u_16.GetStore(p66, true)
			local changeStore = v_u_16.GetChangeStore(p66, true)
			local v72 = v71.Inventory
			local _ = v71.AutoCrafting[p67]
			local v73 = v72[p67]
			local v74, v75, v76
			if v73 then
				v74 = v73.amount
				v75 = v_u_27(v72)
				v73.amount = v73.amount + p68
				v76 = v73.amount
			else
				v72[p67] = {
					["amount"] = p68
				}
				v76 = p68
				v75 = {}
				v74 = 0
			end
			v_u_20.AddInventoryLog(p66, "Added/" .. p69, ("Number of %* has increased to %*"):format(p67, p68), ("%*: %* > %*"):format(p67, v74, v76), v75, v72)
			if p67 == "Stella\'s star" and v71.Quests.Stella and v71.Quests.Stella[1] == 1 then
				v71.Quests.Stella[2][1] = 1
				v_u_11.UpdateProgressRemote:FireClient(p66, "Stella", 1, 1, 1) --DISABLED FOR TESTING
			end
			v_u_12:FireClient(p66, p67, v70, p68)
			changeStore:SetValue("Inventory", v72)
			local v77 = v_u_41(p66, p67) and v_u_54(p66, p67) and v71.AutoCrafting
			if v77 then
				if v_u_9[v77] then
					local v78 = v_u_9[v77].Ingredients[p67]
					if v78 - p68 < 0 then
						p68 = v78 or p68
					end
					v_u_17.StealItems(p66, p67, p68, "Crafted")
					v71.CraftingProgress[v77] = v71.CraftingProgress[v77] or {}
					v71.CraftingProgress[v77][p67] = v71.CraftingProgress[v77][p67] or 0
					changeStore:SetValue("CraftingProgress", v71.CraftingProgress)
					changeStore:SetValue({ "CraftingProgress", v77, p67 }, v71.CraftingProgress[v77][p67] + p68)
					return
				end
				local v79, v80 = string.match(v77, "([%s%w%p]+) ([IVXCM]+)")
				local v81 = romanToInteger(v80)
				if v79 then
					local v82 = 0
					for _, v83 in v_u_8[v79].potions[v81].ingredients do
						if v83[1] == p67 then
							v82 = v83[2]
						end
					end
					if v82 - p68 < 0 then
						p68 = v82 or p68
					end
					v_u_17.StealItems(p66, p67, p68, "Crafted")
					v71.PotionCraftingProgress[v77] = v71.PotionCraftingProgress[v77] or {}
					v71.PotionCraftingProgress[v77][p67] = v71.PotionCraftingProgress[v77][p67] or 0
					changeStore:SetValue("PotionCraftingProgress", v71.PotionCraftingProgress)
					changeStore:SetValue({ "PotionCraftingProgress", v77, p67 }, v71.PotionCraftingProgress[v77][p67] + p68)
					return
				end
			end
		else
			v_u_1((("\"%*\" is an item that does not exist in the ItemDB."):format(p67)))
		end
	end
end
function v_u_17.StealItems(p84, p85, p86, p87)
	-- upvalues: (copy) v_u_5, (copy) v_u_7, (copy) v_u_16, (copy) v_u_17, (copy) v_u_27, (copy) v_u_13, (ref) v_u_18, (ref) v_u_20, (copy) v_u_1
	if not v_u_5:IsClient() then
		if v_u_7[p85] then
			local changeStore = v_u_16.GetChangeStore(p84, true)
			local v88 = v_u_16.GetStore(p84, true)
			local v89 = v_u_16.GetStore(p84, true).Inventory
			if not v89 then
				v_u_17.InitInventory(p84)
			end
			local v90 = v89[p85]
			if not v90 then
				return false
			end
			if v90.amount < p86 then
				return false
			end
			if v90.amount == p86 then
				local v91 = 0
				local v92 = v_u_27(v89)
				v89[p85] = nil
				v_u_13:FireClient(p84, p85, p86)
				if v89.LeftGear == p85 or v89.RightGear == p85 then
					v_u_18.UnEquipGear(p84, v_u_7[p85].GearType)
				end
				v_u_20.AddInventoryLog(p84, "Removed/" .. p87, ("Number of %* decreased to %*"):format(p85, p86), ("%*: %* > %*"):format(p85, p86, v91), v92, v89)
				print(p87)
			else
				local v93 = v90.amount
				local v94 = v93 - p86
				local v95 = v_u_27(v89)
				v90.amount = v90.amount - p86
				v_u_13:FireClient(p84, p85, p86)
				if v89.LeftGear == p85 or v89.RightGear == p85 then
					v_u_18.UnEquipGear(p84, v_u_7[p85].GearType)
				end
				v_u_20.AddInventoryLog(p84, "Removed/" .. p87, ("Number of %* decreased to %*"):format(p85, p86), ("%*: %* > %*"):format(p85, v93, v94), v95, v89)
			end
			changeStore:SetValue("Inventory", v89)
		else
			v_u_1((("\"%*\" is an item that does not exist in the ItemDB."):format(p85)))
		end
		return true
	end
end
function v_u_17.IsExists(p96, p97)
	-- upvalues: (copy) v_u_16, (copy) v_u_17
	local v98 = v_u_16.GetStore(p96, true).Inventory
	if not v98 then
		v_u_17.InitInventory(p96)
	end
	return v98[p97] and true or false
end
if v_u_5:IsServer() then
	script.EquipItem.OnServerEvent:Connect(function(p99, p100, p101)
		-- upvalues: (copy) v_u_16, (copy) v_u_7, (ref) v_u_18
		local v102 = v_u_16.GetStore(p99, true)
		local changeStore = v_u_16.GetChangeStore(p99, true)
		if v102.Inventory[p101] then
			if v_u_7[p101].GearType == p100 then
				v_u_18.EquipGear(p99, p101)
				changeStore:SetValue(("%*Gear"):format(p100), p101)
			end
		else
			return
		end
	end)
	script.UnequipItem.OnServerEvent:Connect(function(p103, p104)
		-- upvalues: (copy) v_u_16, (ref) v_u_18
		local v105 = v_u_16.GetStore(p103, true)
		local changeStore = v_u_16.GetChangeStore(p103, true)
		if v105[("%*Gear"):format(p104)] then
			changeStore:SetValue(("%*Gear"):format(p104), "")
			v_u_18.UnEquipGear(p103, p104)
		end
	end)
	script.UseItem.OnServerEvent:Connect(function(p106, p107, p108)
		-- upvalues: (copy) v_u_1, (copy) v_u_10, (copy) v_u_7, (copy) v_u_16, (copy) v_u_15, (copy) v_u_17, (copy) v_u_14
		if p108 then
			if p108 < 1 then
				v_u_1("Negative number is not possible")
				return
			elseif v_u_10.IsValidNumberText((tostring(p108))) then
				if v_u_7[p107] then
					if v_u_7[p107].MaximumConcurrentUses and v_u_7[p107].MaximumConcurrentUses < p108 then
						return
					else
						local v109 = v_u_16.GetStore(p106, true).Inventory
						if v109[p107] then
							if not v_u_15[p106] then
								pcall(function()
									v_u_15[p106] = true
									v109[p107].amount = v109[p107].amount or 0
									if v109[p107].amount < p108 then
										v_u_1((("%* tried to use more than the items he had"):format(p106.Name)))
										v_u_15[p106] = false
										return
									end
									if not v_u_7[p107].Use then
										v_u_1((("%* is not available."):format(p107)))
										return
									end
									local v110 = v_u_7[p107].Use(p106, p108)
									if v110 then
										v_u_14:FireClient(p106, v110)
									elseif v_u_7[p107].Consumables == nil or v_u_7[p107].Consumables ~= false then
										v_u_17.StealItems(p106, p107, p108, "Used")
										print(p106)
										print(p107)
										print(p108)
									end
								end)
								task.wait(0.2)
								v_u_15[p106] = false
							end
						else
							v_u_1((("%* does not have that item"):format(p106.Name)))
						end
					end
				else
					v_u_1((("%* is an item that does not exist in DB"):format(p107)))
					return
				end
			else
				v_u_1((("Invalid item amount : %*"):format(p108)))
				return
			end
		else
			v_u_1("amount is nil")
			return
		end
	end)
end
function v_u_17.EquipItem(p111, p112)
	-- upvalues: (copy) v_u_5
	if not v_u_5:IsServer() then
		script.EquipItem:FireServer(p111, p112)
	end
end
function v_u_17.UnequipItem(p113)
	-- upvalues: (copy) v_u_5
	if not v_u_5:IsServer() then
		script.UnequipItem:FireServer(p113)
	end
end
function v_u_17.UseItem(p114, p115)
	-- upvalues: (copy) v_u_5
	if not v_u_5:IsServer() then
		script.UseItem:FireServer(p114, p115)
	end
end
return v_u_17