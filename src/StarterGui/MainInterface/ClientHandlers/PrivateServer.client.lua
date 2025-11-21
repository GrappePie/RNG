-- What the sigma?

local v_u_1 = game:GetService("Players")
local v2 = game:GetService("RunService")
local v3 = game:GetService("UserInputService")
local v4 = game:GetService("ReplicatedStorage")
local v_u_5 = v_u_1.LocalPlayer
if v_u_5:GetAttribute("ServerOwner") == nil then
	v_u_5:GetAttributeChangedSignal("ServerOwner"):Wait()
end
if v_u_5:GetAttribute("ServerOwner") then
	local v6 = script:FindFirstAncestorOfClass("ScreenGui")
	local v7 = v6:WaitForChild("Misc"):WaitForChild("Menu"):WaitForChild("PrivateServer")
	local v_u_8 = v6:WaitForChild("PrivateServer")
	local v9 = v_u_8:WaitForChild("Top"):WaitForChild("Close")
	local v10 = v_u_8:WaitForChild("Moderation")
	local v_u_11 = v10:WaitForChild("QuickSelect"):WaitForChild("ScrollingFrame")
	local v_u_12 = v_u_11:WaitForChild("Template")
	local v_u_13 = v10:WaitForChild("Searching"):WaitForChild("TextBox")
	local v_u_14 = v_u_8:WaitForChild("Procedure")
	local v_u_15 = v_u_14:WaitForChild("LoadingImage")
	local v16 = v10:WaitForChild("Moderation"):WaitForChild("Holder")
	v16:WaitForChild("UIPadding")
	local v17 = v16:WaitForChild("UIListLayout")
	local v18 = v16:WaitForChild("Ban")
	local v19 = v16:WaitForChild("Kick")
	local v20 = v16:WaitForChild("Unban")
	local v_u_21 = v16:WaitForChild("LockServer")
	local v22 = { v16:WaitForChild("Title1"), v16:WaitForChild("Title2") }
	local v23 = v4:WaitForChild("Modules")
	local v_u_24 = require(v23:WaitForChild("Utility"))
	local v_u_25 = require(v6:WaitForChild("Notification"):WaitForChild("Core"))
	local v_u_26 = require(v6:WaitForChild("RemoteFunction")).new("PrivateServer")
	local v_u_27 = require(v23:WaitForChild("CoreModules"):WaitForChild("ClientBasedFunctions"))
	local v_u_28 = v4:WaitForChild("Server0o")
	local v_u_29 = nil
	v7.Visible = true
	if v3.TouchEnabled then
		v16.Parent.Size = UDim2.fromScale(0.62, 0.75)
		v_u_13.Parent.Size = UDim2.fromScale(0.62, 0.11)
		v_u_13.Position = UDim2.fromScale(0.1, 0.5)
		v_u_13.Size = UDim2.fromScale(0.9, 0.8)
		v18.Size = UDim2.fromScale(0.95, 0.06)
		v19.Size = UDim2.fromScale(0.95, 0.06)
		v20.Size = UDim2.fromScale(0.95, 0.06)
		v_u_21.Size = UDim2.fromScale(0.95, 0.06)
		for _, v30 in ipairs(v22) do
			v30.Size = UDim2.fromScale(0.95, 0.075)
		end
		v17.Padding = UDim.new(0, 7)
	end
	local function v_u_35(p31)
		-- upvalues: (copy) v_u_1, (copy) v_u_25
		local v32 = v_u_1:FindFirstChild(p31)
		if v32 and v32:IsA("Player") then
			return v32.UserId
		end
		local v33, v34 = pcall(v_u_1.GetUserIdFromNameAsync, v_u_1, p31)
		if v33 then
			return v34
		end
		if v34:find("Unknown user") then
			return false
		end
		task.defer(v_u_25.Create, "Player Load Failed.", "Failed to load player\'s user id.", 5, "Warn")
	end
	local function v_u_37(_)
		-- upvalues: (copy) v_u_13, (ref) v_u_29, (copy) v_u_35, (copy) v_u_25
		if v_u_13.Text == "" then
			v_u_29 = nil
		else
			local v36 = v_u_35(v_u_13.Text)
			if v36 then
				v_u_13.TextColor3 = Color3.fromRGB(73, 161, 255)
			else
				v_u_13.TextColor3 = Color3.fromRGB(255, 62, 62)
				if v36 == false then
					task.defer(v_u_25.Create, "Invalid User Name", "Please check that is right.", 5, "Warn")
				end
			end
			v_u_29 = v36
		end
	end
	local function v41(p_u_38)
		-- upvalues: (copy) v_u_5, (copy) v_u_12, (copy) v_u_24, (copy) v_u_11, (copy) v_u_13, (copy) v_u_37
		if p_u_38 ~= v_u_5 then
			local v_u_39 = v_u_12:Clone()
			v_u_39.Text = v_u_24.GetSmartName(p_u_38)
			v_u_39.Parent = v_u_11
			v_u_39.Visible = true
			local v_u_40 = v_u_39.MouseButton1Down:Connect(function()
				-- upvalues: (ref) v_u_13, (copy) p_u_38, (ref) v_u_37
				v_u_13.Text = p_u_38.Name
				v_u_37(true)
			end)
			p_u_38.AncestryChanged:Once(function()
				-- upvalues: (copy) v_u_39, (copy) v_u_40
				v_u_39:Destroy()
				v_u_40:Disconnect()
			end)
		end
	end
	local function v42()
		-- upvalues: (ref) v_u_29, (copy) v_u_13
		v_u_29 = nil
		v_u_13.TextColor3 = Color3.new(1, 1, 1)
	end
	local function v45()
		-- upvalues: (ref) v_u_29, (copy) v_u_14, (copy) v_u_26, (copy) v_u_25
		if v_u_29 and not v_u_14.Visible then
			v_u_14.Visible = true
			local v43, v44 = v_u_26:Fire("Ban", v_u_29)
			if v43 then
				task.defer(v_u_25.Create, "Ban Success", ("User(%*) banned successfully."):format(v_u_29), 5, "Normal")
			else
				task.defer(v_u_25.Create, "Ban Failed", v44, 5, "Warn")
			end
			v_u_14.Visible = false
		elseif not v_u_29 then
			task.defer(v_u_25.Create, "Warning", "Enter username first.", 2, "Warn")
		end
	end
	local function v48()
		-- upvalues: (ref) v_u_29, (copy) v_u_14, (copy) v_u_26, (copy) v_u_25
		if v_u_29 and not v_u_14.Visible then
			v_u_14.Visible = true
			local v46, v47 = v_u_26:Fire("Kick", v_u_29)
			if v46 then
				task.defer(v_u_25.Create, "Kick Success", ("User(%*) kicked successfully."):format(v_u_29), 5, "Normal")
			else
				task.defer(v_u_25.Create, "Kick Failed", v47, 5, "Warn")
			end
			v_u_14.Visible = false
		elseif not v_u_29 then
			task.defer(v_u_25.Create, "Warning", "Enter username first.", 2, "Warn")
		end
	end
	local function v51()
		-- upvalues: (ref) v_u_29, (copy) v_u_14, (copy) v_u_26, (copy) v_u_25
		if v_u_29 and not v_u_14.Visible then
			v_u_14.Visible = true
			local v49, v50 = v_u_26:Fire("Unban", v_u_29)
			if v49 then
				task.defer(v_u_25.Create, "Unban Success", ("User(%*) Unbanned successfully."):format(v_u_29), 5, "Normal")
			else
				task.defer(v_u_25.Create, "Unban Failed", v50, 5, "Warn")
			end
			v_u_14.Visible = false
		elseif not v_u_29 then
			task.defer(v_u_25.Create, "Warning", "Enter username first.", 2, "Warn")
		end
	end
	local function v54()
		-- upvalues: (copy) v_u_14, (copy) v_u_26, (ref) v_u_29, (copy) v_u_25
		if not v_u_14.Visible then
			v_u_14.Visible = true
			local v52, v53 = v_u_26:Fire("Lock", v_u_29)
			if v52 then
				if v53 then
					task.defer(v_u_25.Create, "Locked Successfully", "Server locked successfully.", 5, "Normal")
				else
					task.defer(v_u_25.Create, "Unlocked Successfully", "Server unlocked successfully.", 5, "Normal")
				end
			else
				task.defer(v_u_25.Create, "Action Failed", v53, 5, "Warn")
			end
			v_u_14.Visible = false
		end
	end
	local function v55()
		-- upvalues: (copy) v_u_28, (copy) v_u_21
		if v_u_28:GetAttribute("IsLocked") then
			v_u_21.Text = "Unlock Server"
		else
			v_u_21.Text = "Lock Server"
		end
	end
	v2.RenderStepped:Connect(function(p56)
		-- upvalues: (copy) v_u_15
		local v57 = v_u_15
		v57.Rotation = v57.Rotation + p56 * 120
	end)
	v_u_13.FocusLost:Connect(v_u_37)
	v_u_13.Focused:Connect(v42)
	v18.MouseButton1Down:Connect(v45)
	v19.MouseButton1Down:Connect(v48)
	v20.MouseButton1Down:Connect(v51)
	v_u_21.MouseButton1Down:Connect(v54)
	v_u_1.PlayerAdded:Connect(v41)
	for _, v58 in ipairs(v_u_1:GetPlayers()) do
		task.defer(v41, v58)
	end
	if v_u_28:GetAttribute("IsLocked") then
		v_u_21.Text = "Unlock Server"
	else
		v_u_21.Text = "Lock Server"
	end
	v_u_28:GetAttributeChangedSignal("IsLocked"):Connect(v55)
	v7.MouseButton1Click:Connect(function()
		-- upvalues: (copy) v_u_8, (copy) v_u_27
		if not v_u_8.Visible then
			v_u_27.CloseAllWindows()
		end
		v_u_8.Visible = not v_u_8.Visible
	end)
	v9.MouseButton1Click:Connect(function()
		-- upvalues: (copy) v_u_8
		v_u_8.Visible = false
	end)
	--v_u_27.LoadButtonEffects(v7)
	v_u_27.LoadButtonEffects(v9, 1)
end