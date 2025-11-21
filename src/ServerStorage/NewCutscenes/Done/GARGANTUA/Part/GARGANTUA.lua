-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-15 15:44:18
-- Luau version 6, Types version 3
-- Time taken: 0.008278 seconds

local TweenService_upvr = game:GetService("TweenService")
local Debris_upvr = game:GetService("Debris")
local RunService_upvr = game:GetService("RunService")
local Modules = game:GetService("ReplicatedStorage"):WaitForChild("Modules")
local module_upvr_2 = require(Modules:WaitForChild("UI"):WaitForChild("SceneUI"):WaitForChild("Assets"))
local Particle_upvr = script:WaitForChild("Particle")
local function CreateParticle_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) -- Line 32, Named "CreateParticle"
	--[[ Upvalues[3]:
		[1]: Particle_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: Debris_upvr (readonly)
	]]
	local clone_4 = Particle_upvr:Clone()
	clone_4.Parent = arg2
	clone_4.Position = arg4
	clone_4.Rotation = arg8 or 0
	clone_4.Size = arg5
	clone_4.SizeConstraint = arg7
	clone_4.Image = arg1
	clone_4.ImageTransparency = arg9 or 0
	local Quart_2 = Enum.EasingStyle.Quart
	local tbl_3 = {}
	tbl_3.Size = arg6
	if arg10 then
		Quart_2 = 1
	else
		Quart_2 = 0
	end
	tbl_3.ImageTransparency = Quart_2
	TweenService_upvr:Create(clone_4, Tween0o.new(arg3, Quart_2), tbl_3):Play()
	Debris_upvr:AddItem(clone_4, arg3)
end
local function CreateParticleIn_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) -- Line 45, Named "CreateParticleIn"
	--[[ Upvalues[3]:
		[1]: Particle_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: Debris_upvr (readonly)
	]]
	local clone = Particle_upvr:Clone()
	clone.Parent = arg2
	clone.Position = arg4
	clone.Rotation = arg8 or 0
	clone.Size = arg5
	clone.SizeConstraint = arg7
	clone.Image = arg1
	if arg10 then
		clone.ImageColor3 = Color3.fromRGB(19, 62, 255)
	end
	clone.ImageTransparency = 1
	local tbl = {}
	tbl.Size = arg6
	tbl.ImageTransparency = arg9
	TweenService_upvr:Create(clone, Tween0o.new(arg3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), tbl):Play()
	Debris_upvr:AddItem(clone, arg3)
end
local Flipbook_upvr = script:WaitForChild("Flipbook")
local module_upvr = require(Modules:WaitForChild("SpriteClip"))
local function CreateFlipbook_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) -- Line 61, Named "CreateFlipbook"
	--[[ Upvalues[3]:
		[1]: Flipbook_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	local clone_3 = Flipbook_upvr:Clone()
	clone_3.Position = arg4
	clone_3.Rotation = arg8 or 0
	clone_3.Size = arg5
	clone_3.SizeConstraint = arg7
	clone_3.ImageTransparency = arg9 or 0
	clone_3.Image = arg1
	local Quart = Enum.EasingStyle.Quart
	local tbl_2 = {}
	tbl_2.Size = arg6
	if arg10 then
		Quart = 1
	else
		Quart = 0
	end
	tbl_2.ImageTransparency = Quart
	TweenService_upvr:Create(clone_3, Tween0o.new(1 / arg3 * 16, Quart), tbl_2):Play()
	local any_new_result1 = module_upvr.new()
	any_new_result1.Adornee = clone_3
	any_new_result1.SpriteSizePixel = Vector2.one * 1024 / 4
	any_new_result1.SpriteCount = 16
	any_new_result1.SpriteCountX = 4
	any_new_result1.FrameRate = arg3
	any_new_result1.FrameTime = 1
	any_new_result1.Looped = false
	any_new_result1:Play()
	clone_3.Parent = arg2
end
local Tween0o_new_result1_upvr = Tween0o.new(0.5, Enum.EasingStyle.Quart)
local Tween0o_new_result1_upvr_2 = Tween0o.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
local function CreateParticleEmit_upvr(arg1, arg2, arg3) -- Line 84, Named "CreateParticleEmit"
	--[[ Upvalues[5]:
		[1]: TweenService_upvr (readonly)
		[2]: Tween0o_new_result1_upvr (readonly)
		[3]: Tween0o_new_result1_upvr_2 (readonly)
		[4]: Debris_upvr (readonly)
		[5]: RunService_upvr (readonly)
	]]
	local ImageLabel_upvr = Instance.new("ImageLabel", arg1)
	ImageLabel_upvr.Size = UDim2.new()
	ImageLabel_upvr.Image = arg2
	ImageLabel_upvr.SizeConstraint = Enum.SizeConstraint.RelativeXX
	ImageLabel_upvr.BackgroundTransparency = 1
	ImageLabel_upvr.Rotation = math.random(-15, 15)
	ImageLabel_upvr.AnchorPoint = Vector2.new(0.5, 0.5)
	TweenService_upvr:Create(ImageLabel_upvr, Tween0o_new_result1_upvr, {
		Size = UDim2.fromScale(arg3, arg3);
	}):Play()
	local var22 = 50
	if math.random(1, 2) == 1 then
		var22 = -1
	else
		var22 = 1
	end
	local udim2_upvr = UDim2.fromScale(math.random(0, 100) / 100, 1)
	local var25_upvr = math.random(var22, 70) * var22
	local var26_upvr = math.random(2, 5) / 500
	coroutine.wrap(function() -- Line 96
		--[[ Upvalues[8]:
			[1]: ImageLabel_upvr (readonly)
			[2]: TweenService_upvr (copied, readonly)
			[3]: Tween0o_new_result1_upvr_2 (copied, readonly)
			[4]: Debris_upvr (copied, readonly)
			[5]: udim2_upvr (readonly)
			[6]: var25_upvr (readonly)
			[7]: var26_upvr (readonly)
			[8]: RunService_upvr (copied, readonly)
		]]
		local time_result1 = time()
		while ImageLabel_upvr and ImageLabel_upvr.Parent do
			if time_result1 + math.random(15, 20) / 10 - 0.5 <= time() and not ImageLabel_upvr:GetAttribute("Removing") then
				ImageLabel_upvr:SetAttribute("Removing", true)
				TweenService_upvr:Create(ImageLabel_upvr, Tween0o_new_result1_upvr_2, {
					Size = UDim2.fromScale(0, 0);
				}):Play()
				Debris_upvr:AddItem(ImageLabel_upvr, 0.5)
			end
			local var29 = (time() - time_result1) * 50
			ImageLabel_upvr.Position = udim2_upvr + UDim2.fromScale(0.07 * math.sin(var29 / var25_upvr), var29 * -var26_upvr)
			RunService_upvr.Heartbeat:Wait()
		end
	end)()
end
local Tween0o_new_result1_upvr_3 = Tween0o.new(2, Enum.EasingStyle.Quart)
local function CreateMark_upvr(arg1, arg2) -- Line 113, Named "CreateMark"
	--[[ Upvalues[5]:
		[1]: module_upvr_2 (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: Tween0o_new_result1_upvr_3 (readonly)
		[4]: Debris_upvr (readonly)
		[5]: CreateParticle_upvr (readonly)
	]]
	module_upvr_2.PlaySFX("Whoosh", {
		Volume = 1 - arg2 + 0.3;
	})
	local ImageLabel = Instance.new("ImageLabel", arg1)
	ImageLabel.Size = UDim2.fromScale(0.8, 0.8)
	ImageLabel.Image = "rbxassetid://17405714990"
	ImageLabel.SizeConstraint = Enum.SizeConstraint.RelativeYY
	ImageLabel.BackgroundTransparency = 1
	ImageLabel.ImageTransparency = arg2
	ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel.Position = UDim2.fromScale(0.5, 0.5)
	ImageLabel.ZIndex = 10
	TweenService_upvr:Create(ImageLabel, Tween0o_new_result1_upvr_3, {
		Size = UDim2.fromScale(0.7, 0.7);
		ImageTransparency = 1;
	}):Play()
	Debris_upvr:AddItem(ImageLabel, 2)
	CreateParticle_upvr("http://www.roblox.com/asset/?id=10468554009", arg1, 0.5, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1.5, 1.5), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
	CreateParticle_upvr("http://www.roblox.com/asset/?id=13911306541", arg1, 0.6, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1.2, 1.2), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
	CreateParticle_upvr("rbxassetid://16924434689", arg1, 0.6, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1.4, 1.4), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
end
local SpinSpeed_upvr = script:WaitForChild("SpinSpeed")
local ShakeSize_upvr = script:WaitForChild("ShakeSize")
return function(arg1) -- Line 133
	--[[ Upvalues[11]:
		[1]: RunService_upvr (readonly)
		[2]: SpinSpeed_upvr (readonly)
		[3]: ShakeSize_upvr (readonly)
		[4]: TweenService_upvr (readonly)
		[5]: CreateParticleEmit_upvr (readonly)
		[6]: CreateFlipbook_upvr (readonly)
		[7]: CreateParticleIn_upvr (readonly)
		[8]: module_upvr_2 (readonly)
		[9]: CreateMark_upvr (readonly)
		[10]: CreateParticle_upvr (readonly)
		[11]: Debris_upvr (readonly)
	]]
	local var37_upvw = true
	local clone_2_upvr = script:WaitForChild("BaseGroup"):Clone()
	clone_2_upvr:AddTag("CutsceneAsset")
	clone_2_upvr.Parent = arg1
	local Star_upvr = clone_2_upvr:WaitForChild("Star")
	local var41_upvw
	var41_upvw = RunService_upvr.Heartbeat:Connect(function(arg1_2) -- Line 143
		--[[ Upvalues[5]:
			[1]: clone_2_upvr (readonly)
			[2]: Star_upvr (readonly)
			[3]: SpinSpeed_upvr (copied, readonly)
			[4]: ShakeSize_upvr (copied, readonly)
			[5]: var41_upvw (read and write)
		]]
		if clone_2_upvr.Parent then
			local var42 = Star_upvr
			var42.Rotation += arg1_2 * 60 * SpinSpeed_upvr.Value
			local Ring = clone_2_upvr.Ring
			Ring.Rotation -= arg1_2 * 35
			Star_upvr.Position = UDim2.fromScale(0.5, 0.5) + UDim2.fromScale(math.random(-100, 100) / 2000 * ShakeSize_upvr.Value, math.random(-100, 100) / 2000 * ShakeSize_upvr.Value)
		else
			var41_upvw:Disconnect()
		end
	end)
	TweenService_upvr:Create(clone_2_upvr, Tween0o.new(0.5, Enum.EasingStyle.Quad), {
		BackgroundTransparency = 0;
	}):Play()
	TweenService_upvr:Create(SpinSpeed_upvr, Tween0o.new(1, Enum.EasingStyle.Quart), {
		Value = 2;
	}):Play()
	TweenService_upvr:Create(ShakeSize_upvr, Tween0o.new(0.5, Enum.EasingStyle.Quart), {
		Value = 0;
	}):Play()
	TweenService_upvr:Create(Star_upvr, Tween0o.new(1, Enum.EasingStyle.Quart), {
		Size = UDim2.fromScale(1, 1);
	}):Play()
	TweenService_upvr:Create(clone_2_upvr.Ring, Tween0o.new(3, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut, 0, false, 1), {
		Size = UDim2.fromScale(0.4, 0.4);
		ImageTransparency = 0.5;
	}):Play()
	TweenService_upvr:Create(clone_2_upvr.Fog, Tween0o.new(1), {
		ImageTransparency = 0.9;
	}):Play()
	TweenService_upvr:Create(clone_2_upvr.Fog.Fog, Tween0o.new(1), {
		ImageTransparency = 0.9;
	}):Play()
	TweenService_upvr:Create(clone_2_upvr.Fog, Tween0o.new(10, Enum.EasingStyle.Linear), {
		Position = UDim2.fromScale(3, 0);
	}):Play()
	coroutine.wrap(function() -- Line 165
		--[[ Upvalues[3]:
			[1]: clone_2_upvr (readonly)
			[2]: var37_upvw (read and write)
			[3]: CreateParticleEmit_upvr (copied, readonly)
		]]
		while clone_2_upvr.Parent and var37_upvw do
			CreateParticleEmit_upvr(clone_2_upvr, "rbxassetid://8030760338", math.random(5, 20) / 500)
			task.wait(0.05)
		end
	end)()
	coroutine.wrap(function() -- Line 173
		--[[ Upvalues[5]:
			[1]: clone_2_upvr (readonly)
			[2]: var37_upvw (read and write)
			[3]: CreateFlipbook_upvr (copied, readonly)
			[4]: CreateParticleIn_upvr (copied, readonly)
			[5]: Star_upvr (readonly)
		]]
		while clone_2_upvr.Parent and var37_upvw do
			task.defer(CreateFlipbook_upvr, "rbxassetid://15011471927", clone_2_upvr, 30, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1, 1), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.6, true)
			task.defer(CreateFlipbook_upvr, "rbxassetid://12350056117", clone_2_upvr, 30, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1, 1), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.1, true)
			task.defer(CreateFlipbook_upvr, "rbxassetid://13414392494", clone_2_upvr, 30, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1, 1), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.5, true)
			task.defer(CreateFlipbook_upvr, "rbxassetid://14442131728", clone_2_upvr, 30, UDim2.fromScale(math.random(0, 100) / 100, 1.2), UDim2.fromScale(0.6, 0.6), UDim2.fromScale(1, 1), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.4, false)
			task.defer(CreateFlipbook_upvr, "rbxassetid://14442131728", clone_2_upvr, 30, UDim2.fromScale(math.random(0, 100) / 100, -0.2), UDim2.fromScale(0.6, 0.6), UDim2.fromScale(1, 1), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.4, false)
			task.defer(CreateParticleIn_upvr, "rbxassetid://13712007548", clone_2_upvr, 0.5, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(3, 3), UDim2.fromScale(0, 0), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0, math.clamp(2 - Star_upvr.Size.X.Scale, 0, 2) / 2)
			task.defer(CreateParticleIn_upvr, "rbxassetid://14163269969", clone_2_upvr, 1, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(2.5, 2.5), UDim2.fromScale(0, 0), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.5, math.clamp(2 - Star_upvr.Size.X.Scale, 0, 2) / 2, true)
			task.defer(CreateParticleIn_upvr, "rbxassetid://10372847108", clone_2_upvr, 0.6, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(3, 3), UDim2.fromScale(0, 0), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.5, math.clamp(2 - Star_upvr.Size.X.Scale, 0, 2) / 2)
			task.wait(0.1)
		end
	end)()
	module_upvr_2.PlaySFX("OneMilPlus")
	task.wait(3.23)
	TweenService_upvr:Create(Star_upvr, Tween0o.new(6, Enum.EasingStyle.Exponential, Enum.EasingDirection.In), {
		Size = UDim2.fromScale(3, 3);
	}):Play()
	task.wait(4)
	CreateMark_upvr(clone_2_upvr, 0.6)
	task.wait(1)
	CreateMark_upvr(clone_2_upvr, 0)
	task.wait(1)
	CreateParticle_upvr("http://www.roblox.com/asset/?id=10468554009", clone_2_upvr, 0.5, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(2, 2), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
	CreateParticle_upvr("http://www.roblox.com/asset/?id=13911306541", clone_2_upvr, 0.6, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(2.5, 2.5), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
	CreateParticle_upvr("rbxassetid://16924434689", clone_2_upvr, 0.6, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(2.3, 2.3), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
	CreateParticle_upvr("rbxassetid://16924595234", clone_2_upvr, 1, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1.8, 1.8), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
	CreateParticle_upvr("rbxassetid://10176632695", clone_2_upvr, 1.1, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(3, 3), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
	Star_upvr.Visible = false
	clone_2_upvr.BackgroundTransparency = 1
	var37_upvw = false
	local Frame = Instance.new("Frame", arg1)
	Frame.Size = UDim2.fromScale(1, 1)
	Frame.BackgroundColor3 = Color3.new(1, 1, 1)
	Frame.ZIndex = 4
	TweenService_upvr:Create(Frame, Tween0o.new(1), {
		BackgroundTransparency = 1;
	}):Play()
	Debris_upvr:AddItem(Frame, 1)
	module_upvr_2.PlaySFX(script.Ready)
	module_upvr_2.PlaySFX("Ambient"):Destroy()
	clone_2_upvr.Ring.Visible = false
	clone_2_upvr.Fog.Visible = false
	TweenService_upvr:Create(clone_2_upvr, Tween0o.new(3), {
		GroupTransparency = 1;
	}):Play()
	Debris_upvr:AddItem(clone_2_upvr, 3)
	var41_upvw:Disconnect()
end