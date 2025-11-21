-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-14 06:32:38
-- Luau version 6, Types version 3
-- Time taken: 0.027384 seconds

local Debris_upvr_2 = game:GetService("Debris")
local RunService_upvr_2 = game:GetService("RunService")
local TweenService_upvr = game:GetService("TweenService")
local Modules = game:GetService("ReplicatedStorage"):WaitForChild("Modules")
local module_2_upvr = require(Modules:WaitForChild("UICache"))
local module = require(Modules:WaitForChild("Queue"))
local any_new_result1 = module.Waitter.new()
local module_3_upvr = require(Modules:WaitForChild("UI"):WaitForChild("SceneUI"):WaitForChild("Assets"))
;({}).BackgroundTransparency = 0.6
;({}).BackgroundTransparency = 1
;({}).BackgroundTransparency = 0
local BaseQuart0o1_upvr_2 = module_3_upvr.BaseQuart0o1
local BaseQuart0o3_upvr = module_3_upvr.BaseQuart0o3
local ReverseQuart0o1_upvr_2 = module_3_upvr.ReverseQuart0o1
local random_state_upvr_2 = Random.new()
local clock_upvr_2 = os.clock
local function _() -- Line 33, Named "mul"
	if math.random(1, 2) == 1 then
		return -1
	end
	return 1
end
local function CreateBubble_upvr(arg1, arg2) -- Line 37, Named "CreateBubble"
	--[[ Upvalues[8]:
		[1]: module_2_upvr (readonly)
		[2]: random_state_upvr_2 (readonly)
		[3]: TweenService_upvr (readonly)
		[4]: BaseQuart0o1_upvr_2 (readonly)
		[5]: clock_upvr_2 (readonly)
		[6]: RunService_upvr_2 (readonly)
		[7]: ReverseQuart0o1_upvr_2 (readonly)
		[8]: Debris_upvr_2 (readonly)
	]]
	local any_new_result1_2_upvr = module_2_upvr.new(16681431607)
	any_new_result1_2_upvr.ImageColor3 = arg2
	any_new_result1_2_upvr.SizeConstraint = Enum.SizeConstraint.RelativeXX
	any_new_result1_2_upvr.Rotation = random_state_upvr_2:NextNumber(-15, 15)
	any_new_result1_2_upvr.AnchorPoint = Vector2.one * 0.5
	any_new_result1_2_upvr:AddTag("CutsceneAsset")
	any_new_result1_2_upvr.Parent = arg1
	local any_NextNumber_result1_5 = random_state_upvr_2:NextNumber(0.02, 0.06)
	TweenService_upvr:Create(any_new_result1_2_upvr, BaseQuart0o1_upvr_2, {
		Size = UDim2.fromScale(any_NextNumber_result1_5, any_NextNumber_result1_5);
	}):Play()
	local var151_upvr
	if math.random(1, 2) == 1 then
		var151_upvr = -1
	else
		var151_upvr = 1
	end
	var151_upvr = clock_upvr_2()
	local var153_upvr = var151_upvr + random_state_upvr_2:NextNumber(1.5, 2)
	local udim2_upvr_5 = UDim2.fromScale(random_state_upvr_2:NextNumber(), 1)
	local var155_upvr = random_state_upvr_2:NextNumber(50, 70) * var151_upvr
	local any_NextNumber_result1_17_upvr = random_state_upvr_2:NextNumber(0.004, 0.01)
	local any_Connect_result1_upvr_6 = RunService_upvr_2.Heartbeat:Connect(function() -- Line 56
		--[[ Upvalues[10]:
			[1]: clock_upvr_2 (copied, readonly)
			[2]: var153_upvr (readonly)
			[3]: any_new_result1_2_upvr (readonly)
			[4]: TweenService_upvr (copied, readonly)
			[5]: ReverseQuart0o1_upvr_2 (copied, readonly)
			[6]: Debris_upvr_2 (copied, readonly)
			[7]: var151_upvr (readonly)
			[8]: udim2_upvr_5 (readonly)
			[9]: var155_upvr (readonly)
			[10]: any_NextNumber_result1_17_upvr (readonly)
		]]
		if var153_upvr - 0.5 <= clock_upvr_2() and not any_new_result1_2_upvr:GetAttribute("Removing") then
			any_new_result1_2_upvr:SetAttribute("Removing", true)
			TweenService_upvr:Create(any_new_result1_2_upvr, ReverseQuart0o1_upvr_2, {
				Size = UDim2.new();
			}):Play()
			Debris_upvr_2:AddItem(any_new_result1_2_upvr, 0.5)
		end
		local var158 = (clock_upvr_2() - var151_upvr) * 50
		any_new_result1_2_upvr.Position = udim2_upvr_5 + UDim2.fromScale(0.07 * math.sin(var158 / var155_upvr), var158 * -any_NextNumber_result1_17_upvr)
	end)
	any_new_result1_2_upvr.Destroying:Once(function() -- Line 67
		--[[ Upvalues[1]:
			[1]: any_Connect_result1_upvr_6 (readonly)
		]]
		any_Connect_result1_upvr_6:Disconnect()
	end)
end
local function CreateFog_upvr(arg1, arg2) -- Line 70, Named "CreateFog"
	--[[ Upvalues[8]:
		[1]: module_2_upvr (readonly)
		[2]: random_state_upvr_2 (readonly)
		[3]: TweenService_upvr (readonly)
		[4]: BaseQuart0o1_upvr_2 (readonly)
		[5]: clock_upvr_2 (readonly)
		[6]: RunService_upvr_2 (readonly)
		[7]: ReverseQuart0o1_upvr_2 (readonly)
		[8]: Debris_upvr_2 (readonly)
	]]
	local any_new_result1_upvr_2 = module_2_upvr.new(1946917526)
	any_new_result1_upvr_2.Size = UDim2.fromScale(1, 1)
	any_new_result1_upvr_2.ImageColor3 = arg2
	any_new_result1_upvr_2.SizeConstraint = Enum.SizeConstraint.RelativeXX
	any_new_result1_upvr_2.BackgroundTransparency = 1
	any_new_result1_upvr_2.ImageTransparency = 1
	any_new_result1_upvr_2.Rotation = random_state_upvr_2:NextNumber(-3, 3)
	any_new_result1_upvr_2.AnchorPoint = Vector2.one * 0.5
	any_new_result1_upvr_2:AddTag("CutsceneAsset")
	TweenService_upvr:Create(any_new_result1_upvr_2, BaseQuart0o1_upvr_2, {
		ImageTransparency = 0.7;
	}):Play()
	any_new_result1_upvr_2.Parent = arg1
	local any_NextNumber_result1_22 = random_state_upvr_2:NextNumber(2, 5)
	local var164_upvr
	if var164_upvr == 1 then
		any_NextNumber_result1_22 = -1
	else
		any_NextNumber_result1_22 = 1
	end
	var164_upvr = random_state_upvr_2:NextNumber(2, 5)
	if math.random(1, 2) == 1 then
		var164_upvr = -1
	else
		var164_upvr = 1
	end
	local clock_upvr_2_result1_upvr = clock_upvr_2()
	var164_upvr = clock_upvr_2_result1_upvr + random_state_upvr_2:NextNumber(1.5, 2)
	local udim2_upvr = UDim2.fromScale(random_state_upvr_2:NextNumber(), random_state_upvr_2:NextNumber())
	local var168_upvr = any_NextNumber_result1_22 / 1400 * any_NextNumber_result1_22
	local var169_upvr = var164_upvr / 1400 * var164_upvr
	local any_Connect_result1_upvr_3 = RunService_upvr_2.Heartbeat:Connect(function() -- Line 90
		--[[ Upvalues[10]:
			[1]: clock_upvr_2 (copied, readonly)
			[2]: var164_upvr (readonly)
			[3]: any_new_result1_upvr_2 (readonly)
			[4]: TweenService_upvr (copied, readonly)
			[5]: ReverseQuart0o1_upvr_2 (copied, readonly)
			[6]: Debris_upvr_2 (copied, readonly)
			[7]: clock_upvr_2_result1_upvr (readonly)
			[8]: udim2_upvr (readonly)
			[9]: var168_upvr (readonly)
			[10]: var169_upvr (readonly)
		]]
		if var164_upvr - 0.5 <= clock_upvr_2() and not any_new_result1_upvr_2:GetAttribute("Removing") then
			any_new_result1_upvr_2:SetAttribute("Removing", true)
			TweenService_upvr:Create(any_new_result1_upvr_2, ReverseQuart0o1_upvr_2, {
				ImageTransparency = 1;
			}):Play()
			Debris_upvr_2:AddItem(any_new_result1_upvr_2, 0.5)
		end
		local var171 = (clock_upvr_2() - clock_upvr_2_result1_upvr) * 50
		any_new_result1_upvr_2.Position = udim2_upvr + UDim2.fromScale(var171 * -var168_upvr, var171 * -var169_upvr)
	end)
	any_new_result1_upvr_2.Destroying:Once(function() -- Line 101
		--[[ Upvalues[1]:
			[1]: any_Connect_result1_upvr_3 (readonly)
		]]
		any_Connect_result1_upvr_3:Disconnect()
	end)
end
local function CreateSideFog_upvr(arg1, arg2) -- Line 104, Named "CreateSideFog"
	--[[ Upvalues[8]:
		[1]: module_2_upvr (readonly)
		[2]: random_state_upvr_2 (readonly)
		[3]: TweenService_upvr (readonly)
		[4]: BaseQuart0o1_upvr_2 (readonly)
		[5]: clock_upvr_2 (readonly)
		[6]: RunService_upvr_2 (readonly)
		[7]: ReverseQuart0o1_upvr_2 (readonly)
		[8]: Debris_upvr_2 (readonly)
	]]
	local any_new_result1_7_upvr = module_2_upvr.new(3318493505)
	any_new_result1_7_upvr.Size = UDim2.fromScale(1, random_state_upvr_2:NextNumber(0.15, 0.25))
	any_new_result1_7_upvr.ImageColor3 = arg2
	any_new_result1_7_upvr.SizeConstraint = Enum.SizeConstraint.RelativeXX
	any_new_result1_7_upvr.BackgroundTransparency = 1
	any_new_result1_7_upvr.ImageTransparency = 1
	any_new_result1_7_upvr.Rotation = random_state_upvr_2:NextNumber(-3, 3)
	any_new_result1_7_upvr.AnchorPoint = Vector2.one * 0.5
	any_new_result1_7_upvr:AddTag("CutsceneAsset")
	TweenService_upvr:Create(any_new_result1_7_upvr, BaseQuart0o1_upvr_2, {
		ImageTransparency = 0.7;
	}):Play()
	any_new_result1_7_upvr.Parent = arg1
	local any_NextNumber_result1_3 = random_state_upvr_2:NextNumber(2, 5)
	local var177_upvr
	if var177_upvr == 1 then
		any_NextNumber_result1_3 = -1
	else
		any_NextNumber_result1_3 = 1
	end
	var177_upvr = random_state_upvr_2:NextNumber(2, 5)
	if math.random(1, 2) == 1 then
		var177_upvr = -1
	else
		var177_upvr = 1
	end
	local clock_upvr_2_result1_upvr_2 = clock_upvr_2()
	var177_upvr = clock_upvr_2_result1_upvr_2 + random_state_upvr_2:NextNumber(1.5, 2)
	local udim2_upvr_6 = UDim2.fromScale(random_state_upvr_2:NextNumber(), random_state_upvr_2:NextNumber())
	local var181_upvr = any_NextNumber_result1_3 / 1400 * any_NextNumber_result1_3
	local var182_upvr = var177_upvr / 8000 * var177_upvr
	local any_Connect_result1_upvr_5 = RunService_upvr_2.Heartbeat:Connect(function() -- Line 124
		--[[ Upvalues[10]:
			[1]: clock_upvr_2 (copied, readonly)
			[2]: var177_upvr (readonly)
			[3]: any_new_result1_7_upvr (readonly)
			[4]: TweenService_upvr (copied, readonly)
			[5]: ReverseQuart0o1_upvr_2 (copied, readonly)
			[6]: Debris_upvr_2 (copied, readonly)
			[7]: clock_upvr_2_result1_upvr_2 (readonly)
			[8]: udim2_upvr_6 (readonly)
			[9]: var181_upvr (readonly)
			[10]: var182_upvr (readonly)
		]]
		if var177_upvr - 0.5 <= clock_upvr_2() and not any_new_result1_7_upvr:GetAttribute("Removing") then
			any_new_result1_7_upvr:SetAttribute("Removing", true)
			TweenService_upvr:Create(any_new_result1_7_upvr, ReverseQuart0o1_upvr_2, {
				ImageTransparency = 1;
			}):Play()
			Debris_upvr_2:AddItem(any_new_result1_7_upvr, 0.5)
		end
		local var184 = (clock_upvr_2() - clock_upvr_2_result1_upvr_2) * 50
		any_new_result1_7_upvr.Position = udim2_upvr_6 + UDim2.fromScale(var184 * -var181_upvr, var184 * -var182_upvr)
	end)
	any_new_result1_7_upvr.Destroying:Once(function() -- Line 135
		--[[ Upvalues[1]:
			[1]: any_Connect_result1_upvr_5 (readonly)
		]]
		any_Connect_result1_upvr_5:Disconnect()
	end)
end
local function CreateFish_upvr(arg1) -- Line 138, Named "CreateFish"
	--[[ Upvalues[3]:
		[1]: random_state_upvr_2 (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: Debris_upvr_2 (readonly)
	]]
	local clone_2 = script.Fish:Clone()
	clone_2:AddTag("CutsceneAsset")
	if random_state_upvr_2:NextNumber() <= 0.25 then
		clone_2.Parent = arg1.Parent
	else
		clone_2.Parent = arg1
	end
	clone_2.Position = UDim2.fromScale(1, random_state_upvr_2:NextNumber())
	clone_2.ZIndex = 98
	local any_NextNumber_result1_18 = random_state_upvr_2:NextNumber(0.5, 1)
	clone_2.Size = UDim2.fromScale(0.4 * any_NextNumber_result1_18, 0.5 * any_NextNumber_result1_18)
	local any_NextNumber_result1_16 = random_state_upvr_2:NextNumber(0.9, 1.5)
	TweenService_upvr:Create(clone_2, Tween0o.new(any_NextNumber_result1_16, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
		Position = UDim2.fromScale(-clone_2.Size.X.Scale, clone_2.Position.Y.Scale);
	}):Play()
	Debris_upvr_2:AddItem(clone_2, any_NextNumber_result1_16)
end
local function CreateAnchor_upvr(arg1, arg2, arg3) -- Line 161, Named "CreateAnchor"
	--[[ Upvalues[5]:
		[1]: module_3_upvr (readonly)
		[2]: module_2_upvr (readonly)
		[3]: TweenService_upvr (readonly)
		[4]: BaseQuart0o3_upvr (readonly)
		[5]: Debris_upvr_2 (readonly)
	]]
	module_3_upvr.PlaySFX("Whoosh", {
		Volume = 1 - arg3 + 0.3;
	})
	local any_new_result1_5 = module_2_upvr.new(16681036685)
	any_new_result1_5.Size = UDim2.fromScale(0.8, 0.8)
	any_new_result1_5.ImageColor3 = arg2
	any_new_result1_5.SizeConstraint = Enum.SizeConstraint.RelativeYY
	any_new_result1_5.ImageTransparency = arg3
	any_new_result1_5.AnchorPoint = Vector2.one * 0.5
	any_new_result1_5.Position = UDim2.fromScale(0.5, 0.5)
	any_new_result1_5:AddTag("CutsceneAsset")
	any_new_result1_5.Parent = arg1
	TweenService_upvr:Create(any_new_result1_5, BaseQuart0o3_upvr, {
		Size = UDim2.fromScale(0.7, 0.7);
		ImageTransparency = 1;
	}):Play()
	Debris_upvr_2:AddItem(any_new_result1_5, 2)
end
local function _select(arg1, ...) -- Line 179, Named "select"
	return ({...})[arg1]
end
any_new_result1:insert(module.Process.new(module_2_upvr.new, 16681431607):execute())
any_new_result1:insert(module.Process.new(module_2_upvr.new, 1946917526):execute())
any_new_result1:insert(module.Process.new(module_2_upvr.new, 16681036685):execute())
any_new_result1:insert(module.Process.new(module_2_upvr.new, 3318493505):execute())
any_new_result1:insert(module.Process.new(module_2_upvr.new, 1195495135):execute())
for _, v in script:GetDescendants() do
	if v:IsA("ImageLabel") then
		local Image_2 = v.Image
		if 0 < #Image_2 then
			any_new_result1:insert(module.Process.new(module_2_upvr.new, Image_2):execute())
		end
	end
end
any_new_result1:executeAll():await():destroy()
local ReverseQuart0o2_upvr = module_3_upvr.ReverseQuart0o2
local ReverseQuart0o3_upvr = module_3_upvr.ReverseQuart0o3
local BaseQuart0o2_upvr = module_3_upvr.BaseQuart0o2
return function(arg1, arg2) -- Line 205
	--[[ Upvalues[15]:
		[1]: module_3_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: BaseQuart0o3_upvr (readonly)
		[4]: CreateBubble_upvr (readonly)
		[5]: CreateSideFog_upvr (readonly)
		[6]: CreateFog_upvr (readonly)
		[7]: CreateFish_upvr (readonly)
		[8]: ReverseQuart0o2_upvr (readonly)
		[9]: CreateAnchor_upvr (readonly)
		[10]: ReverseQuart0o3_upvr (readonly)
		[11]: random_state_upvr_2 (readonly)
		[12]: BaseQuart0o1_upvr_2 (readonly)
		[13]: ReverseQuart0o1_upvr_2 (readonly)
		[14]: BaseQuart0o2_upvr (readonly)
		[15]: Debris_upvr_2 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local Star2 = module_3_upvr.Star2
	local BlackBoard_upvr_2 = module_3_upvr.BlackBoard
	local Colorboard_upvr = module_3_upvr.Colorboard
	local StarSpinSpeed_2 = module_3_upvr.StarSpinSpeed
	local var219_upvw = true
	local current_thread_upvr = coroutine.running()
	module_3_upvr.BlackBoardAppear:Play()
	Colorboard_upvr.Image = "rbxassetid://12353440665"
	module_3_upvr.ApplyLabelColor(Star2, arg2)
	module_3_upvr.ApplyLabelColor(Colorboard_upvr, arg2)
	module_3_upvr.PlaySFX("OneMilPlus")
	Star2.Size = UDim2.fromScale(1.5, 1.5)
	Star2.Visible = true
	StarSpinSpeed_2.Value = 5
	TweenService_upvr:Create(StarSpinSpeed_2, BaseQuart0o3_upvr, {
		Value = 1;
	}):Play()
	TweenService_upvr:Create(Star2, BaseQuart0o3_upvr, {
		Size = UDim2.fromScale(0.6, 0.6);
	}):Play()
	local function _(arg1_3) -- Line 231, Named "IsActive"
		--[[ Upvalues[1]:
			[1]: current_thread_upvr (readonly)
		]]
		local task_wait_result1_2 = task.wait(arg1_3)
		if task_wait_result1_2 then
			if coroutine.status(current_thread_upvr) == "dead" then
				task_wait_result1_2 = false
			else
				task_wait_result1_2 = true
			end
		end
		return task_wait_result1_2
	end
	task.defer(function() -- Line 235
		--[[ Upvalues[4]:
			[1]: current_thread_upvr (readonly)
			[2]: var219_upvw (read and write)
			[3]: CreateBubble_upvr (copied, readonly)
			[4]: BlackBoard_upvr_2 (readonly)
		]]
		while true do
			local var225
			var225 = var225(0.05)
			if var225 then
				if coroutine.status(current_thread_upvr) == "dead" then
					var225 = false
				else
					var225 = true
				end
			end
			if not var225 then break end
			var225 = var219_upvw
			if not var225 then break end
			var225 = CreateBubble_upvr
			var225(BlackBoard_upvr_2, Color3.fromRGB(47, 61, 255))
		end
	end)
	task.defer(function() -- Line 241
		--[[ Upvalues[5]:
			[1]: current_thread_upvr (readonly)
			[2]: var219_upvw (read and write)
			[3]: CreateSideFog_upvr (copied, readonly)
			[4]: BlackBoard_upvr_2 (readonly)
			[5]: CreateFog_upvr (copied, readonly)
		]]
		while true do
			local var227
			var227 = var227(0.2)
			if var227 then
				if coroutine.status(current_thread_upvr) == "dead" then
					var227 = false
				else
					var227 = true
				end
			end
			if not var227 then break end
			var227 = var219_upvw
			if not var227 then break end
			var227 = CreateSideFog_upvr
			var227(BlackBoard_upvr_2, Color3.fromRGB(47, 61, 255))
			var227 = CreateFog_upvr
			var227(BlackBoard_upvr_2, Color3.fromRGB(47, 61, 255))
		end
	end)
	local var229_upvw = true
	task.defer(function() -- Line 248
		--[[ Upvalues[4]:
			[1]: current_thread_upvr (readonly)
			[2]: var229_upvw (read and write)
			[3]: CreateFish_upvr (copied, readonly)
			[4]: Colorboard_upvr (readonly)
		]]
		while true do
			local var230
			var230 = var230(0.1)
			if var230 then
				if coroutine.status(current_thread_upvr) == "dead" then
					var230 = false
				else
					var230 = true
				end
			end
			if not var230 then break end
			var230 = var229_upvw
			if not var230 then break end
			var230 = CreateFish_upvr
			var230(Colorboard_upvr)
		end
	end)
	task.wait(3.23)
	TweenService_upvr:Create(StarSpinSpeed_2, ReverseQuart0o2_upvr, {
		Value = 4;
	}):Play()
	TweenService_upvr:Create(Star2, ReverseQuart0o2_upvr, {
		Size = UDim2.fromScale(1.5, 1.5);
	}):Play()
	task.wait(4)
	module_3_upvr.ColorboardAppear:Play()
	CreateAnchor_upvr(BlackBoard_upvr_2, Color3.fromRGB(47, 61, 255), 0.6)
	task.wait(1)
	CreateAnchor_upvr(BlackBoard_upvr_2, Color3.fromRGB(47, 61, 255), 0.3)
	task.wait(0.7)
	local clone_7_upvr = script:WaitForChild("Eyes"):Clone()
	clone_7_upvr:AddTag("CutsceneAsset")
	clone_7_upvr.Parent = Colorboard_upvr
	TweenService_upvr:Create(clone_7_upvr.RightEye, ReverseQuart0o3_upvr, {
		Rotation = -25;
		Size = UDim2.fromScale(0.4, 0.45);
	}):Play()
	TweenService_upvr:Create(clone_7_upvr.LeftEye, ReverseQuart0o3_upvr, {
		Rotation = 25;
		Size = UDim2.fromScale(0.4, 0.45);
	}):Play()
	task.wait(0.3)
	var229_upvw = false
	clone_7_upvr.LeftEye.ImageColor3 = Color3.new(1, 1, 1)
	clone_7_upvr.RightEye.ImageColor3 = Color3.new(1, 1, 1)
	module_3_upvr.PlaySFX("Ambient"):Destroy()
	module_3_upvr.PlaySFX(script.FinalSound1)
	BlackBoard_upvr_2.BackgroundTransparency = 1
	var219_upvw = false
	Star2.Visible = false
	Colorboard_upvr.Image = "rbxassetid://1195495135"
	Colorboard_upvr.ImageColor3 = Color3.new()
	task.defer(function() -- Line 296
		--[[ Upvalues[2]:
			[1]: clone_7_upvr (readonly)
			[2]: random_state_upvr_2 (copied, readonly)
		]]
		for _ = 1, 3 do
			clone_7_upvr.Position = UDim2.fromScale(0.5, 0.5) + UDim2.fromScale(random_state_upvr_2:NextNumber(-0.015, 0.015), random_state_upvr_2:NextNumber(-0.015, 0.015))
			task.wait(0.02)
		end
		clone_7_upvr.Position = UDim2.fromScale(0.5, 0.5)
	end)
	module_3_upvr.PlaySFX(script.EyesOpened)
	TweenService_upvr:Create(clone_7_upvr.RightFlash, BaseQuart0o1_upvr_2, {
		Size = UDim2.fromScale(2, 4);
		ImageTransparency = 1;
	}):Play()
	TweenService_upvr:Create(clone_7_upvr.LeftFlash, BaseQuart0o1_upvr_2, {
		Size = UDim2.fromScale(2, 4);
		ImageTransparency = 1;
	}):Play()
	TweenService_upvr:Create(clone_7_upvr.RightEye, BaseQuart0o1_upvr_2, {
		Rotation = -20;
		Size = UDim2.fromScale(0.4, 0.4);
	}):Play()
	TweenService_upvr:Create(clone_7_upvr.LeftEye, BaseQuart0o1_upvr_2, {
		Rotation = 20;
		Size = UDim2.fromScale(0.4, 0.4);
	}):Play()
	TweenService_upvr:Create(clone_7_upvr, BaseQuart0o1_upvr_2, {
		Size = UDim2.fromScale(1, 1);
	}):Play()
	task.wait(0.5)
	TweenService_upvr:Create(clone_7_upvr.RightEye, ReverseQuart0o1_upvr_2, {
		Size = UDim2.fromScale(0.4, 0.3);
		ImageTransparency = 1;
	}):Play()
	TweenService_upvr:Create(clone_7_upvr.LeftEye, ReverseQuart0o1_upvr_2, {
		Size = UDim2.fromScale(0.4, 0.3);
		ImageTransparency = 1;
	}):Play()
	TweenService_upvr:Create(clone_7_upvr, ReverseQuart0o1_upvr_2, {
		Size = UDim2.fromScale(0.7, 0.7);
	}):Play()
	task.wait(0.3)
	local var247_upvw = true
	task.defer(function() -- Line 326
		--[[ Upvalues[7]:
			[1]: current_thread_upvr (readonly)
			[2]: var247_upvw (read and write)
			[3]: Colorboard_upvr (readonly)
			[4]: random_state_upvr_2 (copied, readonly)
			[5]: TweenService_upvr (copied, readonly)
			[6]: BaseQuart0o2_upvr (copied, readonly)
			[7]: clone_7_upvr (readonly)
		]]
		while true do
			local var248
			var248 = var248(0.03)
			if var248 then
				if coroutine.status(current_thread_upvr) == "dead" then
					var248 = false
				else
					var248 = true
				end
			end
			if not var248 then break end
			var248 = var247_upvw
			if not var248 then break end
			var248 = script.Shock:Clone()
			var248.Parent = Colorboard_upvr
			local any_NextNumber_result1_6 = random_state_upvr_2:NextNumber(0.7, 0.9)
			var248.Size = UDim2.fromScale(any_NextNumber_result1_6, any_NextNumber_result1_6)
			var248.Rotation = random_state_upvr_2:NextNumber() * 360
			local any_NextNumber_result1 = random_state_upvr_2:NextNumber(1.4, 1.5)
			TweenService_upvr:Create(var248, BaseQuart0o2_upvr, {
				Size = UDim2.fromScale(any_NextNumber_result1, any_NextNumber_result1);
				ImageTransparency = 1;
			}):Play()
			clone_7_upvr.Position = UDim2.fromScale(0.5, 0.5) + UDim2.fromScale(math.random(-15, 15) / 1000, math.random(-15, 15) / 1000)
		end
	end)
	task.wait(0.7)
	for _ = 1, 30 do
		local clone_4 = script.Flash:Clone()
		clone_4.Position = UDim2.fromScale(random_state_upvr_2:NextNumber(), random_state_upvr_2:NextNumber())
		clone_4.Rotation = random_state_upvr_2:NextNumber() * 360
		clone_4.Parent = Colorboard_upvr
		local any_NextNumber_result1_12 = random_state_upvr_2:NextNumber(0.2, 0.5)
		TweenService_upvr:Create(clone_4, Tween0o.new(any_NextNumber_result1_12, Enum.EasingStyle.Quart), {
			Size = UDim2.fromScale(0, 5);
		}):Play()
		Debris_upvr_2:AddItem(clone_4, any_NextNumber_result1_12)
	end
	for _ = 1, 30 do
		local clone_5 = script.Flash:Clone()
		clone_5.Parent = Colorboard_upvr
		local any_NextNumber_result1_14 = random_state_upvr_2:NextNumber(0.2, 0.5)
		TweenService_upvr:Create(clone_5, Tween0o.new(any_NextNumber_result1_14, Enum.EasingStyle.Quart), {
			Size = UDim2.fromScale(0, 5);
		}):Play()
		Debris_upvr_2:AddItem(clone_5, any_NextNumber_result1_14)
		local var258 = 0.5
		if random_state_upvr_2:NextNumber() <= var258 then
			clone_5.Rotation = 90
			var258 = random_state_upvr_2:NextNumber()
			if math.random(1, 2) == 1 then
			else
			end
			clone_5.Position = UDim2.fromScale(var258, 1)
		else
			if math.random(1, 2) == 1 then
				var258 = -1
			else
				var258 = 1
			end
			clone_5.Position = UDim2.fromScale(var258, random_state_upvr_2:NextNumber())
		end
	end
	module_3_upvr.PlaySFX(script.GlassBreak1)
	local clone_10 = script.Cracks:Clone()
	clone_10.Parent = Colorboard_upvr
	TweenService_upvr:Create(clone_10, BaseQuart0o1_upvr_2, {
		Size = UDim2.fromScale(1.3, 1.3);
	}):Play()
	Debris_upvr_2:AddItem(clone_10, 0.5)
	task.wait(0.5)
	module_3_upvr.PlaySFX(script.Roar):Destroy()
	for _ = 1, 30 do
		local clone = script.Flash:Clone()
		clone.Parent = Colorboard_upvr
		local any_NextNumber_result1_8 = random_state_upvr_2:NextNumber(0.2, 0.5)
		TweenService_upvr:Create(clone, Tween0o.new(any_NextNumber_result1_8, Enum.EasingStyle.Quart), {
			Size = UDim2.fromScale(0, 5);
		}):Play()
		Debris_upvr_2:AddItem(clone, any_NextNumber_result1_8)
		local var264 = 0.5
		if random_state_upvr_2:NextNumber() <= var264 then
			clone.Rotation = 90
			var264 = random_state_upvr_2:NextNumber()
			if math.random(1, 2) == 1 then
			else
			end
			clone.Position = UDim2.fromScale(var264, 1)
		else
			if math.random(1, 2) == 1 then
				var264 = -1
			else
				var264 = 1
			end
			clone.Position = UDim2.fromScale(var264, random_state_upvr_2:NextNumber())
		end
	end
	module_3_upvr.PlaySFX(script.GlassBreak2)
	module_3_upvr.PlaySFX(script.GlassBreak3)
	clone_7_upvr:Destroy()
	var247_upvw = false
	module_3_upvr.ColorboardDisappear:Play()
	module_3_upvr.SetShake(0.02, BaseQuart0o3_upvr)
end