local TweenService_upvr = game:GetService("TweenService")
local Tween0o_new_result1_upvr_5 = Tween0o.new(0.5, Enum.EasingStyle.Quart)
local Tween0o_new_result1_upvr_2 = Tween0o.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
local Tween0o_new_result1_upvr = Tween0o.new(2, Enum.EasingStyle.Quart)
local Tween0o_new_result1_upvr_3 = Tween0o.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut)
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
local function v27_upvr(arg1, arg2, arg3)
	local ImageLabel_2_upvr = Instance.new("ImageLabel", arg1)
	ImageLabel_2_upvr.Image = "rbxassetid://6909741538"
	ImageLabel_2_upvr.ImageColor3 = arg2
	ImageLabel_2_upvr.SizeConstraint = Enum.SizeConstraint.RelativeXX
	ImageLabel_2_upvr.BackgroundTransparency = 1
	local var12 = math.random(2, 6) / 100
	ImageLabel_2_upvr.Rotation = math.random(-15, 15)
	ImageLabel_2_upvr.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel_2_upvr.Size = UDim2.fromScale(var12, var12)
	ImageLabel_2_upvr.ImageTransparency = 1
	TweenService_upvr:Create(ImageLabel_2_upvr, Tween0o_new_result1_upvr_5, {
		ImageTransparency = 0;
	}):Play()
	local var14 = 50
	if math.random(1, 2) == 1 then
		var14 = -1
	else
		var14 = 1
	end
	local udim2_upvr = UDim2.fromScale(math.random(0, 100) / 100, math.random(20, 100) / 100)
	local var17_upvr = math.random(2, 5) / 1000
	coroutine.wrap(function()
		local time_result1 = time()
		while ImageLabel_2_upvr and ImageLabel_2_upvr.Parent do
			if time_result1 + math.random(15, 20) / 10 - 0.5 <= time() and not ImageLabel_2_upvr:GetAttribute("Removing") then
				ImageLabel_2_upvr:SetAttribute("Removing", true)
				TweenService_upvr:Create(ImageLabel_2_upvr, Tween0o_new_result1_upvr_2, {
					Size = UDim2.fromScale(0, 0);
				}):Play()
				Debris_upvr:AddItem(ImageLabel_2_upvr, 0.5)
			end
			ImageLabel_2_upvr.Position = udim2_upvr + UDim2.fromScale(0, (time() - time_result1) * 50 * -var17_upvr)
			RunService_upvr.Heartbeat:Wait()
		end
	end)()
end
local function v37_upvr(arg1, arg2)
	local ImageLabel_3_upvr = Instance.new("ImageLabel", arg1)
	ImageLabel_3_upvr.Size = UDim2.fromScale(1, 1)
	ImageLabel_3_upvr.Image = "rbxassetid://7216855489"
	ImageLabel_3_upvr.ImageColor3 = arg2
	ImageLabel_3_upvr.SizeConstraint = Enum.SizeConstraint.RelativeXX
	ImageLabel_3_upvr.BackgroundTransparency = 1
	ImageLabel_3_upvr.ImageTransparency = 1
	ImageLabel_3_upvr.Rotation = math.random(0, 360)
	ImageLabel_3_upvr.AnchorPoint = Vector2.new(0.5, 0.5)
	TweenService_upvr:Create(ImageLabel_3_upvr, Tween0o_new_result1_upvr_5, {
		ImageTransparency = 0.9;
	}):Play()
	local randint = math.random(2, 5)
	local var24
	if var24 == 1 then
		randint = -1
	else
		randint = 1
	end
	var24 = math.random(2, 5)
	if math.random(1, 2) == 1 then
		var24 = -1
	else
		var24 = 1
	end
	local udim2_upvr_2 = UDim2.fromScale(math.random(0, 100) / 100, math.random(0, 100) / 100)
	local var26_upvr = randint / 2400 * randint
	local var27_upvr = var24 / 2400 * var24
	function var24()
		local time_result1_2 = time()
		while ImageLabel_3_upvr and ImageLabel_3_upvr.Parent do
			if time_result1_2 + math.random(20, 30) / 10 - 0.5 <= time() and not ImageLabel_3_upvr:GetAttribute("Removing") then
				ImageLabel_3_upvr:SetAttribute("Removing", true)
				TweenService_upvr:Create(ImageLabel_3_upvr, Tween0o_new_result1_upvr_2, {
					ImageTransparency = 1;
				}):Play()
				Debris_upvr:AddItem(ImageLabel_3_upvr, 0.5)
			end
			local var30 = (time() - time_result1_2) * 50
			ImageLabel_3_upvr.Position = udim2_upvr_2 + UDim2.fromScale(var30 * -var26_upvr, var30 * -var27_upvr)
			RunService_upvr.Heartbeat:Wait()
		end
	end
	coroutine.wrap(var24)()
end
local function v43_upvr(arg1, arg2, arg3, arg4)
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
	ImageLabel.ZIndex = math.huge
	TweenService_upvr:Create(ImageLabel, Tween0o_new_result1_upvr, {
		Size = UDim2.fromScale(0.7, 0.7);
		ImageTransparency = 1;
	}):Play()
	Debris_upvr:AddItem(ImageLabel, 2)
end
local function v48_upvr(arg1, arg2, arg3)
	local Frame_2 = Instance.new("Frame", arg1)
	Frame_2.Size = UDim2.fromScale(1, 0.005)
	Frame_2.BackgroundColor3 = arg2
	Frame_2.AnchorPoint = Vector2.new(0, 0.5)
	Frame_2.Position = UDim2.fromScale(-1, math.random(0, 100) / 100)
	Instance.new("UIGradient", Frame_2).Transparency = NumberSequence.new(1, 0)
	Frame_2.BackgroundTransparency = math.random(60, 90) / 100
	TweenService_upvr:Create(Frame_2, Tween0o_new_result1_upvr_3, {
		Position = UDim2.fromScale(1, Frame_2.Position.Y.Scale);
	}):Play()
	Debris_upvr:AddItem(Frame_2, 1)
end
local function v53_upvr(arg1, arg2, arg3)
	local Frame = Instance.new("Frame", arg1)
	Frame.Size = UDim2.fromScale(1, 0.005)
	Frame.BackgroundColor3 = arg2
	Frame.AnchorPoint = Vector2.new(0, 0.5)
	Frame.Position = UDim2.fromScale(1, math.random(0, 100) / 100)
	Instance.new("UIGradient", Frame).Transparency = NumberSequence.new(0, 1)
	Frame.BackgroundTransparency = math.random(60, 90) / 100
	TweenService_upvr:Create(Frame, Tween0o_new_result1_upvr_3, {
		Position = UDim2.fromScale(-1, Frame.Position.Y.Scale);
	}):Play()
	Debris_upvr:AddItem(Frame, 1)
end
local StarterGui_upvr = game:GetService("StarterGui")
local SFXs_upvr = game:GetService("ReplicatedStorage").Assets.SFXs
local Tween0o_new_result1_upvr_4 = Tween0o.new(6, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
local Tween0o_new_result1_upvr_6 = Tween0o.new(1, Enum.EasingStyle.Quart)
return function(arg1, arg2, arg3, arg4, arg5)
	script:WaitForChild("Ambient"):Play()
	local Blackboard_upvr = arg2.Blackboard
	local Colorboard = arg2.Colorboard
	local Background = arg2.Background
	local Star = arg2.Star
	local ShakeAmount = arg3:WaitForChild("ShakeAmount")
	local StarSpinSpeed = arg3:WaitForChild("StarSpinSpeed")
	local var50_upvw = true
	StarterGui_upvr:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
	arg4.Visible = false
	TweenService_upvr:Create(Blackboard_upvr, Tween0o_new_result1_upvr_5, tbl_upvr):Play()
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
	local clone_upvr = script:WaitForChild("Corners"):Clone()
	clone_upvr.Parent = Blackboard_upvr
	TweenService_upvr:Create(clone_upvr, Tween0o_new_result1_upvr, {
		Size = UDim2.fromScale(0.97, 0.94);
	}):Play()
	local clone_upvr_2 = script:WaitForChild("CodeText"):Clone()
	clone_upvr_2.Parent = Blackboard_upvr
	local time_result1_3_upvr = time()
	--[[coroutine.wrap(function()
		if nil then
		
			if nil < nil then
				if nil ~= 1 then
				else
				end
			else
				if not nil then
				end
			end
		end
	end)()
	coroutine.wrap(function()
	end)()]]
	coroutine.wrap(function()
		while task.wait(0.2) and var50_upvw do
			v37_upvr(Blackboard_upvr, Color3.fromRGB(74, 101, 255))
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
	TweenService_upvr:Create(StarSpinSpeed, Tween0o_new_result1_upvr_4, {
		Value = 4;
	}):Play()
	TweenService_upvr:Create(Star, Tween0o_new_result1_upvr_4, {
		Size = UDim2.fromScale(1.5, 1.5);
	}):Play()
	task.wait(4)
	arg4.Visible = true
	TweenService_upvr:Create(Colorboard, Tween0o.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
		ImageTransparency = 0;
	}):Play()
	v43_upvr(Blackboard_upvr, Color3.fromRGB(74, 101, 255), 0.6, "rbxassetid://137506152729909")
	task.wait(1)
	v43_upvr(Blackboard_upvr, Color3.fromRGB(74, 101, 255), 0.3, "rbxassetid://137506152729909")
	task.wait(1)
	script:WaitForChild("Ambient"):Stop()
	script:WaitForChild("Omg"):Play()
	var50_upvw = false
	clone_upvr:Destroy()
	clone_upvr_2:Destroy()
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
	TweenService_upvr:Create(arg4, Tween0o_new_result1_upvr_6, {
		Size = UDim2.fromScale(0.4, 0.1);
	}):Play()
	Blackboard_upvr.BackgroundTransparency = 1
	script:Destroy()
end