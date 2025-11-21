-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-15 15:38:18
-- Luau version 6, Types version 3
-- Time taken: 0.031539 seconds

local Debris_upvr_2 = game:GetService("Debris")
local RunService_upvr_2 = game:GetService("RunService")
local TweenService_upvr = game:GetService("TweenService")
local Modules_2 = game:GetService("ReplicatedStorage"):WaitForChild("Modules")
local module_upvr = require(Modules_2:WaitForChild("UICache"))
local module_2 = require(Modules_2:WaitForChild("Queue"))
local any_new_result1_13 = module_2.Waitter.new()
local module_upvr_2 = require(Modules_2:WaitForChild("UI"):WaitForChild("SceneUI"):WaitForChild("Assets"))
;({}).BackgroundTransparency = 0.6
;({}).BackgroundTransparency = 1
;({}).BackgroundTransparency = 0
local BaseQuart0o1_upvr_2 = module_upvr_2.BaseQuart0o1
local BaseQuart0o3_upvr = module_upvr_2.BaseQuart0o3
local ReverseQuart0o1_upvr = module_upvr_2.ReverseQuart0o1
local random_state_upvr = Random.new()
local clock_upvr = os.clock
local function _() -- Line 33, Named "mul"
	if math.random(1, 2) == 1 then
		return -1
	end
	return 1
end
local function CreateFeather_upvr(arg1, arg2) -- Line 37, Named "CreateFeather"
	--[[ Upvalues[8]:
		[1]: module_upvr (readonly)
		[2]: random_state_upvr (readonly)
		[3]: TweenService_upvr (readonly)
		[4]: BaseQuart0o1_upvr_2 (readonly)
		[5]: clock_upvr (readonly)
		[6]: RunService_upvr_2 (readonly)
		[7]: ReverseQuart0o1_upvr (readonly)
		[8]: Debris_upvr_2 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_new_result1_upvr = module_upvr.new(101999513615754)
	any_new_result1_upvr.ImageColor3 = arg2
	any_new_result1_upvr.SizeConstraint = Enum.SizeConstraint.RelativeXX
	any_new_result1_upvr.Rotation = random_state_upvr:NextNumber(-15, 15)
	any_new_result1_upvr.AnchorPoint = Vector2.one * 0.5
	any_new_result1_upvr:AddTag("CutsceneAsset")
	any_new_result1_upvr.Parent = arg1
	local any_NextNumber_result1_10 = random_state_upvr:NextNumber(0.02, 0.06)
	local any_NextNumber_result1_12_upvr = random_state_upvr:NextNumber(-80, 100)
	local var173_upvr
	if math.random(1, 2) == 1 then
		var173_upvr = -1
	else
		var173_upvr = 1
	end
	any_new_result1_upvr.Rotation = any_NextNumber_result1_12_upvr
	TweenService_upvr:Create(any_new_result1_upvr, BaseQuart0o1_upvr_2, {
		Size = UDim2.fromScale(any_NextNumber_result1_10, any_NextNumber_result1_10);
	}):Play()
	var173_upvr = random_state_upvr:NextNumber()
	if math.random(1, 2) == 1 then
	else
	end
	var173_upvr = random_state_upvr:NextNumber(50, 70) * 1
	local clock_upvr_result1_upvr = clock_upvr()
	local var177_upvr = clock_upvr_result1_upvr + random_state_upvr:NextNumber(1.5, 2)
	local udim2_upvr_5 = UDim2.fromScale(var173_upvr, 0)
	local var179_upvr = -random_state_upvr:NextNumber(0.004, 0.01)
	local var180_upvr = random_state_upvr:NextNumber(5, 10) * var173_upvr
	local any_Connect_result1_upvr_4 = RunService_upvr_2.Heartbeat:Connect(function() -- Line 61
		--[[ Upvalues[12]:
			[1]: clock_upvr (copied, readonly)
			[2]: var177_upvr (readonly)
			[3]: any_new_result1_upvr (readonly)
			[4]: TweenService_upvr (copied, readonly)
			[5]: ReverseQuart0o1_upvr (copied, readonly)
			[6]: Debris_upvr_2 (copied, readonly)
			[7]: clock_upvr_result1_upvr (readonly)
			[8]: udim2_upvr_5 (readonly)
			[9]: var173_upvr (readonly)
			[10]: var179_upvr (readonly)
			[11]: any_NextNumber_result1_12_upvr (readonly)
			[12]: var180_upvr (readonly)
		]]
		if var177_upvr - 0.5 <= clock_upvr() and not any_new_result1_upvr:GetAttribute("Removing") then
			any_new_result1_upvr:SetAttribute("Removing", true)
			TweenService_upvr:Create(any_new_result1_upvr, ReverseQuart0o1_upvr, {
				Size = UDim2.new();
			}):Play()
			Debris_upvr_2:AddItem(any_new_result1_upvr, 0.5)
		end
		local var182 = (clock_upvr() - clock_upvr_result1_upvr) * 50
		any_new_result1_upvr.Position = udim2_upvr_5 + UDim2.fromScale(0.07 * math.sin(var182 / var173_upvr), var182 * -var179_upvr)
		any_new_result1_upvr.Rotation = any_NextNumber_result1_12_upvr + var180_upvr * math.cos(var182 / var173_upvr * 1.2)
	end)
	any_new_result1_upvr.Destroying:Once(function() -- Line 73
		--[[ Upvalues[1]:
			[1]: any_Connect_result1_upvr_4 (readonly)
		]]
		any_Connect_result1_upvr_4:Disconnect()
	end)
	return any_new_result1_upvr
end
local function CreateFog_upvr(arg1, arg2) -- Line 78, Named "CreateFog"
	--[[ Upvalues[8]:
		[1]: module_upvr (readonly)
		[2]: random_state_upvr (readonly)
		[3]: TweenService_upvr (readonly)
		[4]: BaseQuart0o1_upvr_2 (readonly)
		[5]: clock_upvr (readonly)
		[6]: RunService_upvr_2 (readonly)
		[7]: ReverseQuart0o1_upvr (readonly)
		[8]: Debris_upvr_2 (readonly)
	]]
	local any_new_result1_12_upvr = module_upvr.new(1946917526)
	any_new_result1_12_upvr.Size = UDim2.fromScale(1, 1)
	any_new_result1_12_upvr.ImageColor3 = arg2
	any_new_result1_12_upvr.SizeConstraint = Enum.SizeConstraint.RelativeXX
	any_new_result1_12_upvr.BackgroundTransparency = 1
	any_new_result1_12_upvr.ImageTransparency = 1
	any_new_result1_12_upvr.Rotation = random_state_upvr:NextNumber(-3, 3)
	any_new_result1_12_upvr.AnchorPoint = Vector2.one * 0.5
	any_new_result1_12_upvr:AddTag("CutsceneAsset")
	TweenService_upvr:Create(any_new_result1_12_upvr, BaseQuart0o1_upvr_2, {
		ImageTransparency = 0.7;
	}):Play()
	any_new_result1_12_upvr.Parent = arg1
	local any_NextNumber_result1 = random_state_upvr:NextNumber(2, 5)
	local var188_upvr
	if var188_upvr == 1 then
		any_NextNumber_result1 = -1
	else
		any_NextNumber_result1 = 1
	end
	var188_upvr = random_state_upvr:NextNumber(2, 5)
	if math.random(1, 2) == 1 then
		var188_upvr = -1
	else
		var188_upvr = 1
	end
	local clock_upvr_result1_upvr_2 = clock_upvr()
	var188_upvr = clock_upvr_result1_upvr_2 + random_state_upvr:NextNumber(1.5, 2)
	local udim2_upvr_2 = UDim2.fromScale(random_state_upvr:NextNumber(), random_state_upvr:NextNumber())
	local var192_upvr = any_NextNumber_result1 / 1400 * any_NextNumber_result1
	local var193_upvr = var188_upvr / 1400 * var188_upvr
	local any_Connect_result1_upvr_2 = RunService_upvr_2.Heartbeat:Connect(function() -- Line 98
		--[[ Upvalues[10]:
			[1]: clock_upvr (copied, readonly)
			[2]: var188_upvr (readonly)
			[3]: any_new_result1_12_upvr (readonly)
			[4]: TweenService_upvr (copied, readonly)
			[5]: ReverseQuart0o1_upvr (copied, readonly)
			[6]: Debris_upvr_2 (copied, readonly)
			[7]: clock_upvr_result1_upvr_2 (readonly)
			[8]: udim2_upvr_2 (readonly)
			[9]: var192_upvr (readonly)
			[10]: var193_upvr (readonly)
		]]
		if var188_upvr - 0.5 <= clock_upvr() and not any_new_result1_12_upvr:GetAttribute("Removing") then
			any_new_result1_12_upvr:SetAttribute("Removing", true)
			TweenService_upvr:Create(any_new_result1_12_upvr, ReverseQuart0o1_upvr, {
				ImageTransparency = 1;
			}):Play()
			Debris_upvr_2:AddItem(any_new_result1_12_upvr, 0.5)
		end
		local var195 = (clock_upvr() - clock_upvr_result1_upvr_2) * 50
		any_new_result1_12_upvr.Position = udim2_upvr_2 + UDim2.fromScale(var195 * -var192_upvr, var195 * -var193_upvr)
	end)
	any_new_result1_12_upvr.Destroying:Once(function() -- Line 109
		--[[ Upvalues[1]:
			[1]: any_Connect_result1_upvr_2 (readonly)
		]]
		any_Connect_result1_upvr_2:Disconnect()
	end)
end
local function CreateSlashFeather_upvr(arg1, arg2, arg3) -- Line 112, Named "CreateSlashFeather"
	--[[ Upvalues[3]:
		[1]: random_state_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: TweenService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_NextNumber_result1_11 = random_state_upvr:NextNumber(0.06, 0.2)
	local any_new_result1_9 = module_upvr.new(101999513615754)
	any_new_result1_9.ImageColor3 = arg2
	any_new_result1_9.Size = UDim2.fromScale(any_NextNumber_result1_11, any_NextNumber_result1_11)
	any_new_result1_9.SizeConstraint = Enum.SizeConstraint.RelativeXX
	any_new_result1_9.BackgroundTransparency = 1
	any_new_result1_9.Rotation = random_state_upvr:NextNumber() * 360
	any_new_result1_9.AnchorPoint = Vector2.one * 0.5
	any_new_result1_9.Position = UDim2.fromScale(0.5, 0.5)
	local var200
	if arg3 then
		table.insert(arg3, any_new_result1_9)
	end
	if math.random(1, 2) == 1 then
		var200 = -1
	else
		var200 = 1
	end
	var200 = random_state_upvr:NextNumber(0.05, 0.2)
	if math.random(1, 2) == 1 then
	else
	end
	var200 = random_state_upvr:NextNumber(0.6, 2)
	var200 = {}
	var200.Position = UDim2.fromScale(any_new_result1_9.Position.X.Scale, 1 + any_new_result1_9.Size.Y.Scale)
	TweenService_upvr:Create(any_new_result1_9, Tween0o.new(var200, Enum.EasingStyle.Quart, Enum.EasingDirection.In), var200):Play()
	return any_new_result1_9
end
local function CreateRain_upvr(arg1, arg2) -- Line 135, Named "CreateRain"
	--[[ Upvalues[4]:
		[1]: module_upvr (readonly)
		[2]: random_state_upvr (readonly)
		[3]: TweenService_upvr (readonly)
		[4]: Debris_upvr_2 (readonly)
	]]
	local any_new_result1 = module_upvr.new(6820821916)
	any_new_result1.ImageColor3 = arg2
	any_new_result1.SizeConstraint = Enum.SizeConstraint.RelativeYY
	local var202 = random_state_upvr:NextNumber(7, 13) / 70
	any_new_result1.AnchorPoint = Vector2.new(0.5, 1)
	any_new_result1.Size = UDim2.fromScale(var202, var202 * 2.5)
	any_new_result1.Position = UDim2.fromScale(random_state_upvr:NextNumber(), 0)
	any_new_result1.Parent = arg1
	local any_NextNumber_result1_9 = random_state_upvr:NextNumber(0.5, 1)
	TweenService_upvr:Create(any_new_result1, Tween0o.new(any_NextNumber_result1_9, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
		Position = UDim2.fromScale(any_new_result1.Position.X.Scale, 1 + any_new_result1.Size.Y.Scale);
	}):Play()
	Debris_upvr_2:AddItem(any_new_result1, any_NextNumber_result1_9)
	return any_new_result1
end
local function CreateSideFog_upvr(arg1, arg2) -- Line 153, Named "CreateSideFog"
	--[[ Upvalues[8]:
		[1]: module_upvr (readonly)
		[2]: random_state_upvr (readonly)
		[3]: TweenService_upvr (readonly)
		[4]: BaseQuart0o1_upvr_2 (readonly)
		[5]: clock_upvr (readonly)
		[6]: RunService_upvr_2 (readonly)
		[7]: ReverseQuart0o1_upvr (readonly)
		[8]: Debris_upvr_2 (readonly)
	]]
	local any_new_result1_3_upvr = module_upvr.new(3318493505)
	any_new_result1_3_upvr.Size = UDim2.fromScale(1, random_state_upvr:NextNumber(0.15, 0.25))
	any_new_result1_3_upvr.ImageColor3 = arg2
	any_new_result1_3_upvr.SizeConstraint = Enum.SizeConstraint.RelativeXX
	any_new_result1_3_upvr.BackgroundTransparency = 1
	any_new_result1_3_upvr.ImageTransparency = 1
	any_new_result1_3_upvr.Rotation = random_state_upvr:NextNumber(-3, 3)
	any_new_result1_3_upvr.AnchorPoint = Vector2.one * 0.5
	any_new_result1_3_upvr:AddTag("CutsceneAsset")
	TweenService_upvr:Create(any_new_result1_3_upvr, BaseQuart0o1_upvr_2, {
		ImageTransparency = 0.7;
	}):Play()
	any_new_result1_3_upvr.Parent = arg1
	local any_NextNumber_result1_5 = random_state_upvr:NextNumber(2, 5)
	local var208_upvr
	if var208_upvr == 1 then
		any_NextNumber_result1_5 = -1
	else
		any_NextNumber_result1_5 = 1
	end
	var208_upvr = random_state_upvr:NextNumber(2, 5)
	if math.random(1, 2) == 1 then
		var208_upvr = -1
	else
		var208_upvr = 1
	end
	local clock_upvr_result1_upvr_3 = clock_upvr()
	var208_upvr = clock_upvr_result1_upvr_3 + random_state_upvr:NextNumber(1.5, 2)
	local udim2_upvr = UDim2.fromScale(random_state_upvr:NextNumber(), random_state_upvr:NextNumber())
	local var212_upvr = any_NextNumber_result1_5 / 1400 * any_NextNumber_result1_5
	local var213_upvr = var208_upvr / 8000 * var208_upvr
	local any_Connect_result1_upvr_5 = RunService_upvr_2.Heartbeat:Connect(function() -- Line 173
		--[[ Upvalues[10]:
			[1]: clock_upvr (copied, readonly)
			[2]: var208_upvr (readonly)
			[3]: any_new_result1_3_upvr (readonly)
			[4]: TweenService_upvr (copied, readonly)
			[5]: ReverseQuart0o1_upvr (copied, readonly)
			[6]: Debris_upvr_2 (copied, readonly)
			[7]: clock_upvr_result1_upvr_3 (readonly)
			[8]: udim2_upvr (readonly)
			[9]: var212_upvr (readonly)
			[10]: var213_upvr (readonly)
		]]
		if var208_upvr - 0.5 <= clock_upvr() and not any_new_result1_3_upvr:GetAttribute("Removing") then
			any_new_result1_3_upvr:SetAttribute("Removing", true)
			TweenService_upvr:Create(any_new_result1_3_upvr, ReverseQuart0o1_upvr, {
				ImageTransparency = 1;
			}):Play()
			Debris_upvr_2:AddItem(any_new_result1_3_upvr, 0.5)
		end
		local var215 = (clock_upvr() - clock_upvr_result1_upvr_3) * 50
		any_new_result1_3_upvr.Position = udim2_upvr + UDim2.fromScale(var215 * -var212_upvr, var215 * -var213_upvr)
	end)
	any_new_result1_3_upvr.Destroying:Once(function() -- Line 184
		--[[ Upvalues[1]:
			[1]: any_Connect_result1_upvr_5 (readonly)
		]]
		any_Connect_result1_upvr_5:Disconnect()
	end)
end
local function CreateIcon_upvr(arg1, arg2, arg3, arg4) -- Line 187, Named "CreateIcon"
	--[[ Upvalues[5]:
		[1]: module_upvr_2 (readonly)
		[2]: module_upvr (readonly)
		[3]: TweenService_upvr (readonly)
		[4]: BaseQuart0o3_upvr (readonly)
		[5]: Debris_upvr_2 (readonly)
	]]
	module_upvr_2.PlaySFX("Whoosh", {
		Volume = 1 - arg3 + 0.3;
	})
	local any_new_result1_11 = module_upvr.new(arg4)
	any_new_result1_11.Size = UDim2.fromScale(0.8, 0.8)
	any_new_result1_11.ImageColor3 = arg2
	any_new_result1_11.SizeConstraint = Enum.SizeConstraint.RelativeYY
	any_new_result1_11.ImageTransparency = arg3
	any_new_result1_11.AnchorPoint = Vector2.one * 0.5
	any_new_result1_11.Position = UDim2.fromScale(0.5, 0.5)
	any_new_result1_11:AddTag("CutsceneAsset")
	any_new_result1_11.Parent = arg1
	TweenService_upvr:Create(any_new_result1_11, BaseQuart0o3_upvr, {
		Size = UDim2.fromScale(0.7, 0.7);
		ImageTransparency = 1;
	}):Play()
	Debris_upvr_2:AddItem(any_new_result1_11, 2)
end
local function _(arg1, ...) -- Line 205, Named "select"
	return ({...})[arg1]
end
any_new_result1_13:insert(module_2.Process.new(module_upvr.new, 101999513615754):execute())
any_new_result1_13:insert(module_2.Process.new(module_upvr.new, 93057772001911):execute())
any_new_result1_13:insert(module_2.Process.new(module_upvr.new, 6820821916):execute())
any_new_result1_13:insert(module_2.Process.new(module_upvr.new, 1946917526):execute())
any_new_result1_13:insert(module_2.Process.new(module_upvr.new, 3318493505):execute())
any_new_result1_13:insert(module_2.Process.new(module_upvr.new, 1195495135):execute())
for _, v in script:GetDescendants() do
	if v:IsA("ImageLabel") then
		local Image_2 = v.Image
		if 0 < #Image_2 then
			any_new_result1_13:insert(module_2.Process.new(module_upvr.new, Image_2):execute())
		end
	end
end
any_new_result1_13:executeAll():await():destroy()
local BaseQuart0o2_upvr = module_upvr_2.BaseQuart0o2
local Tween0o_new_result1_upvr_2 = Tween0o.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
local ReverseQuart0o2_upvr_2 = module_upvr_2.ReverseQuart0o2
return function(arg1, arg2) -- Line 232
	--[[ Upvalues[15]:
		[1]: module_upvr_2 (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: BaseQuart0o3_upvr (readonly)
		[4]: BaseQuart0o2_upvr (readonly)
		[5]: Tween0o_new_result1_upvr_2 (readonly)
		[6]: Debris_upvr_2 (readonly)
		[7]: CreateRain_upvr (readonly)
		[8]: CreateFeather_upvr (readonly)
		[9]: CreateSideFog_upvr (readonly)
		[10]: CreateFog_upvr (readonly)
		[11]: ReverseQuart0o2_upvr_2 (readonly)
		[12]: CreateIcon_upvr (readonly)
		[13]: ReverseQuart0o1_upvr (readonly)
		[14]: CreateSlashFeather_upvr (readonly)
		[15]: BaseQuart0o1_upvr_2 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local Star2_2 = module_upvr_2.Star2
	local BlackBoard_upvr_2 = module_upvr_2.BlackBoard
	local Colorboard_upvr = module_upvr_2.Colorboard
	local StarSpinSpeed = module_upvr_2.StarSpinSpeed
	local var274_upvw = true
	local current_thread_upvr = coroutine.running()
	local tbl_19_upvr = {}
	module_upvr_2.BlackBoardAppear:Play()
	Colorboard_upvr.Image = "rbxassetid://12353440665"
	module_upvr_2.ApplyLabelColor(Star2_2, arg2)
	module_upvr_2.ApplyLabelColor(Colorboard_upvr, arg2)
	module_upvr_2.PlaySFX("OneMilPlus")
	Star2_2.Size = UDim2.fromScale(1.5, 1.5)
	Star2_2.Visible = true
	StarSpinSpeed.Value = 5
	TweenService_upvr:Create(StarSpinSpeed, BaseQuart0o3_upvr, {
		Value = 1;
	}):Play()
	TweenService_upvr:Create(Star2_2, BaseQuart0o3_upvr, {
		Size = UDim2.fromScale(0.6, 0.6);
	}):Play()
	local function _(arg1_3) -- Line 259, Named "IsActive"
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
	task.defer(function() -- Line 264
		--[[ Upvalues[6]:
			[1]: current_thread_upvr (readonly)
			[2]: Colorboard_upvr (readonly)
			[3]: TweenService_upvr (copied, readonly)
			[4]: BaseQuart0o2_upvr (copied, readonly)
			[5]: Tween0o_new_result1_upvr_2 (copied, readonly)
			[6]: Debris_upvr_2 (copied, readonly)
		]]
		local task_wait_result1_6 = task.wait(0.2)
		if task_wait_result1_6 then
			if coroutine.status(current_thread_upvr) == "dead" then
				task_wait_result1_6 = false
			else
				task_wait_result1_6 = true
			end
		end
		if not task_wait_result1_6 then
		else
			local clone_5 = script.Dialogue:Clone()
			clone_5:AddTag("CutsceneAsset")
			clone_5.Parent = Colorboard_upvr
			TweenService_upvr:Create(clone_5, BaseQuart0o2_upvr, {
				Position = UDim2.fromScale(0.5, 0.83);
				TextTransparency = 0;
			}):Play()
			local task_wait_result1_8 = task.wait(1)
			if task_wait_result1_8 then
				if coroutine.status(current_thread_upvr) == "dead" then
					task_wait_result1_8 = false
				else
					task_wait_result1_8 = true
				end
			end
			if not task_wait_result1_8 then return end
			TweenService_upvr:Create(clone_5, Tween0o_new_result1_upvr_2, {
				Position = UDim2.fromScale(0.5, 0.86);
				TextTransparency = 1;
			}):Play()
			Debris_upvr_2:AddItem(clone_5, 2)
		end
	end)
	task.defer(function() -- Line 278
		--[[ Upvalues[6]:
			[1]: current_thread_upvr (readonly)
			[2]: var274_upvw (read and write)
			[3]: tbl_19_upvr (readonly)
			[4]: CreateRain_upvr (copied, readonly)
			[5]: BlackBoard_upvr_2 (readonly)
			[6]: CreateFeather_upvr (copied, readonly)
		]]
		while true do
			local var287
			var287 = var287(0.05)
			if var287 then
				if coroutine.status(current_thread_upvr) == "dead" then
					var287 = false
				else
					var287 = true
				end
			end
			if not var287 then break end
			var287 = var274_upvw
			if not var287 then break end
			var287 = table.insert
			var287(tbl_19_upvr, CreateRain_upvr(BlackBoard_upvr_2, Color3.fromRGB(255, 200, 124)))
			var287 = table.insert
			var287(tbl_19_upvr, CreateFeather_upvr(BlackBoard_upvr_2, Color3.fromRGB(255, 200, 124)))
		end
	end)
	task.defer(function() -- Line 285
		--[[ Upvalues[5]:
			[1]: current_thread_upvr (readonly)
			[2]: var274_upvw (read and write)
			[3]: CreateSideFog_upvr (copied, readonly)
			[4]: BlackBoard_upvr_2 (readonly)
			[5]: CreateFog_upvr (copied, readonly)
		]]
		while true do
			local var289
			var289 = var289(0.2)
			if var289 then
				if coroutine.status(current_thread_upvr) == "dead" then
					var289 = false
				else
					var289 = true
				end
			end
			if not var289 then break end
			var289 = var274_upvw
			if not var289 then break end
			var289 = CreateSideFog_upvr
			var289(BlackBoard_upvr_2, Color3.fromRGB(255, 200, 124))
			var289 = CreateFog_upvr
			var289(BlackBoard_upvr_2, Color3.fromRGB(255, 200, 124))
		end
	end)
	task.wait(3.23)
	TweenService_upvr:Create(StarSpinSpeed, ReverseQuart0o2_upvr_2, {
		Value = 4;
	}):Play()
	TweenService_upvr:Create(Star2_2, ReverseQuart0o2_upvr_2, {
		Size = UDim2.fromScale(1.5, 1.5);
	}):Play()
	task.wait(4)
	module_upvr_2.ColorboardAppear:Play()
	CreateIcon_upvr(BlackBoard_upvr_2, Color3.fromRGB(255, 200, 124), 0.6, "rbxassetid://93057772001911")
	task.wait(1)
	CreateIcon_upvr(BlackBoard_upvr_2, Color3.fromRGB(255, 200, 124), 0.3, "rbxassetid://93057772001911")
	task.wait(0.7)
	module_upvr_2.PlaySFX(script.FinalSound1)
	module_upvr_2.PlaySFX(script.FinalSound2)
	task.wait(0.3)
	module_upvr_2.PlaySFX("Ambient"):Destroy()
	module_upvr_2.PlaySFX(script.FinalSound3)
	module_upvr_2.PlaySFX(script.FinalSound4)
	module_upvr_2.PlaySFX(script.FinalSound5)
	BlackBoard_upvr_2.BackgroundTransparency = 1
	var274_upvw = false
	Star2_2.Visible = false
	Colorboard_upvr.Image = "rbxassetid://1195495135"
	Colorboard_upvr.ImageColor3 = Color3.new(1, 1, 1)
	Colorboard_upvr:ClearAllChildren()
	for _, v_2 in tbl_19_upvr do
		if v_2 and v_2.Parent then
			v_2:Destroy()
		end
	end
	local Frame_2 = Instance.new("Frame", Colorboard_upvr)
	Frame_2.BackgroundColor3 = Color3.new()
	Frame_2.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame_2.Size = UDim2.fromScale(1, 0.05)
	Frame_2.Position = UDim2.fromScale(0.5, 0.5)
	TweenService_upvr:Create(Frame_2, ReverseQuart0o1_upvr, {
		Size = UDim2.fromScale(1, 0);
	}):Play()
	Debris_upvr_2:AddItem(Frame_2, 0.25)
	local clone_7 = script:WaitForChild("ImpactStar"):Clone()
	clone_7.Parent = Colorboard_upvr
	TweenService_upvr:Create(clone_7, ReverseQuart0o1_upvr, {
		Size = UDim2.fromScale(1.5, 1.5);
	}):Play()
	Debris_upvr_2:AddItem(clone_7, 0.25)
	for _ = 1, 20 do
		CreateSlashFeather_upvr(Colorboard_upvr, Color3.fromRGB(0, 0, 0), {})
		local var297
	end
	for i_4 = 1, 2 do
		if task.wait(0.05) then
			if coroutine.status(current_thread_upvr) == "dead" then
			else
			end
		end
		if not true then return end
		Frame_2.BackgroundColor3 = Color3.new(1, 1, 1)
		clone_7.ImageColor3 = Color3.new(1, 1, 1)
		Colorboard_upvr.ImageColor3 = Color3.new(0, 0, 0)
		for _, v_3 in var297 do
			v_3.ImageColor3 = Color3.new(1, 1, 1)
		end
		if task.wait(0.05) then
			if coroutine.status(current_thread_upvr) == "dead" then
			else
			end
		end
		if not true then return end
		Frame_2.BackgroundColor3 = Color3.new(0, 0, 0)
		clone_7.ImageColor3 = Color3.new(0, 0, 0)
		Colorboard_upvr.ImageColor3 = Color3.new(1, 1, 1)
		for _, v_4 in var297 do
			v_4.ImageColor3 = Color3.new(0, 0, 0)
		end
	end
	local task_wait_result1 = task.wait(0.05)
	if task_wait_result1 then
		i_4 = current_thread_upvr
		if coroutine.status(i_4) == "dead" then
			task_wait_result1 = false
		else
			task_wait_result1 = true
		end
	end
	if not task_wait_result1 then
	else
		for _, v_5 in var297 do
			v_5.ImageColor3 = Color3.fromRGB(255, 200, 124)
		end
		task.defer(function() -- Line 376
			--[[ Upvalues[5]:
				[1]: Colorboard_upvr (readonly)
				[2]: TweenService_upvr (copied, readonly)
				[3]: BaseQuart0o2_upvr (copied, readonly)
				[4]: Tween0o_new_result1_upvr_2 (copied, readonly)
				[5]: Debris_upvr_2 (copied, readonly)
			]]
			local clone_4 = script.Dialogue:Clone()
			clone_4:AddTag("CutsceneAsset")
			clone_4.Position = UDim2.fromScale(0.5, 0.65)
			clone_4.Text = "\"Until your sins are washed away...\""
			clone_4.Parent = Colorboard_upvr
			TweenService_upvr:Create(clone_4, BaseQuart0o2_upvr, {
				Position = UDim2.fromScale(0.5, 0.68);
				TextTransparency = 0;
			}):Play()
			task.wait(1)
			TweenService_upvr:Create(clone_4, Tween0o_new_result1_upvr_2, {
				Position = UDim2.fromScale(0.5, 0.71);
				TextTransparency = 1;
			}):Play()
			Debris_upvr_2:AddItem(clone_4, 2)
		end)
		Frame_2:Destroy()
		Colorboard_upvr.ImageTransparency = 1
		local clone_3 = script.StarShatter:Clone()
		clone_3.Parent = Colorboard_upvr
		TweenService_upvr:Create(clone_3, BaseQuart0o3_upvr, {
			Size = UDim2.fromScale(1.2, 1.2);
		}):Play()
		Debris_upvr_2:AddItem(clone_3, 2)
		TweenService_upvr:Create(clone_3.Upper, BaseQuart0o2_upvr, {
			Position = UDim2.fromScale(0.5, 0);
		}):Play()
		TweenService_upvr:Create(clone_3.Lower, BaseQuart0o2_upvr, {
			Position = UDim2.fromScale(-0.5, 0.5);
		}):Play()
		task.wait(0.4)
		TweenService_upvr:Create(clone_3.Upper.ImageLabel, BaseQuart0o1_upvr_2, {
			ImageTransparency = 1;
		}):Play()
		TweenService_upvr:Create(clone_3.Lower.ImageLabel, BaseQuart0o1_upvr_2, {
			ImageTransparency = 1;
		}):Play()
		module_upvr_2.SetShake(0.02, BaseQuart0o3_upvr)
	end
end