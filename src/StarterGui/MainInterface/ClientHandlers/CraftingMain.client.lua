-- What the sigma?

local v1 = game:GetService("Players")
local v2 = game:GetService("RunService")
local v_u_3 = game:GetService("TweenService")
local v4 = game:GetService("ReplicatedStorage")
local v_u_5 = game:GetService("LocalizationService")
local v_u_6 = v1.LocalPlayer
local v7 = script:FindFirstAncestorOfClass("ScreenGui")
local v_u_8 = v7:WaitForChild("ShopFrame")
local v_u_9 = v_u_8:WaitForChild("Holder")
local v_u_10 = v_u_8:WaitForChild("InnerFrame")
local v11 = v_u_8:WaitForChild("SelectionCorners"):WaitForChild("Close")
local v12 = v_u_10:WaitForChild("Craft")
local v_u_13 = v_u_10:WaitForChild("Auto")
local v14 = workspace:WaitForChild("Map"):WaitForChild("SHOP"):WaitForChild("Jake"):WaitForChild("ProximityPrompt")
local v_u_15 = v4:WaitForChild("Assets"):WaitForChild("SFXs")
v4:WaitForChild("TiersUI")
local v16 = v4:WaitForChild("Modules")
local v17 = v16:WaitForChild("DB")
local v18 = v4:WaitForChild("Remotes")
local v_u_19 = v7:WaitForChild("CraftWarningFrame")
local v_u_20 = v_u_19:WaitForChild("Nevermind")
local v_u_21 = v_u_19:WaitForChild("RealCraft")
local v_u_22 = require(v17:WaitForChild("RecipesDB"))
require(v17:WaitForChild("PotionRecipesDB"))
local v_u_23 = require(v17:WaitForChild("ItemDB"))
local v24 = require(v7:WaitForChild("RemoteFunction"))
local v_u_25 = require(v16:WaitForChild("CoreModules"):WaitForChild("ClientBasedFunctions"))
local v26 = require(v4:WaitForChild("ReplicaController"))
local v_u_27 = require(v16:WaitForChild("Dialog"))
local v_u_28 = require(v16:WaitForChild("Utility"))
local v_u_29 = v24.new("Craft\n" .. v_u_6.UserId)
local v30 = v18:WaitForChild("Crafting")
local v_u_31 = v18:WaitForChild("AutoCraftChange")
v4:WaitForChild("Bindables"):WaitForChild("AutoCraftChanged")
local v_u_32 = require(v7:WaitForChild("Notification"):WaitForChild("Core"))
local v33 = require(v4.Modules:WaitForChild("ConsoleIconHandler"))
local v_u_34 = script:WaitForChild("Item")
local v_u_35 = script:WaitForChild("Ingredient")
local v_u_36 = "Gear Basing"
local v_u_37 = false
local v_u_38 = false
local v_u_39 = false
local v_u_40 = {}
local v_u_41 = {}
v2:IsStudio()
local v_u_42 = ""
local v_u_43 = {}
local _ = print
local v44 = workspace:WaitForChild("Map"):WaitForChild("SHOP"):WaitForChild("Jake")
local v45 = v44:WaitForChild("Head")
local v_u_46 = {}
local v47 = {
	["Name"] = "Rig",
	["ViewportData"] = {
		["Model"] = v44,
		["CameraCFrame"] = CFrame.lookAt((v45.CFrame * CFrame.new(0, 0, -3)).Position, v45.Position)
	}
}
v_u_46.Speaker = v47
v_u_46.Contexts = {
	{
		["Text"] = "He left me with his work and went out to play, what a lazy person he is.",
		["EndDelay"] = 0.2
	}
}
v_u_46.Choices = {
	{
		["ButtonText"] = "[ Open ]",
		["ButtonColor3"] = Color3.fromRGB(26, 136, 18),
		["Result"] = "Open"
	},
	{
		["ButtonText"] = "Who are you?",
		["Result"] = "WhoAreYou"
	},
	{
		["ButtonText"] = "[ Leave ]",
		["ButtonColor3"] = Color3.fromRGB(136, 16, 16),
		["Result"] = "Leave"
	}
}

local v51 = {}
local v52 = {
	["Name"] = "Rig",
	["ViewportData"] = {
		["Model"] = v44,
		["CameraCFrame"] = CFrame.lookAt((v45.CFrame * CFrame.new(0, 0, -3)).Position, v45.Position)
	}
}
v51.Speaker = v52
v51.Contexts = {
	{
		["Text"] = "I don't have a name, I'm just something the developers added by mistake.",
		["EndDelay"] = 0.2
	}
}
v51.Choices = {
	{
		["ButtonText"] = "...",
		["Result"] = "Leave"
	}
}

-- Assign NextDialog to the appropriate choice
for _, choice in ipairs(v_u_46.Choices) do
	if choice["Result"] == "WhoAreYou" then
		choice["NextDialog"] = v51
	end
end
v26.RequestData()
repeat
	task.wait()
until v26.InitialDataReceived
local v_u_53 = v26.GetReplicaById(v_u_6:GetAttribute("UID"))
local v_u_54 = v_u_28.TryUntilSuccess(v_u_5.GetTranslatorForLocaleAsync, v_u_5, v_u_5.RobloxLocaleId)
local function v_u_60(p55)
	-- upvalues: (copy) v_u_60
	local v56 = {}
	for v57, v59 in p55 do
		if typeof(v59) == "table" then
			local v59 = v_u_60(v59) or v59
		end
		v56[v57] = v59
	end
	return v56
end
local function v_u_65(p61, p62)
	-- upvalues: (copy) v_u_53, (copy) v_u_22
	if not v_u_53.Data.CraftingProgress[p61] then
		return false
	end
	if not v_u_53.Data.CraftingProgress[p61][p62] then
		return false
	end
	local v63 = nil
	for _, v64 in v_u_22[p61].Ingredients do
		if v64[1] == p62 then
			v63 = v64[2]
			break
		end
	end
	return v_u_53.Data.CraftingProgress[p61][p62] >= v63
end
local function v_u_71(p66, p67)
	local v68 = 0
	for v69, v70 in p66 do
		if v69 ~= "0" then
			if not v70.Locked then
				if v70.Name == p67 then
					v68 = v68 + 1
				end
			end
		end
	end
	return v68
end
local function v100(p_u_72)
	-- upvalues: (copy) v_u_22, (copy) v_u_53, (copy) v_u_34, (copy) v_u_10, (ref) v_u_36, (copy) v_u_43, (copy) v_u_35, (copy) v_u_54, (copy) v_u_5, (copy) v_u_6, (copy) v_u_65, (copy) v_u_28, (copy) v_u_15, (copy) v_u_71, (copy) v_u_23, (copy) v_u_29, (copy) v_u_41, (copy) v_u_13, (copy) v_u_9, (copy) v_u_40
	local v73 = v_u_22[p_u_72]
	if v73 then
		local v_u_74 = false
		local v_u_75 = v_u_53.Data
		local v_u_76 = v_u_34:Clone()
		v_u_76.Desc.Text = v73.Desc
		v_u_76.Title.Text = p_u_72
		v_u_76.Name = p_u_72
		v_u_76.LayoutOrder = v73[1]
		local v_u_77 = v_u_10:WaitForChild("Ingredients"):Clone()
		v_u_77.Name = ("%*_Ingredients"):format(p_u_72)
		v_u_77.Visible = v_u_36 == p_u_72
		v_u_77:SetAttribute("IngredientFrame", true)
		local v78 = v_u_77:WaitForChild("UIListLayout")
		v_u_43[p_u_72] = {}
		local v79 = 0
		for v80, v81 in v73.Ingredients do
			local v_u_82 = v_u_35:Clone()
			if type(v81) == "number" then
				print(v80, v81)
			end
			local v_u_83 = v81[1]
			local v_u_84 = v81[2]
			local v85
			if v_u_54:IsA("Translator") then
				v85 = v_u_54:Translate(game, v_u_83:gsub("_", " : "))
			else
				v85 = nil
			end
			v_u_82.LayoutOrder = v80
			v_u_82.Name = v85 or v_u_83:gsub("_", " : ")
			local v86, v87 = pcall(function()
				-- upvalues: (ref) v_u_5, (ref) v_u_6
				return v_u_5:GetTranslatorForPlayerAsync(v_u_6)
			end)
			local v88 = " " .. v_u_83:gsub("_", " : ")
			if v86 then
				v88 = " " .. v87:Translate(v_u_82, v_u_83:gsub("_", " : "))
			end
			v_u_82.Text = v88
			v_u_82.Add.Visible = not v_u_65(p_u_72, v_u_83)
			v_u_82.AddAmount.Visible = v_u_82.Add.Visible
			v_u_82.Amount.Visible = v_u_82.Add.Visible
			v_u_82.Completed.Visible = not v_u_82.Add.Visible
			local v89 = (not v_u_75.CraftingProgress[p_u_72] or v_u_75.CraftingProgress[p_u_72] and not v_u_75.CraftingProgress[p_u_72][v_u_83]) and 0 or v_u_75.CraftingProgress[p_u_72][v_u_83]
			v_u_82.Amount.Text = ("%* / %*"):format(v89, v_u_84)
			local v90 = v79 + v_u_82.Size.Y.Scale
			v_u_82:SetAttribute("Position", v90)
			v_u_53:ListenToChange({ "CraftingProgress", p_u_72, v_u_83 }, function(p91) --p_u_72, v_u_83 }, function(p91)
				-- upvalues: (ref) v_u_65, (copy) p_u_72, (copy) v_u_83, (copy) v_u_82, (copy) v_u_84
				if v_u_65(p_u_72, v_u_83) then
					v_u_82.Add.Visible = false
					v_u_82.AddAmount.Visible = false
					v_u_82.Amount.Visible = false
					v_u_82.Completed.Visible = true
				else
					v_u_82.Amount.Text = ("%* / %*"):format(p91, v_u_84)
				end
			end)
			v_u_82.Add.MouseButton1Click:Connect(function()
				-- upvalues: (ref) v_u_28, (copy) v_u_82, (ref) v_u_15, (ref) v_u_74, (copy) v_u_83, (ref) v_u_71, (copy) v_u_75, (ref) v_u_23, (ref) v_u_65, (copy) p_u_72, (ref) v_u_29
				if not v_u_28.IsValidNumberText(v_u_82.AddAmount.Text) then
					local v92 = v_u_82.AddAmount.Text
					if tonumber(v92) < 1 then
						v_u_15.Error:Play()
						v_u_74 = false
						return
					end
				end
				local v93 = v_u_82.AddAmount.Text
				if tonumber(v93) < 1 then
					v_u_15.Error:Play()
				else
					if 0 < v_u_28.FindRarityByName(v_u_83) then
						if v_u_71(v_u_75.InventoryAuras, v_u_83) < v_u_82.AddAmount.Text + 0 then
							v_u_15.Error:Play()
							v_u_74 = false
							return
						end
					elseif v_u_23[v_u_83] and (not v_u_75.Inventory[v_u_83] or v_u_75.Inventory[v_u_83] and v_u_75.Inventory[v_u_83].amount < v_u_82.AddAmount.Text + 0) then
						v_u_15.Error:Play()
						v_u_74 = false
						return
					end
					if not (v_u_65(p_u_72, v_u_83) or v_u_74) then
						v_u_74 = true
						script.Parent.Parent.RemoteFunction:WaitForChild("Craft\n" .. v_u_6.UserId.."Client"):FireServer("Insert", p_u_72, v_u_83, v_u_82.AddAmount.Text)
						v_u_15.Click:Play()
						v_u_74 = false
					end
				end
			end)
			v_u_82.SelectionChanged:Connect(function(p94)
				-- upvalues: (ref) v_u_15
				if p94 then
					v_u_15.MouseHover:Play()
				end
			end)
			v_u_82.Add.MouseEnter:Connect(function()
				-- upvalues: (ref) v_u_15
				v_u_15.MouseHover:Play()
			end)
			local v95 = v_u_43[p_u_72]
			local function v96()
				-- upvalues: (copy) v_u_82, (ref) v_u_65, (copy) p_u_72, (copy) v_u_83, (copy) v_u_84
				v_u_82.Add.Visible = not v_u_65(p_u_72, v_u_83)
				v_u_82.AddAmount.Visible = v_u_82.Add.Visible
				v_u_82.Amount.Visible = v_u_82.Add.Visible
				v_u_82.Amount.Text = ("0 / %*"):format(v_u_84)
				v_u_82.Completed.Visible = not v_u_82.Add.Visible
			end
			table.insert(v95, v96)
			v_u_82.Parent = v_u_77
			if v_u_41[p_u_72] then
				v_u_41[p_u_72][v_u_83] = v_u_82
			else
				v_u_41[p_u_72] = {
					["IngName"] = v_u_82
				}
			end
			v79 = v90 + v78.Padding.Scale
		end
		v_u_77.CanvasSize = UDim2.fromScale(0, v79 - v78.Padding.Scale)
		v_u_76.MouseEnter:Connect(function()
			-- upvalues: (ref) v_u_36, (copy) p_u_72, (copy) v_u_76, (ref) v_u_10, (ref) v_u_53, (ref) v_u_28, (ref) v_u_13, (ref) v_u_15, (copy) v_u_77
			if v_u_36 ~= p_u_72 and not v_u_76.Crafted.Visible then
				v_u_36 = p_u_72
				v_u_10.Title.Text = p_u_72
				for _, v97 in ipairs(v_u_10:GetChildren()) do
					if v97:GetAttribute("IngredientFrame") then
						v97.Visible = false
					end
				end
				if v_u_53.Data.AutoCrafting == v_u_36 then
					v_u_28.ChangeCornerColor(v_u_13, Color3.fromRGB(43, 255, 32))
					v_u_13.TextColor3 = Color3.fromRGB(43, 255, 32)
				else
					v_u_28.ChangeCornerColor(v_u_13, Color3.fromRGB(255, 255, 255))
					v_u_13.TextColor3 = Color3.fromRGB(255, 255, 255)
				end
				v_u_15.MouseHover:Play()
				v_u_77.Visible = true
			end
		end)
		v_u_76.SelectionChanged:Connect(function(p98)
			-- upvalues: (ref) v_u_36, (copy) p_u_72, (copy) v_u_76, (ref) v_u_10, (ref) v_u_15, (copy) v_u_77
			if p98 then
				if v_u_36 == p_u_72 or v_u_76.Crafted.Visible then
					return
				end
				v_u_36 = p_u_72
				v_u_10.Title.Text = p_u_72
				for _, v99 in ipairs(v_u_10:GetChildren()) do
					if v99:GetAttribute("IngredientFrame") then
						v99.Visible = false
					end
				end
				v_u_15.MouseHover:Play()
				v_u_77.Visible = true
			end
		end)
		if v73.OneTimeCraft then
			if v_u_53.Data.Inventory[p_u_72] then
				v_u_76.Crafted.Visible = true
			else
				v_u_76.Crafted.Visible = false
			end
			if v73.Type == "Bank" and v_u_53.Data.BankEnabled then
				v_u_76.Crafted.Visible = true
			else
				v_u_76.Crafted.Visible = false
			end
			if v73.Type == "Tool" then
				v_u_53:ListenToChange({ "Inventory" }, function(_)
					-- upvalues: (ref) v_u_53, (copy) p_u_72, (copy) v_u_76
					if v_u_53.Data.Inventory[p_u_72] then
						v_u_76.Crafted.Visible = true
					else
						v_u_76.Crafted.Visible = false
					end
				end)
			end
		end
		v_u_77.Parent = v_u_10
		v_u_76.Parent = v_u_9
		v_u_40[p_u_72] = v_u_76
	end
end
local function v_u_104()
	-- upvalues: (ref) v_u_38, (copy) v_u_19, (copy) v_u_20, (copy) v_u_21
	v_u_38 = true
	local v_u_101 = nil
	v_u_19.Visible = true
	local v102 = v_u_20.MouseButton1Click:Once(function()
		-- upvalues: (ref) v_u_101
		v_u_101 = false
	end)
	local v103 = v_u_21.MouseButton1Click:Once(function()
		-- upvalues: (ref) v_u_101
		v_u_101 = true
	end)
	repeat
		task.wait()
	until v_u_101 ~= nil
	v102:Disconnect()
	v103:Disconnect()
	v_u_19.Visible = false
	v_u_38 = false
	return v_u_101
end
local function v106(p105)
	-- upvalues: (copy) v_u_104
	if p105 == "GetAccept" then
		return v_u_104()
	end
end
for v107, _ in v_u_22 do
	v100(v107)
end
v11.MouseButton1Click:Connect(function()
	-- upvalues: (copy) v_u_8
	v_u_8.Visible = false
end)
v12.MouseButton1Click:Connect(function()
	-- upvalues: (copy) v_u_8, (ref) v_u_36, (ref) v_u_37, (copy) v_u_22, (copy) v_u_65, (copy) v_u_32, (copy) v_u_35, (copy) v_u_3, (copy) v_u_15, (copy) v_u_29, (copy) v_u_9, (copy) v_u_53, (copy) v_u_28, (copy) v_u_13, (copy) v_u_31, (copy) v_u_40
	if v_u_8.Visible and v_u_36 and not v_u_37 then
		v_u_37 = true
		for _, v108 in v_u_22[v_u_36].Ingredients do
			if not v_u_65(v_u_36, v108[1]) then
				task.defer(v_u_32.Create, ("You can\'t craft %*"):format(v_u_36), ("There are not enough ingredients to create %*. Scroll down if you don\'t finish adding all the ingredients"):format(v_u_36), 10, "Warn")
				if v_u_35 ~= nil then
					local v109 = v_u_35
					if typeof(v109) == "string" then
						local v110 = v_u_8.InnerFrame:FindFirstChild((("%*_Ingredients"):format(v_u_36)))
						local v111
						if v110 then
							v111 = v110:FindFirstChild(v_u_35)
						else
							v111 = v110
						end
						if v111 then
							local v112 = v_u_3
							local v113 = Tween0o.new(0.5, Enum.EasingStyle.Quad)
							local v114 = {}
							local v115 = Vector2.new
							local v116 = v110.AbsoluteCanvasSize.Y
							local v117 = v110.AbsoluteSize.Y * (v111:GetAttribute("Position") - 0.15)
							v114.CanvasPosition = v115(0, (math.min(v116, v117)))
							v112:Create(v110, v113, v114):Play()
						end
					end
				end
				v_u_15.Error:Play()
				v_u_37 = false
				return
			end
		end
		local v118 = v_u_29:Fire("Craft", v_u_36)
		print(v118)
		if v118 then
			if v_u_9:FindFirstChild(v_u_53.Data.AutoCrafting) then
				v_u_28.ChangeCornerColor(v_u_9:FindFirstChild(v_u_53.Data.AutoCrafting), Color3.fromRGB(255, 255, 255))
			end
			v_u_28.ChangeCornerColor(v_u_13, Color3.fromRGB(255, 255, 255))
			v_u_13.TextColor3 = Color3.fromRGB(255, 255, 255)
			v_u_31:FireServer("")
			if v_u_22[v_u_36] and v_u_22[v_u_36].OneTimeCraft and v_u_53.Data.Inventory[v_u_36] then
				v_u_40[v_u_36].Crafted.Visible = true
				if v_u_36 == "Eclipse Device" then
					v_u_40["Solar Device"].Crafted.Visible = false
					v_u_40["Lunar Device"].Crafted.Visible = false
				end
			end
			v_u_15.Blacksmithing:Play()
		end
		v_u_37 = false
	end
end)
if v_u_53.Data.AutoCrafting ~= "" then
	if v_u_9:FindFirstChild(v_u_53.Data.AutoCrafting) then
		v_u_42 = v_u_53.Data.AutoCrafting
		v_u_28.ChangeCornerColor(v_u_9:FindFirstChild(v_u_53.Data.AutoCrafting), Color3.fromRGB(43, 255, 32))
		if v_u_53.Data.AutoCrafting == v_u_36 then
			v_u_28.ChangeCornerColor(v_u_13, Color3.fromRGB(43, 255, 32))
			v_u_13.TextColor3 = Color3.fromRGB(43, 255, 32)
		end
	end
end
v_u_53:ListenToChange("AutoCrafting", function(_)
	-- upvalues: (copy) v_u_22, (copy) v_u_53, (ref) v_u_42, (copy) v_u_28, (copy) v_u_13, (copy) v_u_9
	if v_u_22[v_u_53.Data.AutoCrafting] then
		v_u_42 = v_u_53.Data.AutoCrafting
	else
		print(v_u_42, v_u_42 ~= "")
		if v_u_42 ~= "" then
			v_u_28.ChangeCornerColor(v_u_13, Color3.fromRGB(255, 255, 255))
			v_u_28.ChangeCornerColor(v_u_9:FindFirstChild(v_u_42), Color3.fromRGB(255, 255, 255))
			v_u_13.TextColor3 = Color3.fromRGB(255, 255, 255)
			v_u_42 = ""
			return
		end
	end
end)
v_u_13.MouseButton1Click:Connect(function()
	-- upvalues: (copy) v_u_53, (copy) v_u_22, (copy) v_u_28, (copy) v_u_9, (ref) v_u_36, (copy) v_u_31, (copy) v_u_13
	if v_u_53.Data.AutoCrafting ~= "" and v_u_22[v_u_53.Data.AutoCrafting] then
		v_u_28.ChangeCornerColor(v_u_9:FindFirstChild(v_u_53.Data.AutoCrafting), Color3.fromRGB(255, 255, 255))
	end
	if v_u_53.Data.AutoCrafting == v_u_36 then
		v_u_31:FireServer("")
		v_u_28.ChangeCornerColor(v_u_13, Color3.fromRGB(255, 255, 255))
		v_u_13.TextColor3 = Color3.fromRGB(255, 255, 255)
	else
		v_u_31:FireServer(v_u_36)
		v_u_28.ChangeCornerColor(v_u_13, Color3.fromRGB(43, 255, 32))
		v_u_28.ChangeCornerColor(v_u_9:FindFirstChild(v_u_36), Color3.fromRGB(43, 255, 32))
		v_u_13.TextColor3 = Color3.fromRGB(43, 255, 32)
	end
end)
v30.OnClientEvent:Connect(function(p119)
	-- upvalues: (copy) v_u_53, (copy) v_u_43
	table.clear(v_u_53.Data.CraftingProgress[p119])
	for _, v120 in ipairs(v_u_43[p119]) do
		v120()
	end
end)
v14.Triggered:Connect(function(p121)
	-- upvalues: (copy) v_u_6, (ref) v_u_39, (copy) v_u_15, (copy) v_u_8, (copy) v_u_25, (copy) v_u_27, (copy) v_u_46
	if p121 == v_u_6 and not v_u_39 then
		v_u_39 = true
		v_u_15.Click:Play()
		if v_u_8.Visible then
			v_u_8.Visible = false
		else
			v_u_25.CloseAllWindows()
			if v_u_27.DisplayDialog(v_u_46) == "Open" then
				v_u_8.Visible = true
			end
			task.wait(0.5)
		end
		v_u_39 = false
	end
end)
v33.ButtonGuide:Set(v11, "ButtonB", function()
	-- upvalues: (copy) v_u_8
	v_u_8.Visible = false
end)
v_u_6:GetAttributeChangedSignal("IsInCave"):Connect(function()
	-- upvalues: (copy) v_u_8
	v_u_8.Visible = false
end)
v_u_25.LoadButtonEffects(v12)
v_u_25.LoadButtonEffects(v_u_13)
v_u_25.LoadButtonEffects(v11)
v_u_29.Event = v106

