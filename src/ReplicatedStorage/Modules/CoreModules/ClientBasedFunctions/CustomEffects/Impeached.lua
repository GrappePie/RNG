-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-15 15:39:27
-- Luau version 6, Types version 3
-- Time taken: 0.008095 seconds

local TweenService_upvr = game:GetService("TweenService")
local Debris_upvr = game:GetService("Debris")
local RunService_upvr = game:GetService("RunService")
local module_upvr = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("UI"):WaitForChild("SceneUI"):WaitForChild("Assets"))
local Particle_upvr = script:WaitForChild("Particle")
local function CreateParticle_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) -- Line 30, Named "CreateParticle"
	--[[ Upvalues[3]:
		[1]: Particle_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: Debris_upvr (readonly)
	]]
	local clone_2 = Particle_upvr:Clone()
	clone_2.Parent = arg2
	clone_2.Position = arg4
	clone_2.Rotation = arg8 or 0
	clone_2.Size = arg5
	clone_2.SizeConstraint = arg7
	clone_2.Image = arg1
	clone_2.ImageTransparency = arg9 or 0
	local Quart_2 = Enum.EasingStyle.Quart
	local tbl_2 = {}
	tbl_2.Size = arg6
	if arg10 then
		Quart_2 = 1
	else
		Quart_2 = 0
	end
	tbl_2.ImageTransparency = Quart_2
	TweenService_upvr:Create(clone_2, TweenInfo.new(arg3, Quart_2), tbl_2):Play()
	Debris_upvr:AddItem(clone_2, arg3)
end
local Flipbook_upvr = script:WaitForChild("Flipbook")
local module_upvr_2 = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("SpriteClip"))
local function CreateFlipbook_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) -- Line 43, Named "CreateFlipbook"
	--[[ Upvalues[3]:
		[1]: Flipbook_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: module_upvr_2 (readonly)
	]]
	local clone = Flipbook_upvr:Clone()
	clone.Position = arg4
	clone.Rotation = arg8 or 0
	clone.Size = arg5
	clone.SizeConstraint = arg7
	clone.ImageTransparency = arg9 or 0
	clone.Image = arg1
	local Quart = Enum.EasingStyle.Quart
	local tbl = {}
	tbl.Size = arg6
	if arg10 then
		Quart = 1
	else
		Quart = 0
	end
	tbl.ImageTransparency = Quart
	TweenService_upvr:Create(clone, TweenInfo.new(1 / arg3 * 16, Quart), tbl):Play()
	local any_new_result1 = module_upvr_2.new()
	any_new_result1.Adornee = clone
	any_new_result1.SpriteSizePixel = Vector2.one * 1024 / 4
	any_new_result1.SpriteCount = 16
	any_new_result1.SpriteCountX = 4
	any_new_result1.FrameRate = arg3
	any_new_result1.FrameTime = 1
	any_new_result1.Looped = false
	any_new_result1:Play()
	clone.Parent = arg2
end
local TweenInfo_new_result1_upvr_4 = TweenInfo.new(0.5, Enum.EasingStyle.Quart)
local TweenInfo_new_result1_upvr_2 = TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
local function CreateParticleEmit_upvr(arg1, arg2, arg3) -- Line 66, Named "CreateParticleEmit"
	--[[ Upvalues[5]:
		[1]: TweenService_upvr (readonly)
		[2]: TweenInfo_new_result1_upvr_4 (readonly)
		[3]: TweenInfo_new_result1_upvr_2 (readonly)
		[4]: Debris_upvr (readonly)
		[5]: RunService_upvr (readonly)
	]]
	local ImageLabel_3_upvr = Instance.new("ImageLabel", arg1)
	ImageLabel_3_upvr.Size = UDim2.fromScale()
	ImageLabel_3_upvr.Image = arg2
	ImageLabel_3_upvr.SizeConstraint = Enum.SizeConstraint.RelativeXX
	ImageLabel_3_upvr.BackgroundTransparency = 1
	ImageLabel_3_upvr.Rotation = math.random(-15, 15)
	ImageLabel_3_upvr.AnchorPoint = Vector2.new(0.5, 0.5)
	TweenService_upvr:Create(ImageLabel_3_upvr, TweenInfo_new_result1_upvr_4, {
		Size = UDim2.fromScale(arg3, arg3);
	}):Play()
	local var19 = 50
	if math.random(1, 2) == 1 then
		var19 = -1
	else
		var19 = 1
	end
	local udim2_upvr = UDim2.fromScale(math.random(0, 100) / 100, 1)
	local var22_upvr = math.random(var19, 70) * var19
	local var23_upvr = math.random(2, 5) / 500
	coroutine.wrap(function() -- Line 78
		--[[ Upvalues[8]:
			[1]: ImageLabel_3_upvr (readonly)
			[2]: TweenService_upvr (copied, readonly)
			[3]: TweenInfo_new_result1_upvr_2 (copied, readonly)
			[4]: Debris_upvr (copied, readonly)
			[5]: udim2_upvr (readonly)
			[6]: var22_upvr (readonly)
			[7]: var23_upvr (readonly)
			[8]: RunService_upvr (copied, readonly)
		]]
		local time_result1 = time()
		while ImageLabel_3_upvr and ImageLabel_3_upvr.Parent do
			if time_result1 + math.random(15, 20) / 10 - 0.5 <= time() and not ImageLabel_3_upvr:GetAttribute("Removing") then
				ImageLabel_3_upvr:SetAttribute("Removing", true)
				TweenService_upvr:Create(ImageLabel_3_upvr, TweenInfo_new_result1_upvr_2, {
					Size = UDim2.fromScale(0, 0);
				}):Play()
				Debris_upvr:AddItem(ImageLabel_3_upvr, 0.5)
			end
			local var26 = (time() - time_result1) * 50
			ImageLabel_3_upvr.Position = udim2_upvr + UDim2.fromScale(0.07 * math.sin(var26 / var22_upvr), var26 * -var23_upvr)
			RunService_upvr.Heartbeat:Wait()
		end
	end)()
end
local TweenInfo_new_result1_upvr_3 = TweenInfo.new(2, Enum.EasingStyle.Quart)
local function CreateMark_upvr(arg1, arg2, arg3) -- Line 95, Named "CreateMark"
	--[[ Upvalues[5]:
		[1]: module_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: TweenInfo_new_result1_upvr_3 (readonly)
		[4]: Debris_upvr (readonly)
		[5]: CreateParticle_upvr (readonly)
	]]
	module_upvr.PlaySFX("Whoosh", {
		Volume = 1 - arg2 + 0.3;
	})
	local ImageLabel_2 = Instance.new("ImageLabel", arg1)
	ImageLabel_2.Size = UDim2.fromScale(0.8, 0.8)
	ImageLabel_2.Image = arg3 or "rbxassetid://16685503908"
	ImageLabel_2.SizeConstraint = Enum.SizeConstraint.RelativeYY
	ImageLabel_2.BackgroundTransparency = 1
	ImageLabel_2.ImageTransparency = arg2
	ImageLabel_2.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel_2.Position = UDim2.fromScale(0.5, 0.5)
	ImageLabel_2.ZIndex = 10
	TweenService_upvr:Create(ImageLabel_2, TweenInfo_new_result1_upvr_3, {
		Size = UDim2.fromScale(0.7, 0.7);
		ImageTransparency = 1;
	}):Play()
	Debris_upvr:AddItem(ImageLabel_2, 2)
	CreateParticle_upvr("http://www.roblox.com/asset/?id=10468554009", arg1, 0.5, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1.5, 1.5), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
	CreateParticle_upvr("http://www.roblox.com/asset/?id=13911306541", arg1, 0.6, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1.2, 1.2), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
	CreateParticle_upvr("rbxassetid://16924434689", arg1, 0.6, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1.4, 1.4), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
end
local SpinSpeed_upvr = script:WaitForChild("SpinSpeed")
local ShakeSize_upvr = script:WaitForChild("ShakeSize")
local TweenInfo_new_result1_upvr = TweenInfo.new(1, Enum.EasingStyle.Quart)
return function(arg1, arg2, arg3, arg4, arg5) -- Line 115
	--[[ Upvalues[11]:
		[1]: RunService_upvr (readonly)
		[2]: SpinSpeed_upvr (readonly)
		[3]: ShakeSize_upvr (readonly)
		[4]: TweenService_upvr (readonly)
		[5]: CreateParticleEmit_upvr (readonly)
		[6]: CreateParticle_upvr (readonly)
		[7]: CreateFlipbook_upvr (readonly)
		[8]: module_upvr (readonly)
		[9]: CreateMark_upvr (readonly)
		[10]: TweenInfo_new_result1_upvr (readonly)
		[11]: Debris_upvr (readonly)
	]]
	script.Ambient:Play()
	game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
	local var35_upvw = true
	local clone_3_upvr = script:WaitForChild("BaseGroup"):Clone()
	clone_3_upvr:AddTag("CutsceneAsset")
	clone_3_upvr.Parent = arg2
	local GradientFrame = clone_3_upvr:WaitForChild("GradientFrame")
	local Star_upvr = clone_3_upvr:WaitForChild("Star")
	local var40_upvw
	var40_upvw = RunService_upvr.Heartbeat:Connect(function(arg1_2) -- Line 127
		--[[ Upvalues[5]:
			[1]: clone_3_upvr (readonly)
			[2]: Star_upvr (readonly)
			[3]: SpinSpeed_upvr (copied, readonly)
			[4]: ShakeSize_upvr (copied, readonly)
			[5]: var40_upvw (read and write)
		]]
		if clone_3_upvr.Parent then
			local var41 = Star_upvr
			var41.Rotation += arg1_2 * 60 * SpinSpeed_upvr.Value
			local Ring = clone_3_upvr.Ring
			Ring.Rotation -= arg1_2 * 35
			Star_upvr.Position = UDim2.fromScale(0.5, 0.5) + UDim2.fromScale(math.random(-100, 100) / 2000 * ShakeSize_upvr.Value, math.random(-100, 100) / 2000 * ShakeSize_upvr.Value)
		else
			var40_upvw:Disconnect()
		end
	end)
	TweenService_upvr:Create(clone_3_upvr, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {
		BackgroundTransparency = 0;
	}):Play()
	TweenService_upvr:Create(GradientFrame, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {
		BackgroundTransparency = 0.5;
	}):Play()
	TweenService_upvr:Create(SpinSpeed_upvr, TweenInfo.new(1, Enum.EasingStyle.Quart), {
		Value = 2;
	}):Play()
	TweenService_upvr:Create(ShakeSize_upvr, TweenInfo.new(0.5, Enum.EasingStyle.Quart), {
		Value = 0;
	}):Play()
	TweenService_upvr:Create(Star_upvr, TweenInfo.new(1, Enum.EasingStyle.Quart), {
		Size = UDim2.fromScale(1, 1);
	}):Play()
	TweenService_upvr:Create(clone_3_upvr.Ring, TweenInfo.new(3, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut, 0, false, 1), {
		Size = UDim2.fromScale(0.4, 0.4);
		ImageTransparency = 0.5;
	}):Play()
	TweenService_upvr:Create(clone_3_upvr.Fog, TweenInfo.new(1), {
		ImageTransparency = 0.8;
	}):Play()
	TweenService_upvr:Create(clone_3_upvr.Fog.Fog, TweenInfo.new(1), {
		ImageTransparency = 0.8;
	}):Play()
	TweenService_upvr:Create(clone_3_upvr.Fog, TweenInfo.new(10, Enum.EasingStyle.Linear), {
		Position = UDim2.fromScale(3, 0);
	}):Play()
	coroutine.wrap(function() -- Line 150
		--[[ Upvalues[3]:
			[1]: clone_3_upvr (readonly)
			[2]: var35_upvw (read and write)
			[3]: CreateParticleEmit_upvr (copied, readonly)
		]]
		while clone_3_upvr.Parent and var35_upvw do
			CreateParticleEmit_upvr(clone_3_upvr, "rbxassetid://8030760338", math.random(5, 20) / 500)
			task.wait(0.05)
		end
	end)()
	coroutine.wrap(function() -- Line 158
		--[[ Upvalues[3]:
			[1]: clone_3_upvr (readonly)
			[2]: var35_upvw (read and write)
			[3]: CreateParticle_upvr (copied, readonly)
		]]
		while clone_3_upvr.Parent and var35_upvw do
			task.defer(CreateParticle_upvr, "http://www.roblox.com/asset/?id=13273852131", clone_3_upvr, 0.5, UDim2.fromScale(math.random(0, 100) / 100, math.random(0, 100) / 100), UDim2.fromScale(0.4, 0.4), UDim2.fromScale(0, 0), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0, false)
			task.wait(0.02)
		end
	end)()
	coroutine.wrap(function() -- Line 166
		--[[ Upvalues[3]:
			[1]: clone_3_upvr (readonly)
			[2]: var35_upvw (read and write)
			[3]: CreateFlipbook_upvr (copied, readonly)
		]]
		while clone_3_upvr.Parent and var35_upvw do
			task.defer(CreateFlipbook_upvr, "rbxassetid://15011471927", clone_3_upvr, 30, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1, 1), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.6, true)
			task.defer(CreateFlipbook_upvr, "rbxassetid://12350056117", clone_3_upvr, 30, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1, 1), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.1, true)
			task.defer(CreateFlipbook_upvr, "rbxassetid://13414392494", clone_3_upvr, 30, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1, 1), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.5, true)
			task.defer(CreateFlipbook_upvr, "rbxassetid://14550142746", clone_3_upvr, 30, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1, 1), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.5, true)
			task.defer(CreateFlipbook_upvr, "http://www.roblox.com/asset/?id=12757089364", clone_3_upvr, 30, UDim2.fromScale(math.random(0, 100) / 100, 1.2), UDim2.fromScale(0.6, 0.6), UDim2.fromScale(1, 1), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.1, false)
			task.defer(CreateFlipbook_upvr, "http://www.roblox.com/asset/?id=12757089364", clone_3_upvr, 30, UDim2.fromScale(math.random(0, 100) / 100, -0.2), UDim2.fromScale(0.6, 0.6), UDim2.fromScale(1, 1), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.1, false)
			task.wait(0.1)
		end
	end)()
	coroutine.wrap(function() -- Line 179
		--[[ Upvalues[3]:
			[1]: clone_3_upvr (readonly)
			[2]: var35_upvw (read and write)
			[3]: CreateFlipbook_upvr (copied, readonly)
		]]
		while clone_3_upvr.Parent and var35_upvw do
			task.defer(CreateFlipbook_upvr, "http://www.roblox.com/asset/?id=11696060802", clone_3_upvr, 15, UDim2.fromScale(math.random(0, 100) / 100, math.random(0, 100) / 100), UDim2.fromScale(1, 1), UDim2.fromScale(1.2, 1.2), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.6, false)
			task.wait(0.7)
		end
	end)()
	module_upvr.PlaySFX(script.OneMilPlus)
	task.wait(3.23)
	TweenService_upvr:Create(Star_upvr, TweenInfo.new(6, Enum.EasingStyle.Exponential, Enum.EasingDirection.In), {
		Size = UDim2.fromScale(3, 3);
	}):Play()
	task.wait(4)
	CreateMark_upvr(clone_3_upvr, 0.6)
	task.wait(1)
	CreateMark_upvr(clone_3_upvr, 0, "rbxassetid://16685690147")
	task.wait(0.75)
	TweenService_upvr:Create(clone_3_upvr.Sword, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
		Position = UDim2.fromScale(0.5, 2.75);
	}):Play()
	script.Swing:Play()
	task.wait(0.25)
	local ImageLabel = Instance.new("ImageLabel", clone_3_upvr)
	ImageLabel.Position = UDim2.fromScale(0.5, 0.5)
	ImageLabel.Image = "rbxassetid://16685733415"
	ImageLabel.SizeConstraint = Enum.SizeConstraint.RelativeXY
	ImageLabel.BackgroundTransparency = 1
	ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel.Size = UDim2.fromScale(0.7, 5)
	TweenService_upvr:Create(ImageLabel, TweenInfo_new_result1_upvr, {
		Size = UDim2.fromScale(0, 5);
	}):Play()
	Debris_upvr:AddItem(ImageLabel, 1)
	CreateParticle_upvr("http://www.roblox.com/asset/?id=10468554009", clone_3_upvr, 0.5, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(2, 2), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
	CreateParticle_upvr("http://www.roblox.com/asset/?id=13911306541", clone_3_upvr, 0.6, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(2.5, 2.5), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
	CreateParticle_upvr("rbxassetid://16924434689", clone_3_upvr, 0.6, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(2.3, 2.3), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
	CreateParticle_upvr("rbxassetid://16924595234", clone_3_upvr, 1, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1.8, 1.8), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
	CreateParticle_upvr("rbxassetid://10176632695", clone_3_upvr, 1.1, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(3, 3), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
	Star_upvr.Visible = false
	clone_3_upvr.BackgroundTransparency = 1
	var35_upvw = false
	local Frame = Instance.new("Frame", arg2)
	Frame.Size = UDim2.fromScale(1, 1)
	Frame.BackgroundColor3 = Color3.new(1, 1, 1)
	Frame.ZIndex = 4
	TweenService_upvr:Create(Frame, TweenInfo.new(1), {
		BackgroundTransparency = 1;
	}):Play()
	Debris_upvr:AddItem(Frame, 1)
	module_upvr.PlaySFX(script.Ready)
	--module_upvr.PlaySFX(script.Ambient):Destroy()
	script.Ambient:Stop()
	GradientFrame.Visible = false
	clone_3_upvr.Ring.Visible = false
	clone_3_upvr.Fog.Visible = false
	TweenService_upvr:Create(clone_3_upvr, TweenInfo.new(3), {
		GroupTransparency = 1;
	}):Play()
	Debris_upvr:AddItem(clone_3_upvr, 3)
	var40_upvw:Disconnect()
end