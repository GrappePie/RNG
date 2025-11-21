-- What the sigma?

local v_u_1 = game:GetService("Players")
local v_u_2 = game:GetService("StarterGui")
local v_u_3 = game:GetService("GuiService")
local v4 = game:GetService("RunService")
game:GetService("TweenService")
local v5 = game:GetService("UserInputService")
local v6 = game:GetService("ReplicatedStorage")
local v_u_7 = v_u_1.LocalPlayer
local v_u_8 = v_u_7:WaitForChild("PlayerGui"):WaitForChild("MainInterface"):WaitForChild("Leaderboard")
local v_u_9 = v_u_8:WaitForChild("TopFrame")
local v_u_10 = v_u_9:WaitForChild("Rotate")
local v_u_11 = v_u_8:WaitForChild("Player0o")
local v_u_12 = v_u_11:WaitForChild("Badge0o"):WaitForChild("Context")
local v_u_13 = v_u_11:WaitForChild("Rolls"):WaitForChild("Context")
local v_u_14 = v_u_11:WaitForChild("AddFriend")
local v_u_15 = v_u_11:WaitForChild("Ban")
local v_u_16 = v_u_14:WaitForChild("ImageLabel")
local v_u_17 = v_u_15:WaitForChild("ImageLabel")
local v_u_18 = v_u_11:WaitForChild("DisplayName")
v_u_18:WaitForChild("UIGradient")
local v_u_19 = v_u_11:WaitForChild("PlayerName")
local v_u_20 = v_u_11:WaitForChild("Badge")
local v_u_21 = v_u_8:WaitForChild("ScrollingFrame")
local v_u_22 = v_u_21:WaitForChild("Template")
local v23 = v6:WaitForChild("Modules")
local v24 = v23:WaitForChild("DB")
local v25 = require(v23:WaitForChild("Queue"))
local v_u_26 = require(v23:WaitForChild("Utility"))
local v_u_27 = require(v23:WaitForChild("CoreModules"):WaitForChild("ClientBasedFunctions"))
local v_u_28 = require(v24:WaitForChild("TagOptions"))
local v_u_29 = nil
local v_u_30 = nil
local v_u_31 = nil
local _ = workspace.CurrentCamera
local v_u_32 = true
local v_u_33 = nil
local v_u_34 = coroutine.running()
local v_u_35 = v25.new("LeaderboardDisplayQueue")
local v_u_36 = {}
local v_u_37 = v_u_26.TryUntilSuccess(v_u_2.GetCore, v_u_2, "GetBlockedUserIds")
local v_u_38 = {
	"PlayerBlockedEvent",
	"PlayerUnblockedEvent",
	"PlayerFriendedEvent",
	"PlayerUnfriendedEvent"
}
local v_u_39 = 0
local v_u_40 = #v_u_38
for v_u_41, v_u_42 in v_u_38 do
	if typeof(v_u_42) == "string" then
		task.defer(function()
			-- upvalues: (copy) v_u_38, (copy) v_u_42, (copy) v_u_26, (copy) v_u_2, (copy) v_u_41, (copy) v_u_33, (ref) v_u_39, (copy) v_u_40, (copy) v_u_34
			v_u_38[v_u_42] = v_u_26.TryUntilSuccess(v_u_2.GetCore, v_u_2, v_u_42)
			v_u_38[v_u_41] = v_u_33
			v_u_39 = v_u_39 + 1
			if v_u_39 == v_u_40 then
				task.spawn(v_u_34)
			end
		end)
	end
end
coroutine.yield()
local function v_u_46(p43, p44)
	for _, v45 in p43:GetDescendants() do
		if v45:IsA("TextLabel") then
			v45.TextColor3 = p44
		elseif v45:IsA("ImageLabel") then
			v45.ImageColor3 = p44
		elseif v45:IsA("GuiObject") then
			v45.BackgroundColor3 = p44
		end
	end
end
local function v_u_51(p47)
	-- upvalues: (ref) v_u_30, (copy) v_u_33, (ref) v_u_31, (ref) v_u_29, (copy) v_u_11, (copy) v_u_28, (copy) v_u_18, (copy) v_u_19, (copy) v_u_12, (copy) v_u_13, (copy) v_u_26, (copy) v_u_20, (copy) v_u_1
	if v_u_30 then
		v_u_30:Disconnect()
		v_u_30 = v_u_33
	end
	if v_u_31 then
		v_u_31:Disconnect()
		v_u_31 = v_u_33
	end
	if p47 == nil or p47 == v_u_29 or typeof(p47) ~= "Instance" or not p47:IsA("Player") then
		v_u_29 = v_u_33
		v_u_11.Visible = false
	else
		v_u_11.Visible = true
		v_u_29 = p47
		local v48 = p47:WaitForChild("leaderstats"):WaitForChild("Rolls")
		local v49 = v_u_28[p47:GetAttribute("PlayerTag") or "None"]
		v_u_18.Text = p47.DisplayName
		v_u_19.Text = ("@%*"):format(p47.Name)
		v_u_12.Text = v49.DisplayName or v49.Name
		v_u_13.Text = v_u_26.shorten(v48.Value)
		v_u_20.Image = p47:GetAttribute("ProfileLink") or v_u_26.TryUntilSuccess(v_u_1.GetUserThumbnailAsync, v_u_1, p47.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100)
		p47:SetAttribute("ProfileLink", v_u_20.Image)
		v_u_18:SetAttribute("UserId", p47.UserId)
		v_u_30 = v48.Changed:Connect(function(p50)
			-- upvalues: (ref) v_u_13, (ref) v_u_26
			v_u_13.Text = v_u_26.shorten(p50)
		end)
	end
end
local function v71(p_u_52)
	-- upvalues: (copy) v_u_22, (copy) v_u_28, (copy) v_u_26, (copy) v_u_21, (copy) v_u_35, (copy) v_u_51, (copy) v_u_27, (copy) v_u_33
	local v53 = p_u_52:WaitForChild("leaderstats"):WaitForChild("Rolls")
	local v_u_54 = v_u_22:Clone()
	local v_u_55 = v_u_54:WaitForChild("Rolls")
	local v_u_56 = v_u_54:WaitForChild("PVPEnabled")
	local v57 = v_u_54:WaitForChild("PlayerName")
	local v_u_58 = v57:WaitForChild("UIGradient")
	local v_u_59 = v_u_54:WaitForChild("Badge")
	local v60 = v_u_54:WaitForChild("Toggle")
	local function v_u_63()
		-- upvalues: (ref) v_u_28, (copy) p_u_52, (copy) v_u_59, (copy) v_u_58
		local v61 = v_u_28[p_u_52:GetAttribute("PlayerTag") or "None"]
		local v62 = v_u_59
		if v61.ImageId then
			v62.ImageTransparency = 0
			v62.Image = ("rbxassetid://%*"):format(v61.ImageId)
		else
			v62.ImageTransparency = 1
		end
		v_u_58:SetAttribute("Follow", v61.GradientName)
	end
	v57.Text = p_u_52.DisplayName
	v_u_54.LayoutOrder = -v53.Value
	v_u_55.Text = v_u_26.shorten(v53.Value)
	v_u_56.Visible = p_u_52:GetAttribute("PVP")
	v57:SetAttribute("UserId", p_u_52.UserId)
	v_u_63()
	v_u_54.Parent = v_u_21
	local v_u_65 = v53.Changed:Connect(function(p64)
		-- upvalues: (copy) v_u_54, (copy) v_u_55, (ref) v_u_26
		v_u_54.LayoutOrder = -p64
		v_u_55.Text = v_u_26.shorten(p64)
	end)
	local v_u_66 = v60.Activated:Connect(function()
		-- upvalues: (copy) p_u_52, (ref) v_u_35, (ref) v_u_51
		v_u_35:AddTask(v_u_51, p_u_52)
	end)
	p_u_52.AttributeChanged:Connect(function(p67)
		-- upvalues: (copy) v_u_56, (copy) p_u_52
		if p67 == "PVP" then
			v_u_56.Visible = p_u_52:GetAttribute("PVP")
		end
	end)
	local v_u_68 = p_u_52:GetAttributeChangedSignal("PlayerTag"):Connect(v_u_63)
	local v_u_69 = v_u_27.LoadButtonEffects(v60, 1)
	p_u_52.AncestryChanged:Once(function()
		-- upvalues: (copy) v_u_54, (ref) v_u_65, (ref) v_u_33, (ref) v_u_66, (ref) v_u_68, (ref) v_u_69, (ref) v_u_63
		v_u_54:Destroy()
		v_u_65:Disconnect()
		v_u_65 = v_u_33
		v_u_66:Disconnect()
		v_u_66 = v_u_33
		v_u_68:Disconnect()
		v_u_68 = v_u_33
		for _, v70 in v_u_69 do
			v70:Disconnect()
		end
		table.clear(v_u_69)
		v_u_69 = v_u_33
		v_u_63 = v_u_33
	end)
	v_u_54.Visible = true
end
local function v78()
	-- upvalues: (copy) v_u_3, (copy) v_u_8, (ref) v_u_32
	local v72 = v_u_3.TopbarInset
	local v73 = v_u_8
	local v74 = UDim2.new
	local v75 = 1
	local v76
	if v_u_32 then
		v76 = -5
	else
		local v77 = v_u_8.AbsoluteSize.X
		v76 = math.ceil(v77)
	end
	v73:TweenPosition(v74(v75, v76, 0, v72.Height + 5), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 1, true)
end
local function v_u_81()
	-- upvalues: (copy) v_u_14, (ref) v_u_29, (copy) v_u_7, (copy) v_u_15, (copy) v_u_16, (copy) v_u_17, (copy) v_u_26, (copy) v_u_37
	v_u_14:SetAttribute("Disabled", v_u_29 == v_u_7)
	v_u_15:SetAttribute("Disabled", v_u_29 == v_u_7)
	if v_u_29 == v_u_7 then
		v_u_16.Image = "http://www.roblox.com/asset/?id=6034267996"
		v_u_14.Text = "Friend Request"
		v_u_14.TextColor3 = Color3.fromRGB(71, 71, 71)
		v_u_17.Image = "http://www.roblox.com/asset/?id=6035047387"
		v_u_15.Text = "Block User"
		v_u_15.TextColor3 = Color3.fromRGB(71, 71, 71)
		return
	else
		local v79 = v_u_26.TryUntilSuccess(v_u_7.IsFriendsWith, v_u_7, v_u_29.UserId)
		local v80 = table.find(v_u_37, v_u_29.UserId) ~= nil
		if v79 then
			v_u_16.Image = "http://www.roblox.com/asset/?id=6034267996"
			v_u_14.Text = "Unfriend"
			v_u_14.TextColor3 = Color3.fromRGB(255, 51, 54)
		else
			v_u_16.Image = "http://www.roblox.com/asset/?id=6034287519"
			v_u_14.Text = "Friend Request"
			v_u_14.TextColor3 = Color3.fromRGB(82, 255, 88)
		end
		if v80 then
			v_u_17.Image = "http://www.roblox.com/asset/?id=6035047378"
			v_u_15.Text = "Unblock"
			v_u_15.TextColor3 = Color3.fromRGB(82, 255, 88)
		else
			v_u_17.Image = "http://www.roblox.com/asset/?id=6035047387"
			v_u_15.Text = "Block User"
			v_u_15.TextColor3 = Color3.fromRGB(255, 51, 54)
		end
	end
end
local function v84()
	-- upvalues: (copy) v_u_21
	local v82 = 0
	for _, v83 in ipairs(v_u_21:GetChildren()) do
		if v83:IsA("Frame") then
			if v83.Visible then
				v82 = v82 + v83.AbsoluteSize.Y
			end
		end
	end
	v_u_21.CanvasSize = UDim2.fromOffset(0, v82)
end
local function v85(_)
	-- upvalues: (ref) v_u_29, (copy) v_u_81
	if v_u_29 and v_u_29.Parent then
		pcall(v_u_81)
	end
end
local function v_u_90()
	-- upvalues: (copy) v_u_3, (ref) v_u_32, (copy) v_u_8, (copy) v_u_10
	local v86 = v_u_3.TopbarInset
	if v_u_32 then
		v_u_32 = false
		local v87 = v_u_8
		local v88 = UDim2.new
		local v89 = v_u_8.AbsoluteSize.X
		v87:TweenPosition(v88(1, math.ceil(v89), 0, v86.Height + 5), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.5, true)
		v_u_10.Image = "http://www.roblox.com/asset/?id=6031091002"
	else
		v_u_32 = true
		v_u_8:TweenPosition(UDim2.new(1, -5, 0, v86.Height + 5), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.5, true)
		v_u_10.Image = "http://www.roblox.com/asset/?id=6031090994"
	end
end
v_u_35:AddTask(v_u_51, nil)
v78()
v84()
v_u_1.PlayerAdded:Connect(v71)
for _, v91 in ipairs(v_u_1:GetPlayers()) do
	task.defer(v71, v91)
end
v_u_27.LoadButtonEffects(v_u_15, 1.035)
v_u_27.LoadButtonEffects(v_u_14, 1.035)
v_u_14:GetPropertyChangedSignal("TextColor3"):Connect(function()
	-- upvalues: (copy) v_u_46, (copy) v_u_14
	v_u_46(v_u_14, v_u_14.TextColor3)
end)
v_u_15:GetPropertyChangedSignal("TextColor3"):Connect(function()
	-- upvalues: (copy) v_u_46, (copy) v_u_15
	v_u_46(v_u_15, v_u_15.TextColor3)
end)
v_u_3:GetPropertyChangedSignal("TopbarInset"):Connect(v78)
v4.RenderStepped:Connect(v85)
v_u_2:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
v_u_21:GetPropertyChangedSignal("AbsoluteCanvasSize"):Connect(function()
	-- upvalues: (copy) v_u_21, (copy) v_u_8, (copy) v_u_9
	if v_u_21.AbsoluteCanvasSize.Y > v_u_8.AbsoluteSize.Y - v_u_9.AbsoluteSize.Y then
		v_u_21.AutomaticSize = Enum.AutomaticSize.None
		v_u_21.Size = UDim2.new(1, 0, 0, v_u_8.AbsoluteSize.Y - v_u_9.AbsoluteSize.Y)
	else
		v_u_21.AutomaticSize = Enum.AutomaticSize.Y
		v_u_21.Size = UDim2.fromScale(1, 0)
	end
end)
v_u_21.ChildAdded:Connect(v84)
v_u_21.ChildRemoved:Connect(v84)
v_u_1.PlayerRemoving:Connect(function(p92)
	-- upvalues: (ref) v_u_29, (copy) v_u_11
	if p92 == v_u_29 then
		v_u_11.Visible = false
	end
end)
v_u_14.MouseButton1Click:Connect(function()
	-- upvalues: (ref) v_u_29, (copy) v_u_7, (copy) v_u_36, (copy) v_u_2
	if v_u_29 and v_u_29 ~= v_u_7 then
		if table.find(v_u_36, v_u_29.UserId) then
			pcall(v_u_2.SetCore, v_u_2, "PromptUnfriend", v_u_29)
			return
		end
		pcall(v_u_2.SetCore, v_u_2, "PromptSendFriendRequest", v_u_29)
	end
end)
v_u_15.MouseButton1Click:Connect(function()
	-- upvalues: (ref) v_u_29, (copy) v_u_7, (copy) v_u_37, (copy) v_u_2
	if v_u_29 and v_u_29 ~= v_u_7 then
		if table.find(v_u_37, v_u_29.UserId) then
			pcall(v_u_2.SetCore, v_u_2, "PromptUnblockPlayer", v_u_29)
			return
		end
		pcall(v_u_2.SetCore, v_u_2, "PromptBlockPlayer", v_u_29)
	end
end)
v_u_38.PlayerBlockedEvent.Event:Connect(function(p93)
	-- upvalues: (copy) v_u_37
	local v94 = v_u_37
	local v95 = p93.UserId
	table.insert(v94, v95)
end)
v_u_38.PlayerUnblockedEvent.Event:Connect(function(p96)
	-- upvalues: (copy) v_u_37
	local v97 = table.find(v_u_37, p96.UserId)
	if v97 then
		table.remove(v_u_37, v97)
	end
end)
v_u_38.PlayerFriendedEvent.Event:Connect(function(p98)
	-- upvalues: (copy) v_u_36
	local v99 = v_u_36
	local v100 = p98.UserId
	table.insert(v99, v100)
end)
v_u_38.PlayerUnfriendedEvent.Event:Connect(function(p101)
	-- upvalues: (copy) v_u_36
	local v102 = table.find(v_u_36, p101.UserId)
	if v102 then
		table.remove(v_u_36, v102)
	end
end)
v_u_10.MouseButton1Down:Connect(v_u_90)
v5.InputBegan:Connect(function(p103)
	-- upvalues: (copy) v_u_90
	if p103.KeyCode == Enum.KeyCode.Tab or p103.KeyCode == Enum.KeyCode.DPadLeft then
		v_u_90()
	end
end)