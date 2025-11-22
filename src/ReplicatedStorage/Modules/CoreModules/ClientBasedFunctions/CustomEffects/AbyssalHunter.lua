--!strict
local Debris_upvr = game:GetService("Debris")
local RunService_upvr = game:GetService("RunService")
local TweenService_upvr = game:GetService("TweenService")
local Modules = game:GetService("ReplicatedStorage"):WaitForChild("Modules")
local module_upvr = require(Modules:WaitForChild("UI"):WaitForChild("SceneUI"):WaitForChild("Assets"))
;({}).BackgroundTransparency = 0.6
;({}).BackgroundTransparency = 1
;({}).BackgroundTransparency = 0
local BaseQuartInfo1_upvr = module_upvr.BaseQuartInfo1
local BaseQuartInfo3_upvr = module_upvr.BaseQuartInfo3
local ReverseQuartInfo1_upvr = module_upvr.ReverseQuartInfo1
local random_state_upvr = Random.new()
local clock_upvr = os.clock
local function _() -- Line 21
	if math.random(1, 2) == 1 then
		return -1
	end
	return 1
end
local function CreateBubble_upvr_upvr(arg1, arg2) -- Line 27, Named "CreateBubble_upvr"
	--[[ Upvalues[7]:
		[1]: random_state_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: BaseQuartInfo1_upvr (readonly)
		[4]: clock_upvr (readonly)
		[5]: RunService_upvr (readonly)
		[6]: ReverseQuartInfo1_upvr (readonly)
		[7]: Debris_upvr (readonly)
	]]
	local ImageLabel_2_upvr = Instance.new("ImageLabel", arg1)
	ImageLabel_2_upvr.BackgroundTransparency = 1
	ImageLabel_2_upvr.Image = "rbxassetid://16681431607"
	ImageLabel_2_upvr.ImageColor3 = arg2
	ImageLabel_2_upvr.SizeConstraint = Enum.SizeConstraint.RelativeXX
	ImageLabel_2_upvr.Rotation = random_state_upvr:NextNumber(-15, 15)
	ImageLabel_2_upvr.AnchorPoint = Vector2.one * 0.5
	ImageLabel_2_upvr:AddTag("CutsceneAsset")
	ImageLabel_2_upvr.ZIndex = 10
	ImageLabel_2_upvr.Parent = arg1
	local any_NextNumber_result1_10 = random_state_upvr:NextNumber(0.02, 0.06)
	TweenService_upvr:Create(ImageLabel_2_upvr, BaseQuartInfo1_upvr, {
		Size = UDim2.fromScale(any_NextNumber_result1_10, any_NextNumber_result1_10);
	}):Play()
	if math.random(1, 2) == 1 then
	else
	end
	local clock_upvr_result1_upvw = clock_upvr()
	local var16_upvr = clock_upvr_result1_upvw + random_state_upvr:NextNumber(1.5, 2)
	local udim2_upvr = UDim2.fromScale(random_state_upvr:NextNumber(), 1)
	local var18_upvr = random_state_upvr:NextNumber(50, 70) * clock_upvr_result1_upvw
	local any_NextNumber_result1_8_upvr = random_state_upvr:NextNumber(0.004, 0.01)
	local any_Connect_result1_upvr_2 = RunService_upvr.Heartbeat:Connect(function() -- Line 63
		--[[ Upvalues[10]:
			[1]: var16_upvr (readonly)
			[2]: clock_upvr (copied, readonly)
			[3]: ImageLabel_2_upvr (readonly)
			[4]: TweenService_upvr (copied, readonly)
			[5]: ReverseQuartInfo1_upvr (copied, readonly)
			[6]: Debris_upvr (copied, readonly)
			[7]: clock_upvr_result1_upvw (read and write)
			[8]: udim2_upvr (readonly)
			[9]: var18_upvr (readonly)
			[10]: any_NextNumber_result1_8_upvr (readonly)
		]]
		if var16_upvr - 0.5 <= clock_upvr() and not ImageLabel_2_upvr:GetAttribute("Removing") then
			ImageLabel_2_upvr:SetAttribute("Removing", true)
			TweenService_upvr:Create(ImageLabel_2_upvr, ReverseQuartInfo1_upvr, {
				Size = UDim2.new();
			}):Play()
			Debris_upvr:AddItem(ImageLabel_2_upvr, 0.5)
		end
		local var21 = (clock_upvr() - clock_upvr_result1_upvw) * 50
		ImageLabel_2_upvr.Position = udim2_upvr + UDim2.fromScale(0.07 * math.sin(var21 / var18_upvr), var21 * -any_NextNumber_result1_8_upvr)
	end)
	ImageLabel_2_upvr.Destroying:Once(function() -- Line 86
		--[[ Upvalues[1]:
			[1]: any_Connect_result1_upvr_2 (readonly)
		]]
		any_Connect_result1_upvr_2:Disconnect()
	end)
end
--[[local function CreateFog_upvr_upvr(arg1, arg2) -- Line 93, Named "CreateFog_upvr"
	--[[ Upvalues[7]:
		[1]: random_state_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: BaseQuartInfo1_upvr (readonly)
		[4]: clock_upvr (readonly)
		[5]: RunService_upvr (readonly)
		[6]: ReverseQuartInfo1_upvr (readonly)
		[7]: Debris_upvr (readonly)
	
	local ImageLabel_4_upvr = Instance.new("ImageLabel", arg1)
	ImageLabel_4_upvr.Image = "rbxassetid://1946917526"
	ImageLabel_4_upvr.Size = UDim2.fromScale(1, 1)
	ImageLabel_4_upvr.ImageColor3 = arg2
	ImageLabel_4_upvr.SizeConstraint = Enum.SizeConstraint.RelativeXX
	ImageLabel_4_upvr.BackgroundTransparency = 1
	ImageLabel_4_upvr.ImageTransparency = 1
	ImageLabel_4_upvr.Rotation = random_state_upvr:NextNumber(-3, 3)
	ImageLabel_4_upvr.AnchorPoint = Vector2.one * 0.5
	ImageLabel_4_upvr:AddTag("CutsceneAsset")
	ImageLabel_4_upvr.Parent = arg1
	TweenService_upvr:Create(ImageLabel_4_upvr, BaseQuartInfo1_upvr, {
		ImageTransparency = 0.7;
	}):Play()
	print(ImageLabel_4_upvr.Parent)
	local any_NextNumber_result1_7 = random_state_upvr:NextNumber(2, 5)
	if nil == 1 then
		any_NextNumber_result1_7 = -1
	else
		any_NextNumber_result1_7 = 1
	end
	if math.random(1, 2) == 1 then
	else
	end
	local clock_upvr_result1_upvr_2 = clock_upvr()
	local var28_upvw = clock_upvr_result1_upvr_2 + random_state_upvr:NextNumber(1.5, 2)
	local udim2_upvr_3 = UDim2.fromScale(random_state_upvr:NextNumber(), random_state_upvr:NextNumber())
	local var31_upvr = any_NextNumber_result1_7 / 1400 * any_NextNumber_result1_7
	local var32_upvr = var28_upvw / 1400 * var28_upvw
	local any_Connect_result1_upvr_3 = RunService_upvr.Heartbeat:Connect(function() -- Line 137
		--[[ Upvalues[10]:
			[1]: var28_upvw (read and write)
			[2]: clock_upvr (copied, readonly)
			[3]: ImageLabel_4_upvr (readonly)
			[4]: TweenService_upvr (copied, readonly)
			[5]: ReverseQuartInfo1_upvr (copied, readonly)
			[6]: Debris_upvr (copied, readonly)
			[7]: clock_upvr_result1_upvr_2 (readonly)
			[8]: udim2_upvr_3 (readonly)
			[9]: var31_upvr (readonly)
			[10]: var32_upvr (readonly)
		
		if var28_upvw - 0.5 <= clock_upvr() and not ImageLabel_4_upvr:GetAttribute("Removing") then
			ImageLabel_4_upvr:SetAttribute("Removing", true)
			TweenService_upvr:Create(ImageLabel_4_upvr, ReverseQuartInfo1_upvr, {
				ImageTransparency = 1;
			}):Play()
			Debris_upvr:AddItem(ImageLabel_4_upvr, 0.5)
		end
		local var34 = (clock_upvr() - clock_upvr_result1_upvr_2) * 50
		ImageLabel_4_upvr.Position = udim2_upvr_3 + UDim2.fromScale(var34 * -var31_upvr, var34 * -var32_upvr)
	end)
	ImageLabel_4_upvr.Destroying:Once(function() -- Line 160
		--[[ Upvalues[1]:
			[1]: any_Connect_result1_upvr_3 (readonly)
		
		any_Connect_result1_upvr_3:Disconnect()
	end)
end]]
local function CreateFog_upvr_upvr(arg1, arg2)
	-- upvalues: (copy) v_u_2, (copy) v_u_3, (copy) v_u_4, (copy) v_u_14, (copy) v_u_9
	local ImageLabel_4_upvr = Instance.new("ImageLabel", arg1)
	ImageLabel_4_upvr.Size = UDim2.fromScale(1, 1)
	ImageLabel_4_upvr.Image = "rbxassetid://1946917526"
	ImageLabel_4_upvr.ImageColor3 = arg2
	ImageLabel_4_upvr.SizeConstraint = Enum.SizeConstraint.RelativeXX
	ImageLabel_4_upvr.BackgroundTransparency = 1
	ImageLabel_4_upvr.ImageTransparency = 1
	ImageLabel_4_upvr.Rotation = math.random(-3, 3)
	ImageLabel_4_upvr.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel_4_upvr.ZIndex = 1
	ImageLabel_4_upvr.Parent = arg1
	ImageLabel_4_upvr:AddTag("CutsceneAsset")
	TweenService_upvr:Create(ImageLabel_4_upvr, BaseQuartInfo1_upvr, {
		["ImageTransparency"] = 0.7
	}):Play()
	local v_u_33 = UDim2.fromScale(math.random(0, 100) / 100, math.random(0, 100) / 100)
	local v_u_34 = math.random(2, 5) / 1400 * (math.random(1.5, 2) == 1.5 and -1 or 1)
	local v_u_35 = math.random(2, 5) / 1400 * (math.random(1.5, 2) == 1.5 and -1 or 1)
	coroutine.wrap(function()
		-- upvalues: (copy) v_u_32, (ref) v_u_2, (ref) v_u_4, (ref) v_u_14, (copy) v_u_33, (copy) v_u_34, (copy) v_u_35, (ref) v_u_9
		local v36 = time()
		local v37 = v36 + math.random(15, 20) / 10
		while ImageLabel_4_upvr and ImageLabel_4_upvr.Parent do
			if time() >= v37 - 0.5 and not ImageLabel_4_upvr:GetAttribute("Removing") then
				ImageLabel_4_upvr:SetAttribute("Removing", true)
				TweenService_upvr:Create(ImageLabel_4_upvr, ReverseQuartInfo1_upvr, {
					["ImageTransparency"] = 1
				}):Play()
				Debris_upvr:AddItem(ImageLabel_4_upvr, 0.5)
			end
			local v38 = (time() - v36) * 50
			ImageLabel_4_upvr.Position = v_u_33 + UDim2.fromScale(v38 * -v_u_34, v38 * -v_u_35)
			RunService_upvr.Heartbeat:Wait()
		end
	end)()
end
--[[local function CreateSideFog_upvr_upvr(arg1, arg2) -- Line 167, Named "CreateSideFog_upvr"
	--[[ Upvalues[7]:
		[1]: random_state_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: BaseQuartInfo1_upvr (readonly)
		[4]: clock_upvr (readonly)
		[5]: RunService_upvr (readonly)
		[6]: ReverseQuartInfo1_upvr (readonly)
		[7]: Debris_upvr (readonly)
	
	local ImageLabel_3_upvr = Instance.new("ImageLabel", arg1)
	ImageLabel_3_upvr.Image = "rbxassetid://3318493505"
	ImageLabel_3_upvr.Size = UDim2.fromScale(1, random_state_upvr:NextNumber(0.15, 0.25))
	ImageLabel_3_upvr.ImageColor3 = arg2
	ImageLabel_3_upvr.SizeConstraint = Enum.SizeConstraint.RelativeXX
	ImageLabel_3_upvr.BackgroundTransparency = 0
	ImageLabel_3_upvr.ImageTransparency = 0
	ImageLabel_3_upvr.Rotation = random_state_upvr:NextNumber(-3, 3)
	ImageLabel_3_upvr.AnchorPoint = Vector2.one * 0.5
	ImageLabel_3_upvr:AddTag("CutsceneAsset")
	ImageLabel_3_upvr.Parent = arg1
	TweenService_upvr:Create(ImageLabel_3_upvr, BaseQuartInfo1_upvr, {
		ImageTransparency = 0.7;
	}):Play()
	local any_NextNumber_result1_11 = random_state_upvr:NextNumber(2, 5)
	if nil == 1 then
		any_NextNumber_result1_11 = -1
	else
		any_NextNumber_result1_11 = 1
	end
	if math.random(1, 2) == 1 then
	else
	end
	local clock_upvr_result1_upvr = clock_upvr()
	local var41_upvw = clock_upvr_result1_upvr + random_state_upvr:NextNumber(1.5, 2)
	local udim2_upvr_2 = UDim2.fromScale(random_state_upvr:NextNumber(), random_state_upvr:NextNumber())
	local var44_upvr = any_NextNumber_result1_11 / 1400 * any_NextNumber_result1_11
	local var45_upvr = var41_upvw / 8000 * var41_upvw
	local any_Connect_result1_upvr = RunService_upvr.Heartbeat:Connect(function() -- Line 211
		--[[ Upvalues[10]:
			[1]: var41_upvw (read and write)
			[2]: clock_upvr (copied, readonly)
			[3]: ImageLabel_3_upvr (readonly)
			[4]: TweenService_upvr (copied, readonly)
			[5]: ReverseQuartInfo1_upvr (copied, readonly)
			[6]: Debris_upvr (copied, readonly)
			[7]: clock_upvr_result1_upvr (readonly)
			[8]: udim2_upvr_2 (readonly)
			[9]: var44_upvr (readonly)
			[10]: var45_upvr (readonly)
		
		if var41_upvw - 0.5 <= clock_upvr() and not ImageLabel_3_upvr:GetAttribute("Removing") then
			ImageLabel_3_upvr:SetAttribute("Removing", true)
			TweenService_upvr:Create(ImageLabel_3_upvr, ReverseQuartInfo1_upvr, {
				ImageTransparency = 1;
			}):Play()
			Debris_upvr:AddItem(ImageLabel_3_upvr, 0.5)
		end
		local var47 = (clock_upvr() - clock_upvr_result1_upvr) * 50
		ImageLabel_3_upvr.Position = udim2_upvr_2 + UDim2.fromScale(var47 * -var44_upvr, var47 * -var45_upvr)
	end)
	ImageLabel_3_upvr.Destroying:Once(function() -- Line 234
		--[[ Upvalues[1]:
			[1]: any_Connect_result1_upvr (readonly)
		
		any_Connect_result1_upvr:Disconnect()
	end)
end]]
local function CreateSideFog_upvr_upvr(arg1, arg2)
	-- upvalues: (copy) v_u_2, (copy) v_u_3, (copy) v_u_4, (copy) v_u_14, (copy) v_u_9
	local ImageLabel_4_upvr = Instance.new("ImageLabel", arg1)
	ImageLabel_4_upvr.Size = UDim2.fromScale(1, random_state_upvr:NextNumber(0.15, 0.25))
	ImageLabel_4_upvr.Image = "rbxassetid://3318493505"
	ImageLabel_4_upvr.ImageColor3 = arg2
	ImageLabel_4_upvr.SizeConstraint = Enum.SizeConstraint.RelativeXX
	ImageLabel_4_upvr.BackgroundTransparency = 1
	ImageLabel_4_upvr.ImageTransparency = 1
	ImageLabel_4_upvr.Rotation = math.random(-3, 3)
	ImageLabel_4_upvr.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel_4_upvr.ZIndex = 2
	ImageLabel_4_upvr.Parent = arg1
	ImageLabel_4_upvr:AddTag("CutsceneAsset")
	TweenService_upvr:Create(ImageLabel_4_upvr, BaseQuartInfo1_upvr, {
		["ImageTransparency"] = 0.7
	}):Play()
	local v_u_33 = UDim2.fromScale(math.random(0, 100) / 100, math.random(0, 100) / 100)
	local v_u_34 = math.random(2, 5) / 1400 * (math.random(1.5, 2) == 1.5 and -1 or 1)
	local v_u_35 = math.random(2, 5) / 8000 * (math.random(1.5, 2) == 1.5 and -1 or 1)
	coroutine.wrap(function()
		-- upvalues: (copy) v_u_32, (ref) v_u_2, (ref) v_u_4, (ref) v_u_14, (copy) v_u_33, (copy) v_u_34, (copy) v_u_35, (ref) v_u_9
		local v36 = time()
		local v37 = v36 + math.random(15, 20) / 10
		while ImageLabel_4_upvr and ImageLabel_4_upvr.Parent do
			if time() >= v37 - 0.5 and not ImageLabel_4_upvr:GetAttribute("Removing") then
				ImageLabel_4_upvr:SetAttribute("Removing", true)
				TweenService_upvr:Create(ImageLabel_4_upvr, ReverseQuartInfo1_upvr, {
					["ImageTransparency"] = 1
				}):Play()
				Debris_upvr:AddItem(ImageLabel_4_upvr, 0.5)
			end
			local v38 = (time() - v36) * 50
			ImageLabel_4_upvr.Position = v_u_33 + UDim2.fromScale(v38 * -v_u_34, v38 * -v_u_35)
			RunService_upvr.Heartbeat:Wait()
		end
	end)()
end
local function CreateFish_upvr_upvr(arg1) -- Line 241, Named "CreateFish_upvr"
	--[[ Upvalues[3]:
		[1]: random_state_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: Debris_upvr (readonly)
	]]
	local clone_4 = script.Fish:Clone()
	clone_4:AddTag("CutsceneAsset")
	if random_state_upvr:NextNumber() <= 0.25 then
		clone_4.Parent = arg1.Parent
	else
		clone_4.Parent = arg1
	end
	clone_4.Position = UDim2.fromScale(1, random_state_upvr:NextNumber())
	clone_4.ZIndex = 98
	local any_NextNumber_result1 = random_state_upvr:NextNumber(0.5, 1)
	clone_4.Size = UDim2.fromScale(0.4 * any_NextNumber_result1, 0.5 * any_NextNumber_result1)
	local any_NextNumber_result1_9 = random_state_upvr:NextNumber(0.9, 1.5)
	TweenService_upvr:Create(clone_4, TweenInfo.new(any_NextNumber_result1_9, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
		Position = UDim2.fromScale(-clone_4.Size.X.Scale, clone_4.Position.Y.Scale);
	}):Play()
	Debris_upvr:AddItem(clone_4, any_NextNumber_result1_9)
end
local function CreateAnchor_upvr_upvr(arg1, arg2, arg3) -- Line 264, Named "CreateAnchor_upvr"
	--[[ Upvalues[4]:
		[1]: module_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: BaseQuartInfo3_upvr (readonly)
		[4]: Debris_upvr (readonly)
	]]
	module_upvr.PlaySFX("Whoosh", {
		Volume = 1 - arg3 + 0.3;
	})
	local ImageLabel = Instance.new("ImageLabel", arg1)
	ImageLabel.BackgroundTransparency = 1
	ImageLabel.Image = "rbxassetid://16681036685"
	ImageLabel.Size = UDim2.fromScale(0.8, 0.8)
	ImageLabel.ImageColor3 = arg2
	ImageLabel.SizeConstraint = Enum.SizeConstraint.RelativeYY
	ImageLabel.ImageTransparency = arg3
	ImageLabel.AnchorPoint = Vector2.one * 0.5
	ImageLabel.Position = UDim2.fromScale(0.5, 0.5)
	ImageLabel:AddTag("CutsceneAsset")
	ImageLabel.Parent = arg1
	TweenService_upvr:Create(ImageLabel, BaseQuartInfo3_upvr, {
		Size = UDim2.fromScale(0.7, 0.7);
		ImageTransparency = 1;
	}):Play()
	Debris_upvr:AddItem(ImageLabel, 2)
end
local function _(arg1, ...) -- Line 292, Named "_select"
	return ({...})[arg1]
end
require(Modules:WaitForChild("Queue_new")).Waitter.new():executeAll():await():destroy()
local ReverseQuartInfo2_upvr = module_upvr.ReverseQuartInfo2
local ReverseQuartInfo3_upvr = module_upvr.ReverseQuartInfo3
local BaseQuartInfo2_upvr = module_upvr.BaseQuartInfo2
return function(arg1, arg2, arg3, arg4, arg5) -- Line 312
	--[[ Upvalues[15]:
		[1]: module_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: BaseQuartInfo3_upvr (readonly)
		[4]: CreateBubble_upvr_upvr (readonly)
		[5]: CreateSideFog_upvr_upvr (readonly)
		[6]: CreateFog_upvr_upvr (readonly)
		[7]: CreateFish_upvr_upvr (readonly)
		[8]: ReverseQuartInfo2_upvr (readonly)
		[9]: CreateAnchor_upvr_upvr (readonly)
		[10]: ReverseQuartInfo3_upvr (readonly)
		[11]: random_state_upvr (readonly)
		[12]: BaseQuartInfo1_upvr (readonly)
		[13]: ReverseQuartInfo1_upvr (readonly)
		[14]: BaseQuartInfo2_upvr (readonly)
		[15]: Debris_upvr (readonly)
	]]
	--module_upvr.PlaySFX(script.Ambient)
	script.Ambient:Play()
	game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
	local Star2 = arg2.Star
	local Blackboard_upvr = arg2.Blackboard :: Frame
	local Colorboard_upvr = arg2.Colorboard
	local StarSpinSpeed = arg3:WaitForChild("StarSpinSpeed")
	local var72_upvw = true
	local RBXScriptConnection = nil
	local removeChildrenInBlackboard = function()
		if Blackboard_upvr ~= nil and Blackboard_upvr:IsA("Frame") then
			for _, child in Blackboard_upvr:GetChildren() do
				child:Destroy()
			end
			--[[RBXScriptConnection = Blackboard_upvr.ChildAdded:Connect(function(child)
				child:Destroy()
			end)]]
		end
	end
	Star2.Image = "rbxassetid://17068400400"
	module_upvr.SetBlackboard(Blackboard_upvr)
	module_upvr.BlackBoardTransitionize(Blackboard_upvr, 0, false)
	Colorboard_upvr.Image = "rbxassetid://12353440665"
	module_upvr.PlaySFX("OneMilPlus")
	Star2.Size = UDim2.fromScale(1.5, 1.5)
	Star2.Visible = true
	StarSpinSpeed.Value = 5
	TweenService_upvr:Create(StarSpinSpeed, BaseQuartInfo3_upvr, {
		Value = 1;
	}):Play()
	TweenService_upvr:Create(Star2, BaseQuartInfo3_upvr, {
		Size = UDim2.fromScale(0.6, 0.6);
	}):Play()
	local current_thread_upvr = coroutine.running()
	local function _(arg1_2) -- Line 357
		--[[ Upvalues[1]:
			[1]: current_thread_upvr (readonly)
		]]
		local task_wait_result1 = task.wait(arg1_2)
		if task_wait_result1 then
			if coroutine.status(current_thread_upvr) == "dead" then
				return false
			end
		end
		return true
	end
	task.defer(function() -- Line 371
		--[[ Upvalues[3]:
			[1]: var72_upvw (read and write)
			[2]: CreateBubble_upvr_upvr (copied, readonly)
			[3]: Blackboard_upvr (readonly)
		]]
		while task.wait(0.05) and var72_upvw do
			CreateBubble_upvr_upvr(Blackboard_upvr, Color3.fromRGB(47, 61, 255))
		end
	end)
	task.defer(function() -- Line 382
		--[[ Upvalues[4]:
			[1]: var72_upvw (read and write)
			[2]: CreateSideFog_upvr_upvr (copied, readonly)
			[3]: Blackboard_upvr (readonly)
			[4]: CreateFog_upvr_upvr (copied, readonly)
		]]
		while task.wait(0.2) and var72_upvw do
			CreateFog_upvr_upvr(Blackboard_upvr, Color3.fromRGB(47, 61, 255))
			CreateSideFog_upvr_upvr(Blackboard_upvr, Color3.fromRGB(47, 61, 255))
		end
	end)
	local var80_upvw = true
	task.defer(function() -- Line 396
		--[[ Upvalues[3]:
			[1]: var80_upvw (read and write)
			[2]: CreateFish_upvr_upvr (copied, readonly)
			[3]: Colorboard_upvr (readonly)
		]]
		while task.wait(0.1) and var80_upvw do
			CreateFish_upvr_upvr(Colorboard_upvr)
		end
	end)
	task.wait(3.23)
	TweenService_upvr:Create(StarSpinSpeed, ReverseQuartInfo2_upvr, {
		Value = 4;
	}):Play()
	TweenService_upvr:Create(Star2, ReverseQuartInfo2_upvr, {
		Size = UDim2.fromScale(1.5, 1.5);
	}):Play()
	task.wait(4)
	module_upvr.ColorboardAppear:Play()
	CreateAnchor_upvr_upvr(Blackboard_upvr, Color3.fromRGB(47, 61, 255), 0.6)
	task.wait(1)
	CreateAnchor_upvr_upvr(Blackboard_upvr, Color3.fromRGB(47, 61, 255), 0.3)
	task.wait(0.7)
	local clone_5_upvr = script:WaitForChild("Eyes"):Clone()
	clone_5_upvr.BackgroundTransparency = 1
	clone_5_upvr:AddTag("CutsceneAsset")
	clone_5_upvr.Parent = Colorboard_upvr
	TweenService_upvr:Create(clone_5_upvr.RightEye, ReverseQuartInfo3_upvr, {
		Rotation = -25;
		Size = UDim2.fromScale(0.4, 0.45);
	}):Play()
	TweenService_upvr:Create(clone_5_upvr.LeftEye, ReverseQuartInfo3_upvr, {
		Rotation = 25;
		Size = UDim2.fromScale(0.4, 0.45);
	}):Play()
	task.wait(0.3)
	var72_upvw = false
	Star2.Visible = false
	removeChildrenInBlackboard()
	clone_5_upvr.LeftEye.ImageColor3 = Color3.new(1, 1, 1)
	clone_5_upvr.RightEye.ImageColor3 = Color3.new(1, 1, 1)
	--module_upvr.PlaySFX(script.Ambient):Destroy()
	script.Ambient:Stop()
	module_upvr.PlaySFX(script.FinalSound1)
	var80_upvw = false
	Star2.Visible = false
	Colorboard_upvr.Image = "rbxassetid://1195495135"
	Colorboard_upvr.ImageColor3 = Color3.new()
	task.defer(function() -- Line 441
		--[[ Upvalues[2]:
			[1]: clone_5_upvr (readonly)
			[2]: random_state_upvr (copied, readonly)
		]]
		for _ = 1, 3 do
			clone_5_upvr.Position = UDim2.fromScale(0.5, 0.5) + UDim2.fromScale(random_state_upvr:NextNumber(-0.015, 0.015), random_state_upvr:NextNumber(-0.015, 0.015))
			task.wait(0.02)
		end
		clone_5_upvr.Position = UDim2.fromScale(0.5, 0.5)
	end)
	module_upvr.PlaySFX(script.EyesOpened)
	TweenService_upvr:Create(clone_5_upvr.RightFlash, BaseQuartInfo1_upvr, {
		Size = UDim2.fromScale(2, 4);
		ImageTransparency = 1;
	}):Play()
	TweenService_upvr:Create(clone_5_upvr.LeftFlash, BaseQuartInfo1_upvr, {
		Size = UDim2.fromScale(2, 4);
		ImageTransparency = 1;
	}):Play()
	TweenService_upvr:Create(clone_5_upvr.RightEye, BaseQuartInfo1_upvr, {
		Rotation = -20;
		Size = UDim2.fromScale(0.4, 0.4);
	}):Play()
	TweenService_upvr:Create(clone_5_upvr.LeftEye, BaseQuartInfo1_upvr, {
		Rotation = 20;
		Size = UDim2.fromScale(0.4, 0.4);
	}):Play()
	TweenService_upvr:Create(clone_5_upvr, BaseQuartInfo1_upvr, {
		Size = UDim2.fromScale(1, 1);
	}):Play()
	task.wait(0.5)
	TweenService_upvr:Create(clone_5_upvr.RightEye, ReverseQuartInfo1_upvr, {
		Size = UDim2.fromScale(0.4, 0.3);
		ImageTransparency = 1;
	}):Play()
	TweenService_upvr:Create(clone_5_upvr.LeftEye, ReverseQuartInfo1_upvr, {
		Size = UDim2.fromScale(0.4, 0.3);
		ImageTransparency = 1;
	}):Play()
	TweenService_upvr:Create(clone_5_upvr, ReverseQuartInfo1_upvr, {
		Size = UDim2.fromScale(0.7, 0.7);
	}):Play()
	task.wait(0.3)
	local var97_upvw = true
	task.defer(function() -- Line 486
		--[[ Upvalues[6]:
			[1]: var97_upvw (read and write)
			[2]: Colorboard_upvr (readonly)
			[3]: random_state_upvr (copied, readonly)
			[4]: TweenService_upvr (copied, readonly)
			[5]: BaseQuartInfo2_upvr (copied, readonly)
			[6]: clone_5_upvr (readonly)
		]]
		while task.wait(0.03) and var97_upvw do
			local clone = script.Shock:Clone()
			clone.Parent = Colorboard_upvr
			local any_NextNumber_result1_4 = random_state_upvr:NextNumber(0.7, 0.9)
			clone.Size = UDim2.fromScale(any_NextNumber_result1_4, any_NextNumber_result1_4)
			clone.Rotation = random_state_upvr:NextNumber() * 360
			local any_NextNumber_result1_2 = random_state_upvr:NextNumber(1.4, 1.5)
			TweenService_upvr:Create(clone, BaseQuartInfo2_upvr, {
				Size = UDim2.fromScale(any_NextNumber_result1_2, any_NextNumber_result1_2);
				ImageTransparency = 1;
			}):Play()
			clone_5_upvr.Position = UDim2.fromScale(0.5, 0.5) + UDim2.fromScale(math.random(-15, 15) / 1000, math.random(-15, 15) / 1000)
		end
	end)
	task.wait(0.7)
	for _ = 1, 30 do
		local clone_3 = script.Flash:Clone()
		clone_3.Position = UDim2.fromScale(random_state_upvr:NextNumber(), random_state_upvr:NextNumber())
		clone_3.Rotation = random_state_upvr:NextNumber() * 360
		clone_3.Parent = Colorboard_upvr
		local any_NextNumber_result1_5 = random_state_upvr:NextNumber(0.2, 0.5)
		TweenService_upvr:Create(clone_3, TweenInfo.new(any_NextNumber_result1_5, Enum.EasingStyle.Quart), {
			Size = UDim2.fromScale(0, 5);
		}):Play()
		Debris_upvr:AddItem(clone_3, any_NextNumber_result1_5)
	end
	for _ = 1, 30 do
		local clone_2 = script.Flash:Clone()
		clone_2.Parent = Colorboard_upvr
		local any_NextNumber_result1_6 = random_state_upvr:NextNumber(0.2, 0.5)
		TweenService_upvr:Create(clone_2, TweenInfo.new(any_NextNumber_result1_6, Enum.EasingStyle.Quart), {
			Size = UDim2.fromScale(0, 5);
		}):Play()
		Debris_upvr:AddItem(clone_2, any_NextNumber_result1_6)
		local var108 = 0.5
		if random_state_upvr:NextNumber() <= var108 then
			clone_2.Rotation = 90
			var108 = random_state_upvr:NextNumber()
			if math.random(1, 2) == 1 then
			end
			clone_2.Position = UDim2.fromScale(var108, 1)
		else
			if math.random(1, 2) == 1 then
				var108 = -1
			else
				var108 = 1
			end
			clone_2.Position = UDim2.fromScale(var108, random_state_upvr:NextNumber())
		end
	end
	module_upvr.PlaySFX(script.GlassBreak1)
	local clone_6 = script.Cracks:Clone()
	clone_6.Parent = Colorboard_upvr
	TweenService_upvr:Create(clone_6, BaseQuartInfo1_upvr, {
		Size = UDim2.fromScale(1.3, 1.3);
	}):Play()
	Debris_upvr:AddItem(clone_6, 0.5)
	task.wait(0.5)
	module_upvr.PlaySFX(script.Roar):Destroy()
	for _ = 1, 30 do
		local clone_7 = script.Flash:Clone()
		clone_7.Parent = Colorboard_upvr
		local any_NextNumber_result1_3 = random_state_upvr:NextNumber(0.2, 0.5)
		TweenService_upvr:Create(clone_7, TweenInfo.new(any_NextNumber_result1_3, Enum.EasingStyle.Quart), {
			Size = UDim2.fromScale(0, 5);
		}):Play()
		Debris_upvr:AddItem(clone_7, any_NextNumber_result1_3)
		local var114 = 0.5
		if random_state_upvr:NextNumber() <= var114 then
			clone_7.Rotation = 90
			var114 = random_state_upvr:NextNumber()
			if math.random(1, 2) == 1 then
			end
			clone_7.Position = UDim2.fromScale(var114, 1)
		else
			if math.random(1, 2) == 1 then
				var114 = -1
			else
				var114 = 1
			end
			clone_7.Position = UDim2.fromScale(var114, random_state_upvr:NextNumber())
		end
	end
	module_upvr.PlaySFX(script.GlassBreak2)
	module_upvr.PlaySFX(script.GlassBreak3)
	clone_5_upvr:Destroy()
	var97_upvw = false
	module_upvr.ColorboardDisappear:Play()
	module_upvr.SetShake(0.02, BaseQuartInfo3_upvr)
	module_upvr.BlackBoardTransitionize(Blackboard_upvr, 1, true)
	Star2.Image = "rbxassetid://6909741538"
	if RBXScriptConnection ~= nil and typeof(RBXScriptConnection) == "RBXScriptConnection" then
		RBXScriptConnection:Disconnect()
	end
end