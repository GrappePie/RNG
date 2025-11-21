-- What the sigma?

local v1 = game:GetService("Players")
game:GetService("StarterGui")
local v_u_2 = game:GetService("RunService")
local v_u_3 = game:GetService("BadgeService")
local v4 = game:GetService("ReplicatedStorage")
local v5 = v4:WaitForChild("Remotes")
local v6 = v4:WaitForChild("Modules")
local v7 = script:FindFirstAncestorOfClass("ScreenGui")
local v8 = v7:WaitForChild("Misc"):WaitForChild("Menu"):WaitForChild("Achievement")
local v_u_9 = v7:WaitForChild("AchievementFrame")
local v_u_10 = v_u_9:WaitForChild("Achievement0o")
local v11 = v_u_9:WaitForChild("Achievements")
local v_u_12 = v11:WaitForChild("AchievementGrid"):WaitForChild("ScrollingFrame")
local v_u_13 = v_u_12:WaitForChild("UIPadding")
local v_u_14 = v_u_10:WaitForChild("Rewards")
local v_u_15 = v_u_14:WaitForChild("CoinReward")
local v_u_16 = v_u_14:WaitForChild("AuraReward")
local v_u_17 = v_u_14:WaitForChild("ItemReward")
local v_u_18 = v_u_10:WaitForChild("RewardNotExists")
local v_u_19 = v_u_10:WaitForChild("Claim")
local v_u_20 = v11:WaitForChild("Search"):WaitForChild("TextBox")
local v_u_21 = v5:WaitForChild("Achievement")
local v22 = require(v6:WaitForChild("RemoteFunction")).new("Achievement")
local v_u_23 = require(v6:WaitForChild("CoreModules"):WaitForChild("ClientBasedFunctions"))
local v24 = require(v4:WaitForChild("ReplicaController"))
local v_u_25 = require(v7:WaitForChild("Notification"):WaitForChild("Core"))
local v26 = v_u_9:WaitForChild("SelectionCorners"):WaitForChild("Title"):WaitForChild("Close")
local v_u_27 = require(v6:WaitForChild("DB"):WaitForChild("ItemDB"))
local v_u_28 = v4:WaitForChild("Assets"):WaitForChild("SFXs")
local v_u_29 = v22:Fire()
local v_u_30 = v1.LocalPlayer
local v_u_31 = Instance.new("StringValue")
local v_u_32 = nil
v24.RequestData()
repeat
	task.wait()
until v24.InitialDataReceived
local v_u_33 = v24.GetReplicaById(v_u_30:GetAttribute("UID"))
local v_u_34 = script:WaitForChild("Template")
local v_u_35 = {}
local v_u_36 = "I just started Sol\'s RNG"
local function v_u_49()
	local v37 = v_u_29[v_u_36]
	if not v37 then
		return
	end
	local v38 = v_u_10.AchievementName
	if v37.Hidden then
		local v39 = v_u_36
		if table.find(v_u_33.Data.UnlockedAchievements, v39) == nil then
			local v48 = "???"
			v38.Text = v48
			v_u_10.Description.Text = v37.Description or ""
			v_u_14.Visible = false
			v_u_19.Visible = false
			v_u_18.Visible = false
			for _, v40 in ipairs(v_u_14:GetChildren()) do
				if v40:IsA("Frame") and v40.Visible then
					v40:Destroy()
				end
			end
			if v37.Rewards then
				if v37.Rewards.Coins then
					local v41 = v_u_15:Clone()
					v41.Visible = true
					v41.Parent = v_u_14
					v41.Amount.Text = ("%* Coins"):format(v37.Rewards.Coins)
				end
				if v37.Rewards.Aura then
					local v42 = v_u_16:Clone()
					v42.Visible = true
					v42.Parent = v_u_14
					v42.AuraName.Text = v37.Rewards.Aura
					v_u_23.ChangeTextColor(v_u_16.AuraName)
				end
				if v37.Rewards.Items then
					for v43, v44 in pairs(v37.Rewards.Items) do
						local v45 = v_u_17:Clone()
						v45.Visible = true
						v45.Parent = v_u_14
						v45.Amount.Text = ("%* x%*"):format(v43, v44)
						v45.Amount.TextColor3 = v_u_27[v43].TextColor
					end
				end
				local v46 = v_u_36
				v_u_19.Locked.Visible = table.find(v_u_33.Data.UnlockedAchievements, v46) == nil
				local v47 = v_u_36
				v_u_19.Claimed.Visible = v_u_33.Data.AchievementsClaimed[v47] == true
				v_u_19:SetAttribute("Disabled", v_u_19.Locked.Visible or v_u_19.Claimed.Visible)
				v_u_14.Visible = true
				v_u_19.Visible = true
				return
			end
			v_u_18.Visible = true
		end
	elseif not v37.Hidden then
		local v39 = v_u_36
		if table.find(v_u_33.Data.UnlockedAchievements, v39) == nil  then
			local v48 = v_u_36
			v38.Text = v48
			v_u_10.Description.Text = v37.Description or ""
			v_u_14.Visible = false
			v_u_19.Visible = false
			v_u_18.Visible = false
			for _, v40 in ipairs(v_u_14:GetChildren()) do
				if v40:IsA("Frame") and v40.Visible then
					v40:Destroy()
				end
			end
			if v37.Rewards then
				if v37.Rewards.Coins then
					local v41 = v_u_15:Clone()
					v41.Visible = true
					v41.Parent = v_u_14
					v41.Amount.Text = ("%* Coins"):format(v37.Rewards.Coins)
				end
				if v37.Rewards.Aura then
					local v42 = v_u_16:Clone()
					v42.Visible = true
					v42.Parent = v_u_14
					v42.AuraName.Text = v37.Rewards.Aura
					v_u_23.ChangeTextColor(v_u_16.AuraName)
				end
				if v37.Rewards.Items then
					for v43, v44 in pairs(v37.Rewards.Items) do
						local v45 = v_u_17:Clone()
						v45.Visible = true
						v45.Parent = v_u_14
						v45.Amount.Text = ("%* x%*"):format(v43, v44)
						v45.Amount.TextColor3 = v_u_27[v43].TextColor
					end
				end
				local v46 = v_u_36
				v_u_19.Locked.Visible = table.find(v_u_33.Data.UnlockedAchievements, v46) == nil
				local v47 = v_u_36
				v_u_19.Claimed.Visible = v_u_33.Data.AchievementsClaimed[v47] == true
				v_u_19:SetAttribute("Disabled", v_u_19.Locked.Visible or v_u_19.Claimed.Visible)
				v_u_14.Visible = true
				v_u_19.Visible = true
				return
			end
			v_u_18.Visible = true
		else
			local v48 = v_u_36
			v38.Text = v48
			v_u_10.Description.Text = v37.Description or ""
			v_u_14.Visible = false
			v_u_19.Visible = false
			v_u_18.Visible = false
			for _, v40 in ipairs(v_u_14:GetChildren()) do
				if v40:IsA("Frame") and v40.Visible then
					v40:Destroy()
				end
			end
			if v37.Rewards then
				if v37.Rewards.Coins then
					local v41 = v_u_15:Clone()
					v41.Visible = true
					v41.Parent = v_u_14
					v41.Amount.Text = ("%* Coins"):format(v37.Rewards.Coins)
				end
				if v37.Rewards.Aura then
					local v42 = v_u_16:Clone()
					v42.Visible = true
					v42.Parent = v_u_14
					v42.AuraName.Text = v37.Rewards.Aura
					v_u_23.ChangeTextColor(v_u_16.AuraName)
				end
				if v37.Rewards.Items then
					for v43, v44 in pairs(v37.Rewards.Items) do
						local v45 = v_u_17:Clone()
						v45.Visible = true
						v45.Parent = v_u_14
						v45.Amount.Text = ("%* x%*"):format(v43, v44)
						v45.Amount.TextColor3 = v_u_27[v43].TextColor
					end
				end
				local v46 = v_u_36
				v_u_19.Locked.Visible = table.find(v_u_33.Data.UnlockedAchievements, v46) == nil
				local v47 = v_u_36
				v_u_19.Claimed.Visible = v_u_33.Data.AchievementsClaimed[v47] == true
				v_u_19:SetAttribute("Disabled", v_u_19.Locked.Visible or v_u_19.Claimed.Visible)
				v_u_14.Visible = true
				v_u_19.Visible = true
				return
			end
		end
	end
	local v48 = v37.DisplayName or v_u_36
end
local function v64(p_u_50)
	-- upvalues: (copy) v_u_35, (copy) v_u_29, (copy) v_u_34, (copy) v_u_12, (copy) v_u_33, (ref) v_u_36, (copy) v_u_49, (copy) v_u_31, (copy) v_u_30, (copy) v_u_2, (copy) v_u_23, (copy) v_u_32, (copy) v_u_28
	if not v_u_35[p_u_50] then
		local v_u_51 = v_u_29[p_u_50]
		local v_u_52 = v_u_34:Clone()
		local v_u_53 = v_u_52:WaitForChild("Holder")
		local v_u_54 = v_u_52:WaitForChild("ClickDetector")
		local v_u_55 = nil
		v_u_52.LayoutOrder = v_u_51.Index
		v_u_52.Parent = v_u_12
		v_u_35[p_u_50] = function()
			-- upvalues: (ref) v_u_51, (ref) v_u_29, (copy) p_u_50, (ref) v_u_33, (copy) v_u_53
			v_u_51 = v_u_29[p_u_50]
			local v56 = p_u_50
			local v57 = table.find(v_u_33.Data.UnlockedAchievements, v56) ~= nil
			if v_u_51.Hidden and not v57 then
				v_u_53.Title.Text = "???"
				v_u_53.ShortDesc.Text = "???"
				v_u_53.Progress.ProgressText.Text = "??? / ???"
			else
				v_u_53.Title.Text = v_u_51.DisplayName or p_u_50
				v_u_53.ShortDesc.Text = v_u_51.SmallDescription or ""
				if v_u_51.Goal then
					v_u_53.Progress.ProgressText.Text = ("%* / %*"):format(v_u_33.Data.Achievements[p_u_50] or 0, v_u_51.Goal)
					v_u_53.Progress.BarHolder.Bar:TweenSize(UDim2.fromScale((v_u_33.Data.Achievements[p_u_50] or 0) / v_u_51.Goal, 0.75), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0.2)
				end
			end
			v_u_53.Title.Completed.ImageTransparency = v57 and 0 or 1
		end
		v_u_54.MouseButton1Click:Connect(function()
			-- upvalues: (ref) v_u_36, (copy) p_u_50, (ref) v_u_49
			v_u_36 = p_u_50
			v_u_49()
		end)
		v_u_54.SelectionChanged:Connect(function(p58)
			-- upvalues: (copy) v_u_54
			if p58 then
				v_u_54.BackgroundTransparency = 0.8
			else
				v_u_54.BackgroundTransparency = 1
			end
		end)
		v_u_54.MouseEnter:Connect(function()
			-- upvalues: (copy) v_u_54
			v_u_54.BackgroundTransparency = 0.8
		end)
		v_u_54.MouseLeave:Connect(function()
			-- upvalues: (copy) v_u_54
			v_u_54.BackgroundTransparency = 1
		end)
		v_u_31.Changed:Connect(function(p59)
			-- upvalues: (copy) v_u_53, (copy) v_u_52
			if v_u_53.Title.LocalizedText:gsub(" ", ""):lower():find(p59:gsub(" ", ""):lower()) then
				v_u_52.Visible = true
			else
				v_u_52.Visible = false
			end
		end)
		if v_u_51.IsTimeAchievement then
			if table.find(v_u_33.Data.UnlockedAchievements, p_u_50) == nil then
				local v_u_60 = v_u_30:GetAttribute("PlayBegin")
				v_u_55 = v_u_2.RenderStepped:Connect(function()
					-- upvalues: (copy) v_u_60, (ref) v_u_33, (ref) v_u_51, (copy) v_u_53
					local v61 = (workspace:GetServerTimeNow() - v_u_60 + v_u_33.Data.Playtime) / 60
					local v62 = v_u_51.Goal
					local v63 = math.min(v61, v62)
					v_u_53.Progress.ProgressText.Text = ("%* / %*"):format(math.floor(v63), v_u_51.Goal)
					v_u_53.Progress.BarHolder.Bar:TweenSize(UDim2.fromScale(v63 / v_u_51.Goal, 0.75), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0.2)
				end)
			end
		end
		v_u_23.LoadButtonEffects(v_u_54, 1)
		
		function ClaimingStuff()
			if v_u_55 then
				v_u_55:Disconnect()
				v_u_55 = v_u_32
			end
			v_u_28.Money:Play()
			v_u_49()
		end
		
		v_u_33:ListenToChange({ "Achievements", p_u_50 }, v_u_35[p_u_50])
		
		--v_u_33:ListenToChange({ "AchievementsClaimed", p_u_50 }, function(_)
		--	-- upvalues: (ref) v_u_55, (ref) v_u_32, (ref) v_u_28, (ref) v_u_49
		--	print("Claimed somuething")
		--	if v_u_55 then
		--		v_u_55:Disconnect()
		--		v_u_55 = v_u_32
		--	end
		--	v_u_28.Money:Play()
		--	v_u_49()
		--end)
	end
	v_u_35[p_u_50]()
end
local function v65()
	-- upvalues: (copy) v_u_12, (copy) v_u_13
	if v_u_12.AbsoluteCanvasSize.Y >= v_u_12.AbsoluteSize.Y then
		v_u_13.PaddingRight = UDim.new(0, v_u_12.ScrollBarThickness)
	else
		v_u_13.PaddingRight = UDim.new()
	end
end
local function v66()
	-- upvalues: (copy) v_u_21, (ref) v_u_36
	v_u_21:FireServer("Claim", v_u_36)
end
v_u_49()
v_u_12.ChildAdded:Connect(v65)
v_u_12.ChildRemoved:Connect(v65)
v_u_21.OnClientEvent:Connect(function(p67, p_u_68)
	-- upvalues: (copy) v_u_29, (copy) v_u_33, (copy) v_u_3, (copy) v_u_25, (copy) v_u_35, (copy) v_u_49
	p_u_68 = v_u_29[p67]
	if table.find(v_u_33.Data.UnlockedAchievements, p67) == nil then
		local v69 = v_u_33.Data.UnlockedAchievements
		table.insert(v69, p67)
	end
	local v70 = 0 --nil
	--if p_u_68.BadgeId then
	--	local v71, v72 = pcall(function()
	--		-- upvalues: (ref) v_u_3, (copy) p_u_68
	--		return v_u_3:GetBadge0oAsync(p_u_68.BadgeId)
	--	end)
	--	if v71 then
	--		v70 = 0--v72.IconImageId
	--	end
	--end
	v_u_25.Create("Achievement Unlocked", ("You\'ve unlocked \"%*\""):format(p_u_68.DisplayName or p67), 3, "Badge", v70)
	for _, v73 in pairs(v_u_35) do
		v73()
	end
	v_u_49()
end)
v_u_19.MouseButton1Click:Connect(v66)
for v74, _ in pairs(v_u_29) do
	task.spawn(v64, v74)
end
v_u_9.Visible = true
v_u_9.Visible = false
v8.MouseButton1Click:Connect(function()
	-- upvalues: (copy) v_u_9, (copy) v_u_23
	if not v_u_9.Visible then
		v_u_23.CloseAllWindows()
	end
	v_u_9.Visible = not v_u_9.Visible
end)
v_u_20.Changed:Connect(function()
	-- upvalues: (copy) v_u_31, (copy) v_u_20
	v_u_31.Value = v_u_20.Text
end)
--v_u_23.LoadButtonEffects(v8)
v_u_23.LoadButtonEffects(v_u_19)
v_u_23.LoadButtonEffects(v26, 1)
v26.MouseButton1Click:Connect(function()
	-- upvalues: (copy) v_u_9
	v_u_9.Visible = false
end)

local p_u_50 = nil

v_u_33:ListenToChange({ "AchievementsClaimed", p_u_50 }, ClaimingStuff)