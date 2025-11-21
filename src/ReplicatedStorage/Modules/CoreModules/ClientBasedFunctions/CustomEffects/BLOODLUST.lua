-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-15 15:37:01
-- Luau version 6, Types version 3
-- Time taken: 0.011198 seconds

local TweenService_upvr = game:GetService("TweenService")
local Debris_upvr = game:GetService("Debris")
local RunService_upvr = game:GetService("RunService")
local Modules = game:GetService("ReplicatedStorage"):WaitForChild("Modules")
local module_upvr = require(Modules:WaitForChild("UI"):WaitForChild("SceneUI"):WaitForChild("Assets"))
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
	local Quart = Enum.EasingStyle.Quart
	local tbl_2 = {}
	tbl_2.Size = arg6
	if arg10 then
		Quart = 1
	else
		Quart = 0
	end
	tbl_2.ImageTransparency = Quart
	TweenService_upvr:Create(clone_4, Tween0o.new(arg3, Quart), tbl_2):Play()
	Debris_upvr:AddItem(clone_4, arg3)
end
local Flipbook_upvr = script:WaitForChild("Flipbook")
local module_upvr_2 = require(Modules:WaitForChild("SpriteClip"))
local function CreateFlipbook_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) -- Line 45, Named "CreateFlipbook"
	--[[ Upvalues[3]:
		[1]: Flipbook_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: module_upvr_2 (readonly)
	]]
	local clone_3 = Flipbook_upvr:Clone()
	clone_3.Position = arg4
	clone_3.Rotation = arg8 or 0
	clone_3.Size = arg5
	clone_3.SizeConstraint = arg7
	clone_3.ImageTransparency = arg9 or 0
	clone_3.Image = arg1
	local Quart_2 = Enum.EasingStyle.Quart
	local tbl_3 = {}
	tbl_3.Size = arg6
	if arg10 then
		Quart_2 = 1
	else
		Quart_2 = 0
	end
	tbl_3.ImageTransparency = Quart_2
	TweenService_upvr:Create(clone_3, Tween0o.new(1 / arg3 * 16, Quart_2), tbl_3):Play()
	local any_new_result1 = module_upvr_2.new()
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
local function CreateParticleSplat_upvr(arg1, arg2, arg3, arg4) -- Line 68, Named "CreateParticleSplat"
	--[[ Upvalues[2]:
		[1]: TweenService_upvr (readonly)
		[2]: Debris_upvr (readonly)
	]]
	local var16 = math.random(20, 60) / 100
	local var17 = math.random(40, 60) / 100
	local clone_2 = script:WaitForChild("SplatParticle"):Clone()
	clone_2.Parent = arg1
	clone_2.Rotation = math.random(0, 360)
	clone_2.Size = UDim2.fromScale(var16, var16)
	clone_2.Image = arg2
	local var19 = (math.asin(math.sin((clone_2.Rotation + 90) * 0.017453292519943295))) * (game.Workspace.CurrentCamera.ViewportSize.Y / game.Workspace.CurrentCamera.ViewportSize.X)
	local arcsine = math.asin(math.sin(clone_2.Rotation * 0.017453292519943295))
	clone_2.Position = UDim2.fromScale(0.5, 0.5) + UDim2.fromScale(var19 * 0.1, arcsine * 0.1)
	local var21
	if arg4 then
		clone_2.Rotation = math.random(0, 360)
	end
	var21 = Enum.EasingStyle.Quart
	local tbl = {}
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var21 = math.random(0, 360)
		return var21
	end
	if not arg4 or not INLINED() then
		var21 = clone_2.Rotation
	end
	tbl.Rotation = var21
	tbl.Position = UDim2.fromScale(0.5, 0.5) + UDim2.fromScale(var19 * var17, arcsine * var17)
	var21 = UDim2.fromScale(0, 0)
	tbl.Size = var21
	TweenService_upvr:Create(clone_2, Tween0o.new(arg3, var21), tbl):Play()
	Debris_upvr:AddItem(clone_2, arg3)
end
local Tween0o_new_result1_upvr = Tween0o.new(0.5, Enum.EasingStyle.Quart)
local Tween0o_new_result1_upvr_3 = Tween0o.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
local function CreateParticleEmit_upvr(arg1, arg2, arg3) -- Line 90, Named "CreateParticleEmit"
	--[[ Upvalues[5]:
		[1]: TweenService_upvr (readonly)
		[2]: Tween0o_new_result1_upvr (readonly)
		[3]: Tween0o_new_result1_upvr_3 (readonly)
		[4]: Debris_upvr (readonly)
		[5]: RunService_upvr (readonly)
	]]
	local ImageLabel_2_upvr = Instance.new("ImageLabel", arg1)
	ImageLabel_2_upvr.Size = UDim2.new()
	ImageLabel_2_upvr.Image = arg2
	ImageLabel_2_upvr.SizeConstraint = Enum.SizeConstraint.RelativeXX
	ImageLabel_2_upvr.BackgroundTransparency = 1
	ImageLabel_2_upvr.Rotation = math.random(-15, 15)
	ImageLabel_2_upvr.AnchorPoint = Vector2.new(0.5, 0.5)
	TweenService_upvr:Create(ImageLabel_2_upvr, Tween0o_new_result1_upvr, {
		Size = UDim2.fromScale(arg3, arg3);
	}):Play()
	local var27 = 50
	if math.random(1, 2) == 1 then
		var27 = -1
	else
		var27 = 1
	end
	local udim2_upvr = UDim2.fromScale(math.random(0, 100) / 100, 1)
	local var30_upvr = math.random(var27, 70) * var27
	local var31_upvr = math.random(2, 5) / 500
	coroutine.wrap(function() -- Line 102
		--[[ Upvalues[8]:
			[1]: ImageLabel_2_upvr (readonly)
			[2]: TweenService_upvr (copied, readonly)
			[3]: Tween0o_new_result1_upvr_3 (copied, readonly)
			[4]: Debris_upvr (copied, readonly)
			[5]: udim2_upvr (readonly)
			[6]: var30_upvr (readonly)
			[7]: var31_upvr (readonly)
			[8]: RunService_upvr (copied, readonly)
		]]
		local time_result1 = time()
		while ImageLabel_2_upvr and ImageLabel_2_upvr.Parent do
			if time_result1 + math.random(15, 20) / 10 - 0.5 <= time() and not ImageLabel_2_upvr:GetAttribute("Removing") then
				ImageLabel_2_upvr:SetAttribute("Removing", true)
				TweenService_upvr:Create(ImageLabel_2_upvr, Tween0o_new_result1_upvr_3, {
					Size = UDim2.fromScale(0, 0);
				}):Play()
				Debris_upvr:AddItem(ImageLabel_2_upvr, 0.5)
			end
			local var34 = (time() - time_result1) * 50
			ImageLabel_2_upvr.Position = udim2_upvr + UDim2.fromScale(0.07 * math.sin(var34 / var30_upvr), var34 * -var31_upvr)
			RunService_upvr.Heartbeat:Wait()
		end
	end)()
end
local function CreateBlood_upvr(arg1) -- Line 119, Named "CreateBlood"
	--[[ Upvalues[2]:
		[1]: TweenService_upvr (readonly)
		[2]: Debris_upvr (readonly)
	]]
	local clone = script.Blood:Clone()
	clone.Parent = arg1
	local var36 = math.random(5, 12) / 100
	clone.Position = UDim2.fromScale(math.random(0, 100) / 100, -var36)
	clone.Size = UDim2.fromScale(var36, var36 * 0.5)
	TweenService_upvr:Create(clone, Tween0o.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
		Position = clone.Position + UDim2.fromScale(0, 1.1);
	}):Play()
	Debris_upvr:AddItem(clone, 1)
end
local function ActiveBlood_upvr(arg1) -- Line 129, Named "ActiveBlood"
	--[[ Upvalues[2]:
		[1]: TweenService_upvr (readonly)
		[2]: CreateParticle_upvr (readonly)
	]]
	if not arg1 or not arg1.Parent then
	else
		local Size = arg1.Size
		arg1.Size = UDim2.fromScale(Size.X.Scale * 1.3, Size.Y.Scale * 1.3)
		arg1.Visible = true
		TweenService_upvr:Create(arg1, Tween0o.new(0.5, Enum.EasingStyle.Quart), {
			Size = Size;
		}):Play()
		TweenService_upvr:Create(arg1.ShakeSize, Tween0o.new(0.5, Enum.EasingStyle.Quart), {
			Value = 0;
		}):Play()
		CreateParticle_upvr("http://www.roblox.com/asset/?id=10468554009", arg1, 0.5, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1.5, 1.5), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
		CreateParticle_upvr("http://www.roblox.com/asset/?id=13911306541", arg1, 0.6, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1.2, 1.2), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
		CreateParticle_upvr("rbxassetid://16924434689", arg1, 0.6, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1.4, 1.4), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
		CreateParticle_upvr("rbxassetid://16924595234", arg1, 1, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1.6, 1.6), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
		CreateParticle_upvr("rbxassetid://10176632695", arg1, 1.1, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1.7, 1.7), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
		coroutine.wrap(function() -- Line 141
			--[[ Upvalues[2]:
				[1]: TweenService_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			task.wait(3)
			TweenService_upvr:Create(arg1, Tween0o.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
				Position = arg1.Position + UDim2.fromScale(0, 0.04);
				ImageTransparency = 1;
			}):Play()
		end)()
	end
end
local Tween0o_new_result1_upvr_2 = Tween0o.new(2, Enum.EasingStyle.Quart)
local function CreateMark_upvr(arg1, arg2) -- Line 147, Named "CreateMark"
	--[[ Upvalues[6]:
		[1]: module_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: Tween0o_new_result1_upvr_2 (readonly)
		[4]: Debris_upvr (readonly)
		[5]: CreateParticleSplat_upvr (readonly)
		[6]: CreateParticle_upvr (readonly)
	]]
	module_upvr.PlaySFX("Whoosh", {
		Volume = 1 - arg2 + 0.3;
	})
	module_upvr.PlaySFX(script.Ready, {
		Volume = 1 - arg2 + 0.3;
	})
	local ImageLabel = Instance.new("ImageLabel", arg1)
	ImageLabel.Size = UDim2.fromScale(0.8, 0.8)
	ImageLabel.Image = "rbxassetid://12402888086"
	ImageLabel.Rotation = math.random(0, 360)
	ImageLabel.SizeConstraint = Enum.SizeConstraint.RelativeYY
	ImageLabel.BackgroundTransparency = 1
	ImageLabel.ImageTransparency = arg2
	ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel.Position = UDim2.fromScale(0.5, 0.5)
	ImageLabel.ZIndex = 10
	TweenService_upvr:Create(ImageLabel, Tween0o_new_result1_upvr_2, {
		Size = UDim2.fromScale(0.7, 0.7);
		ImageTransparency = 1;
	}):Play()
	Debris_upvr:AddItem(ImageLabel, 2)
	for _ = 1, 7 do
		task.defer(CreateParticleSplat_upvr, arg1, "rbxassetid://16924356946", math.random(30, 60) / 100)
		task.defer(CreateParticleSplat_upvr, arg1, "rbxassetid://8071207852", math.random(50, 100) / 100, true)
	end
	CreateParticle_upvr("http://www.roblox.com/asset/?id=10468554009", arg1, 0.5, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1.5, 1.5), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
	CreateParticle_upvr("http://www.roblox.com/asset/?id=13911306541", arg1, 0.6, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1.2, 1.2), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
	CreateParticle_upvr("rbxassetid://16924434689", arg1, 0.6, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1.4, 1.4), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
end
local SpinSpeed_upvr = script:WaitForChild("SpinSpeed")
local ShakeSize_upvr = script:WaitForChild("ShakeSize")
return function(arg1, arg2, arg3, arg4, arg5) -- Line 174
	--[[ Upvalues[13]:
		[1]: RunService_upvr (readonly)
		[2]: SpinSpeed_upvr (readonly)
		[3]: ShakeSize_upvr (readonly)
		[4]: TweenService_upvr (readonly)
		[5]: CreateParticleEmit_upvr (readonly)
		[6]: CreateBlood_upvr (readonly)
		[7]: CreateFlipbook_upvr (readonly)
		[8]: ActiveBlood_upvr (readonly)
		[9]: module_upvr (readonly)
		[10]: CreateMark_upvr (readonly)
		[11]: CreateParticleSplat_upvr (readonly)
		[12]: CreateParticle_upvr (readonly)
		[13]: Debris_upvr (readonly)
	]]
	script.Ambient:Play()
	game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
	local var54_upvw = true
	local clone_5_upvr = script:WaitForChild("BaseGroup"):Clone()
	clone_5_upvr:AddTag("CutsceneAsset")
	clone_5_upvr.Parent = arg2
	local GradientFrame = clone_5_upvr:WaitForChild("GradientFrame")
	local Star_upvr = clone_5_upvr:WaitForChild("Star")
	local var59_upvw
	var59_upvw = RunService_upvr.Heartbeat:Connect(function(arg1_2) -- Line 185
		--[[ Upvalues[5]:
			[1]: clone_5_upvr (readonly)
			[2]: Star_upvr (readonly)
			[3]: SpinSpeed_upvr (copied, readonly)
			[4]: ShakeSize_upvr (copied, readonly)
			[5]: var59_upvw (read and write)
		]]
		if clone_5_upvr.Parent then
			local var60 = Star_upvr
			var60.Rotation += arg1_2 * 60 * SpinSpeed_upvr.Value
			clone_5_upvr.Blood1.Position = UDim2.fromScale(0.15, 0.8) + UDim2.fromScale(math.random(-100, 100) / 2000 * clone_5_upvr.Blood1.ShakeSize.Value, math.random(-100, 100) / 2000 * clone_5_upvr.Blood1.ShakeSize.Value)
			clone_5_upvr.Blood2.Position = UDim2.fromScale(0.8, 0.25) + UDim2.fromScale(math.random(-100, 100) / 2000 * clone_5_upvr.Blood2.ShakeSize.Value, math.random(-100, 100) / 2000 * clone_5_upvr.Blood2.ShakeSize.Value)
			clone_5_upvr.Blood3.Position = UDim2.fromScale(0.3, 0.1) + UDim2.fromScale(math.random(-100, 100) / 2000 * clone_5_upvr.Blood3.ShakeSize.Value, math.random(-100, 100) / 2000 * clone_5_upvr.Blood3.ShakeSize.Value)
			Star_upvr.Position = UDim2.fromScale(0.5, 0.5) + UDim2.fromScale(math.random(-100, 100) / 2000 * ShakeSize_upvr.Value, math.random(-100, 100) / 2000 * ShakeSize_upvr.Value)
		else
			var59_upvw:Disconnect()
		end
	end)
	TweenService_upvr:Create(clone_5_upvr, Tween0o.new(0.5, Enum.EasingStyle.Quad), {
		BackgroundTransparency = 0;
	}):Play()
	TweenService_upvr:Create(GradientFrame, Tween0o.new(0.5, Enum.EasingStyle.Quad), {
		BackgroundTransparency = 0.5;
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
	coroutine.wrap(function() -- Line 204
		--[[ Upvalues[4]:
			[1]: clone_5_upvr (readonly)
			[2]: var54_upvw (read and write)
			[3]: CreateParticleEmit_upvr (copied, readonly)
			[4]: CreateBlood_upvr (copied, readonly)
		]]
		while clone_5_upvr.Parent and var54_upvw do
			CreateParticleEmit_upvr(clone_5_upvr, "rbxassetid://8030760338", math.random(5, 20) / 500)
			task.defer(CreateBlood_upvr, clone_5_upvr)
			task.wait(0.05)
		end
	end)()
	coroutine.wrap(function() -- Line 213
		--[[ Upvalues[3]:
			[1]: clone_5_upvr (readonly)
			[2]: var54_upvw (read and write)
			[3]: CreateFlipbook_upvr (copied, readonly)
		]]
		while clone_5_upvr.Parent and var54_upvw do
			task.defer(CreateFlipbook_upvr, "rbxassetid://15606777441", clone_5_upvr, 30, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1, 1), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.1, true)
			task.defer(CreateFlipbook_upvr, "rbxassetid://13414392494", clone_5_upvr, 30, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1, 1), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.5, true)
			task.wait(0.1)
		end
	end)()
	coroutine.wrap(function() -- Line 222
		--[[ Upvalues[3]:
			[1]: clone_5_upvr (readonly)
			[2]: ActiveBlood_upvr (copied, readonly)
			[3]: module_upvr (copied, readonly)
		]]
		task.wait(2)
		if not clone_5_upvr.Parent then
		else
			ActiveBlood_upvr(clone_5_upvr:FindFirstChild("Blood1"))
			module_upvr.PlaySFX(script.Blood1)
			task.wait(0.5)
			if not clone_5_upvr.Parent then return end
			ActiveBlood_upvr(clone_5_upvr:FindFirstChild("Blood2"))
			module_upvr.PlaySFX(script.Blood2)
			task.wait(0.3)
			if not clone_5_upvr.Parent then return end
			ActiveBlood_upvr(clone_5_upvr:FindFirstChild("Blood3"))
			module_upvr.PlaySFX(script.Blood3)
		end
	end)()
	module_upvr.PlaySFX("OneMilPlus")
	task.wait(3.23)
	TweenService_upvr:Create(Star_upvr, Tween0o.new(6, Enum.EasingStyle.Exponential, Enum.EasingDirection.In), {
		Size = UDim2.fromScale(3, 3);
	}):Play()
	task.wait(4)
	CreateMark_upvr(clone_5_upvr, 0.6)
	task.wait(1)
	CreateMark_upvr(clone_5_upvr, 0)
	task.wait(1)
	for _ = 1, 7 do
		task.defer(CreateParticleSplat_upvr, clone_5_upvr, "rbxassetid://16924356946", math.random(30, 60) / 100)
		task.defer(CreateParticleSplat_upvr, clone_5_upvr, "rbxassetid://8071207852", math.random(50, 100) / 100, true)
	end
	CreateParticle_upvr("http://www.roblox.com/asset/?id=10468554009", clone_5_upvr, 0.5, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(2, 2), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
	CreateParticle_upvr("http://www.roblox.com/asset/?id=13911306541", clone_5_upvr, 0.6, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(2.5, 2.5), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
	CreateParticle_upvr("rbxassetid://16924434689", clone_5_upvr, 0.6, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(2.3, 2.3), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
	CreateParticle_upvr("rbxassetid://16924595234", clone_5_upvr, 1, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1.8, 1.8), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
	CreateParticle_upvr("rbxassetid://10176632695", clone_5_upvr, 1.1, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(3, 3), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
	Star_upvr.Visible = false
	clone_5_upvr.BackgroundTransparency = 1
	var54_upvw = false
	clone_5_upvr.Blood1.Visible = false
	clone_5_upvr.Blood2.Visible = false
	clone_5_upvr.Blood3.Visible = false
	local Frame_upvr = Instance.new("Frame", arg2)
	Frame_upvr.Size = UDim2.fromScale(1, 1)
	Frame_upvr.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
	Frame_upvr.ZIndex = 4
	TweenService_upvr:Create(Frame_upvr, Tween0o.new(1), {
		BackgroundTransparency = 1;
	}):Play()
	Debris_upvr:AddItem(Frame_upvr, 1)
	module_upvr.PlaySFX(script.Ouch)
	module_upvr.PlaySFX(script.Ouch2)
	--module_upvr.PlaySFX("Ambient"):Destroy()
	script.Ambient:Stop()
	GradientFrame.Visible = false
	task.defer(function() -- Line 281
		--[[ Upvalues[4]:
			[1]: clone_5_upvr (readonly)
			[2]: Frame_upvr (readonly)
			[3]: TweenService_upvr (copied, readonly)
			[4]: Debris_upvr (copied, readonly)
		]]
		task.wait(0.01)
		if not clone_5_upvr.Parent then
		else
			Frame_upvr.BackgroundColor3 = Color3.new(1, 1, 1)
			task.wait(0.01)
			if not clone_5_upvr.Parent then return end
			Frame_upvr.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
			task.wait(0.01)
			if not clone_5_upvr.Parent then return end
			Frame_upvr.BackgroundColor3 = Color3.new(1, 1, 1)
			TweenService_upvr:Create(clone_5_upvr, Tween0o.new(3), {
				GroupTransparency = 1;
			}):Play()
			Debris_upvr:AddItem(clone_5_upvr, 3)
		end
	end)
	var59_upvw:Disconnect()
end