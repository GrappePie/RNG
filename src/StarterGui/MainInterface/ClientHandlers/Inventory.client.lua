-- What the sigma?

local v1 = game.Players.LocalPlayer
v1:GetMouse()
local v2 = game:GetService("ReplicatedStorage")
local v3 = require(v2:WaitForChild("ReplicaController"))
local v_u_4 = game:GetService("RunService")
local v5 = game:GetService("StarterGui")
local v6 = v1.PlayerGui:WaitForChild("MainInterface")
local v7 = v6.ExtraButtons
local v8 = v2:WaitForChild("Modules")
local v9 = v2:WaitForChild("Remotes")
local v_u_10 = require(v8:WaitForChild("CoreModules"):WaitForChild("ClientBasedFunctions"))
local v_u_11 = require(v2:WaitForChild("Modules"):WaitForChild("DB"):WaitForChild("ItemDB"))
local v_u_12 = require(v8:WaitForChild("Utility"))
local v_u_13 = v9:WaitForChild("InvisibleGear")
local v14 = v2.Assets
local v_u_15 = v14.SFXs
local v16 = script:FindFirstAncestorOfClass("ScreenGui")
local v_u_17 = require(v16:WaitForChild("Notification"):WaitForChild("Core"))
local v_u_18 = require(v2.Modules.Inventory)
local v_u_19 = v6.NewInventory
local v20 = v7.Inventory
local v21 = v_u_19.SelectionCorners.Title.Close
local v22 = v_u_19.Items
local v_u_23 = v22.ItemGrid.ScrollingFrame
local v_u_24 = v22.Search.Content
local v25 = v22.Gears
local v26 = v22.Items
local v27 = v_u_19.Index
local v_u_28 = v27.Character
local v29 = Instance.new("Camera")
v29.Parent = v_u_28
v_u_28.CurrentCamera = v29
local v30 = v14.InventoryDummy
local v_u_31 = v27.ItemPreviewHolder.ItemPreview
local v_u_32 = Instance.new("Camera")
v_u_32.Parent = v_u_31
v_u_31.CurrentCamera = v_u_32
local v33 = v_u_28.LeftGear
local v_u_34 = v33.Viewport
local v_u_35 = Instance.new("Camera")
local v_u_36 = v33.GearVisible
v_u_35.Parent = v_u_34
v_u_34.CurrentCamera = v_u_35
local v37 = v_u_28.RightGear
local v_u_38 = v37.Viewport
local v_u_39 = Instance.new("Camera")
local v_u_40 = v37.GearVisible
v_u_39.Parent = v_u_38
v_u_38.CurrentCamera = v_u_39
local v41 = v6.InventorySomethingFailed
local _ = v41.Reason
local v42 = v41.Ok
local v_u_43 = v27.Description
local v_u_44 = v27.Use
local v_u_45 = v_u_44.Amount
local v_u_46 = v_u_44.UseButton
local v_u_47 = v_u_46.Debounce
local v_u_48 = v_u_19.SelectionCorners.DescriptionFull
local v_u_49 = script.Item
local v_u_50 = game:GetService("TweenService")
Tween0o.new(0.5, Enum.EasingStyle.Quart)
local v_u_51 = ""
local v_u_52 = "Gears"
local v_u_53 = ""
local v_u_54 = nil
local v_u_55 = false
local v_u_56 = tonumber
if game:GetService("UserInputService").TouchEnabled then
	v_u_19.Size = UDim2.fromScale(0.7, 0.7)
else
	v_u_19.Size = UDim2.fromScale(0.5, 0.5)
end
v3.RequestData()
repeat
	task.wait()
until v3.InitialDataReceived
local v_u_57 = v3.GetReplicaById(v1:GetAttribute("UID"))
if game:GetService("UserInputService").TouchEnabled then
	v7.Size = UDim2.fromScale(0.17, 0.581)
end
local function v_u_71(p58)
	local v59 = nil
	if p58:IsA("Model") then
		local v60 = p58:GetExtentsSize()
		local v61 = v60.X
		local v62 = v60.Y
		local v63 = v60.Z
		v59 = math.max(v61, v62, v63)
	elseif p58:IsA("BasePart") then
		local v64 = p58.Size
		local v65 = v64.X
		local v66 = v64.Y
		local v67 = v64.Z
		v59 = math.max(v65, v66, v67)
	end
	local v68 = CFrame.new
	local v69 = math.ceil(v59) / 3 * 2
	local v70 = math.ceil(v59)
	return v68(Vector3.new(0, v69, v70), (Vector3.new()))
end
v30:Clone().Parent = v_u_28
v29.CFrame = CFrame.lookAt((v30.Torso.CFrame * CFrame.new(0, 0, -5)).Position, v30.Torso.Position)
v_u_18.OnGotItems:Connect(function(p_u_72, p_u_73, p74)
	-- upvalues: (copy) v_u_23, (copy) v_u_49, (copy) v_u_15, (ref) v_u_51, (copy) v_u_31, (ref) v_u_54, (copy) v_u_43, (copy) v_u_11, (copy) v_u_44, (copy) v_u_4, (copy) v_u_32, (copy) v_u_71, (ref) v_u_55, (copy) v_u_46, (copy) v_u_45, (copy) v_u_56, (copy) v_u_57, (copy) v_u_10, (ref) v_u_53, (ref) v_u_52
	local v75 = v_u_23:FindFirstChild(p_u_72)
	if v_u_23:FindFirstChild(tostring(p_u_72)) then
		--print("Ermmm")
		local v76 = v75.ItemAmount
		v76.Text = "x" .. string.gsub(v76.Text, "[xX]", "") + p74
	else
		--print("Added it???")
		v75 = v_u_49:Clone()
		local v77 = v75.TextLabel
		v77.Text = p_u_72
		v77.TextColor3 = p_u_73.TextColor
		v75.ItemAmount.Text = "x" .. p74
		v75.MouseButton1Click:Connect(function()
			-- upvalues: (ref) v_u_15, (ref) v_u_51, (copy) p_u_72, (ref) v_u_31, (ref) v_u_54, (ref) v_u_43, (copy) p_u_73, (ref) v_u_11, (ref) v_u_44, (ref) v_u_4, (ref) v_u_32, (ref) v_u_71, (ref) v_u_55, (ref) v_u_46, (ref) v_u_45, (ref) v_u_56, (ref) v_u_57
			v_u_15.Click:Play()
			v_u_51 = p_u_72
			local v78 = v_u_31:FindFirstChildWhichIsA("Model") or v_u_31:FindFirstChildWhichIsA("BasePart")
			if v78 then
				v78:Destroy()
			end
			if v_u_54 then
				v_u_54:Disconnect()
			end
			v_u_43.ScrollingFrame.TextLabel.Text = p_u_73.Description
			if not v_u_11[p_u_72].Equipable then
				v_u_44.Visible = true
				local v_u_79 = p_u_73.PreviewModel:Clone()
				if v_u_79:IsA("Model") then
					v_u_79:PivotTo(CFrame.new())
				else
					v_u_79.Position = Vector3.new()
				end
				v_u_79.Parent = v_u_31
				if v_u_11[p_u_72].PreviewModelRotatable == nil or v_u_11[p_u_72].PreviewModelRotatable ~= false then
					v_u_54 = v_u_4.RenderStepped:Connect(function(p80)
						-- upvalues: (copy) v_u_79
						local v81 = v_u_79
						local v82 = v_u_79:GetPivot()
						local v83 = CFrame.Angles
						local v84 = p80 * 90
						v81:PivotTo(v82 * v83(0, math.rad(v84), 0))
					end)
				end
				v_u_32.CFrame = v_u_71(v_u_79)
			end
			if v_u_11[p_u_72].Expendable then
				v_u_55 = true
				v_u_46:SetAttribute("Disabled", false)
				v_u_45.Disabled.Visible = false
				v_u_46.Disabled.Visible = false
			else
				v_u_55 = false
				v_u_46:SetAttribute("Disabled", true)
				v_u_45.Disabled.Visible = true
				v_u_46.Disabled.Visible = true
			end
			if v_u_11[p_u_72].Consumables == true or v_u_11[p_u_72].Consumables ~= false then
				v_u_45.Disabled.Visible = false
			else
				v_u_45.Disabled.Visible = true
			end
			if v_u_56(v_u_45.Text) > v_u_57.Data.Inventory[p_u_72].amount then
				v_u_45.Text = v_u_57.Data.Inventory[p_u_72].amount
			end
		end)
		v75.MouseEnter:Connect(function()
			-- upvalues: (ref) v_u_15
			v_u_15.MouseHover:Play()
		end)
		v75.Name = p_u_72
		v75.Parent = v_u_23
		v_u_10.LoadButtonEffects(v75, 1)
		if v_u_11[p_u_72].GearType == "Left" then
			v75.GearType.Text = "L"
		elseif v_u_11[p_u_72].GearType == "Right" then
			v75.GearType.Text = "R"
		end
	end
	if v75.Name:gsub(" ", ""):lower():find(v_u_53:gsub(" ", ""):lower()) then
		if v_u_52 == "Gears" then
			v75.Visible = v_u_11[p_u_72].Equipable or false
			return
		end
		if v_u_52 == "Items" then
			v75.Visible = not v_u_11[p_u_72].Equipable
			return
		end
	else
		v75.Visible = false
	end
end)
v_u_18.OnStoleItems:Connect(function(p85, p86)
	-- upvalues: (copy) v_u_23, (copy) v_u_31, (copy) v_u_44, (copy) v_u_43
	local v87 = v_u_23:FindFirstChild(p85)
	if v87 then
		local v88 = v87.ItemAmount
		local v89 = string.match(v88.Text, "[xX](%d+)")
		if p86 == tonumber(v89) or p86 == (1 / 0) then
			v87:Destroy()
			local v90 = v_u_31:FindFirstChildWhichIsA("Model") or v_u_31:FindFirstChildWhichIsA("BasePart")
			if v90 then
				v90:Destroy()
			end
			v_u_44.Visible = false
			v_u_43.ScrollingFrame.TextLabel.Text = ""
		end
		v88.Text = "x" .. string.gsub(v88.Text, "[xX]", "") - p86
	end
end)
v_u_18.Failed:Connect(function(p91)
	-- upvalues: (copy) v_u_17
	v_u_17.Create("Failed", p91, 5, "Warn")
end)
v20.MouseButton1Click:Connect(function()
	-- upvalues: (copy) v_u_19, (copy) v_u_10
	if not v_u_19.Visible then
		v_u_10.CloseAllWindows()
	end
	v_u_19.Visible = not v_u_19.Visible
end)
v25.MouseButton1Click:Connect(function()
	-- upvalues: (copy) v_u_15, (ref) v_u_52, (copy) v_u_31, (ref) v_u_54, (ref) v_u_51, (copy) v_u_43, (copy) v_u_28, (copy) v_u_44, (copy) v_u_23, (ref) v_u_53, (copy) v_u_11
	v_u_15.Click:Play()
	if v_u_52 ~= "Gears" then
		local v92 = v_u_31:FindFirstChildWhichIsA("Model") or v_u_31:FindFirstChildWhichIsA("BasePart")
		if v92 then
			v92:Destroy()
		end
		if v_u_54 then
			v_u_54:Disconnect()
		end
		v_u_51 = ""
		v_u_43.ScrollingFrame.TextLabel.Text = "Empty"
		v_u_52 = "Gears"
		v_u_31.Parent.Visible = false
		v_u_28.Visible = true
		v_u_44.Visible = false
		v_u_43.Size = UDim2.new(1, 0, 0.275, 0)
		for _, v93 in v_u_23:GetChildren() do
			if v93:IsA("TextButton") then
				if v93.Name:gsub(" ", ""):lower():find(v_u_53:gsub(" ", ""):lower()) then
					v93.Visible = v_u_11[v93.Name].Equipable or false
				else
					v93.Visible = false
				end
			end
		end
	end
end)
v25.MouseEnter:Connect(function()
	-- upvalues: (copy) v_u_15
	v_u_15.MouseHover:Play()
end)
v26.MouseButton1Click:Connect(function()
	-- upvalues: (copy) v_u_15, (ref) v_u_52, (ref) v_u_55, (copy) v_u_46, (copy) v_u_45, (ref) v_u_51, (copy) v_u_43, (copy) v_u_31, (copy) v_u_28, (copy) v_u_44, (copy) v_u_23, (ref) v_u_53, (copy) v_u_11
	v_u_15.Click:Play()
	if v_u_52 ~= "Items" then
		v_u_55 = false
		v_u_46:SetAttribute("Disabled", true)
		v_u_45.Disabled.Visible = true
		v_u_46.Disabled.Visible = true
		v_u_51 = ""
		v_u_43.ScrollingFrame.TextLabel.Text = "Empty"
		v_u_52 = "Items"
		v_u_31.Parent.Visible = true
		v_u_28.Visible = false
		v_u_44.Visible = true
		v_u_43.Size = UDim2.new(1, 0, 0.325, 0)
		for _, v94 in v_u_23:GetChildren() do
			if v94:IsA("TextButton") then
				if v94.Name:gsub(" ", ""):lower():find(v_u_53:gsub(" ", ""):lower()) then
					v94.Visible = not v_u_11[v94.Name].Equipable
				else
					v94.Visible = false
				end
			end
		end
	end
end)
v26.MouseEnter:Connect(function()
	-- upvalues: (copy) v_u_15
	v_u_15.MouseHover:Play()
end)
if v_u_57.Data.LeftGear and v_u_11[v_u_57.Data.LeftGear] then
	ViewportModel = v_u_11[v_u_57.Data.LeftGear].PreviewModel:Clone()
	ViewportModel.Parent = v_u_34
	v_u_35.CFrame = CFrame.lookAt((ViewportModel:GetPivot() * CFrame.new(0, 0, -3)).Position, ViewportModel:GetPivot().Position)
end
if v_u_57.Data.RightGear and v_u_11[v_u_57.Data.RightGear] then
	ViewportModel = v_u_11[v_u_57.Data.RightGear].PreviewModel:Clone()
	ViewportModel.Parent = v_u_38
	v_u_39.CFrame = CFrame.lookAt((ViewportModel:GetPivot() * CFrame.new(0, 0, -3)).Position, ViewportModel:GetPivot().Position)
	if v_u_57.Data.RightGear == "Exoflex Device" then
		ViewportModel:PivotTo(ViewportModel:GetPivot() * CFrame.Angles(0, 3.141592653589793, 0))
	end
end
v33.MouseButton1Click:Connect(function()
	-- upvalues: (copy) v_u_57, (copy) v_u_15, (copy) v_u_34, (copy) v_u_18, (copy) v_u_11, (ref) v_u_51, (copy) v_u_35
	if v_u_57.Data.LeftGear then
		v_u_15.Click:Play()
		local v95 = v_u_34:FindFirstChildWhichIsA("Model") or v_u_34:FindFirstChildWhichIsA("BasePart")
		if v95 then
			v95:Destroy()
		end
		v_u_18.UnequipItem("Left")
		if v_u_11[v_u_51] and v_u_11[v_u_51].GearType == "Left" and v_u_57.Data.LeftGear ~= v_u_51 then
			local v96 = v_u_11[v_u_51].PreviewModel:Clone()
			v96.Parent = v_u_34
			v_u_35.CFrame = CFrame.lookAt((v96:GetPivot() * CFrame.new(0, 0, -3)).Position, v96:GetPivot().Position)
			v_u_18.EquipItem("Left", v_u_51)
			return
		end
		if v_u_11[v_u_51] and v_u_11[v_u_51].GearType ~= "Left" then
			v_u_15.Error:Play()
		end
	end
end)
v33.MouseEnter:Connect(function()
	-- upvalues: (copy) v_u_15
	v_u_15.MouseHover:Play()
end)
v37.MouseButton1Click:Connect(function()
	-- upvalues: (copy) v_u_57, (copy) v_u_15, (copy) v_u_38, (copy) v_u_18, (copy) v_u_11, (ref) v_u_51, (copy) v_u_39
	if v_u_57.Data.RightGear then
		v_u_15.Click:Play()
		local v97 = v_u_38:FindFirstChildWhichIsA("Model") or v_u_38:FindFirstChildWhichIsA("BasePart")
		if v97 then
			v97:Destroy()
		end
		v_u_18.UnequipItem("Right")
		if v_u_11[v_u_51] and v_u_11[v_u_51].GearType == "Right" and v_u_57.Data.RightGear ~= v_u_51 then
			local v98 = v_u_11[v_u_51].PreviewModel:Clone()
			v98.Parent = v_u_38
			v_u_39.CFrame = CFrame.lookAt((v98:GetPivot() * CFrame.new(0, 0, -3)).Position, v98:GetPivot().Position)
			v_u_18.EquipItem("Right", v_u_51)
			if v_u_51 == "Exoflex Device" then
				v98:PivotTo(v98:GetPivot() * CFrame.Angles(0, 3.141592653589793, 0))
				return
			end
		elseif v_u_11[v_u_51] and v_u_11[v_u_51].GearType ~= "Right" then
			v_u_15.Error:Play()
		end
	end
end)
v37.MouseEnter:Connect(function()
	-- upvalues: (copy) v_u_15
	v_u_15.MouseHover:Play()
end)
local v_u_99 = v_u_57.Data.LeftGearVisible
local v_u_100 = v_u_57.Data.RightGearVisible
local function v_u_101()
	-- upvalues: (copy) v_u_36, (copy) v_u_40, (ref) v_u_99, (ref) v_u_100, (copy) v_u_13, (copy) v_u_57, (copy) v_u_10
	v_u_36.Visible = true
	v_u_40.Visible = true
	if v_u_99 then
		v_u_36.ImageHolder.ImageLabel.Image = "http://www.roblox.com/asset/?id=6031075931"
	else
		v_u_36.ImageHolder.ImageLabel.Image = "http://www.roblox.com/asset/?id=6031075929"
	end
	if v_u_100 then
		v_u_40.ImageHolder.ImageLabel.Image = "http://www.roblox.com/asset/?id=6031075931"
	else
		v_u_40.ImageHolder.ImageLabel.Image = "http://www.roblox.com/asset/?id=6031075929"
	end
	v_u_36.MouseButton1Click:Connect(function()
		-- upvalues: (ref) v_u_13, (ref) v_u_57, (ref) v_u_99, (ref) v_u_36
		v_u_13:FireServer("Left", not v_u_57.Data.LeftGearVisible)
		v_u_99 = not v_u_99
		if v_u_99 then
			v_u_36.ImageHolder.ImageLabel.Image = "http://www.roblox.com/asset/?id=6031075931"
		else
			v_u_36.ImageHolder.ImageLabel.Image = "http://www.roblox.com/asset/?id=6031075929"
		end
	end)
	v_u_40.MouseButton1Click:Connect(function()
		-- upvalues: (ref) v_u_13, (ref) v_u_57, (ref) v_u_100, (ref) v_u_40
		v_u_13:FireServer("Right", not v_u_57.Data.RightGearVisible)
		v_u_100 = not v_u_100
		if v_u_100 then
			v_u_40.ImageHolder.ImageLabel.Image = "http://www.roblox.com/asset/?id=6031075931"
		else
			v_u_40.ImageHolder.ImageLabel.Image = "http://www.roblox.com/asset/?id=6031075929"
		end
	end)
	v_u_10.LoadButtonEffects(v_u_36, 1)
	v_u_10.LoadButtonEffects(v_u_40, 1)
end
if v1:GetAttribute("HasInvisibleGear") then
	v_u_101()
else
	v_u_36.Visible = false
	v_u_40.Visible = false
end
v1:GetAttributeChangedSignal("HasInvisibleGear"):Once(function()
	-- upvalues: (copy) v_u_101
	v_u_101()
end)
local v_u_102 = false
local v_u_103 = nil
local function v_u_104()
	-- upvalues: (ref) v_u_103, (ref) v_u_102
	if not v_u_103 then
		task.wait(0.2)
		v_u_102 = false
	end
end
v_u_46.MouseButton1Click:Connect(function()
	-- upvalues: (ref) v_u_55, (copy) v_u_15, (ref) v_u_102, (copy) v_u_45, (copy) v_u_56, (copy) v_u_12, (copy) v_u_11, (ref) v_u_51, (copy) v_u_17, (copy) v_u_57, (copy) v_u_18, (copy) v_u_46, (copy) v_u_47, (copy) v_u_50, (ref) v_u_103, (copy) v_u_104
	if v_u_55 then
		if v_u_102 then
			v_u_15.Error:Play()
			v_u_103 = task.spawn(v_u_104)
			return
		else
			v_u_102 = true
			local v105 = v_u_56(v_u_45.Text)
			if v105 then
				if v_u_12.IsValidNumberText(v_u_45.Text) and v105 >= 1 then
					if v_u_11[v_u_51].MaximumConcurrentUses and v_u_56(v_u_45.Text) > v_u_11[v_u_51].MaximumConcurrentUses then
						v_u_17.Create("Error!", ("You can only use %* %* at a time."):format(v_u_11[v_u_51].MaximumConcurrentUses, v_u_51), 5, "Warn")
						v_u_15.Error:Play()
						v_u_102 = false
						return
					elseif v_u_57.Data.Inventory[v_u_51].amount < v105 then
						v_u_15.Error:Play()
						v_u_102 = false
					else
						if v_u_11[v_u_51].ClientUse then
							v_u_11[v_u_51].ClientUse()
						else
							v_u_18.UseItem(v_u_51, v105)
						end
						v_u_46.BackgroundTransparency = 1
						v_u_47.Size = UDim2.fromScale(1, 1)
						v_u_50:Create(v_u_47, Tween0o.new(0.2, Enum.EasingStyle.Quart), {
							["Size"] = UDim2.fromScale(0, 1)
						}):Play()
						if v_u_11[v_u_51].Sound then
							v_u_11[v_u_51].Sound:Play()
						else
							v_u_15.Click:Play()
						end
						task.wait(0.2)
						v_u_46.BackgroundTransparency = 0.2
						v_u_102 = false
					end
				else
					v_u_15.Error:Play()
					v_u_102 = false
					return
				end
			else
				v_u_15.Error:Play()
				v_u_102 = false
				return
			end
		end
	else
		v_u_15.Error:Play()
		return
	end
end)
v_u_45:GetPropertyChangedSignal("Text"):Connect(function()
	-- upvalues: (copy) v_u_45
	if v_u_45.Disabled.Visible then
		v_u_45.Text = "1"
	end
end)
v_u_24:GetPropertyChangedSignal("Text"):Connect(function()
	-- upvalues: (ref) v_u_53, (copy) v_u_24, (copy) v_u_23, (ref) v_u_52, (copy) v_u_11
	v_u_53 = v_u_24.Text
	for _, v106 in v_u_23:GetChildren() do
		if v106:IsA("TextButton") then
			if v106.Name:gsub(" ", ""):lower():find(v_u_53:gsub(" ", ""):lower()) then
				if v_u_52 == "Gears" then
					v106.Visible = v_u_11[v106.Name].Equipable or false
				elseif v_u_52 == "Items" then
					v106.Visible = not v_u_11[v106.Name].Equipable
				end
			else
				v106.Visible = false
			end
		end
	end
end)
v21.MouseButton1Click:Connect(function()
	-- upvalues: (copy) v_u_19
	v_u_19.Visible = false
end)
v_u_10.LoadButtonEffects(v20)
v_u_10.LoadButtonEffects(v42)
v_u_10.LoadButtonEffects(v21, 1)
v_u_10.LoadButtonEffects(v25, 1)
v_u_10.LoadButtonEffects(v26, 1)
v_u_10.LoadButtonEffects(v_u_48.Exit, 1)
v_u_10.LoadButtonEffects(v_u_43.Extend, 1)
v_u_10.LoadButtonEffects(v_u_46).Click:Disconnect()
v5:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false)
v_u_43.Extend.MouseButton1Click:Connect(function()
	-- upvalues: (copy) v_u_48
	v_u_48.Visible = true
end)
v_u_48.Exit.MouseButton1Click:Connect(function()
	-- upvalues: (copy) v_u_48
	v_u_48.Visible = false
end)
v_u_43.ScrollingFrame.TextLabel.Changed:Connect(function(p107)
	-- upvalues: (copy) v_u_48, (copy) v_u_43
	if p107 == "Text" then
		v_u_48.TextLabel.Text = v_u_43.ScrollingFrame.TextLabel.Text
	end
end)