-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-15 15:36:15
-- Luau version 6, Types version 3
-- Time taken: 0.008836 seconds

local TweenService_upvr = game:GetService("TweenService")
local Tween0o_new_result1_upvr_4 = Tween0o.new(0.5, Enum.EasingStyle.Quart)
local Tween0o_new_result1_upvr_2 = Tween0o.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
local Tween0o_new_result1_upvr = Tween0o.new(2, Enum.EasingStyle.Quart)
local RunService_upvr = game:GetService("RunService")
local Modules = game:GetService("ReplicatedStorage"):WaitForChild("Modules")
;({}).BackgroundTransparency = 0.6
;({}).BackgroundTransparency = 1
;({}).BackgroundTransparency = 0
local Debris_upvr = game:GetService("Debris")
local function CreateFog_upvr(arg1, arg2) -- Line 22, Named "CreateFog"
	--[[ Upvalues[5]:
		[1]: TweenService_upvr (readonly)
		[2]: Tween0o_new_result1_upvr_4 (readonly)
		[3]: Tween0o_new_result1_upvr_2 (readonly)
		[4]: Debris_upvr (readonly)
		[5]: RunService_upvr (readonly)
	]]
	local ImageLabel_3_upvr = Instance.new("ImageLabel")
	ImageLabel_3_upvr.Size = UDim2.fromScale(1, 1)
	ImageLabel_3_upvr.Image = "rbxassetid://1946917526"
	ImageLabel_3_upvr.ImageColor3 = arg2
	ImageLabel_3_upvr.SizeConstraint = Enum.SizeConstraint.RelativeXX
	ImageLabel_3_upvr.BackgroundTransparency = 1
	ImageLabel_3_upvr.ImageTransparency = 1
	ImageLabel_3_upvr.ZIndex = 12
	ImageLabel_3_upvr.Rotation = math.random(-3, 3)
	ImageLabel_3_upvr.AnchorPoint = Vector2.new(0.5, 0.5)
	TweenService_upvr:Create(ImageLabel_3_upvr, Tween0o_new_result1_upvr_4, {
		ImageTransparency = 0.8;
	}):Play()
	local randint = math.random(2, 5)
	local var12
	if var12 == 1 then
		randint = -1
	else
		randint = 1
	end
	var12 = math.random(2, 5)
	if math.random(1, 2) == 1 then
		var12 = -1
	else
		var12 = 1
	end
	ImageLabel_3_upvr.Parent = arg1
	local udim2_upvr = UDim2.fromScale(math.random(0, 100) / 100, math.random(0, 100) / 100)
	local var14_upvr = randint / 1400 * randint
	local var15_upvr = var12 / 1400 * var12
	function var12() -- Line 38
		--[[ Upvalues[8]:
			[1]: ImageLabel_3_upvr (readonly)
			[2]: TweenService_upvr (copied, readonly)
			[3]: Tween0o_new_result1_upvr_2 (copied, readonly)
			[4]: Debris_upvr (copied, readonly)
			[5]: udim2_upvr (readonly)
			[6]: var14_upvr (readonly)
			[7]: var15_upvr (readonly)
			[8]: RunService_upvr (copied, readonly)
		]]
		local time_result1 = time()
		while ImageLabel_3_upvr and ImageLabel_3_upvr.Parent do
			if time_result1 + math.random(15, 20) / 10 - 0.5 <= time() and not ImageLabel_3_upvr:GetAttribute("Removing") then
				ImageLabel_3_upvr:SetAttribute("Removing", true)
				TweenService_upvr:Create(ImageLabel_3_upvr, Tween0o_new_result1_upvr_2, {
					ImageTransparency = 1;
				}):Play()
				Debris_upvr:AddItem(ImageLabel_3_upvr, 0.5)
			end
			local var18 = (time() - time_result1) * 50
			ImageLabel_3_upvr.Position = udim2_upvr + UDim2.fromScale(var18 * -var14_upvr, var18 * -var15_upvr)
			RunService_upvr.Heartbeat:Wait()
		end
	end
	coroutine.wrap(var12)()
end
local function _(arg1, arg2) -- Line 55, Named "positionStarRandomly"
	arg1.Position = arg2 + Vector3.new(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
end
local function animateShootingStar_upvr(arg1, arg2) -- Line 62, Named "animateShootingStar"
	--[[ Upvalues[1]:
		[1]: TweenService_upvr (readonly)
	]]
	local seed = math.random()
	local seed_2 = math.random()
	local maximum = math.max(arg2.AbsoluteSize.X, arg2.AbsoluteSize.Y)
	arg1.Position = UDim2.new(seed, maximum, seed_2, -maximum)
	task.wait(math.random() * 5)
	TweenService_upvr:Create(arg1, Tween0o.new(math.random(300, 500) / 100, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, -1), {
		Position = UDim2.new(seed, -maximum, seed_2, maximum);
	}):Play()
end
local tbl_upvr = {}
local function createShootingStar_upvr(arg1) -- Line 83, Named "createShootingStar"
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: animateShootingStar_upvr (readonly)
	]]
	local Frame_2 = Instance.new("Frame", arg1)
	table.insert(tbl_upvr, Frame_2)
	Frame_2.BackgroundTransparency = 1
	Frame_2.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame_2.ZIndex = 10
	Frame_2.Size = UDim2.fromScale(0.1, 0.1)
	Frame_2.SizeConstraint = Enum.SizeConstraint.RelativeXX
	Frame_2.Position = UDim2.new(0.99, 0.01)
	local ImageLabel_5 = Instance.new("ImageLabel")
	ImageLabel_5.Position = UDim2.fromScale(0.2, -0.2)
	ImageLabel_5.ZIndex = 10
	ImageLabel_5.Size = UDim2.fromScale(2, 0.1)
	ImageLabel_5.Rotation = -45
	ImageLabel_5.BackgroundTransparency = 1
	ImageLabel_5.Image = "rbxassetid://18244764764"
	ImageLabel_5.ImageColor3 = Color3.fromRGB(219, 253, 255)
	ImageLabel_5.ImageTransparency = 0.6
	ImageLabel_5.Parent = Frame_2
	animateShootingStar_upvr(Frame_2, arg1)
end
local function animateStar_upvr(arg1) -- Line 105, Named "animateStar"
	--[[ Upvalues[1]:
		[1]: TweenService_upvr (readonly)
	]]
	arg1.Rotation = math.random(1, 360)
	local tbl = {
		ImageTransparency = 0;
	}
	local var27 = math.random() * 3 / 100
	tbl.Size = UDim2.fromScale(var27, var27)
	local any_Create_result1 = TweenService_upvr:Create(arg1, Tween0o.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out, -1, true), tbl)
	while arg1 and arg1.Parent do
		task.wait(math.random() * 5)
		any_Create_result1:Play()
		any_Create_result1.Completed:Wait()
	end
end
local function CreateStar_upvr(arg1) -- Line 128, Named "CreateStar"
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: animateStar_upvr (readonly)
	]]
	local ImageLabel = Instance.new("ImageLabel")
	table.insert(tbl_upvr, ImageLabel)
	ImageLabel.Size = UDim2.fromScale(0, 0)
	ImageLabel.Image = "rbxassetid://17068400400"
	ImageLabel.ImageColor3 = Color3.new(0.7, 0.9, 1)
	ImageLabel.ImageTransparency = 0.95
	ImageLabel.SizeConstraint = Enum.SizeConstraint.RelativeXX
	ImageLabel.BackgroundTransparency = 1
	ImageLabel.ZIndex = 10
	ImageLabel.Rotation = math.random(-3, 3)
	ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
	ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel.Name = "Star"
	ImageLabel.Position = UDim2.fromScale(math.random(), math.random())
	ImageLabel.Parent = arg1
	animateStar_upvr(ImageLabel)
end
local function _(arg1, arg2, arg3) -- Line 147, Named "CreateMark"
	--[[ Upvalues[3]:
		[1]: TweenService_upvr (readonly)
		[2]: Tween0o_new_result1_upvr (readonly)
		[3]: Debris_upvr (readonly)
	]]
	script:WaitForChild("Whoosh").Volume = 1 - arg3 + 0.3
	script:WaitForChild("Whoosh"):Play()
	local ImageLabel_4 = Instance.new("ImageLabel", arg1)
	ImageLabel_4.Size = UDim2.fromScale(0.8, 0.8)
	ImageLabel_4.Image = "rbxassetid://1238638694"
	ImageLabel_4.ImageColor3 = arg2
	ImageLabel_4.SizeConstraint = Enum.SizeConstraint.RelativeYY
	ImageLabel_4.BackgroundTransparency = 1
	ImageLabel_4.ImageTransparency = arg3
	ImageLabel_4.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel_4.Position = UDim2.fromScale(0.5, 0.5)
	TweenService_upvr:Create(ImageLabel_4, Tween0o_new_result1_upvr, {
		Size = UDim2.fromScale(0.7, 0.7);
		ImageTransparency = 1;
	}):Play()
	Debris_upvr:AddItem(ImageLabel_4, 2)
end
local function CreateParticleEmit_upvr(arg1) -- Line 162, Named "CreateParticleEmit"
	--[[ Upvalues[4]:
		[1]: TweenService_upvr (readonly)
		[2]: Tween0o_new_result1_upvr_4 (readonly)
		[3]: Tween0o_new_result1_upvr_2 (readonly)
		[4]: RunService_upvr (readonly)
	]]
	if #arg1.InUse == #arg1.Open then
	else
		local any_GetUI_result1_upvr = arg1:GetUI()
		local var33 = math.random(5, 20) / 500
		TweenService_upvr:Create(any_GetUI_result1_upvr, Tween0o_new_result1_upvr_4, {
			Size = UDim2.fromScale(var33, var33);
		}):Play()
		local var35 = 50
		if math.random(1, 2) == 1 then
			var35 = -1
		else
			var35 = 1
		end
		local udim2_upvr_2 = UDim2.fromScale(math.random(0, 100) / 100, 1)
		local var38_upvr = math.random(var35, 70) * var35
		local var39_upvr = var33 / 5
		coroutine.wrap(function() -- Line 172
			--[[ Upvalues[8]:
				[1]: any_GetUI_result1_upvr (readonly)
				[2]: TweenService_upvr (copied, readonly)
				[3]: Tween0o_new_result1_upvr_2 (copied, readonly)
				[4]: arg1 (readonly)
				[5]: udim2_upvr_2 (readonly)
				[6]: var38_upvr (readonly)
				[7]: var39_upvr (readonly)
				[8]: RunService_upvr (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [97] 80. Error Block 13 start (CF ANALYSIS FAILED)
			RunService_upvr.Heartbeat:Wait()
			-- KONSTANTERROR: [97] 80. Error Block 13 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [11] 10. Error Block 2 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [11] 10. Error Block 2 end (CF ANALYSIS FAILED)
		end)()
	end
end
local module_upvr_2 = require(Modules:WaitForChild("UI"):WaitForChild("SceneUI"):WaitForChild("Assets"))
local module_upvr = require(Modules:WaitForChild("_UiCache"))
local StarterGui_upvr = game:GetService("StarterGui")
local Tween0o_new_result1_upvr_5 = Tween0o.new(6, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
local Tween0o_new_result1_upvr_3 = Tween0o.new(1, Enum.EasingStyle.Quart)
return function(arg1, arg2) -- Line 202
	--[[ Upvalues[12]:
		[1]: module_upvr_2 (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: module_upvr (readonly)
		[4]: StarterGui_upvr (readonly)
		[5]: CreateFog_upvr (readonly)
		[6]: Tween0o_new_result1_upvr (readonly)
		[7]: CreateStar_upvr (readonly)
		[8]: createShootingStar_upvr (readonly)
		[9]: CreateParticleEmit_upvr (readonly)
		[10]: Tween0o_new_result1_upvr_5 (readonly)
		[11]: tbl_upvr (readonly)
		[12]: Tween0o_new_result1_upvr_3 (readonly)
	]]
	local BlackBoard_upvr = module_upvr_2.BlackBoard
	local Colorboard = module_upvr_2.Colorboard
	local Star = module_upvr_2.Star
	local current_thread_upvr = coroutine.running()
	local StarSpinSpeed = module_upvr_2.StarSpinSpeed
	local ImageLabel_2 = Instance.new("ImageLabel")
	ImageLabel_2.Size = UDim2.new()
	ImageLabel_2.Image = "rbxassetid://8030760338"
	ImageLabel_2.ImageColor3 = Color3.new(0.7, 0.9, 1)
	ImageLabel_2.SizeConstraint = Enum.SizeConstraint.RelativeXX
	ImageLabel_2.BackgroundTransparency = 1
	ImageLabel_2.Rotation = math.random(-15, 15)
	ImageLabel_2.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel_2.ZIndex = 13
	module_upvr_2.ApplyLabelColor(Star, arg2)
	module_upvr_2.ApplyLabelColor(Colorboard, arg2)
	local any_new_result1_upvr = module_upvr.new(ImageLabel_2, 60, BlackBoard_upvr)
	local Frame = Instance.new("Frame", BlackBoard_upvr)
	Frame.Size = UDim2.fromScale(1.4142135623730951, 1.4142135623730951)
	Frame.SizeConstraint = Enum.SizeConstraint.RelativeXX
	Frame.Position = UDim2.fromScale(0.5, 0.5)
	Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame.BackgroundTransparency = 1
	local UIGradient_upvr = Instance.new("UIGradient", Colorboard)
	local Color3_fromHex_result1_upvr = Color3.fromHex("#dafaff")
	local class_UIGradient_upvr = Star:FindFirstChildOfClass("UIGradient")
	StarterGui_upvr:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
	arg2.Visible = false
	module_upvr_2.BlackBoardAppear:Play()
	Colorboard.Image = "http://www.roblox.com/asset/?id=12353440665"
	Colorboard.ImageTransparency = 1
	Colorboard.ImageColor3 = Color3.new(0.7, 0.9, 1)
	UIGradient_upvr.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 0)})
	Colorboard.BackgroundColor3 = Color3.new(0.7, 0.9, 1)
	Star.ImageColor3 = Colorboard.ImageColor3
	module_upvr_2.PlaySFX("OneMilPlus")
	Star.Size = UDim2.fromScale(1.5, 1.5)
	Star.Image = "rbxassetid://17068400400"
	Star.Visible = true
	local var73_upvw = true
	coroutine.wrap(function() -- Line 280
		--[[ Upvalues[3]:
			[1]: var73_upvw (read and write)
			[2]: CreateFog_upvr (copied, readonly)
			[3]: BlackBoard_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 8 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 8 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 5. Error Block 9 start (CF ANALYSIS FAILED)
		if var73_upvw then
			CreateFog_upvr(BlackBoard_upvr, Color3.new(0.7, 0.9, 1))
			-- KONSTANTWARNING: GOTO [18] #17
		end
		-- KONSTANTERROR: [5] 5. Error Block 9 end (CF ANALYSIS FAILED)
	end)()
	TweenService_upvr:Create(Frame, Tween0o.new(20, Enum.EasingStyle.Quint), {
		Rotation = 90;
	}):Play()
	TweenService_upvr:Create(Star, Tween0o.new(1), {
		ImageColor3 = Color3.new(0.7, 0.8, 1);
	}):Play()
	TweenService_upvr:Create(Star, Tween0o_new_result1_upvr, {
		Size = UDim2.fromScale(0.6, 0.6);
	}):Play()
	StarSpinSpeed.Value = 5
	TweenService_upvr:Create(StarSpinSpeed, Tween0o_new_result1_upvr, {
		Value = 1;
	}):Play()
	task.spawn(function() -- Line 247, Named "color_change"
		--[[ Upvalues[3]:
			[1]: Color3_fromHex_result1_upvr (readonly)
			[2]: UIGradient_upvr (readonly)
			[3]: class_UIGradient_upvr (readonly)
		]]
		for i = 60, 0, -1 do
			local var68 = (60 - i) / 60
			UIGradient_upvr.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1 - var68), NumberSequenceKeypoint.new(1, 0)})
			class_UIGradient_upvr.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0):Lerp(Color3_fromHex_result1_upvr, var68)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255):Lerp(Color3_fromHex_result1_upvr, var68))})
			task.wait(0.01)
		end
	end)
	for _ = 1, 100 do
		task.spawn(CreateStar_upvr, Frame)
	end
	for _ = 1, 20 do
		task.spawn(createShootingStar_upvr, BlackBoard_upvr)
	end
	local function _(arg1_2) -- Line 304, Named "IsActive"
		--[[ Upvalues[1]:
			[1]: current_thread_upvr (readonly)
		]]
		local task_wait_result1 = task.wait(arg1_2)
		if task_wait_result1 then
			if coroutine.status(current_thread_upvr) == "dead" then
				task_wait_result1 = false
			else
				task_wait_result1 = true
			end
		end
		return task_wait_result1
	end
	task.defer(function() -- Line 308
		--[[ Upvalues[3]:
			[1]: current_thread_upvr (readonly)
			[2]: CreateParticleEmit_upvr (copied, readonly)
			[3]: any_new_result1_upvr (readonly)
		]]
		while true do
			local var80
			var80 = var80(0.05)
			if var80 then
				if coroutine.status(current_thread_upvr) == "dead" then
					var80 = false
				else
					var80 = true
				end
			end
			if not var80 then break end
			var80 = CreateParticleEmit_upvr
			var80(any_new_result1_upvr)
		end
	end)
	task.wait(3.23)
	TweenService_upvr:Create(StarSpinSpeed, Tween0o_new_result1_upvr_5, {
		Value = 4;
	}):Play()
	TweenService_upvr:Create(Star, Tween0o_new_result1_upvr_5, {
		Size = UDim2.fromScale(1.5, 1.5);
	}):Play()
	task.wait(4)
	arg2.Visible = true
	TweenService_upvr:Create(Colorboard, Tween0o.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
		ImageTransparency = 0;
	}):Play()
	task.wait(1)
	task.wait(1)
	module_upvr_2.PlaySFX(script:WaitForChild("Ambient")):Destroy()
	var73_upvw = false
	Star.Visible = false
	Colorboard.Image = "http://www.roblox.com/asset/?id=1195495135"
	Colorboard.ImageColor3 = Color3.new(1, 1, 1)
	for _, v in tbl_upvr do
		v:Destroy()
	end
	TweenService_upvr:Create(Colorboard, Tween0o.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
		ImageTransparency = 1;
	}):Play()
	module_upvr_2.SetShake(0.02, Tween0o_new_result1_upvr)
	arg2.Position = UDim2.fromScale(0.5, 0.5)
	arg2.Size = UDim2.fromScale(0.6, 0.2)
	TweenService_upvr:Create(arg2, Tween0o_new_result1_upvr_3, {
		Size = UDim2.fromScale(0.4, 0.1);
	}):Play()
	BlackBoard_upvr.BackgroundTransparency = 1
	Colorboard.BackgroundColor3 = Colorboard.BackgroundColor3
	Colorboard.BackgroundTransparency = Colorboard.BackgroundTransparency
	Frame:Destroy()
	task.delay(2, function() -- Line 354
		--[[ Upvalues[1]:
			[1]: any_new_result1_upvr (readonly)
		]]
		any_new_result1_upvr:Dispose()
	end)
end
