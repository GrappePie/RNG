-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-15 15:41:26
-- Luau version 6, Types version 3
-- Time taken: 0.022376 seconds

local TweenService_upvr = game:GetService("TweenService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService_upvr = game:GetService("RunService")
local Tween0o_new_result1_upvr_5 = Tween0o.new(0.5, Enum.EasingStyle.Quart)
local Tween0o_new_result1_upvr_6 = Tween0o.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
;({}).BackgroundTransparency = 0.6
;({}).BackgroundTransparency = 1
;({}).BackgroundTransparency = 0
local module_upvr = require(ReplicatedStorage:WaitForChild("Modules"):WaitForChild("UI"):WaitForChild("SceneUI"):WaitForChild("Assets"))
local ShakeSize_upvr = script:WaitForChild("ShakeSize")
local tbl_upvr = {}
local function _(arg1) -- Line 37, Named "Destroyed"
	if arg1.Parent then
		return false
	end
	local _, pcall_result2_3 = pcall(function() -- Line 41
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.Parent = arg1
	end)
	if pcall_result2_3:match("locked") then
		return true
	end
	return false
end
local function customDebris_upvr(arg1, arg2) -- Line 47, Named "customDebris"
	local var12_upvw = true
	coroutine.wrap(function() -- Line 50
		--[[ Upvalues[3]:
			[1]: arg2 (readonly)
			[2]: arg1 (readonly)
			[3]: var12_upvw (read and write)
		]]
		task.wait(arg2)
		local var19_upvr = arg1
		local var20
		if var19_upvr.Parent then
			var20 = false
		else
			local _, pcall_result2_2 = pcall(function() -- Line 41
				--[[ Upvalues[1]:
					[1]: var19_upvr (readonly)
				]]
				var19_upvr.Parent = var19_upvr
			end)
			if pcall_result2_2:match("locked") then
				var20 = true
			else
				var20 = false
			end
		end
		var19_upvr = var12_upvw
		if var19_upvr then
			var19_upvr = arg1
			if var19_upvr and not var20 then
				arg1:Destroy()
			end
		end
	end)()
	return function() -- Line 58
		--[[ Upvalues[1]:
			[1]: var12_upvw (read and write)
		]]
		var12_upvw = false
	end
end
local Tween0o_new_result1_upvr_3 = Tween0o.new(0.3, Enum.EasingStyle.Quart)
local function CreateParticle_upvr(arg1, arg2, arg3, arg4) -- Line 63, Named "CreateParticle"
	--[[ Upvalues[6]:
		[1]: TweenService_upvr (readonly)
		[2]: Tween0o_new_result1_upvr_3 (readonly)
		[3]: customDebris_upvr (readonly)
		[4]: tbl_upvr (readonly)
		[5]: ShakeSize_upvr (readonly)
		[6]: RunService_upvr (readonly)
	]]
	local ImageLabel_upvr_2 = Instance.new("ImageLabel", arg1)
	ImageLabel_upvr_2.Position = UDim2.fromScale(math.random(0, 100) / 100, math.random(0, 100) / 100)
	ImageLabel_upvr_2.Image = arg3
	ImageLabel_upvr_2.ImageColor3 = arg2
	ImageLabel_upvr_2.SizeConstraint = Enum.SizeConstraint.RelativeXX
	ImageLabel_upvr_2.BackgroundTransparency = 1
	local var27 = math.random(2, 6) / 10
	ImageLabel_upvr_2.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel_upvr_2.Size = UDim2.fromScale(var27, var27)
	local any_Create_result1_upvr_3 = TweenService_upvr:Create(ImageLabel_upvr_2, Tween0o_new_result1_upvr_3, {
		Size = UDim2.fromScale();
	})
	any_Create_result1_upvr_3:Play()
	table.insert(tbl_upvr, ImageLabel_upvr_2)
	local customDebris_upvr_result1_upvr = customDebris_upvr(ImageLabel_upvr_2, 0.3)
	local var32_upvw
	var32_upvw = ImageLabel_upvr_2.AttributeChanged:Connect(function(arg1_2) -- Line 80
		--[[ Upvalues[4]:
			[1]: ImageLabel_upvr_2 (readonly)
			[2]: any_Create_result1_upvr_3 (readonly)
			[3]: customDebris_upvr_result1_upvr (readonly)
			[4]: var32_upvw (read and write)
		]]
		if ImageLabel_upvr_2:GetAttribute("Stopped") then
			any_Create_result1_upvr_3:Pause()
			customDebris_upvr_result1_upvr()
			var32_upvw:Disconnect()
		end
	end)
	coroutine.wrap(function() -- Line 88
		--[[ Upvalues[3]:
			[1]: ImageLabel_upvr_2 (readonly)
			[2]: ShakeSize_upvr (copied, readonly)
			[3]: RunService_upvr (copied, readonly)
		]]
		while ImageLabel_upvr_2 and ImageLabel_upvr_2.Parent do
			ImageLabel_upvr_2.Position += UDim2.fromScale(ShakeSize_upvr.Value.X, ShakeSize_upvr.Value.Y)
			RunService_upvr.Heartbeat:Wait()
		end
	end)()
end
local function CreateFog_upvr(arg1, arg2, arg3) -- Line 98, Named "CreateFog"
	--[[ Upvalues[7]:
		[1]: TweenService_upvr (readonly)
		[2]: Tween0o_new_result1_upvr_5 (readonly)
		[3]: tbl_upvr (readonly)
		[4]: Tween0o_new_result1_upvr_6 (readonly)
		[5]: customDebris_upvr (readonly)
		[6]: ShakeSize_upvr (readonly)
		[7]: RunService_upvr (readonly)
	]]
	local ImageLabel_upvr_3 = Instance.new("ImageLabel", arg1)
	ImageLabel_upvr_3.Size = UDim2.fromScale(1, 1)
	ImageLabel_upvr_3.Image = "rbxassetid://1946917526"
	ImageLabel_upvr_3.ImageColor3 = arg2
	ImageLabel_upvr_3.SizeConstraint = Enum.SizeConstraint.RelativeXX
	ImageLabel_upvr_3.BackgroundTransparency = 1
	ImageLabel_upvr_3.ImageTransparency = 1
	ImageLabel_upvr_3.Rotation = math.random(-3, 3)
	ImageLabel_upvr_3.AnchorPoint = Vector2.new(0.5, 0.5)
	TweenService_upvr:Create(ImageLabel_upvr_3, Tween0o_new_result1_upvr_5, {
		ImageTransparency = 0.9;
	}):Play()
	local randint_2 = math.random(2, 5)
	local var37_upvw
	if var37_upvw == 1 then
		randint_2 = -1
	else
		randint_2 = 1
	end
	var37_upvw = math.random(2, 5)
	if math.random(1, 2) == 1 then
		var37_upvw = -1
	else
		var37_upvw = 1
	end
	var37_upvw = tbl_upvr
	table.insert(var37_upvw, ImageLabel_upvr_3)
	var37_upvw = nil
	local any_Create_result1_upvr_2 = TweenService_upvr:Create(ImageLabel_upvr_3, Tween0o_new_result1_upvr_6, {
		ImageTransparency = 1;
	})
	local var41_upvw = nil
	local udim2_upvr_2 = UDim2.fromScale(math.random(0, 100) / 100, math.random(0, 100) / 100)
	local var43_upvr = randint_2 / 1400 * randint_2
	local var44_upvr = var37_upvw / 1400 * var37_upvw
	coroutine.wrap(function() -- Line 118
		--[[ Upvalues[10]:
			[1]: ImageLabel_upvr_3 (readonly)
			[2]: any_Create_result1_upvr_2 (readonly)
			[3]: var37_upvw (read and write)
			[4]: customDebris_upvr (copied, readonly)
			[5]: var41_upvw (read and write)
			[6]: udim2_upvr_2 (readonly)
			[7]: var43_upvr (readonly)
			[8]: var44_upvr (readonly)
			[9]: ShakeSize_upvr (copied, readonly)
			[10]: RunService_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [70] 59. Error Block 18 start (CF ANALYSIS FAILED)
		local var46 = var41_upvw
		if not var46 then
			var46 = time()
		end
		local var47 = (var46 - time()) * 50
		ImageLabel_upvr_3.Position = udim2_upvr_2 + UDim2.fromScale(var47 * -var43_upvr, var47 * -var44_upvr) + UDim2.fromScale(ShakeSize_upvr.Value.X, ShakeSize_upvr.Value.Y)
		RunService_upvr.Heartbeat:Wait()
		-- KONSTANTERROR: [70] 59. Error Block 18 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [10] 9. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [10] 9. Error Block 2 end (CF ANALYSIS FAILED)
	end)()
end
local function CreateSideFog_upvr(arg1, arg2, arg3) -- Line 149, Named "CreateSideFog"
	--[[ Upvalues[7]:
		[1]: TweenService_upvr (readonly)
		[2]: Tween0o_new_result1_upvr_5 (readonly)
		[3]: tbl_upvr (readonly)
		[4]: Tween0o_new_result1_upvr_6 (readonly)
		[5]: customDebris_upvr (readonly)
		[6]: ShakeSize_upvr (readonly)
		[7]: RunService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
	local ImageLabel_upvr = Instance.new("ImageLabel", arg1)
	ImageLabel_upvr.Size = UDim2.fromScale(1, math.random(15, 25) / 100)
	ImageLabel_upvr.Image = "http://www.roblox.com/asset/?id=3318493505"
	ImageLabel_upvr.ImageColor3 = arg2
	ImageLabel_upvr.SizeConstraint = Enum.SizeConstraint.RelativeXX
	ImageLabel_upvr.BackgroundTransparency = 1
	ImageLabel_upvr.ImageTransparency = 1
	ImageLabel_upvr.Rotation = math.random(-3, 3)
	ImageLabel_upvr.AnchorPoint = Vector2.new(0.5, 0.5)
	TweenService_upvr:Create(ImageLabel_upvr, Tween0o_new_result1_upvr_5, {
		ImageTransparency = 0.7;
	}):Play()
	local randint_4 = math.random(0, 100)
	local var51_upvw
	if math.random(1, 2) == 1 then
		randint_4 = 0
	else
		randint_4 = 1
	end
	var51_upvw = 2
	var51_upvw = math.random(1, 2)
	if var51_upvw == 1 then
		-- KONSTANTWARNING: GOTO [94] #71
	end
	-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [93] 70. Error Block 22 start (CF ANALYSIS FAILED)
	var51_upvw = math.random(2, 5)
	if math.random(1, 2) == 1 then
		var51_upvw = -1
	else
		var51_upvw = 1
	end
	var51_upvw = tbl_upvr
	table.insert(var51_upvw, ImageLabel_upvr)
	var51_upvw = nil
	local any_Create_result1_upvr = TweenService_upvr:Create(ImageLabel_upvr, Tween0o_new_result1_upvr_6, {
		ImageTransparency = 1;
	})
	local var55_upvw
	local udim2_upvr = UDim2.fromScale(randint_4 / 100, randint_4)
	local var57_upvr = math.random(var51_upvw, 5) / 1400 * 1
	local var58_upvr = var51_upvw / 8000 * var51_upvw
	coroutine.wrap(function() -- Line 169
		--[[ Upvalues[10]:
			[1]: ImageLabel_upvr (readonly)
			[2]: any_Create_result1_upvr (readonly)
			[3]: var51_upvw (read and write)
			[4]: customDebris_upvr (copied, readonly)
			[5]: var55_upvw (read and write)
			[6]: udim2_upvr (readonly)
			[7]: var57_upvr (readonly)
			[8]: var58_upvr (readonly)
			[9]: ShakeSize_upvr (copied, readonly)
			[10]: RunService_upvr (copied, readonly)
		]]
		local time_result1 = time()
		while ImageLabel_upvr and ImageLabel_upvr.Parent do
			if time_result1 + math.random(15, 20) / 10 - 0.5 <= time() and not ImageLabel_upvr:GetAttribute("Removing") then
				ImageLabel_upvr:SetAttribute("Removing", true)
				any_Create_result1_upvr:Play()
				var51_upvw = customDebris_upvr(ImageLabel_upvr, 0.5)
			end
			if ImageLabel_upvr:GetAttribute("Stopped") then
				var55_upvw = time()
				if ImageLabel_upvr:GetAttribute("Removing") then
					if any_Create_result1_upvr then
						any_Create_result1_upvr:Pause()
					end
					if var51_upvw then
						var51_upvw()
					end
				end
			end
			local var63 = var55_upvw
			if not var63 then
				var63 = time()
			end
			local var64 = (var63 - time_result1) * 50
			ImageLabel_upvr.Position = udim2_upvr + UDim2.fromScale(var64 * -var57_upvr, var64 * -var58_upvr) + UDim2.fromScale(ShakeSize_upvr.Value.X, ShakeSize_upvr.Value.Y)
			RunService_upvr.Heartbeat:Wait()
		end
	end)()
	-- KONSTANTERROR: [93] 70. Error Block 22 end (CF ANALYSIS FAILED)
end
local function _CreateIcon(arg1, arg2) -- Line 199, Named "CreateIcon"
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.PlaySFX("Whoosh", {
		Volume = 1 - arg2 + 0.3;
	})
end
local StarterGui_upvr = game:GetService("StarterGui")
local Tween0o_new_result1_upvr_7 = Tween0o.new(2, Enum.EasingStyle.Quart)
local Tween0o_new_result1_upvr_4 = Tween0o.new(3, Enum.EasingStyle.Quart)
local Tween0o_new_result1_upvr_2 = Tween0o.new(6, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
local Debris_upvr = game:GetService("Debris")
local Sounds_upvr = ReplicatedStorage:WaitForChild("Assets"):WaitForChild("Sounds")
local Tween0o_new_result1_upvr = Tween0o.new(1, Enum.EasingStyle.Quart)
return function(arg1, arg2) -- Line 205
	--[[ Upvalues[16]:
		[8]: CreateSideFog_upvr (readonly)
		[9]: CreateFog_upvr (readonly)
		[10]: RunService_upvr (readonly)
		[1]: tbl_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: StarterGui_upvr (readonly)
		[4]: TweenService_upvr (readonly)
		[5]: Tween0o_new_result1_upvr_7 (readonly)
		[6]: Tween0o_new_result1_upvr_4 (readonly)
		[7]: CreateParticle_upvr (readonly)
		[11]: Tween0o_new_result1_upvr_2 (readonly)
		[12]: Tween0o_new_result1_upvr_5 (readonly)
		[13]: ShakeSize_upvr (readonly)
		[14]: Debris_upvr (readonly)
		[15]: Sounds_upvr (readonly)
		[16]: Tween0o_new_result1_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	table.clear(tbl_upvr)
	local Star2_upvr = module_upvr.Star2
	local BlackBoard_upvr = module_upvr.BlackBoard
	local Colorboard = module_upvr.Colorboard
	local StarSpinSpeed_upvr = module_upvr.StarSpinSpeed
	local clone_6_upvr = script:WaitForChild("Clock"):Clone()
	clone_6_upvr.Parent = BlackBoard_upvr
	local current_thread_upvr = coroutine.running()
	module_upvr.PlaySFX(script:WaitForChild("Start"))
	StarterGui_upvr:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
	arg2.Visible = false
	module_upvr.BlackBoardAppear:Play()
	Colorboard.Image = "http://www.roblox.com/asset/?id=12353440665"
	Colorboard.ImageTransparency = 1
	Colorboard.ImageColor3 = Color3.new(1, 1, 1)
	Star2_upvr.ImageColor3 = Color3.new(1, 1, 1)
	Star2_upvr.Size = UDim2.fromScale(1.5, 1.5)
	Star2_upvr.Image = "rbxassetid://17068400400"
	Star2_upvr.Visible = true
	StarSpinSpeed_upvr.Value = 5
	TweenService_upvr:Create(Star2_upvr, Tween0o_new_result1_upvr_7, {
		Size = UDim2.fromScale(0.6, 0.6);
	}):Play()
	TweenService_upvr:Create(StarSpinSpeed_upvr, Tween0o_new_result1_upvr_7, {
		Value = 1;
	}):Play()
	module_upvr.ApplyLabelColor(Star2_upvr, arg2)
	module_upvr.ApplyLabelColor(Colorboard, arg2)
	local var122_upvw = true
	local clone = script:WaitForChild("ClockHands"):Clone()
	clone.Parent = BlackBoard_upvr.Parent
	for _, v in clone:GetChildren() do
		TweenService_upvr:Create(v, Tween0o_new_result1_upvr_4, {
			Rotation = 180;
		}):Play()
	end
	local function _(arg1_3) -- Line 265, Named "IsActive"
		--[[ Upvalues[1]:
			[1]: current_thread_upvr (readonly)
		]]
		local task_wait_result1 = task.wait(arg1_3)
		if task_wait_result1 then
			if coroutine.status(current_thread_upvr) == "dead" then
				task_wait_result1 = false
			else
				task_wait_result1 = true
			end
		end
		return task_wait_result1
	end
	task.defer(function() -- Line 269
		--[[ Upvalues[4]:
			[1]: current_thread_upvr (readonly)
			[2]: var122_upvw (read and write)
			[3]: CreateParticle_upvr (copied, readonly)
			[4]: BlackBoard_upvr (readonly)
		]]
		while true do
			local var130
			var130 = var130(0.05)
			if var130 then
				if coroutine.status(current_thread_upvr) == "dead" then
					var130 = false
				else
					var130 = true
				end
			end
			if not var130 then break end
			var130 = var122_upvw
			if not var130 then break end
			var130 = CreateParticle_upvr
			var130(BlackBoard_upvr, Color3.fromRGB(60, 102, 255), "rbxassetid://6909741538")
		end
	end)
	task.defer(function() -- Line 275
		--[[ Upvalues[5]:
			[1]: current_thread_upvr (readonly)
			[2]: var122_upvw (read and write)
			[3]: CreateSideFog_upvr (copied, readonly)
			[4]: BlackBoard_upvr (readonly)
			[5]: CreateFog_upvr (copied, readonly)
		]]
		while true do
			local var132
			var132 = var132(0.2)
			if var132 then
				if coroutine.status(current_thread_upvr) == "dead" then
					var132 = false
				else
					var132 = true
				end
			end
			if not var132 then break end
			var132 = var122_upvw
			if not var132 then break end
			var132 = CreateSideFog_upvr
			var132(BlackBoard_upvr, Color3.fromRGB(60, 102, 255))
			var132 = CreateFog_upvr
			var132(BlackBoard_upvr, Color3.fromRGB(60, 102, 255))
		end
	end)
	task.wait(1)
	TweenService_upvr:Create(clone_6_upvr, Tween0o_new_result1_upvr_4, {
		Size = UDim2.fromScale(1.1, 1.1);
		ImageTransparency = 0.8;
	}):Play()
	TweenService_upvr:Create(clone_6_upvr.Hours, Tween0o_new_result1_upvr_4, {
		ImageTransparency = 0.8;
	}):Play()
	TweenService_upvr:Create(clone_6_upvr.Minutes, Tween0o_new_result1_upvr_4, {
		ImageTransparency = 0.8;
	}):Play()
	local var137_upvw
	var137_upvw = RunService_upvr.Heartbeat:Connect(function(arg1_4) -- Line 290
		--[[ Upvalues[3]:
			[1]: clone_6_upvr (readonly)
			[2]: var137_upvw (read and write)
			[3]: StarSpinSpeed_upvr (readonly)
		]]
		if clone_6_upvr.ImageColor3 == Color3.new(0.729412, 0.729412, 0.729412) or not clone_6_upvr.Parent then
			var137_upvw:Disconnect()
		else
			local var138 = clone_6_upvr
			var138.Rotation += arg1_4 * 5 * StarSpinSpeed_upvr.Value
			local Hours = clone_6_upvr.Hours
			Hours.Rotation += arg1_4 * 15 * StarSpinSpeed_upvr.Value
			local Minutes = clone_6_upvr.Minutes
			Minutes.Rotation += arg1_4 * 60 * StarSpinSpeed_upvr.Value
		end
	end)
	task.wait(2.23)
	TweenService_upvr:Create(StarSpinSpeed_upvr, Tween0o_new_result1_upvr_2, {
		Value = 4;
	}):Play()
	TweenService_upvr:Create(Star2_upvr, Tween0o_new_result1_upvr_2, {
		Size = UDim2.fromScale(1.5, 1.5);
	}):Play()
	task.wait(4)
	module_upvr.ColorboardAppear:Play()
	module_upvr.PlaySFX("Whoosh", {
		Volume = 0.7;
	})
	clone_6_upvr.ImageTransparency = 0
	TweenService_upvr:Create(clone_6_upvr, Tween0o_new_result1_upvr_5, {
		ImageTransparency = 0.8;
	}):Play()
	task.wait(1)
	module_upvr.PlaySFX("Whoosh", {
		Volume = 1;
	})
	clone_6_upvr.ImageTransparency = 0
	TweenService_upvr:Create(clone_6_upvr, Tween0o_new_result1_upvr_5, {
		ImageTransparency = 0.8;
	}):Play()
	task.wait(1)
	clone_6_upvr.ImageColor3 = Color3.new(0.729412, 0.729412, 0.729412)
	clone_6_upvr.Hours.ImageColor3 = Color3.new(0.729412, 0.729412, 0.729412)
	clone_6_upvr.Minutes.ImageColor3 = Color3.new(0.729412, 0.729412, 0.729412)
	coroutine.wrap(function() -- Line 324
		--[[ Upvalues[3]:
			[1]: ShakeSize_upvr (copied, readonly)
			[2]: Star2_upvr (readonly)
			[3]: clone_6_upvr (readonly)
		]]
		for i_2 = 50, 0, -1 do
			ShakeSize_upvr.Value = Vector3.new(math.random(-i_2, i_2) / 2500, math.random(-i_2, i_2) / 2500, 0)
			Star2_upvr.Position = UDim2.fromScale(0.5 + ShakeSize_upvr.Value.X, 0.5 + ShakeSize_upvr.Value.Y)
			clone_6_upvr.Position = UDim2.fromScale(0.5 + ShakeSize_upvr.Value.X, 0.5 + ShakeSize_upvr.Value.Y)
			task.wait()
		end
		Star2_upvr.Position = UDim2.fromScale(0.5, 0.5)
		clone_6_upvr.Position = UDim2.fromScale(0.5, 0.5)
		ShakeSize_upvr.Value = Vector3.new()
	end)()
	module_upvr.PlaySFX(script:WaitForChild("Ambient")):Destroy()
	module_upvr.PlaySFX("OneMilPlus"):Destroy()
	module_upvr.PlaySFX(script:WaitForChild("TimeStop1"))
	module_upvr.PlaySFX(script:WaitForChild("TimeStop2"))
	var122_upvw = false
	StarSpinSpeed_upvr.Value = 0
	for i_3, v_2 in tbl_upvr do
		if v_2 and v_2.Parent and v_2:IsA("ImageLabel") then
			v_2.ImageColor3 = Color3.new(0.533333, 0.533333, 0.533333)
			v_2:SetAttribute("Stopped", true)
		end
	end
	if Colorboard:FindFirstChildOfClass("UIGradient") then
		local i_3 = 0.670588
		local v_2 = 0.670588
		i_3 = Color3.new
		v_2 = 0.313725
		i_3 = i_3(v_2, 0.313725, 0.313725)
		Colorboard:FindFirstChildOfClass("UIGradient").Color = ColorSequence.new(Color3.new(i_3, v_2, 0.670588), i_3)
	end
	if Star2_upvr:FindFirstChildOfClass("UIGradient") then
		local i_3 = 0.670588
		local v_2 = 0.670588
		i_3 = Color3.new
		v_2 = 0.313725
		i_3 = i_3(v_2, 0.313725, 0.313725)
		Star2_upvr:FindFirstChildOfClass("UIGradient").Color = ColorSequence.new(Color3.new(i_3, v_2, 0.670588), i_3)
	end
	task.wait(1)
	local clone_3 = Star2_upvr:Clone()
	clone_3.Parent = BlackBoard_upvr
	Star2_upvr.Visible = false
	for _ = 1, 30 do
		script:WaitForChild("Flash"):Clone().Parent = Colorboard
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		script:WaitForChild("Flash"):Clone().Position = UDim2.fromScale(math.random(0, 100) / 100, math.random(0, 100) / 100)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		script:WaitForChild("Flash"):Clone().Rotation = math.random(0, 360)
		local var150 = math.random(2, 5) / 10
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		TweenService_upvr:Create(script:WaitForChild("Flash"):Clone(), Tween0o.new(var150, Enum.EasingStyle.Quart), {
			Size = UDim2.fromScale(0, 5);
		}):Play()
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		Debris_upvr:AddItem(script:WaitForChild("Flash"):Clone(), var150)
	end
	for _ = 1, 30 do
		script:WaitForChild("Flash"):Clone().Parent = Colorboard
		local var152 = math.random(2, 5) / 10
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		TweenService_upvr:Create(script:WaitForChild("Flash"):Clone(), Tween0o.new(var152, Enum.EasingStyle.Quart), {
			Size = UDim2.fromScale(0, 5);
		}):Play()
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		Debris_upvr:AddItem(script:WaitForChild("Flash"):Clone(), var152)
		local var154 = 1
		if math.random(var154, 2) == 1 then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			script:WaitForChild("Flash"):Clone().Rotation = 90
			local randint = math.random(0, 100)
			var154 = randint / 100
			if math.random(1, 2) == 1 then
				randint = 0
			else
				randint = 1
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			script:WaitForChild("Flash"):Clone().Position = UDim2.fromScale(var154, randint)
		else
			if math.random(1, 2) == 1 then
				var154 = 0
			else
				var154 = 1
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			script:WaitForChild("Flash"):Clone().Position = UDim2.fromScale(var154, math.random(0, 100) / 100)
		end
	end
	module_upvr.PlaySFX(script:WaitForChild("GlassBreak1"))
	Sounds_upvr:WaitForChild("GlassBreak").TimePosition = 0.3
	Sounds_upvr:WaitForChild("GlassBreak").Pitch = 1
	Sounds_upvr:WaitForChild("GlassBreak"):Play()
	local clone_5 = script:WaitForChild("Cracks"):Clone()
	clone_5.Parent = Colorboard
	TweenService_upvr:Create(clone_5, Tween0o_new_result1_upvr_5, {
		Size = UDim2.fromScale(1.3, 1.3);
	}):Play()
	Debris_upvr:AddItem(clone_5, 1)
	task.wait(1)
	for _ = 1, 30 do
		local clone_4 = script:WaitForChild("Flash"):Clone()
		clone_4.Parent = Colorboard
		clone_4.Position = UDim2.fromScale(math.random(0, 100) / 100, math.random(0, 100) / 100)
		clone_4.Rotation = math.random(0, 360)
		local var159 = math.random(2, 5) / 10
		TweenService_upvr:Create(clone_4, Tween0o.new(var159, Enum.EasingStyle.Quart), {
			Size = UDim2.fromScale(0, 5);
		}):Play()
		Debris_upvr:AddItem(clone_4, var159)
	end
	for _ = 1, 30 do
		local clone_2 = script:WaitForChild("Flash"):Clone()
		clone_2.Parent = Colorboard
		local var162 = math.random(2, 5) / 10
		TweenService_upvr:Create(clone_2, Tween0o.new(var162, Enum.EasingStyle.Quart), {
			Size = UDim2.fromScale(0, 5);
		}):Play()
		Debris_upvr:AddItem(clone_2, var162)
		local var164 = 1
		if math.random(var164, 2) == 1 then
			clone_2.Rotation = 90
			local randint_3 = math.random(0, 100)
			var164 = randint_3 / 100
			if math.random(1, 2) == 1 then
				randint_3 = 0
			else
				randint_3 = 1
			end
			clone_2.Position = UDim2.fromScale(var164, randint_3)
		else
			if math.random(1, 2) == 1 then
				var164 = 0
			else
				var164 = 1
			end
			clone_2.Position = UDim2.fromScale(var164, math.random(0, 100) / 100)
		end
	end
	module_upvr.PlaySFX(script:WaitForChild("GlassBreak2"))
	module_upvr.PlaySFX(script:WaitForChild("GlassBreak3"))
	clone:Destroy()
	Colorboard.Image = "http://www.roblox.com/asset/?id=1195495135"
	Colorboard.ImageColor3 = Color3.new(1, 1, 1)
	if Colorboard:FindFirstChildOfClass("UIGradient") then
		Colorboard:FindFirstChildOfClass("UIGradient"):Destroy()
	end
	module_upvr.ColorboardDisappear:Play()
	clone_3:Destroy()
	for _, v_3 in tbl_upvr do
		if v_3 and v_3.Parent then
			v_3:Destroy()
		end
	end
	BlackBoard_upvr.BackgroundTransparency = 1
	Star2_upvr.Visible = false
	arg2.Visible = true
	module_upvr.SetShake(0.02, Tween0o_new_result1_upvr_7)
	var137_upvw:Disconnect()
	clone_6_upvr:Destroy()
	arg2.Position = UDim2.fromScale(0.5, 0.5)
	arg2.Size = UDim2.fromScale(0.6, 0.2)
	TweenService_upvr:Create(arg2, Tween0o_new_result1_upvr, {
		Size = UDim2.fromScale(0.4, 0.1);
	}):Play()
end
