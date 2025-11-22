local TweenService_upvr = game:GetService("TweenService")
local TweenInfo_new_result1_upvr_4 = TweenInfo.new(0.5, Enum.EasingStyle.Quart)
local TweenInfo_new_result1_upvr_2 = TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
local TweenInfo_new_result1_upvr = TweenInfo.new(2, Enum.EasingStyle.Quart)
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
local function v26_upvr(arg1, arg2) -- Line 23, Named "v26"
	--[[ Upvalues[5]:
		[1]: TweenService_upvr (readonly)
		[2]: TweenInfo_new_result1_upvr_4 (readonly)
		[3]: TweenInfo_new_result1_upvr_2 (readonly)
		[4]: Debris_upvr (readonly)
		[5]: RunService_upvr (readonly)
	]]
	local ImageLabel_upvr = Instance.new("ImageLabel", arg1)
	ImageLabel_upvr.Size = UDim2.fromScale()
	ImageLabel_upvr.Image = "rbxassetid://915916073"
	ImageLabel_upvr.ImageColor3 = arg2
	ImageLabel_upvr.SizeConstraint = Enum.SizeConstraint.RelativeXX
	ImageLabel_upvr.BackgroundTransparency = 1
	local var11 = math.random(2, 6) / 100
	local randint_2_upvr = math.random(-80, 100)
	local var13 = 5
	local var14
	if math.random(1, 2) == 1 then
		var13 = -1
	else
		var13 = 1
	end
	ImageLabel_upvr.Rotation = randint_2_upvr
	ImageLabel_upvr.AnchorPoint = Vector2.new(0.5, 0.5)
	var14 = TweenInfo_new_result1_upvr_4
	TweenService_upvr:Create(ImageLabel_upvr, var14, {
		Size = UDim2.fromScale(var11, var11);
	}):Play()
	var14 = 0
	var14 = 50
	if math.random(1, 2) == 1 then
		var14 = -1
	else
		var14 = 1
	end
	var14 = math.random(2, 5)
	var14 = coroutine.wrap
	local udim2_upvr = UDim2.fromScale(math.random(var14, 100) / 100, 0)
	local var18_upvr = math.random(var14, 70) * var14
	local var19_upvr = var14 / -500
	local var20_upvr = math.random(var13, 10) * var13
	var14 = var14(function() -- Line 41
		--[[ Upvalues[10]:
			[1]: ImageLabel_upvr (readonly)
			[2]: TweenService_upvr (copied, readonly)
			[3]: TweenInfo_new_result1_upvr_2 (copied, readonly)
			[4]: Debris_upvr (copied, readonly)
			[5]: udim2_upvr (readonly)
			[6]: var18_upvr (readonly)
			[7]: var19_upvr (readonly)
			[8]: randint_2_upvr (readonly)
			[9]: var20_upvr (readonly)
			[10]: RunService_upvr (copied, readonly)
		]]
		local time_result1 = time()
		while ImageLabel_upvr and ImageLabel_upvr.Parent do
			if time_result1 + math.random(15, 20) / 10 - 0.5 <= time() and not ImageLabel_upvr:GetAttribute("Removing") then
				ImageLabel_upvr:SetAttribute("Removing", true)
				TweenService_upvr:Create(ImageLabel_upvr, TweenInfo_new_result1_upvr_2, {
					Size = UDim2.fromScale(0, 0);
				}):Play()
				Debris_upvr:AddItem(ImageLabel_upvr, 0.5)
			end
			local var23 = (time() - time_result1) * 50
			ImageLabel_upvr.Position = udim2_upvr + UDim2.fromScale(0.07 * math.cos(var23 / var18_upvr), var23 * -var19_upvr)
			ImageLabel_upvr.Rotation = randint_2_upvr + var20_upvr * math.cos(var23 / var18_upvr * 1.2)
			RunService_upvr.Heartbeat:Wait()
		end
	end)
	var14()
end
local function v36_upvr(arg1, arg2) -- Line 59, Named "v36"
	--[[ Upvalues[5]:
		[1]: TweenService_upvr (readonly)
		[2]: TweenInfo_new_result1_upvr_4 (readonly)
		[3]: TweenInfo_new_result1_upvr_2 (readonly)
		[4]: Debris_upvr (readonly)
		[5]: RunService_upvr (readonly)
	]]
	local ImageLabel_2_upvr = Instance.new("ImageLabel", arg1)
	ImageLabel_2_upvr.Size = UDim2.fromScale(1, 1)
	ImageLabel_2_upvr.Image = "rbxassetid://1946917526"
	ImageLabel_2_upvr.ImageColor3 = arg2
	ImageLabel_2_upvr.SizeConstraint = Enum.SizeConstraint.RelativeXX
	ImageLabel_2_upvr.BackgroundTransparency = 1
	ImageLabel_2_upvr.ImageTransparency = 1
	ImageLabel_2_upvr.Rotation = math.random(-3, 3)
	ImageLabel_2_upvr.AnchorPoint = Vector2.new(0.5, 0.5)
	TweenService_upvr:Create(ImageLabel_2_upvr, TweenInfo_new_result1_upvr_4, {
		ImageTransparency = 0.7;
	}):Play()
	local randint = math.random(2, 5)
	local var28
	if var28 == 1 then
		randint = -1
	else
		randint = 1
	end
	var28 = math.random(2, 5)
	if math.random(1, 2) == 1 then
		var28 = -1
	else
		var28 = 1
	end
	local udim2_upvr_2 = UDim2.fromScale(math.random(0, 100) / 100, math.random(0, 100) / 100)
	local var30_upvr = randint / 1400 * randint
	local var31_upvr = var28 / 1400 * var28
	function var28() -- Line 75
		--[[ Upvalues[8]:
			[1]: ImageLabel_2_upvr (readonly)
			[2]: TweenService_upvr (copied, readonly)
			[3]: TweenInfo_new_result1_upvr_2 (copied, readonly)
			[4]: Debris_upvr (copied, readonly)
			[5]: udim2_upvr_2 (readonly)
			[6]: var30_upvr (readonly)
			[7]: var31_upvr (readonly)
			[8]: RunService_upvr (copied, readonly)
		]]
		local time_result1_2 = time()
		while ImageLabel_2_upvr and ImageLabel_2_upvr.Parent do
			if time_result1_2 + math.random(15, 20) / 10 - 0.5 <= time() and not ImageLabel_2_upvr:GetAttribute("Removing") then
				ImageLabel_2_upvr:SetAttribute("Removing", true)
				TweenService_upvr:Create(ImageLabel_2_upvr, TweenInfo_new_result1_upvr_2, {
					ImageTransparency = 1;
				}):Play()
				Debris_upvr:AddItem(ImageLabel_2_upvr, 0.5)
			end
			local var34 = (time() - time_result1_2) * 50
			ImageLabel_2_upvr.Position = udim2_upvr_2 + UDim2.fromScale(var34 * -var30_upvr, var34 * -var31_upvr)
			RunService_upvr.Heartbeat:Wait()
		end
	end
	coroutine.wrap(var28)()
end
local function v41_upvr(arg1, arg2, arg3) -- Line 92, Named "v41"
	--[[ Upvalues[3]:
		[1]: TweenService_upvr (readonly)
		[2]: TweenInfo_new_result1_upvr (readonly)
		[3]: Debris_upvr (readonly)
	]]
	script:WaitForChild("Whoosh").Volume = 1 - arg3 + 0.3
	script:WaitForChild("Whoosh"):Play()
	local ImageLabel = Instance.new("ImageLabel", arg1)
	ImageLabel.Size = UDim2.fromScale(0.8, 0.8)
	ImageLabel.Image = "rbxassetid://12389947566"
	ImageLabel.ImageColor3 = arg2
	ImageLabel.SizeConstraint = Enum.SizeConstraint.RelativeYY
	ImageLabel.BackgroundTransparency = 1
	ImageLabel.ImageTransparency = arg3
	ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel.Position = UDim2.fromScale(0.5, 0.5)
	TweenService_upvr:Create(ImageLabel, TweenInfo_new_result1_upvr, {
		Size = UDim2.fromScale(0.7, 0.7);
		ImageTransparency = 1;
	}):Play()
	Debris_upvr:AddItem(ImageLabel, 2)
end
local StarterGui_upvr = game:GetService("StarterGui")
local SFXs_upvr = game:GetService("ReplicatedStorage").Assets.SFXs
local TweenInfo_new_result1_upvr_3 = TweenInfo.new(6, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
local TweenInfo_new_result1_upvr_5 = TweenInfo.new(1, Enum.EasingStyle.Quart)
return function(arg1, arg2, arg3, arg4, arg5) -- Line 110
	--[[ Upvalues[13]:
		[1]: TweenService_upvr (readonly)
		[2]: tbl_upvr_3 (readonly)
		[3]: tbl_upvr_2 (readonly)
		[4]: TweenInfo_new_result1_upvr_4 (readonly)
		[5]: tbl_upvr (readonly)
		[6]: StarterGui_upvr (readonly)
		[7]: SFXs_upvr (readonly)
		[8]: v26_upvr (readonly)
		[9]: v36_upvr (readonly)
		[10]: TweenInfo_new_result1_upvr (readonly)
		[11]: TweenInfo_new_result1_upvr_3 (readonly)
		[12]: v41_upvr (readonly)
		[13]: TweenInfo_new_result1_upvr_5 (readonly)
	]]
	script:WaitForChild("Ambient"):Play()
	local Blackboard_upvr = arg2.Blackboard
	local Colorboard = arg2.Colorboard
	local Background = arg2.Background
	local Star = arg2.Star
	local ShakeAmount = arg3:WaitForChild("ShakeAmount")
	local StarSpinSpeed = arg3:WaitForChild("StarSpinSpeed")
	TweenService_upvr:Create(Background, TweenInfo.new(1, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), tbl_upvr_3)
	TweenService_upvr:Create(Background, TweenInfo.new(1, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), tbl_upvr_2)
	local var50_upvw = true
	StarterGui_upvr:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
	arg4.Visible = false
	TweenService_upvr:Create(Blackboard_upvr, TweenInfo_new_result1_upvr_4, tbl_upvr):Play()
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
	coroutine.wrap(function() -- Line 147
		--[[ Upvalues[3]:
			[1]: var50_upvw (read and write)
			[2]: v26_upvr (copied, readonly)
			[3]: Blackboard_upvr (readonly)
		]]
		while task.wait(0.05) and var50_upvw do
			v26_upvr(Blackboard_upvr, Color3.fromRGB(174, 255, 87))
		end
	end)()
	coroutine.wrap(function() -- Line 152
		--[[ Upvalues[3]:
			[1]: var50_upvw (read and write)
			[2]: v36_upvr (copied, readonly)
			[3]: Blackboard_upvr (readonly)
		]]
		while task.wait(0.2) and var50_upvw do
			v36_upvr(Blackboard_upvr, Color3.fromRGB(174, 255, 87))
		end
	end)()
	TweenService_upvr:Create(Star, TweenInfo_new_result1_upvr, {
		Size = UDim2.fromScale(0.6, 0.6);
	}):Play()
	StarSpinSpeed.Value = 5
	TweenService_upvr:Create(StarSpinSpeed, TweenInfo_new_result1_upvr, {
		Value = 1;
	}):Play()
	task.wait(3.23)
	TweenService_upvr:Create(StarSpinSpeed, TweenInfo_new_result1_upvr_3, {
		Value = 4;
	}):Play()
	TweenService_upvr:Create(Star, TweenInfo_new_result1_upvr_3, {
		Size = UDim2.fromScale(1.5, 1.5);
	}):Play()
	task.wait(4)
	arg4.Visible = true
	TweenService_upvr:Create(Colorboard, TweenInfo.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
		ImageTransparency = 0;
	}):Play()
	v41_upvr(Blackboard_upvr, Color3.fromRGB(174, 255, 87), 0.6)
	task.wait(1)
	v41_upvr(Blackboard_upvr, Color3.fromRGB(174, 255, 87), 0.2)
	task.wait(1)
	script:WaitForChild("Ambient"):Stop()
	script:WaitForChild("Omg"):Play()
	var50_upvw = false
	Star.Visible = false
	Colorboard.Image = "http://www.roblox.com/asset/?id=1195495135"
	Colorboard.ImageColor3 = Color3.new(1, 1, 1)
	if Colorboard:FindFirstChildOfClass("UIGradient") then
		Colorboard:FindFirstChildOfClass("UIGradient"):Destroy()
	end
	TweenService_upvr:Create(Colorboard, TweenInfo.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
		ImageTransparency = 1;
	}):Play()
	ShakeAmount.Value = 0.02
	TweenService_upvr:Create(ShakeAmount, TweenInfo_new_result1_upvr, {
		Value = 0;
	}):Play()
	arg4.Position = UDim2.fromScale(0.5, 0.5)
	arg4.Size = UDim2.fromScale(0.6, 0.2)
	TweenService_upvr:Create(arg4, TweenInfo_new_result1_upvr_5, {
		Size = UDim2.fromScale(0.4, 0.1);
	}):Play()
	Blackboard_upvr.BackgroundTransparency = 1
	script:Destroy()
end