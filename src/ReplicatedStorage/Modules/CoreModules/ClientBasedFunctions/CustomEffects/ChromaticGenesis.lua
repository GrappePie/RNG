-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-15 15:32:44
-- Luau version 6, Types version 3
-- Time taken: 0.033658 seconds

print("ASD")
local Debris_upvr = game:GetService("Debris")
local RunService_upvr = game:GetService("RunService")
local TweenService_upvr_2 = game:GetService("TweenService")
local Modules = game:GetService("ReplicatedStorage"):WaitForChild("Modules")
local module_2_upvr = require(Modules:WaitForChild("UICache"))
local module_4 = require(Modules:WaitForChild("Queue_new"))
local any_new_result1_14 = module_4.Waitter.new()
local module_5_upvr = require(Modules:WaitForChild("UI"):WaitForChild("SceneUI"):WaitForChild("Assets"))
local ShakeSize_upvr_2 = script:WaitForChild("ShakeSize")
;({}).BackgroundTransparency = 0.6
;({}).BackgroundTransparency = 1
;({}).BackgroundTransparency = 0
local BaseQuart0o1_upvr_2 = module_5_upvr.BaseQuart0o1
local BaseQuart0o3_upvr_2 = module_5_upvr.BaseQuart0o3
local ReverseQuart0o1_upvr_2 = module_5_upvr.ReverseQuart0o1
local random_state_upvr_2 = Random.new()
local clock_upvr = os.clock
local tbl_2_upvr = {"rbxassetid://	", "rbxassetid://17020868229", "rbxassetid://17020871697", "rbxassetid://17020875458", "rbxassetid://17020880091"}
local function _() -- Line 24
	if math.random(1, 2) == 1 then
		return -1
	end
	return 1
end
print('ASDwe')
local function CreateText_upvr_upvr(arg1, arg2, arg3) -- Line 30, Named "CreateText_upvr"
	--[[ Upvalues[9]:
		[1]: random_state_upvr_2 (readonly)
		[2]: module_2_upvr (readonly)
		[3]: TweenService_upvr_2 (readonly)
		[4]: BaseQuart0o1_upvr_2 (readonly)
		[5]: clock_upvr (readonly)
		[6]: RunService_upvr (readonly)
		[7]: ReverseQuart0o1_upvr_2 (readonly)
		[8]: Debris_upvr (readonly)
		[9]: ShakeSize_upvr_2 (readonly)
	]]
	local any_NextNumber_result1_18 = random_state_upvr_2:NextNumber(1, 2.5)
	local any_NextNumber_result1_15_upvr = random_state_upvr_2:NextNumber(-3, 3)
	local any_new_result1_7_upvr = Instance.new("ImageLabel", arg1)
	any_new_result1_7_upvr.Image = arg3
	any_new_result1_7_upvr.ImageColor3 = arg2
	any_new_result1_7_upvr.SizeConstraint = Enum.SizeConstraint.RelativeXX
	any_new_result1_7_upvr.Rotation = any_NextNumber_result1_15_upvr
	any_new_result1_7_upvr.ImageTransparency = 1
	any_new_result1_7_upvr.AnchorPoint = Vector2.one * 0.5
	any_new_result1_7_upvr.Size = UDim2.fromScale(0.15 * any_NextNumber_result1_18, 0.15 * any_NextNumber_result1_18)
	any_new_result1_7_upvr:AddTag("CutsceneAsset")
	any_new_result1_7_upvr.Parent = arg1
	TweenService_upvr_2:Create(any_new_result1_7_upvr, BaseQuart0o1_upvr_2, {
		ImageTransparency = 0;
	}):Play()
	local any_NextNumber_result1_9 = random_state_upvr_2:NextNumber(2, 5)
	if math.random(1, 2) == 1 then
		any_NextNumber_result1_9 = -1
	else
		any_NextNumber_result1_9 = 1
	end
	if math.random(1, 2) ~= 1 then
	end
	if math.random(1, 2) == 1 then
	else
	end
	local clock_upvr_result1_upvr_2 = clock_upvr()
	local var194_upvw = clock_upvr_result1_upvr_2 + random_state_upvr_2:NextNumber(1.5, 2)
	local udim2_upvr_6 = UDim2.fromScale(random_state_upvr_2:NextNumber(), random_state_upvr_2:NextNumber())
	local var197_upvr = any_NextNumber_result1_9 / 4000 * any_NextNumber_result1_9
	local var198_upvr = random_state_upvr_2:NextNumber(2, 5) / 4000 * 1
	local var199_upvr = var194_upvw / 50 * var194_upvw
	local any_Connect_result1_upvr_7 = RunService_upvr.Heartbeat:Connect(function() -- Line 82
		--[[ Upvalues[13]:
			[1]: var194_upvw (read and write)
			[2]: clock_upvr (copied, readonly)
			[3]: any_new_result1_7_upvr (readonly)
			[4]: TweenService_upvr_2 (copied, readonly)
			[5]: ReverseQuart0o1_upvr_2 (copied, readonly)
			[6]: Debris_upvr (copied, readonly)
			[7]: clock_upvr_result1_upvr_2 (readonly)
			[8]: udim2_upvr_6 (readonly)
			[9]: var197_upvr (readonly)
			[10]: var198_upvr (readonly)
			[11]: ShakeSize_upvr_2 (copied, readonly)
			[12]: any_NextNumber_result1_15_upvr (readonly)
			[13]: var199_upvr (readonly)
		]]
		if var194_upvw - 0.5 <= clock_upvr() and not any_new_result1_7_upvr:GetAttribute("Removing") then
			any_new_result1_7_upvr:SetAttribute("Removing", true)
			TweenService_upvr_2:Create(any_new_result1_7_upvr, ReverseQuart0o1_upvr_2, {
				ImageTransparency = 1;
			}):Play()
			Debris_upvr:AddItem(any_new_result1_7_upvr, 0.5)
		end
		local var201 = (clock_upvr() - clock_upvr_result1_upvr_2) * 50
		any_new_result1_7_upvr.Position = udim2_upvr_6 + UDim2.fromScale(var201 * -var197_upvr, var201 * -var198_upvr) + UDim2.fromScale(ShakeSize_upvr_2.Value.X, ShakeSize_upvr_2.Value.Y)
		any_new_result1_7_upvr.Rotation = any_NextNumber_result1_15_upvr + var201 * var199_upvr
	end)
	any_new_result1_7_upvr.Destroying:Once(function() -- Line 109
		--[[ Upvalues[1]:
			[1]: any_Connect_result1_upvr_7 (readonly)
		]]
		any_Connect_result1_upvr_7:Disconnect()
	end)
	return any_new_result1_7_upvr
end
local function CreateSideParticle_upvr_upvr(arg1, arg2) -- Line 120, Named "CreateSideParticle_upvr"
	--[[ Upvalues[6]:
		[1]: random_state_upvr_2 (readonly)
		[2]: module_2_upvr (readonly)
		[3]: TweenService_upvr_2 (readonly)
		[4]: Debris_upvr (readonly)
		[5]: RunService_upvr (readonly)
		[6]: ShakeSize_upvr_2 (readonly)
	]]
	local any_NextNumber_result1_13 = random_state_upvr_2:NextNumber(0.05, 0.4)
	local any_NextNumber_result1_4 = random_state_upvr_2:NextNumber(0.6, 2)
	local udim2_upvr_9 = UDim2.fromScale(random_state_upvr_2:NextNumber(), random_state_upvr_2:NextInteger(0, 1))
	local any_new_result1_8_upvr = Instance.new("ImageLabel", arg1)
	any_new_result1_8_upvr.Size = UDim2.fromScale(any_NextNumber_result1_13, 0)
	any_new_result1_8_upvr.ImageColor3 = arg2
	any_new_result1_8_upvr.Image = "rbxassetid://6909741538"
	any_new_result1_8_upvr.SizeConstraint = Enum.SizeConstraint.RelativeYY
	any_new_result1_8_upvr.AnchorPoint = Vector2.one * 0.5
	any_new_result1_8_upvr.Position = udim2_upvr_9
	any_new_result1_8_upvr.Rotation = random_state_upvr_2:NextNumber(-3, 3)
	any_new_result1_8_upvr.Parent = arg1
	TweenService_upvr_2:Create(any_new_result1_8_upvr, Tween0o.new(any_NextNumber_result1_4, Enum.EasingStyle.Quart), {
		Size = UDim2.fromScale(0, any_NextNumber_result1_13 * random_state_upvr_2:NextNumber(2, 3));
	}):Play()
	Debris_upvr:AddItem(any_new_result1_8_upvr, any_NextNumber_result1_4)
	local any_Connect_result1_upvr_3 = RunService_upvr.Heartbeat:Connect(function() -- Line 144
		--[[ Upvalues[3]:
			[1]: any_new_result1_8_upvr (readonly)
			[2]: udim2_upvr_9 (readonly)
			[3]: ShakeSize_upvr_2 (copied, readonly)
		]]
		any_new_result1_8_upvr.Position = udim2_upvr_9 + UDim2.fromScale(ShakeSize_upvr_2.Value.X, ShakeSize_upvr_2.Value.Y)
	end)
	any_new_result1_8_upvr.Destroying:Once(function() -- Line 152
		--[[ Upvalues[1]:
			[1]: any_Connect_result1_upvr_3 (readonly)
		]]
		any_Connect_result1_upvr_3:Disconnect()
	end)
	return any_new_result1_8_upvr
end
local function CreateFog_upvr_upvr(arg1, arg2) -- Line 160, Named "CreateFog_upvr"
	--[[ Upvalues[8]:
		[1]: module_2_upvr (readonly)
		[2]: random_state_upvr_2 (readonly)
		[3]: TweenService_upvr_2 (readonly)
		[4]: BaseQuart0o1_upvr_2 (readonly)
		[5]: clock_upvr (readonly)
		[6]: RunService_upvr (readonly)
		[7]: ReverseQuart0o1_upvr_2 (readonly)
		[8]: Debris_upvr (readonly)
	]]
	local any_new_result1_11_upvr = Instance.new("ImageLabel", arg1)
	any_new_result1_11_upvr.Size = UDim2.fromScale(1, 1)
	any_new_result1_11_upvr.ImageColor3 = arg2
	any_new_result1_11_upvr.Image = "rbxassetid://1946917526"
	any_new_result1_11_upvr.SizeConstraint = Enum.SizeConstraint.RelativeXX
	any_new_result1_11_upvr.BackgroundTransparency = 1
	any_new_result1_11_upvr.ImageTransparency = 1
	any_new_result1_11_upvr.Rotation = random_state_upvr_2:NextNumber(-3, 3)
	any_new_result1_11_upvr.AnchorPoint = Vector2.one * 0.5
	any_new_result1_11_upvr:AddTag("CutsceneAsset")
	TweenService_upvr_2:Create(any_new_result1_11_upvr, BaseQuart0o1_upvr_2, {
		ImageTransparency = 0.7;
	}):Play()
	any_new_result1_11_upvr.Parent = arg1
	local any_NextNumber_result1_2 = random_state_upvr_2:NextNumber(2, 5)
	if nil == 1 then
		any_NextNumber_result1_2 = -1
	else
		any_NextNumber_result1_2 = 1
	end
	if math.random(1, 2) == 1 then
	else
	end
	local clock_upvr_result1_upvr = clock_upvr()
	local var216_upvw = clock_upvr_result1_upvr + random_state_upvr_2:NextNumber(1.5, 2)
	local udim2_upvr_10 = UDim2.fromScale(random_state_upvr_2:NextNumber(), random_state_upvr_2:NextNumber())
	local var219_upvr = any_NextNumber_result1_2 / 1400 * any_NextNumber_result1_2
	local var220_upvr = var216_upvw / 1400 * var216_upvw
	local any_Connect_result1_upvr_2 = RunService_upvr.Heartbeat:Connect(function() -- Line 202
		--[[ Upvalues[10]:
			[1]: var216_upvw (read and write)
			[2]: clock_upvr (copied, readonly)
			[3]: any_new_result1_11_upvr (readonly)
			[4]: TweenService_upvr_2 (copied, readonly)
			[5]: ReverseQuart0o1_upvr_2 (copied, readonly)
			[6]: Debris_upvr (copied, readonly)
			[7]: clock_upvr_result1_upvr (readonly)
			[8]: udim2_upvr_10 (readonly)
			[9]: var219_upvr (readonly)
			[10]: var220_upvr (readonly)
		]]
		if var216_upvw - 0.5 <= clock_upvr() and not any_new_result1_11_upvr:GetAttribute("Removing") then
			any_new_result1_11_upvr:SetAttribute("Removing", true)
			TweenService_upvr_2:Create(any_new_result1_11_upvr, ReverseQuart0o1_upvr_2, {
				ImageTransparency = 1;
			}):Play()
			Debris_upvr:AddItem(any_new_result1_11_upvr, 0.5)
		end
		local var222 = (clock_upvr() - clock_upvr_result1_upvr) * 50
		any_new_result1_11_upvr.Position = udim2_upvr_10 + UDim2.fromScale(var222 * -var219_upvr, var222 * -var220_upvr)
	end)
	any_new_result1_11_upvr.Destroying:Once(function() -- Line 225
		--[[ Upvalues[1]:
			[1]: any_Connect_result1_upvr_2 (readonly)
		]]
		any_Connect_result1_upvr_2:Disconnect()
	end)
end
local function CreateExplosionParticle_upvr_upvr(arg1, arg2, arg3) -- Line 232, Named "CreateExplosionParticle_upvr"
	--[[ Upvalues[4]:
		[1]: random_state_upvr_2 (readonly)
		[2]: module_2_upvr (readonly)
		[3]: TweenService_upvr_2 (readonly)
		[4]: Debris_upvr (readonly)
	]]
	local any_NextNumber_result1_17 = random_state_upvr_2:NextNumber(0.2, 0.8)
	local any_NextNumber_result1_12 = random_state_upvr_2:NextNumber(0.6, 2)
	local any_new_result1_13_upvr = Instance.new("ImageLabel", arg1)
	any_new_result1_13_upvr.Size = UDim2.fromScale(any_NextNumber_result1_17, any_NextNumber_result1_17)
	any_new_result1_13_upvr.ImageColor3 = arg2
	any_new_result1_13_upvr.Image = "rbxassetid://85238370434977"
	any_new_result1_13_upvr.SizeConstraint = Enum.SizeConstraint.RelativeYY
	any_new_result1_13_upvr.AnchorPoint = Vector2.new(0.5, 0.5)
	any_new_result1_13_upvr.Position = UDim2.fromScale(random_state_upvr_2:NextNumber(), random_state_upvr_2:NextNumber(0.1, 0.8))
	any_new_result1_13_upvr.Parent = arg1
	local UIGradient_upvr_5 = Instance.new("UIGradient", any_new_result1_13_upvr)
	UIGradient_upvr_5.Rotation = 90
	TweenService_upvr_2:Create(any_new_result1_13_upvr, Tween0o.new(any_NextNumber_result1_12, Enum.EasingStyle.Quart), {
		Size = UDim2.fromScale(any_new_result1_13_upvr.Size.X.Scale * 4, 0);
	}):Play()
	Debris_upvr:AddItem(any_new_result1_13_upvr, any_NextNumber_result1_12)
	task.wait(any_NextNumber_result1_12)
	arg1.Changed:Connect(function(arg1_5) -- Line 254
		--[[ Upvalues[2]:
			[1]: any_new_result1_13_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		if arg1_5 == "Rotation" and any_new_result1_13_upvr and any_new_result1_13_upvr.Parent then
			any_new_result1_13_upvr.Rotation = -arg1.Rotation
		end
	end):Disconnect()
	arg3.Changed:Connect(function() -- Line 263
		--[[ Upvalues[2]:
			[1]: UIGradient_upvr_5 (readonly)
			[2]: arg3 (readonly)
		]]
		if UIGradient_upvr_5 and UIGradient_upvr_5.Parent then
			UIGradient_upvr_5.Color = arg3.Color
		end
	end):Disconnect()
end
local function _exDe(arg1, arg2, arg3) -- Line 273
	--[[ Upvalues[4]:
		[1]: random_state_upvr_2 (readonly)
		[2]: module_2_upvr (readonly)
		[3]: TweenService_upvr_2 (readonly)
		[4]: Debris_upvr (readonly)
	]]
	local any_NextNumber_result1_14 = random_state_upvr_2:NextNumber(0.6, 2)
	local any_new_result1_9 = Instance.new("ImageLabel", arg1)
	any_new_result1_9.Size = UDim2.fromScale(math.random(2, 6) / 100, 2)
	any_new_result1_9.ImageColor3 = arg2
	any_new_result1_9.Image = "rbxassetid://16685733415"
	any_new_result1_9.BackgroundTransparency = 1
	any_new_result1_9.AnchorPoint = Vector2.new(0.5, 0.5)
	any_new_result1_9.Position = UDim2.fromScale(0.5, 0.5)
	any_new_result1_9.Rotation = math.random(-5, 5)
	any_new_result1_9.Parent = arg1
	local UIGradient_upvr_4 = Instance.new("UIGradient", any_new_result1_9)
	UIGradient_upvr_4.Rotation = 90
	local tbl_6 = {}
	local randint_2 = math.random(25, 60)
	if math.random(0, 1) == 1 then
		randint_2 = -1
	else
		randint_2 = 1
	end
	tbl_6.Position = UDim2.fromScale(0.5 + randint_2 / 100 * randint_2, 0.5)
	tbl_6.Rotation = any_new_result1_9.Rotation
	tbl_6.Size = UDim2.fromScale(0, 2)
	TweenService_upvr_2:Create(any_new_result1_9, Tween0o.new(any_NextNumber_result1_14, Enum.EasingStyle.Quart), tbl_6):Play()
	Debris_upvr:AddItem(any_new_result1_9, any_NextNumber_result1_14)
	task.wait(any_NextNumber_result1_14)
	arg3.Changed:Connect(function() -- Line 303
		--[[ Upvalues[2]:
			[1]: UIGradient_upvr_4 (readonly)
			[2]: arg3 (readonly)
		]]
		if UIGradient_upvr_4 and UIGradient_upvr_4.Parent then
			UIGradient_upvr_4.Color = arg3.Color
		end
	end):Disconnect()
end
local function CreateSideFog_upvr_upvr(arg1, arg2) -- Line 313, Named "CreateSideFog_upvr"
	--[[ Upvalues[8]:
		[1]: module_2_upvr (readonly)
		[2]: random_state_upvr_2 (readonly)
		[3]: TweenService_upvr_2 (readonly)
		[4]: BaseQuart0o1_upvr_2 (readonly)
		[5]: clock_upvr (readonly)
		[6]: RunService_upvr (readonly)
		[7]: ReverseQuart0o1_upvr_2 (readonly)
		[8]: Debris_upvr (readonly)
	]]
	local any_new_result1_12_upvr = Instance.new("ImageLabel", arg1)
	any_new_result1_12_upvr.Size = UDim2.fromScale(1, random_state_upvr_2:NextNumber(0.15, 0.25))
	any_new_result1_12_upvr.ImageColor3 = arg2
	any_new_result1_12_upvr.Image = "rbxassetid://3318493505"
	any_new_result1_12_upvr.SizeConstraint = Enum.SizeConstraint.RelativeXX
	any_new_result1_12_upvr.BackgroundTransparency = 1
	any_new_result1_12_upvr.ImageTransparency = 1
	any_new_result1_12_upvr.Rotation = random_state_upvr_2:NextNumber(-3, 3)
	any_new_result1_12_upvr.AnchorPoint = Vector2.one * 0.5
	any_new_result1_12_upvr:AddTag("CutsceneAsset")
	any_new_result1_12_upvr.Parent = arg1
	TweenService_upvr_2:Create(any_new_result1_12_upvr, BaseQuart0o1_upvr_2, {
		ImageTransparency = 0.7;
	}):Play()
	any_new_result1_12_upvr.Parent = arg1
	local any_NextNumber_result1 = random_state_upvr_2:NextNumber(2, 5)
	if nil == 1 then
		any_NextNumber_result1 = -1
	else
		any_NextNumber_result1 = 1
	end
	if math.random(1, 2) == 1 then
	else
	end
	local var186_result1_upvr = clock_upvr()
	local var242_upvw = var186_result1_upvr + random_state_upvr_2:NextNumber(1.5, 2)
	local udim2_upvr_7 = UDim2.fromScale(random_state_upvr_2:NextNumber(), random_state_upvr_2:NextNumber())
	local var245_upvr = any_NextNumber_result1 / 1400 * any_NextNumber_result1
	local var246_upvr = var242_upvw / 8000 * var242_upvw
	local any_Connect_result1_upvr = RunService_upvr.Heartbeat:Connect(function() -- Line 355
		--[[ Upvalues[10]:
			[1]: var242_upvw (read and write)
			[2]: clock_upvr (copied, readonly)
			[3]: any_new_result1_12_upvr (readonly)
			[4]: TweenService_upvr_2 (copied, readonly)
			[5]: ReverseQuart0o1_upvr_2 (copied, readonly)
			[6]: Debris_upvr (copied, readonly)
			[7]: var186_result1_upvr (readonly)
			[8]: udim2_upvr_7 (readonly)
			[9]: var245_upvr (readonly)
			[10]: var246_upvr (readonly)
		]]
		if var242_upvw - 0.5 <= clock_upvr() and not any_new_result1_12_upvr:GetAttribute("Removing") then
			any_new_result1_12_upvr:SetAttribute("Removing", true)
			TweenService_upvr_2:Create(any_new_result1_12_upvr, ReverseQuart0o1_upvr_2, {
				ImageTransparency = 1;
			}):Play()
			Debris_upvr:AddItem(any_new_result1_12_upvr, 0.5)
		end
		local var248 = (clock_upvr() - var186_result1_upvr) * 50
		any_new_result1_12_upvr.Position = udim2_upvr_7 + UDim2.fromScale(var248 * -var245_upvr, var248 * -var246_upvr)
	end)
	any_new_result1_12_upvr.Destroying:Once(function() -- Line 378
		--[[ Upvalues[1]:
			[1]: any_Connect_result1_upvr (readonly)
		]]
		any_Connect_result1_upvr:Disconnect()
	end)
end
local function CreateIcon_upvr_upvr(arg1, arg2, arg3, arg4) -- Line 385, Named "CreateIcon_upvr"
	--[[ Upvalues[5]:
		[1]: module_5_upvr (readonly)
		[2]: module_2_upvr (readonly)
		[3]: TweenService_upvr_2 (readonly)
		[4]: BaseQuart0o3_upvr_2 (readonly)
		[5]: Debris_upvr (readonly)
	]]
	module_5_upvr.PlaySFX("Whoosh", {
		Volume = 1 - arg3 + 0.3;
	})
	local any_new_result1 = Instance.new("ImageLabel", arg1)
	any_new_result1.Size = UDim2.fromScale(0.8, 0.8)
	any_new_result1.ImageColor3 = arg2
	any_new_result1.Image = arg4
	any_new_result1.SizeConstraint = Enum.SizeConstraint.RelativeYY
	any_new_result1.ImageTransparency = arg3
	any_new_result1.AnchorPoint = Vector2.one * 0.5
	any_new_result1.Position = UDim2.fromScale(0.5, 0.5)
	any_new_result1:AddTag("CutsceneAsset")
	any_new_result1.Parent = arg1
	TweenService_upvr_2:Create(any_new_result1, BaseQuart0o3_upvr_2, {
		Size = UDim2.fromScale(0.7, 0.7);
		ImageTransparency = 1;
	}):Play()
	Debris_upvr:AddItem(any_new_result1, 2)
end
local function _D(arg1, ...) -- Line 411
	return ({...})[arg1]
end
print('ASDASF')
--[[any_new_result1_14:insert(module_4.Process.new(module_2_upvr.new, 16685733415):execute())
any_new_result1_14:insert(module_4.Process.new(module_2_upvr.new, 85238370434977):execute())
any_new_result1_14:insert(module_4.Process.new(module_2_upvr.new, 76278787232817):execute())
any_new_result1_14:insert(module_4.Process.new(module_2_upvr.new, 1946917526):execute())
any_new_result1_14:insert(module_4.Process.new(module_2_upvr.new, 3318493505):execute())
any_new_result1_14:insert(module_4.Process.new(module_2_upvr.new, 1195495135):execute())
any_new_result1_14:insert(module_4.Process.new(module_2_upvr.new, 6909741538):execute())
for _, v in script:GetDescendants() do
	if v:IsA("ImageLabel") then
		local Image_2 = v.Image
		if 0 < #Image_2 then
			any_new_result1_14:insert(module_4.Process.new(module_2_upvr.new, Image_2):execute())
		end
	end
end
for _, v_2 in tbl_2_upvr do
	any_new_result1_14:insert(module_4.Process.new(module_2_upvr.new, v_2):execute())
end
any_new_result1_14:executeAll():await():destroy()]]
local ReverseQuart0o2_upvr = module_5_upvr.ReverseQuart0o2
return function(arg1, arg2, arg3, arg4, arg5) -- Line 434
	--[[ Upvalues[16]:
		[1]: module_5_upvr (readonly)
		[2]: TweenService_upvr_2 (readonly)
		[3]: BaseQuart0o3_upvr_2 (readonly)
		[4]: ShakeSize_upvr_2 (readonly)
		[5]: CreateText_upvr_upvr (readonly)
		[6]: tbl_2_upvr (readonly)
		[7]: CreateSideParticle_upvr_upvr (readonly)
		[8]: CreateSideFog_upvr_upvr (readonly)
		[9]: CreateFog_upvr_upvr (readonly)
		[10]: ReverseQuart0o2_upvr (readonly)
		[11]: clock_upvr (readonly)
		[12]: random_state_upvr_2 (readonly)
		[13]: CreateIcon_upvr_upvr (readonly)
		[14]: BaseQuart0o1_upvr_2 (readonly)
		[15]: Debris_upvr (readonly)
		[16]: CreateExplosionParticle_upvr_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	print("goodtsuff")
	local Star2_upvr_2 = arg2.Star
	local BlackBoard_upvr = arg2.Blackboard
	local Colorboard = arg2.Colorboard
	local StarSpinSpeed = arg3:WaitForChild("StarSpinSpeed")
	local var285_upvw = true
	local current_thread_upvr = coroutine.running()
	local tbl_7_upvr = {}
	game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
	module_5_upvr.BlackBoardTransitionize(BlackBoard_upvr, 0, false)
	Colorboard.Image = "rbxassetid://12353440665"
	print("A")
	module_5_upvr.ApplyLabelColor(Star2_upvr_2, arg2)
	module_5_upvr.ApplyLabelColor(Colorboard, arg2)
	module_5_upvr.PlaySFX("OneMilPlus")
	print("As")
	Star2_upvr_2.Size = UDim2.fromScale(1.5, 1.5)
	Star2_upvr_2.Visible = true
	StarSpinSpeed.Value = 5
	print("Af")
	TweenService_upvr_2:Create(StarSpinSpeed, BaseQuart0o3_upvr_2, {
		Value = 1;
	}):Play()
	TweenService_upvr_2:Create(Star2_upvr_2, BaseQuart0o3_upvr_2, {
		Size = UDim2.fromScale(0.6, 0.6);
	}):Play()
	if Star2_upvr_2:FindFirstChildOfClass("UIGradient") then
		Star2_upvr_2:FindFirstChildOfClass("UIGradient").Color = ColorSequence.new(Color3.fromRGB(110, 125, 255), Color3.fromRGB(159, 115, 255))
	end
	ShakeSize_upvr_2.Value = Vector3.zero
	local var291_upvw
	var291_upvw = ShakeSize_upvr_2.Changed:Connect(function(arg1_6) -- Line 480
		--[[ Upvalues[3]:
			[1]: Star2_upvr_2 (readonly)
			[2]: current_thread_upvr (readonly)
			[3]: var291_upvw (read and write)
		]]
		Star2_upvr_2.Position = UDim2.fromScale(0.5, 0.5) + UDim2.fromScale(arg1_6.X, arg1_6.Y)
		if coroutine.status(current_thread_upvr) == "dead" then
			var291_upvw:Disconnect()
		end
	end)
	print("Aff")
	local function _(arg1_7) -- Line 491
		--[[ Upvalues[1]:
			[1]: current_thread_upvr (readonly)
		]]
		local task_wait_result1 = task.wait(arg1_7)
		if task_wait_result1 then
			if coroutine.status(current_thread_upvr) == "dead" then
				task_wait_result1 = false
				return task_wait_result1
			end
			task_wait_result1 = true
		end
		return task_wait_result1
	end
	task.defer(function() -- Line 505
		--[[ Upvalues[6]:
			[1]: current_thread_upvr (readonly)
			[2]: var285_upvw (read and write)
			[3]: tbl_7_upvr (readonly)
			[4]: CreateText_upvr_upvr (copied, readonly)
			[5]: BlackBoard_upvr (readonly)
			[6]: tbl_2_upvr (copied, readonly)
		]]
		while task.wait(0.7) do
			table.insert(tbl_7_upvr, CreateText_upvr_upvr(BlackBoard_upvr, Color3.fromRGB(189, 167, 255), tbl_2_upvr[math.random(1, #tbl_2_upvr)]))
		end
	end)
	task.defer(function() -- Line 534
		--[[ Upvalues[5]:
			[1]: current_thread_upvr (readonly)
			[2]: var285_upvw (read and write)
			[3]: tbl_7_upvr (readonly)
			[4]: CreateSideParticle_upvr_upvr (copied, readonly)
			[5]: BlackBoard_upvr (readonly)
		]]
		while task.wait(0.03) do
			for _ = 1, 2 do
				local var299_upvw
				if math.random(0, 1) ~= 1 or not (function() -- Line 558, Named "INLINED_2"
					--[[ Upvalues[1]:
						[1]: var299_upvw (read and write)
					]]
						var299_upvw = Color3.fromRGB(147, 185, 255)
						return var299_upvw
					end)() then
					var299_upvw = Color3.fromRGB(189, 167, 255)
				end
				table.insert(tbl_7_upvr, CreateSideParticle_upvr_upvr(BlackBoard_upvr, var299_upvw))
			end
		end
	end)
	task.defer(function() -- Line 569
		--[[ Upvalues[5]:
			[1]: current_thread_upvr (readonly)
			[2]: var285_upvw (read and write)
			[3]: CreateSideFog_upvr_upvr (copied, readonly)
			[4]: BlackBoard_upvr (readonly)
			[5]: CreateFog_upvr_upvr (copied, readonly)
		]]
		while task.wait(0.2) do
			CreateSideFog_upvr_upvr(BlackBoard_upvr, Color3.fromRGB(159, 115, 255))
			CreateFog_upvr_upvr(BlackBoard_upvr, Color3.fromRGB(159, 115, 255))
		end
	end)
	print("Adddddddd")
	task.wait(3.23)
	TweenService_upvr_2:Create(StarSpinSpeed, ReverseQuart0o2_upvr, {
		Value = 4;
	}):Play()
	TweenService_upvr_2:Create(Star2_upvr_2, ReverseQuart0o2_upvr, {
		Size = UDim2.fromScale(1.5, 1.5);
	}):Play()
	task.wait(4)
	local var305_upvw = false
	task.defer(function() -- Line 610
		--[[ Upvalues[5]:
			[1]: current_thread_upvr (readonly)
			[2]: var305_upvw (read and write)
			[3]: clock_upvr (copied, readonly)
			[4]: ShakeSize_upvr_2 (copied, readonly)
			[5]: random_state_upvr_2 (copied, readonly)
		]]
		while task.wait(0.01) do
			local rounded = math.round((clock_upvr() - clock_upvr()) * 1000)
			ShakeSize_upvr_2.Value = Vector3.new(random_state_upvr_2:NextNumber(-rounded, rounded) / 100000, random_state_upvr_2:NextNumber(-rounded, rounded) / 100000)
		end
	end)
	module_5_upvr.ColorboardAppear:Play()
	task.defer(CreateIcon_upvr_upvr, BlackBoard_upvr, Color3.new(1, 1, 1), 0.6, "rbxassetid://85238370434977")
	task.wait(1)
	task.defer(CreateIcon_upvr_upvr, BlackBoard_upvr, Color3.new(1, 1, 1), 0.3, "rbxassetid://85238370434977")
	task.wait(1)
	module_5_upvr.PlaySFX("Ambient"):Destroy()
	BlackBoard_upvr.BackgroundTransparency = 1
	var285_upvw = false
	Star2_upvr_2.Visible = false
	Colorboard.Image = "http://www.roblox.com/asset/?id=1195495135"
	Colorboard.ImageColor3 = Color3.new(1, 1, 1)
	Colorboard:ClearAllChildren()
	for _, v_3 in tbl_7_upvr do
		if v_3 and v_3.Parent then
			v_3:Destroy()
		end
	end
	Colorboard.ImageColor3 = Color3.new()
	module_5_upvr.PlaySFX(script.Explosion, {
		TimePosition = 0.2;
	})
	for _ = 1, 15 do
		local any_NextNumber_result1_11 = random_state_upvr_2:NextNumber(2, 5)
		local Flash = script.Flash:Clone()
		Flash.Size = UDim2.fromScale(any_NextNumber_result1_11, any_NextNumber_result1_11)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		Flash.Position = UDim2.fromScale(random_state_upvr_2:NextNumber(), random_state_upvr_2:NextNumber())
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		Flash.Parent = Colorboard
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		TweenService_upvr_2:Create(script.Flash:Clone(), BaseQuart0o1_upvr_2, {
			Size = UDim2.new();
		}):Play()
		--local clone_6_upvr = script.Flash:Clone()
		local udim2_upvr_5 = UDim2.fromScale(random_state_upvr_2:NextNumber(), random_state_upvr_2:NextNumber())
		task.defer(function() -- Line 664
			--[[ Upvalues[4]:
				[1]: current_thread_upvr (readonly)
				[2]: clone_6_upvr (readonly)
				[3]: udim2_upvr_5 (readonly)
				[4]: ShakeSize_upvr_2 (copied, readonly)
			]]
			while task.wait() do
				Flash.Position = udim2_upvr_5 + UDim2.fromScale(ShakeSize_upvr_2.Value.X, ShakeSize_upvr_2.Value.Y)
			end
		end)
		task.wait(0.01)
	end
	task.wait(0.3)
	local clone_5 = script.Shock:Clone()
	clone_5.Size = UDim2.fromScale(3, 3)
	clone_5.Parent = Colorboard
	local clone_4_upvr = {} -- Setting global
	local clone_4_upvr_4 = clone_4_upvr
	clone_4_upvr_4.Size = UDim2.fromScale(0.5, 0.5)
	clone_4_upvr_4.ImageTransparency = 1
	local udim2_upvr_5 = BaseQuart0o1_upvr_2
	TweenService_upvr_2:Create(clone_5, udim2_upvr_5, clone_4_upvr_4):Play()
	udim2_upvr_5 = 0.5
	Debris_upvr:AddItem(clone_5, udim2_upvr_5)
	local clone_4_upvr_3 = script.Icon:Clone()
	clone_4_upvr_3.Parent = Colorboard
	udim2_upvr_5 = clone_4_upvr_3
	TweenService_upvr_2:Create(udim2_upvr_5, BaseQuart0o1_upvr_2, {
		Size = UDim2.fromScale(0.7, 0.7);
		ImageTransparency = 0;
	}):Play()
	task.defer(function() -- Line 707
		--[[ Upvalues[2]:
			[1]: current_thread_upvr (readonly)
			[2]: clone_4_upvr_3 (readonly)
		]]
		while task.wait() do
			clone_4_upvr_3.Position = UDim2.fromScale(0.5, 0.5) + UDim2.fromScale(math.random(-2, 2) / 100, math.random(-2, 2) / 100)
		end
	end)
	task.wait(0.5)
	var305_upvw = false
	module_5_upvr.PlaySFX(script.Explosion1)
	local const_number_2 = 1
	udim2_upvr_5 = const_number_2
	for _ = udim2_upvr_5, 20 do
		task.defer(CreateExplosionParticle_upvr_upvr, arg2, Color3.new(1, 1, 1), arg2:FindFirstChildWhichIsA("UIGradient", const_number_2))
		local _
	end
	for _ = 1, 8 do
		task.defer(CreateExplosionParticle_upvr_upvr, arg2, Color3.new(1, 1, 1), var323)
	end
	local clone_8 = script:WaitForChild("Shock"):Clone()
	clone_8.Parent = Colorboard
	TweenService_upvr_2:Create(clone_8, BaseQuart0o3_upvr_2, {
		Size = UDim2.fromScale(2, 2);
		ImageTransparency = 1;
	}):Play()
	Debris_upvr:AddItem(clone_8, 2)
	local UIGradient_upvr_2 = clone_8:WaitForChild("UIGradient")
	local var324_upvr_Changed_Connect_result1_upvr_2 = var324_upvr.Changed:Connect(function() -- Line 751
		--[[ Upvalues[1]:
			[1]: UIGradient_upvr_2 (readonly)
		]]
		if UIGradient_upvr_2 and UIGradient_upvr_2.Parent then
			UIGradient_upvr_2.Color = var324_upvr.Color
		end
	end)
	coroutine.wrap(function() -- Line 760
		--[[ Upvalues[1]:
			[1]: var324_upvr_Changed_Connect_result1_upvr_2 (readonly)
		]]
		task.wait(2)
		var324_upvr_Changed_Connect_result1_upvr_2:Disconnect()
	end)()
	var291_upvw:Disconnect()
	Star2_upvr_2.Position = UDim2.fromScale(0.5, 0.5)
	clone_4_upvr_3:Destroy()
	Colorboard.ImageColor3 = Color3.new(1, 1, 1)
	module_5_upvr.ColorboardDisappear:Play()
	module_5_upvr.SetShake(0.02, BaseQuart0o3_upvr_2)
end