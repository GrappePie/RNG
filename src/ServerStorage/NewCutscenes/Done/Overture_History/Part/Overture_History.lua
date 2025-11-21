-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-15 15:45:13
-- Luau version 6, Types version 3
-- Time taken: 0.021442 seconds

local TweenService_upvr = game:GetService("TweenService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService_upvr = game:GetService("RunService")
local Tween0o_new_result1_upvr_2 = Tween0o.new(0.5, Enum.EasingStyle.Quart)
local Tween0o_new_result1_upvr_6 = Tween0o.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
;({}).BackgroundTransparency = 0.6
;({}).BackgroundTransparency = 1
;({}).BackgroundTransparency = 0
local module_upvr = require(ReplicatedStorage:WaitForChild("Modules"):WaitForChild("UI"):WaitForChild("SceneUI"):WaitForChild("Assets"))
local ShakeSize_upvr = script:WaitForChild("ShakeSize")
local tbl_upvr = {}
local function _(arg1) -- Line 39, Named "Destroyed"
	if arg1.Parent then
		return false
	end
	local _, pcall_result2_3 = pcall(function() -- Line 43
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
local function customDebris_upvr(arg1, arg2) -- Line 49, Named "customDebris"
	local var12_upvw = true
	coroutine.wrap(function() -- Line 52
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
			local _, pcall_result2_2 = pcall(function() -- Line 43
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
	return function() -- Line 60
		--[[ Upvalues[1]:
			[1]: var12_upvw (read and write)
		]]
		var12_upvw = false
	end
end
local Tween0o_new_result1_upvr = Tween0o.new(0.3, Enum.EasingStyle.Quart)
local function CreateParticle_upvr(arg1, arg2, arg3, arg4) -- Line 65, Named "CreateParticle"
	--[[ Upvalues[6]:
		[1]: TweenService_upvr (readonly)
		[2]: Tween0o_new_result1_upvr (readonly)
		[3]: customDebris_upvr (readonly)
		[4]: tbl_upvr (readonly)
		[5]: ShakeSize_upvr (readonly)
		[6]: RunService_upvr (readonly)
	]]
	local ImageLabel_upvr = Instance.new("ImageLabel", arg1)
	ImageLabel_upvr.Position = UDim2.fromScale(math.random(0, 100) / 100, math.random(0, 100) / 100)
	ImageLabel_upvr.Image = arg3
	ImageLabel_upvr.ImageColor3 = arg2
	ImageLabel_upvr.SizeConstraint = Enum.SizeConstraint.RelativeXX
	ImageLabel_upvr.BackgroundTransparency = 1
	local var27 = math.random(2, 6) / 10
	ImageLabel_upvr.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel_upvr.Size = UDim2.fromScale(var27, var27)
	TweenService_upvr:Create(ImageLabel_upvr, Tween0o_new_result1_upvr, {
		Size = UDim2.fromScale();
	}):Play()
	table.insert(tbl_upvr, ImageLabel_upvr)
	coroutine.wrap(function() -- Line 80
		--[[ Upvalues[3]:
			[1]: ImageLabel_upvr (readonly)
			[2]: ShakeSize_upvr (copied, readonly)
			[3]: RunService_upvr (copied, readonly)
		]]
		while ImageLabel_upvr and ImageLabel_upvr.Parent do
			ImageLabel_upvr.Position += UDim2.fromScale(ShakeSize_upvr.Value.X, ShakeSize_upvr.Value.Y)
			RunService_upvr.Heartbeat:Wait()
		end
	end)()
end
local function CreateFog_upvr(arg1, arg2, arg3) -- Line 90, Named "CreateFog"
	--[[ Upvalues[7]:
		[1]: TweenService_upvr (readonly)
		[2]: Tween0o_new_result1_upvr_2 (readonly)
		[3]: tbl_upvr (readonly)
		[4]: Tween0o_new_result1_upvr_6 (readonly)
		[5]: customDebris_upvr (readonly)
		[6]: ShakeSize_upvr (readonly)
		[7]: RunService_upvr (readonly)
	]]
	local ImageLabel_upvr_2 = Instance.new("ImageLabel", arg1)
	ImageLabel_upvr_2.Size = UDim2.fromScale(1, 1)
	ImageLabel_upvr_2.Image = "rbxassetid://1946917526"
	ImageLabel_upvr_2.ImageColor3 = arg2
	ImageLabel_upvr_2.SizeConstraint = Enum.SizeConstraint.RelativeXX
	ImageLabel_upvr_2.BackgroundTransparency = 1
	ImageLabel_upvr_2.ImageTransparency = 1
	ImageLabel_upvr_2.Rotation = math.random(-3, 3)
	ImageLabel_upvr_2.AnchorPoint = Vector2.new(0.5, 0.5)
	TweenService_upvr:Create(ImageLabel_upvr_2, Tween0o_new_result1_upvr_2, {
		ImageTransparency = 0.9;
	}):Play()
	local randint_2 = math.random(2, 5)
	local var33_upvw
	if var33_upvw == 1 then
		randint_2 = -1
	else
		randint_2 = 1
	end
	var33_upvw = math.random(2, 5)
	if math.random(1, 2) == 1 then
		var33_upvw = -1
	else
		var33_upvw = 1
	end
	var33_upvw = tbl_upvr
	table.insert(var33_upvw, ImageLabel_upvr_2)
	var33_upvw = nil
	local any_Create_result1_upvr = TweenService_upvr:Create(ImageLabel_upvr_2, Tween0o_new_result1_upvr_6, {
		ImageTransparency = 1;
	})
	local var37_upvw = nil
	local udim2_upvr_3 = UDim2.fromScale(math.random(0, 100) / 100, math.random(0, 100) / 100)
	local var39_upvr = randint_2 / 1400 * randint_2
	local var40_upvr = var33_upvw / 1400 * var33_upvw
	coroutine.wrap(function() -- Line 110
		--[[ Upvalues[10]:
			[1]: ImageLabel_upvr_2 (readonly)
			[2]: any_Create_result1_upvr (readonly)
			[3]: var33_upvw (read and write)
			[4]: customDebris_upvr (copied, readonly)
			[5]: var37_upvw (read and write)
			[6]: udim2_upvr_3 (readonly)
			[7]: var39_upvr (readonly)
			[8]: var40_upvr (readonly)
			[9]: ShakeSize_upvr (copied, readonly)
			[10]: RunService_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local var42
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [70] 59. Error Block 21 start (CF ANALYSIS FAILED)
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var42 = -time() + var37_upvw
			return var42
		end
		if not var37_upvw or not INLINED() then
			var42 = time()
		end
		local var43 = (var42 - time()) * 50
		var42 = udim2_upvr_3 + UDim2.fromScale(var43 * -var39_upvr, var43 * -var40_upvr) + UDim2.fromScale(ShakeSize_upvr.Value.X, ShakeSize_upvr.Value.Y)
		ImageLabel_upvr_2.Position = var42
		var42 = RunService_upvr
		var42.Heartbeat:Wait()
		-- KONSTANTERROR: [70] 59. Error Block 21 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [10] 9. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [10] 9. Error Block 2 end (CF ANALYSIS FAILED)
	end)()
end
local function CreateDebris_upvr(arg1, arg2) -- Line 141, Named "CreateDebris"
	--[[ Upvalues[1]:
		[1]: TweenService_upvr (readonly)
	]]
	local var44 = math.random(50, 100) / 100
	local ImageLabel_upvr_3 = Instance.new("ImageLabel", arg1)
	ImageLabel_upvr_3.SizeConstraint = Enum.SizeConstraint.RelativeYY
	ImageLabel_upvr_3.Size = UDim2.fromScale(var44, var44)
	ImageLabel_upvr_3.Rotation = math.random(-5, 5)
	ImageLabel_upvr_3.BackgroundTransparency = 1
	ImageLabel_upvr_3.ImageColor3 = Color3.fromRGB(147, 255, 154)
	ImageLabel_upvr_3.Image = "rbxassetid://17391818367"
	ImageLabel_upvr_3.AnchorPoint = Vector2.new(0.5, 0.5)
	TweenService_upvr:Create(ImageLabel_upvr_3, Tween0o.new(arg2, Enum.EasingStyle.Quart), {
		Size = UDim2.fromScale(0, 0);
	}):Play()
	local time_result1_upvr = time()
	local var49_upvr = math.random(-10, 10) / 10
	local udim2_upvr_2 = UDim2.fromScale(math.random(0, 100) / 100, math.random(0, 100) / 100)
	local var51_upvr = math.random(-5, 5) / 100
	local var52_upvr = math.random(-5, 5) / 100
	coroutine.wrap(function() -- Line 162
		--[[ Upvalues[7]:
			[1]: time_result1_upvr (readonly)
			[2]: arg2 (readonly)
			[3]: ImageLabel_upvr_3 (readonly)
			[4]: var49_upvr (readonly)
			[5]: udim2_upvr_2 (readonly)
			[6]: var51_upvr (readonly)
			[7]: var52_upvr (readonly)
		]]
		while true do
			local var53 = time() - time_result1_upvr
			if arg2 <= var53 then
				ImageLabel_upvr_3:Destroy()
				return
			end
			local var54 = ImageLabel_upvr_3
			var54.Rotation += var49_upvr
			ImageLabel_upvr_3.Position = udim2_upvr_2 + UDim2.fromScale(var53 * var51_upvr, var53 * var52_upvr)
			task.wait()
		end
	end)()
end
local function CreateSideFog_upvr(arg1, arg2, arg3) -- Line 176, Named "CreateSideFog"
	--[[ Upvalues[7]:
		[1]: TweenService_upvr (readonly)
		[2]: Tween0o_new_result1_upvr_2 (readonly)
		[3]: tbl_upvr (readonly)
		[4]: Tween0o_new_result1_upvr_6 (readonly)
		[5]: customDebris_upvr (readonly)
		[6]: ShakeSize_upvr (readonly)
		[7]: RunService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
	local ImageLabel_upvr_4 = Instance.new("ImageLabel", arg1)
	ImageLabel_upvr_4.Size = UDim2.fromScale(1, math.random(15, 25) / 100)
	ImageLabel_upvr_4.Image = "http://www.roblox.com/asset/?id=3318493505"
	ImageLabel_upvr_4.ImageColor3 = arg2
	ImageLabel_upvr_4.SizeConstraint = Enum.SizeConstraint.RelativeXX
	ImageLabel_upvr_4.BackgroundTransparency = 1
	ImageLabel_upvr_4.ImageTransparency = 1
	ImageLabel_upvr_4.Rotation = math.random(-3, 3)
	ImageLabel_upvr_4.AnchorPoint = Vector2.new(0.5, 0.5)
	TweenService_upvr:Create(ImageLabel_upvr_4, Tween0o_new_result1_upvr_2, {
		ImageTransparency = 0.7;
	}):Play()
	local randint = math.random(0, 100)
	local var58_upvw
	if math.random(1, 2) == 1 then
		randint = 0
	else
		randint = 1
	end
	var58_upvw = 2
	var58_upvw = math.random(1, 2)
	if var58_upvw == 1 then
		-- KONSTANTWARNING: GOTO [94] #71
	end
	-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [93] 70. Error Block 22 start (CF ANALYSIS FAILED)
	var58_upvw = math.random(2, 5)
	if math.random(1, 2) == 1 then
		var58_upvw = -1
	else
		var58_upvw = 1
	end
	var58_upvw = tbl_upvr
	table.insert(var58_upvw, ImageLabel_upvr_4)
	var58_upvw = nil
	local any_Create_result1_upvr_2 = TweenService_upvr:Create(ImageLabel_upvr_4, Tween0o_new_result1_upvr_6, {
		ImageTransparency = 1;
	})
	local var62_upvw
	local udim2_upvr = UDim2.fromScale(randint / 100, randint)
	local var64_upvr = math.random(var58_upvw, 5) / 1400 * 1
	local var65_upvr = var58_upvw / 8000 * var58_upvw
	coroutine.wrap(function() -- Line 196
		--[[ Upvalues[10]:
			[1]: ImageLabel_upvr_4 (readonly)
			[2]: any_Create_result1_upvr_2 (readonly)
			[3]: var58_upvw (read and write)
			[4]: customDebris_upvr (copied, readonly)
			[5]: var62_upvw (read and write)
			[6]: udim2_upvr (readonly)
			[7]: var64_upvr (readonly)
			[8]: var65_upvr (readonly)
			[9]: ShakeSize_upvr (copied, readonly)
			[10]: RunService_upvr (copied, readonly)
		]]
		local time_result1_2 = time()
		while true do
			local var73
			if not ImageLabel_upvr_4 then break end
			if not ImageLabel_upvr_4.Parent then break end
			if time_result1_2 + math.random(15, 20) / 10 - 0.5 <= time() then
				var73 = "Removing"
				if not ImageLabel_upvr_4:GetAttribute(var73) then
					var73 = "Removing"
					ImageLabel_upvr_4:SetAttribute(var73, true)
					any_Create_result1_upvr_2:Play()
					var73 = 0.5
					var58_upvw = customDebris_upvr(ImageLabel_upvr_4, var73)
				end
			end
			var73 = "Stopped"
			if ImageLabel_upvr_4:GetAttribute(var73) then
				var62_upvw = time()
				var73 = "Removing"
				if ImageLabel_upvr_4:GetAttribute(var73) then
					if any_Create_result1_upvr_2 then
						any_Create_result1_upvr_2:Pause()
					end
					if var58_upvw then
						var58_upvw()
					end
				end
			end
			local function INLINED_4() -- Internal function, doesn't exist in bytecode
				var73 = -time() + var62_upvw
				return var73
			end
			if not var62_upvw or not INLINED_4() then
				var73 = time()
			end
			local var74 = (var73 - time_result1_2) * 50
			var73 = udim2_upvr + UDim2.fromScale(var74 * -var64_upvr, var74 * -var65_upvr) + UDim2.fromScale(ShakeSize_upvr.Value.X, ShakeSize_upvr.Value.Y)
			ImageLabel_upvr_4.Position = var73
			var73 = RunService_upvr
			var73.Heartbeat:Wait()
		end
	end)()
	-- KONSTANTERROR: [93] 70. Error Block 22 end (CF ANALYSIS FAILED)
end
local function _CreateIcon(arg1, arg2) -- Line 226, Named "CreateIcon"
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.PlaySFX("Whoosh", {
		Volume = 1 - arg2 + 0.3;
	})
end
local StarterGui_upvr = game:GetService("StarterGui")
local Tween0o_new_result1_upvr_7 = Tween0o.new(2, Enum.EasingStyle.Quart)
local Overture_upvr = ReplicatedStorage:WaitForChild("Assets"):WaitForChild("TiersUI"):WaitForChild("Overture")
local Tween0o_new_result1_upvr_4 = Tween0o.new(3, Enum.EasingStyle.Quart)
local Tween0o_new_result1_upvr_3 = Tween0o.new(6, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
local Debris_upvr = game:GetService("Debris")
local Tween0o_new_result1_upvr_5 = Tween0o.new(1, Enum.EasingStyle.Quart)
return function(arg1, arg2) -- Line 232
	--[[ Upvalues[17]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: StarterGui_upvr (readonly)
		[4]: TweenService_upvr (readonly)
		[5]: Tween0o_new_result1_upvr_7 (readonly)
		[6]: Overture_upvr (readonly)
		[7]: Tween0o_new_result1_upvr_4 (readonly)
		[8]: CreateParticle_upvr (readonly)
		[9]: CreateSideFog_upvr (readonly)
		[10]: CreateFog_upvr (readonly)
		[11]: RunService_upvr (readonly)
		[12]: Tween0o_new_result1_upvr_3 (readonly)
		[13]: Tween0o_new_result1_upvr_2 (readonly)
		[14]: Debris_upvr (readonly)
		[15]: CreateDebris_upvr (readonly)
		[16]: ShakeSize_upvr (readonly)
		[17]: Tween0o_new_result1_upvr_5 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	table.clear(tbl_upvr)
	local Star2_upvr = module_upvr.Star2
	local BlackBoard_upvr = module_upvr.BlackBoard
	local Colorboard_upvr = module_upvr.Colorboard
	local StarSpinSpeed_upvr = module_upvr.StarSpinSpeed
	local clone_upvr = script:WaitForChild("Clock"):Clone()
	local Hours_upvr = clone_upvr:WaitForChild("Hours")
	local Minutes_upvr = clone_upvr:WaitForChild("Minutes")
	clone_upvr.Parent = BlackBoard_upvr
	local current_thread_upvr = coroutine.running()
	module_upvr.PlaySFX(script:WaitForChild("Start"))
	StarterGui_upvr:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
	arg2.Visible = false
	module_upvr.BlackBoardAppear:Play()
	Colorboard_upvr.Image = "http://www.roblox.com/asset/?id=12353440665"
	Colorboard_upvr.ImageTransparency = 1
	Colorboard_upvr.ImageColor3 = Color3.new(1, 1, 1)
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
	module_upvr.ApplyLabelColor(Star2_upvr, Overture_upvr)
	module_upvr.ApplyLabelColor(Colorboard_upvr, Overture_upvr)
	local var122_upvw = true
	local clone = script:WaitForChild("ClockHands"):Clone()
	clone.Parent = BlackBoard_upvr.Parent
	for _, v in clone:GetChildren() do
		TweenService_upvr:Create(v, Tween0o_new_result1_upvr_4, {
			Rotation = 180;
		}):Play()
	end
	local function _(arg1_2) -- Line 294, Named "IsActive"
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
	task.defer(function() -- Line 298
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
	task.defer(function() -- Line 304
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
	TweenService_upvr:Create(clone_upvr, Tween0o_new_result1_upvr_4, {
		Size = UDim2.fromScale(1.1, 1.1);
		ImageTransparency = 0.8;
	}):Play()
	TweenService_upvr:Create(Hours_upvr, Tween0o_new_result1_upvr_4, {
		ImageTransparency = 0.8;
	}):Play()
	TweenService_upvr:Create(Minutes_upvr, Tween0o_new_result1_upvr_4, {
		ImageTransparency = 0.8;
	}):Play()
	local var137_upvw
	var137_upvw = RunService_upvr.Heartbeat:Connect(function(arg1_3) -- Line 319
		--[[ Upvalues[5]:
			[1]: clone_upvr (readonly)
			[2]: var137_upvw (read and write)
			[3]: StarSpinSpeed_upvr (readonly)
			[4]: Hours_upvr (readonly)
			[5]: Minutes_upvr (readonly)
		]]
		if clone_upvr.ImageColor3 == Color3.new(0.729412, 0.729412, 0.729412) or not clone_upvr.Parent then
			var137_upvw:Disconnect()
		else
			local var138 = clone_upvr
			var138.Rotation += arg1_3 * 5 * StarSpinSpeed_upvr.Value
			local var139 = Hours_upvr
			var139.Rotation += arg1_3 * 15 * StarSpinSpeed_upvr.Value
			local var140 = Minutes_upvr
			var140.Rotation += arg1_3 * 60 * StarSpinSpeed_upvr.Value
		end
	end)
	task.wait(2.23)
	TweenService_upvr:Create(StarSpinSpeed_upvr, Tween0o_new_result1_upvr_3, {
		Value = 4;
	}):Play()
	TweenService_upvr:Create(Star2_upvr, Tween0o_new_result1_upvr_3, {
		Size = UDim2.fromScale(1.5, 1.5);
	}):Play()
	task.wait(4)
	module_upvr.ColorboardAppear:Play()
	module_upvr.PlaySFX("Whoosh", {
		Volume = 0.7;
	})
	clone_upvr.ImageTransparency = 0
	TweenService_upvr:Create(clone_upvr, Tween0o_new_result1_upvr_2, {
		ImageTransparency = 0.8;
	}):Play()
	task.wait(1)
	module_upvr.PlaySFX("Whoosh", {
		Volume = 1;
	})
	clone_upvr.ImageTransparency = 0
	TweenService_upvr:Create(clone_upvr, Tween0o_new_result1_upvr_2, {
		ImageTransparency = 0.8;
	}):Play()
	task.wait(1)
	StarSpinSpeed_upvr.Value = -1
	TweenService_upvr:Create(StarSpinSpeed_upvr, Tween0o.new(4, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
		Value = -15;
	}):Play()
	TweenService_upvr:Create(clone_upvr, Tween0o.new(4, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
		Size = UDim2.fromScale(1.5, 1.5);
	}):Play()
	local Frame = Instance.new("Frame", BlackBoard_upvr.Parent)
	Frame.BackgroundColor3 = Color3.new(1, 1, 1)
	Frame.Size = UDim2.fromScale(1, 1)
	Frame.ZIndex = 100000
	TweenService_upvr:Create(Frame, Tween0o.new(0.5), {
		BackgroundTransparency = 1;
	}):Play()
	Debris_upvr:AddItem(Frame, 0.5)
	TweenService_upvr:Create(Colorboard_upvr, Tween0o.new(0.5), {
		ImageTransparency = 1;
	}):Play()
	module_upvr.PlaySFX(script:WaitForChild("Start")).Pitch = 0.9
	clone_upvr.ImageColor3 = Color3.new(0.337255, 1, 0.290196)
	clone_upvr.Hours.ImageColor3 = Color3.new(0.337255, 1, 0.290196)
	clone_upvr.Minutes.ImageColor3 = Color3.new(0.337255, 1, 0.290196)
	TweenService_upvr:Create(Star2_upvr, Tween0o_new_result1_upvr_7, {
		Size = UDim2.fromScale(0.6, 0.6);
	}):Play()
	for _ = 1, 20 do
		CreateDebris_upvr(BlackBoard_upvr, math.random(5, 20) / 10)
	end
	coroutine.wrap(function() -- Line 377
		--[[ Upvalues[4]:
			[1]: TweenService_upvr (copied, readonly)
			[2]: Colorboard_upvr (readonly)
			[3]: Star2_upvr (readonly)
			[4]: module_upvr (copied, readonly)
		]]
		task.wait(2)
		TweenService_upvr:Create(Colorboard_upvr, Tween0o.new(2), {
			ImageTransparency = 0;
		}):Play()
		TweenService_upvr:Create(Star2_upvr, Tween0o.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
			Size = UDim2.fromScale(1.5, 1.5);
		}):Play()
		task.wait(0.3)
		task.wait(1.7)
		module_upvr.PlaySFX(script:WaitForChild("Reverse")):Destroy()
	end)()
	coroutine.wrap(function() -- Line 387
		--[[ Upvalues[3]:
			[1]: ShakeSize_upvr (copied, readonly)
			[2]: Star2_upvr (readonly)
			[3]: clone_upvr (readonly)
		]]
		for i_3 = 50, 0, -1 do
			ShakeSize_upvr.Value = Vector3.new(math.random(-i_3, i_3) / 2500, math.random(-i_3, i_3) / 2500, 0)
			Star2_upvr.Position = UDim2.fromScale(0.5 + ShakeSize_upvr.Value.X, 0.5 + ShakeSize_upvr.Value.Y)
			clone_upvr.Position = UDim2.fromScale(0.5 + ShakeSize_upvr.Value.X, 0.5 + ShakeSize_upvr.Value.Y)
			task.wait()
		end
		Star2_upvr.Position = UDim2.fromScale(0.5, 0.5)
		clone_upvr.Position = UDim2.fromScale(0.5, 0.5)
		ShakeSize_upvr.Value = Vector3.new()
	end)()
	module_upvr.PlaySFX(script:WaitForChild("TimeStop1"))
	module_upvr.PlaySFX(script:WaitForChild("TimeStop2"))
	var122_upvw = false
	for i_4, v_2 in tbl_upvr do
		if v_2 and v_2.Parent and v_2:IsA("ImageLabel") then
			v_2.ImageColor3 = Color3.new(0.345098, 1, 0.345098)
			v_2:SetAttribute("Stopped", true)
		end
	end
	if Colorboard_upvr:FindFirstChildOfClass("UIGradient") then
		local i_4 = 0.54902
		local v_2 = 1
		i_4 = Color3.new
		v_2 = 0.294118
		i_4 = i_4(v_2, 1, 0.317647)
		Colorboard_upvr:FindFirstChildOfClass("UIGradient").Color = ColorSequence.new(Color3.new(i_4, v_2, 0.52549), i_4)
	end
	if Star2_upvr:FindFirstChildOfClass("UIGradient") then
		local i_4 = 0.54902
		local v_2 = 1
		i_4 = Color3.new
		v_2 = 0.294118
		i_4 = i_4(v_2, 1, 0.317647)
		Star2_upvr:FindFirstChildOfClass("UIGradient").Color = ColorSequence.new(Color3.new(i_4, v_2, 0.52549), i_4)
	end
	task.wait(4)
	module_upvr.PlaySFX(script:WaitForChild("Ambient")):Destroy()
	module_upvr.PlaySFX("OneMilPlus"):Destroy()
	local Frame_2 = Instance.new("Frame", BlackBoard_upvr.Parent)
	Frame_2.BackgroundColor3 = Color3.new(1, 1, 1)
	Frame_2.Size = UDim2.fromScale(1, 1)
	Frame_2.ZIndex = 100000
	TweenService_upvr:Create(Frame_2, Tween0o.new(1), {
		BackgroundTransparency = 1;
	}):Play()
	Debris_upvr:AddItem(Frame_2, 1)
	module_upvr.PlaySFX(script:WaitForChild("GlassBreak2"))
	module_upvr.PlaySFX(script:WaitForChild("GlassBreak3"))
	clone:Destroy()
	Colorboard_upvr.Image = "http://www.roblox.com/asset/?id=1195495135"
	Colorboard_upvr.ImageColor3 = Color3.new(1, 1, 1)
	if Colorboard_upvr:FindFirstChildOfClass("UIGradient") then
		Colorboard_upvr:FindFirstChildOfClass("UIGradient"):Destroy()
	end
	module_upvr.ColorboardDisappear:Play()
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
	clone_upvr:Destroy()
	arg2.Position = UDim2.fromScale(0.5, 0.5)
	arg2.Size = UDim2.fromScale(0.6, 0.2)
	TweenService_upvr:Create(arg2, Tween0o_new_result1_upvr_5, {
		Size = UDim2.fromScale(0.4, 0.1);
	}):Play()
end