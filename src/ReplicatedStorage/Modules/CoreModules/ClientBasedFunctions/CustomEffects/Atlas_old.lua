local TweenService_upvr = game:GetService("TweenService")
local Tween0o_new_result1_upvr_4 = Tween0o.new(0.5, Enum.EasingStyle.Quart)
local Tween0o_new_result1_upvr_2 = Tween0o.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
local Tween0o_new_result1_upvr = Tween0o.new(2, Enum.EasingStyle.Quart)
local RunService_upvr = game:GetService("RunService")
local tbl_upvr_3 = {
	BackgroundTransparency = 0.6;
}
local tbl_upvr_2 = {
	BackgroundTransparency = 1;
}
local tbl_upvr = {
	BackgroundTransparency = 0;
}
local Debris_upvr = game:GetService("Debris")
local function v26_upvr(arg1, arg2, arg3) -- Line 24, Named "v26"
	--[[ Upvalues[5]:
		[1]: TweenService_upvr (readonly)
		[2]: Tween0o_new_result1_upvr_4 (readonly)
		[3]: Tween0o_new_result1_upvr_2 (readonly)
		[4]: Debris_upvr (readonly)
		[5]: RunService_upvr (readonly)
	]]
	local ImageLabel_upvr = Instance.new("ImageLabel", arg1)
	ImageLabel_upvr.Image = "rbxassetid://6909741538"
	ImageLabel_upvr.ImageColor3 = arg2
	ImageLabel_upvr.SizeConstraint = Enum.SizeConstraint.RelativeXX
	ImageLabel_upvr.BackgroundTransparency = 1
	local var11 = math.random(2, 6) / 100
	ImageLabel_upvr.Rotation = math.random(-15, 15)
	ImageLabel_upvr.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel_upvr.Size = UDim2.fromScale(var11, var11)
	ImageLabel_upvr.ImageTransparency = 1
	TweenService_upvr:Create(ImageLabel_upvr, Tween0o_new_result1_upvr_4, {
		ImageTransparency = 0;
	}):Play()
	local var13 = 50
	if math.random(1, 2) == 1 then
		var13 = -1
	else
		var13 = 1
	end
	local udim2_upvr_2 = UDim2.fromScale(math.random(0, 100) / 100, math.random(20, 100) / 100)
	local var16_upvr = math.random(2, 5) / 1000
	coroutine.wrap(function() -- Line 41
		--[[ Upvalues[7]:
			[1]: ImageLabel_upvr (readonly)
			[2]: TweenService_upvr (copied, readonly)
			[3]: Tween0o_new_result1_upvr_2 (copied, readonly)
			[4]: Debris_upvr (copied, readonly)
			[5]: udim2_upvr_2 (readonly)
			[6]: var16_upvr (readonly)
			[7]: RunService_upvr (copied, readonly)
		]]
		local time_result1_2 = time()
		while ImageLabel_upvr and ImageLabel_upvr.Parent do
			if time_result1_2 + math.random(15, 20) / 10 - 0.5 <= time() and not ImageLabel_upvr:GetAttribute("Removing") then
				ImageLabel_upvr:SetAttribute("Removing", true)
				TweenService_upvr:Create(ImageLabel_upvr, Tween0o_new_result1_upvr_2, {
					Size = UDim2.fromScale(0, 0);
				}):Play()
				Debris_upvr:AddItem(ImageLabel_upvr, 0.5)
			end
			ImageLabel_upvr.Position = udim2_upvr_2 + UDim2.fromScale(0, (time() - time_result1_2) * 50 * -var16_upvr)
			RunService_upvr.Heartbeat:Wait()
		end
	end)()
end
local function v33_upvr(arg1, arg2, arg3) -- Line 58, Named "v33"
	--[[ Upvalues[2]:
		[1]: TweenService_upvr (readonly)
		[2]: Debris_upvr (readonly)
	]]
	local ImageLabel_3 = Instance.new("ImageLabel", arg1)
	ImageLabel_3.Image = "http://www.roblox.com/asset/?id=6820821916"
	ImageLabel_3.ImageColor3 = arg2
	ImageLabel_3.SizeConstraint = Enum.SizeConstraint.RelativeYY
	ImageLabel_3.BackgroundTransparency = 1
	local var20 = math.random(7, 13) / 100
	ImageLabel_3.Rotation = 30
	ImageLabel_3.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel_3.Size = UDim2.fromScale(var20, var20)
	ImageLabel_3.Position = UDim2.fromScale(math.random(0, 140) / 100, -0.2)
	local var21 = math.random(15, 25) / 10
	TweenService_upvr:Create(ImageLabel_3, Tween0o.new(var21, Enum.EasingStyle.Linear), {
		Position = ImageLabel_3.Position + UDim2.fromScale(-0.4, 1.4);
	}):Play()
	Debris_upvr:AddItem(ImageLabel_3, var21)
end
local function v43_upvr(arg1, arg2) -- Line 75, Named "v43"
	--[[ Upvalues[5]:
		[1]: TweenService_upvr (readonly)
		[2]: Tween0o_new_result1_upvr_4 (readonly)
		[3]: Tween0o_new_result1_upvr_2 (readonly)
		[4]: Debris_upvr (readonly)
		[5]: RunService_upvr (readonly)
	]]
	local ImageLabel_2_upvr = Instance.new("ImageLabel", arg1)
	ImageLabel_2_upvr.Size = UDim2.fromScale(1, 1)
	ImageLabel_2_upvr.Image = "rbxassetid://7216855489"
	ImageLabel_2_upvr.ImageColor3 = arg2
	ImageLabel_2_upvr.SizeConstraint = Enum.SizeConstraint.RelativeXX
	ImageLabel_2_upvr.BackgroundTransparency = 1
	ImageLabel_2_upvr.ImageTransparency = 1
	ImageLabel_2_upvr.Rotation = math.random(0, 360)
	ImageLabel_2_upvr.AnchorPoint = Vector2.new(0.5, 0.5)
	TweenService_upvr:Create(ImageLabel_2_upvr, Tween0o_new_result1_upvr_4, {
		ImageTransparency = 0.9;
	}):Play()
	local randint = math.random(2, 5)
	local var27
	if var27 == 1 then
		randint = -1
	else
		randint = 1
	end
	var27 = math.random(2, 5)
	if math.random(1, 2) == 1 then
		var27 = -1
	else
		var27 = 1
	end
	local udim2_upvr = UDim2.fromScale(math.random(0, 100) / 100, math.random(0, 100) / 100)
	local var29_upvr = randint / 2400 * randint
	local var30_upvr = var27 / 2400 * var27
	function var27() -- Line 91
		--[[ Upvalues[8]:
			[1]: ImageLabel_2_upvr (readonly)
			[2]: TweenService_upvr (copied, readonly)
			[3]: Tween0o_new_result1_upvr_2 (copied, readonly)
			[4]: Debris_upvr (copied, readonly)
			[5]: udim2_upvr (readonly)
			[6]: var29_upvr (readonly)
			[7]: var30_upvr (readonly)
			[8]: RunService_upvr (copied, readonly)
		]]
		local time_result1 = time()
		while ImageLabel_2_upvr and ImageLabel_2_upvr.Parent do
			if time_result1 + math.random(20, 30) / 10 - 0.5 <= time() and not ImageLabel_2_upvr:GetAttribute("Removing") then
				ImageLabel_2_upvr:SetAttribute("Removing", true)
				TweenService_upvr:Create(ImageLabel_2_upvr, Tween0o_new_result1_upvr_2, {
					ImageTransparency = 1;
				}):Play()
				Debris_upvr:AddItem(ImageLabel_2_upvr, 0.5)
			end
			local var33 = (time() - time_result1) * 50
			ImageLabel_2_upvr.Position = udim2_upvr + UDim2.fromScale(var33 * -var29_upvr, var33 * -var30_upvr)
			RunService_upvr.Heartbeat:Wait()
		end
	end
	coroutine.wrap(var27)()
end
local function v49_upvr(arg1, arg2, arg3, arg4) -- Line 108, Named "v49"
	--[[ Upvalues[3]:
		[1]: TweenService_upvr (readonly)
		[2]: Tween0o_new_result1_upvr (readonly)
		[3]: Debris_upvr (readonly)
	]]
	script:WaitForChild("Whoosh").Volume = 1 - arg3 + 0.3
	script:WaitForChild("Whoosh"):Play()
	local ImageLabel = Instance.new("ImageLabel", arg1)
	ImageLabel.Size = UDim2.fromScale(0.8, 0.8)
	ImageLabel.Image = arg4
	ImageLabel.ImageColor3 = arg2
	ImageLabel.SizeConstraint = Enum.SizeConstraint.RelativeYY
	ImageLabel.BackgroundTransparency = 1
	ImageLabel.ImageTransparency = arg3
	ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel.Position = UDim2.fromScale(0.5, 0.5)
	TweenService_upvr:Create(ImageLabel, Tween0o_new_result1_upvr, {
		Size = UDim2.fromScale(0.7, 0.7);
		ImageTransparency = 1;
	}):Play()
	Debris_upvr:AddItem(ImageLabel, 2)
end
local StarterGui_upvr = game:GetService("StarterGui")
local SFXs_upvr = game:GetService("ReplicatedStorage").Assets.SFXs
local Tween0o_new_result1_upvr_5 = Tween0o.new(6, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
local Tween0o_new_result1_upvr_3 = Tween0o.new(1, Enum.EasingStyle.Quart)
return function(arg1, arg2, arg3, arg4, arg5) -- Line 126
	--[[ Upvalues[14]:
		[1]: TweenService_upvr (readonly)
		[2]: tbl_upvr_3 (readonly)
		[3]: tbl_upvr_2 (readonly)
		[4]: Tween0o_new_result1_upvr_4 (readonly)
		[5]: tbl_upvr (readonly)
		[6]: StarterGui_upvr (readonly)
		[7]: SFXs_upvr (readonly)
		[8]: v26_upvr (readonly)
		[9]: v33_upvr (readonly)
		[10]: v43_upvr (readonly)
		[11]: Tween0o_new_result1_upvr (readonly)
		[12]: Tween0o_new_result1_upvr_5 (readonly)
		[13]: v49_upvr (readonly)
		[14]: Tween0o_new_result1_upvr_3 (readonly)
	]]
	script:WaitForChild("Ambient"):Play()
	local Blackboard_upvr = arg2.Blackboard
	local Colorboard = arg2.Colorboard
	local Background = arg2.Background
	local Star = arg2.Star
	local ShakeAmount = arg3:WaitForChild("ShakeAmount")
	local StarSpinSpeed = arg3:WaitForChild("StarSpinSpeed")
	local var49_upvw = true
	StarterGui_upvr:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
	arg4.Visible = false
	TweenService_upvr:Create(Blackboard_upvr, Tween0o_new_result1_upvr_4, tbl_upvr):Play()
	Colorboard.Image = "http://www.roblox.com/asset/?id=12353440665"
	Colorboard.ImageTransparency = 1
	Colorboard.ImageColor3 = Color3.new(1, 1, 1)
	Star.ImageColor3 = Color3.new(1, 1, 1)
	if not arg4:GetAttribute("IgnoreTextColor") then
		Colorboard.ImageColor3 = arg4.TextColor3
		Star.ImageColor3 = Colorboard.ImageColor3
	end
	SFXs_upvr:WaitForChild("OneMilPlus"):Play()
	Star.Size = UDim2.fromScale(1.5, 1.5)
	Star.Image = "rbxassetid://17068400400"
	Star.Visible = true
	coroutine.wrap(function() -- Line 163
		--[[ Upvalues[4]:
			[1]: var49_upvw (read and write)
			[2]: v26_upvr (copied, readonly)
			[3]: Blackboard_upvr (readonly)
			[4]: v33_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [28] 26. Error Block 5 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [28] 26. Error Block 5 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 8 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [28.0]
		if nil then
			-- KONSTANTWARNING: GOTO [28] #26
		end
		-- KONSTANTERROR: [0] 1. Error Block 8 end (CF ANALYSIS FAILED)
	end)()
	coroutine.wrap(function() -- Line 174
		--[[ Upvalues[3]:
			[1]: var49_upvw (read and write)
			[2]: v43_upvr (copied, readonly)
			[3]: Blackboard_upvr (readonly)
		]]
		while task.wait(0.2) and var49_upvw do
			v43_upvr(Blackboard_upvr, Color3.fromRGB(255, 178, 99))
		end
	end)()
	TweenService_upvr:Create(Star, Tween0o_new_result1_upvr, {
		Size = UDim2.fromScale(0.6, 0.6);
	}):Play()
	StarSpinSpeed.Value = 5
	TweenService_upvr:Create(StarSpinSpeed, Tween0o_new_result1_upvr, {
		Value = 1;
	}):Play()
	task.wait(3.23)
	TweenService_upvr:Create(StarSpinSpeed, Tween0o_new_result1_upvr_5, {
		Value = 4;
	}):Play()
	TweenService_upvr:Create(Star, Tween0o_new_result1_upvr_5, {
		Size = UDim2.fromScale(1.5, 1.5);
	}):Play()
	task.wait(4)
	arg4.Visible = true
	TweenService_upvr:Create(Colorboard, Tween0o.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
		ImageTransparency = 0;
	}):Play()
	v49_upvr(Blackboard_upvr, Color3.fromRGB(255, 178, 99), 0.6, "rbxassetid://137937406893831")
	task.wait(1)
	v49_upvr(Blackboard_upvr, Color3.fromRGB(255, 178, 99), 0.3, "rbxassetid://137937406893831")
	task.wait(1)
	script:WaitForChild("Ambient"):Stop()
	script:WaitForChild("Omg"):Play()
	var49_upvw = false
	Star.Visible = false
	Colorboard.Image = "http://www.roblox.com/asset/?id=1195495135"
	Colorboard.ImageColor3 = Color3.new(1, 1, 1)
	if Colorboard:FindFirstChildOfClass("UIGradient") then
		Colorboard:FindFirstChildOfClass("UIGradient"):Destroy()
	end
	TweenService_upvr:Create(Colorboard, Tween0o.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
		ImageTransparency = 1;
	}):Play()
	ShakeAmount.Value = 0.02
	TweenService_upvr:Create(ShakeAmount, Tween0o_new_result1_upvr, {
		Value = 0;
	}):Play()
	arg4.Position = UDim2.fromScale(0.5, 0.5)
	arg4.Size = UDim2.fromScale(0.6, 0.2)
	TweenService_upvr:Create(arg4, Tween0o_new_result1_upvr_3, {
		Size = UDim2.fromScale(0.4, 0.1);
	}):Play()
	Blackboard_upvr.BackgroundTransparency = 1
	script:Destroy()
end