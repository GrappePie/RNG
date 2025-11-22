local TweenService_upvr = game:GetService("TweenService")
local Debris_upvr = game:GetService("Debris")
local RunService_upvr = game:GetService("RunService")
local ShakeSize_upvr = script:WaitForChild("ShakeSize")
local module_upvr = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("UI"):WaitForChild("SceneUI"):WaitForChild("Assets"))
local TweenInfo_new_result1_upvr_3 = TweenInfo.new(0.5, Enum.EasingStyle.Quart)
local TweenInfo_new_result1_upvr_2 = TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
local TweenInfo_new_result1_upvr = TweenInfo.new(2, Enum.EasingStyle.Quart)
local Particle_upvr = script:WaitForChild("Particle")
local function CreateParticle_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) -- Line 32, Named "CreateParticle"
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
	clone.ImageTransparency = arg9 or 0
	local Quart_2 = Enum.EasingStyle.Quart
	local tbl_2 = {}
	tbl_2.Size = arg6
	if arg10 then
		Quart_2 = 1
	else
		Quart_2 = 0
	end
	tbl_2.ImageTransparency = Quart_2
	TweenService_upvr:Create(clone, TweenInfo.new(arg3, Quart_2), tbl_2):Play()
	Debris_upvr:AddItem(clone, arg3)
end
local function CreateParticle2_upvr(arg1) -- Line 45, Named "CreateParticle2"
	--[[ Upvalues[2]:
		[1]: Debris_upvr (readonly)
		[2]: RunService_upvr (readonly)
	]]
	local ImageLabel_upvr_2 = Instance.new("ImageLabel", arg1)
	ImageLabel_upvr_2.Position = UDim2.fromScale(math.random(0, 100) / 100, math.random(0, 100) / 100)
	ImageLabel_upvr_2.ImageColor3 = Color3.new(1, 0, 0)
	ImageLabel_upvr_2.Image = "http://www.roblox.com/asset/?id=3128134647"
	ImageLabel_upvr_2.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel_upvr_2.BorderSizePixel = 0
	ImageLabel_upvr_2.BackgroundTransparency = 1
	ImageLabel_upvr_2.ImageTransparency = math.random(0, 30) / 100
	ImageLabel_upvr_2.Size = UDim2.fromScale(math.random(40, 80) / 100, math.random(20, 60) / 100)
	Debris_upvr:AddItem(ImageLabel_upvr_2, math.random(1, 2) / 20)
	coroutine.wrap(function() -- Line 57
		--[[ Upvalues[2]:
			[1]: ImageLabel_upvr_2 (readonly)
			[2]: RunService_upvr (copied, readonly)
		]]
		while ImageLabel_upvr_2 and ImageLabel_upvr_2.Parent do
			ImageLabel_upvr_2.Size = UDim2.fromScale(math.random(5, 80) / 100, math.random(5, 60) / 100)
			RunService_upvr.Heartbeat:Wait()
		end
	end)()
end
local Flipbook_upvr = script:WaitForChild("Flipbook")
local module_upvr_2 = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("SpriteClip"))
local function CreateFlipbook_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) -- Line 66, Named "CreateFlipbook"
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
	local Quart = Enum.EasingStyle.Quart
	local tbl = {}
	tbl.Size = arg6
	if arg10 then
		Quart = 1
	else
		Quart = 0
	end
	tbl.ImageTransparency = Quart
	TweenService_upvr:Create(clone_3, TweenInfo.new(1 / arg3 * 16, Quart), tbl):Play()
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
local function CreateParticleEmit_upvr(arg1, arg2, arg3) -- Line 89, Named "CreateParticleEmit"
	--[[ Upvalues[5]:
		[1]: TweenService_upvr (readonly)
		[2]: TweenInfo_new_result1_upvr_3 (readonly)
		[3]: TweenInfo_new_result1_upvr_2 (readonly)
		[4]: Debris_upvr (readonly)
		[5]: RunService_upvr (readonly)
	]]
	local ImageLabel_upvr_3 = Instance.new("ImageLabel", arg1)
	ImageLabel_upvr_3.Size = UDim2.fromScale()
	ImageLabel_upvr_3.Image = arg2
	ImageLabel_upvr_3.SizeConstraint = Enum.SizeConstraint.RelativeXX
	ImageLabel_upvr_3.BackgroundTransparency = 1
	ImageLabel_upvr_3.Rotation = math.random(-15, 15)
	ImageLabel_upvr_3.AnchorPoint = Vector2.new(0.5, 0.5)
	TweenService_upvr:Create(ImageLabel_upvr_3, TweenInfo_new_result1_upvr_3, {
		Size = UDim2.fromScale(arg3, arg3);
	}):Play()
	local var23 = 50
	if math.random(1, 2) == 1 then
		var23 = -1
	else
		var23 = 1
	end
	local udim2_upvr = UDim2.fromScale(math.random(0, 100) / 100, 1)
	local var26_upvr = math.random(var23, 70) * var23
	local var27_upvr = math.random(2, 5) / 500
	coroutine.wrap(function() -- Line 101
		--[[ Upvalues[8]:
			[1]: ImageLabel_upvr_3 (readonly)
			[2]: TweenService_upvr (copied, readonly)
			[3]: TweenInfo_new_result1_upvr_2 (copied, readonly)
			[4]: Debris_upvr (copied, readonly)
			[5]: udim2_upvr (readonly)
			[6]: var26_upvr (readonly)
			[7]: var27_upvr (readonly)
			[8]: RunService_upvr (copied, readonly)
		]]
		local time_result1 = time()
		while ImageLabel_upvr_3 and ImageLabel_upvr_3.Parent do
			if time_result1 + math.random(15, 20) / 10 - 0.5 <= time() and not ImageLabel_upvr_3:GetAttribute("Removing") then
				ImageLabel_upvr_3:SetAttribute("Removing", true)
				TweenService_upvr:Create(ImageLabel_upvr_3, TweenInfo_new_result1_upvr_2, {
					Size = UDim2.fromScale(0, 0);
				}):Play()
				Debris_upvr:AddItem(ImageLabel_upvr_3, 0.5)
			end
			local var30 = (time() - time_result1) * 50
			ImageLabel_upvr_3.Position = udim2_upvr + UDim2.fromScale(0.07 * math.sin(var30 / var26_upvr), var30 * -var27_upvr)
			RunService_upvr.Heartbeat:Wait()
		end
	end)()
end
local function CreateMark_upvr(arg1, arg2) -- Line 118, Named "CreateMark"
	--[[ Upvalues[5]:
		[1]: module_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: TweenInfo_new_result1_upvr (readonly)
		[4]: Debris_upvr (readonly)
		[5]: CreateParticle_upvr (readonly)
	]]
	module_upvr.PlaySFX("Whoosh", {
		Volume = 1 - arg2 + 0.3;
	})
	local ImageLabel = Instance.new("ImageLabel", arg1)
	ImageLabel.Size = UDim2.fromScale(0.8, 0.8)
	ImageLabel.Image = "rbxassetid://80078149518908"
	ImageLabel.SizeConstraint = Enum.SizeConstraint.RelativeYY
	ImageLabel.BackgroundTransparency = 1
	ImageLabel.ImageTransparency = arg2
	ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel.Position = UDim2.fromScale(0.5, 0.5)
	ImageLabel.ZIndex = 10
	TweenService_upvr:Create(ImageLabel, TweenInfo_new_result1_upvr, {
		Size = UDim2.fromScale(0.7, 0.7);
		ImageTransparency = 1;
	}):Play()
	Debris_upvr:AddItem(ImageLabel, 2)
	CreateParticle_upvr("http://www.roblox.com/asset/?id=10468554009", arg1, 0.5, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1.5, 1.5), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
	CreateParticle_upvr("http://www.roblox.com/asset/?id=13911306541", arg1, 0.6, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1.2, 1.2), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
	CreateParticle_upvr("rbxassetid://16924434689", arg1, 0.6, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1.4, 1.4), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
end
local function CreateFog_upvr(arg1) -- Line 137, Named "CreateFog"
	--[[ Upvalues[5]:
		[1]: TweenService_upvr (readonly)
		[2]: TweenInfo_new_result1_upvr_3 (readonly)
		[3]: TweenInfo_new_result1_upvr_2 (readonly)
		[4]: Debris_upvr (readonly)
		[5]: RunService_upvr (readonly)
	]]
	local ImageLabel_upvr = Instance.new("ImageLabel", arg1)
	ImageLabel_upvr.Size = UDim2.fromScale(1, 1)
	ImageLabel_upvr.Image = "rbxassetid://7216855489"
	ImageLabel_upvr.SizeConstraint = Enum.SizeConstraint.RelativeXX
	ImageLabel_upvr.BackgroundTransparency = 1
	ImageLabel_upvr.ImageTransparency = 1
	ImageLabel_upvr.Rotation = math.random(0, 360)
	ImageLabel_upvr.AnchorPoint = Vector2.new(0.5, 0.5)
	TweenService_upvr:Create(ImageLabel_upvr, TweenInfo_new_result1_upvr_3, {
		ImageTransparency = 0.9;
	}):Play()
	local randint = math.random(2, 5)
	local var38
	if var38 == 1 then
		randint = -1
	else
		randint = 1
	end
	var38 = math.random(2, 5)
	if math.random(1, 2) == 1 then
		var38 = -1
	else
		var38 = 1
	end
	local udim2_upvr_2 = UDim2.fromScale(math.random(0, 100) / 100, math.random(0, 100) / 100)
	local var40_upvr = randint / 2400 * randint
	local var41_upvr = var38 / 2400 * var38
	function var38() -- Line 150
		--[[ Upvalues[8]:
			[1]: ImageLabel_upvr (readonly)
			[2]: TweenService_upvr (copied, readonly)
			[3]: TweenInfo_new_result1_upvr_2 (copied, readonly)
			[4]: Debris_upvr (copied, readonly)
			[5]: udim2_upvr_2 (readonly)
			[6]: var40_upvr (readonly)
			[7]: var41_upvr (readonly)
			[8]: RunService_upvr (copied, readonly)
		]]
		local time_result1_2 = time()
		while ImageLabel_upvr and ImageLabel_upvr.Parent do
			if time_result1_2 + math.random(20, 30) / 10 - 0.5 <= time() and not ImageLabel_upvr:GetAttribute("Removing") then
				ImageLabel_upvr:SetAttribute("Removing", true)
				TweenService_upvr:Create(ImageLabel_upvr, TweenInfo_new_result1_upvr_2, {
					ImageTransparency = 1;
				}):Play()
				Debris_upvr:AddItem(ImageLabel_upvr, 0.5)
			end
			local var44 = (time() - time_result1_2) * 50
			ImageLabel_upvr.Position = udim2_upvr_2 + UDim2.fromScale(var44 * -var40_upvr, var44 * -var41_upvr)
			RunService_upvr.Heartbeat:Wait()
		end
	end
	coroutine.wrap(var38)()
end
local function Overdrive_upvr(arg1, arg2, arg3, arg4) -- Line 167, Named "Overdrive"
	--[[ Upvalues[1]:
		[1]: ShakeSize_upvr (readonly)
	]]
	if arg1 then
		arg4:Play()
		arg2.Color = ColorSequence.new(Color3.new(1, 0, 0), Color3.fromRGB(255, 61, 64))
		ShakeSize_upvr.Value = 1
		arg3.Visible = true
	else
		arg4:Stop()
		arg2.Color = ColorSequence.new(Color3.fromRGB(102, 255, 133), Color3.fromRGB(80, 255, 220))
		ShakeSize_upvr.Value = 0
		arg3.Visible = false
	end
end
local Noise_upvr = script:WaitForChild("Noise")
local SpinSpeed_upvr = script:WaitForChild("SpinSpeed")
return function(arg1, arg2, arg3, arg4, arg5) -- Line 182
	--[[ Upvalues[15]:
		[1]: Noise_upvr (readonly)
		[2]: RunService_upvr (readonly)
		[3]: SpinSpeed_upvr (readonly)
		[4]: ShakeSize_upvr (readonly)
		[5]: TweenService_upvr (readonly)
		[6]: CreateParticleEmit_upvr (readonly)
		[7]: Overdrive_upvr (readonly)
		[8]: module_upvr (readonly)
		[9]: TweenInfo_new_result1_upvr (readonly)
		[10]: CreateParticle_upvr (readonly)
		[11]: CreateParticle2_upvr (readonly)
		[12]: CreateFlipbook_upvr (readonly)
		[13]: CreateFog_upvr (readonly)
		[14]: CreateMark_upvr (readonly)
		[15]: Debris_upvr (readonly)
	]]
	local clone_2_upvr = Noise_upvr:Clone()
	clone_2_upvr.Parent = game.Workspace
	clone_2_upvr:AddTag("CutsceneAsset")
	clone_2_upvr.Volume = 0.5
	local var51_upvw = true
	local clone_4_upvr = script:WaitForChild("BaseGroup"):Clone()
	clone_4_upvr:AddTag("CutsceneAsset")
	clone_4_upvr.Parent = arg2
	local UIGradient_upvr = clone_4_upvr:WaitForChild("UIGradient")
	local GradientFrame = clone_4_upvr:WaitForChild("GradientFrame")
	local Star_upvr = clone_4_upvr:WaitForChild("Star")
	local NoiseFrame_upvr = clone_4_upvr:WaitForChild("NoiseFrame")
	local Title_upvr = clone_4_upvr:WaitForChild("Title")
	local Corners_upvr = clone_4_upvr:WaitForChild("Corners")
	local Ambient = module_upvr.PlaySFX("Ambient")
	local var60_upvw
	var60_upvw = RunService_upvr.Heartbeat:Connect(function(arg1_2) -- Line 202
		--[[ Upvalues[8]:
			[1]: clone_4_upvr (readonly)
			[2]: Star_upvr (readonly)
			[3]: SpinSpeed_upvr (copied, readonly)
			[4]: Title_upvr (readonly)
			[5]: ShakeSize_upvr (copied, readonly)
			[6]: NoiseFrame_upvr (readonly)
			[7]: clone_2_upvr (readonly)
			[8]: var60_upvw (read and write)
		]]
		if clone_4_upvr.Parent then
			local var61 = Star_upvr
			var61.Rotation += arg1_2 * 60 * SpinSpeed_upvr.Value
			local Ring = clone_4_upvr.Ring
			Ring.Rotation -= arg1_2 * 35
			Title_upvr.Position = UDim2.fromScale(0.5, 0.5) + UDim2.fromScale(math.random(-100, 100) / 2000 * ShakeSize_upvr.Value, math.random(-100, 100) / 2000 * ShakeSize_upvr.Value)
			Star_upvr.Position = UDim2.fromScale(0.5, 0.5) + UDim2.fromScale(math.random(-100, 100) / 2000 * ShakeSize_upvr.Value, math.random(-100, 100) / 2000 * ShakeSize_upvr.Value)
			NoiseFrame_upvr.Position = UDim2.fromScale(math.random(-100, 0) / 100, math.random(-100, 0) / 100)
		else
			clone_2_upvr:Destroy()
			var60_upvw:Disconnect()
		end
	end)
	TweenService_upvr:Create(clone_4_upvr, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {
		BackgroundTransparency = 0;
	}):Play()
	TweenService_upvr:Create(GradientFrame, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {
		BackgroundTransparency = 0.85;
	}):Play()
	TweenService_upvr:Create(SpinSpeed_upvr, TweenInfo.new(1, Enum.EasingStyle.Quart), {
		Value = 1.5;
	}):Play()
	TweenService_upvr:Create(ShakeSize_upvr, TweenInfo.new(0.5, Enum.EasingStyle.Quart), {
		Value = 0;
	}):Play()
	TweenService_upvr:Create(Star_upvr, TweenInfo.new(1, Enum.EasingStyle.Quart), {
		Size = UDim2.fromScale(0.7, 0.7);
	}):Play()
	coroutine.wrap(function() -- Line 222
		--[[ Upvalues[3]:
			[1]: clone_4_upvr (readonly)
			[2]: var51_upvw (read and write)
			[3]: CreateParticleEmit_upvr (copied, readonly)
		]]
		while clone_4_upvr.Parent and var51_upvw do
			CreateParticleEmit_upvr(clone_4_upvr, "rbxassetid://8030760338", math.random(5, 20) / 500)
			task.wait(0.05)
		end
	end)()
	coroutine.wrap(function() -- Line 230
		--[[ Upvalues[13]:
			[1]: clone_4_upvr (readonly)
			[2]: Overdrive_upvr (copied, readonly)
			[3]: UIGradient_upvr (readonly)
			[4]: NoiseFrame_upvr (readonly)
			[5]: clone_2_upvr (readonly)
			[6]: module_upvr (copied, readonly)
			[7]: TweenService_upvr (copied, readonly)
			[8]: TweenInfo_new_result1_upvr (copied, readonly)
			[9]: CreateParticle_upvr (copied, readonly)
			[10]: ShakeSize_upvr (copied, readonly)
			[11]: Title_upvr (readonly)
			[12]: Corners_upvr (readonly)
			[13]: SpinSpeed_upvr (copied, readonly)
		]]
		task.wait(3)
		if not clone_4_upvr.Parent then
		else
			Overdrive_upvr(true, UIGradient_upvr, NoiseFrame_upvr, clone_2_upvr)
			task.wait(0.1)
			if not clone_4_upvr.Parent then return end
			Overdrive_upvr(false, UIGradient_upvr, NoiseFrame_upvr, clone_2_upvr)
			task.wait(1)
			if not clone_4_upvr.Parent then return end
			Overdrive_upvr(true, UIGradient_upvr, NoiseFrame_upvr, clone_2_upvr)
			task.wait(0.1)
			if not clone_4_upvr.Parent then return end
			Overdrive_upvr(false, UIGradient_upvr, NoiseFrame_upvr, clone_2_upvr)
			task.wait(0.5)
			if not clone_4_upvr.Parent then return end
			Overdrive_upvr(true, UIGradient_upvr, NoiseFrame_upvr, clone_2_upvr)
			task.wait(0.1)
			if not clone_4_upvr.Parent then return end
			Overdrive_upvr(false, UIGradient_upvr, NoiseFrame_upvr, clone_2_upvr)
			task.wait(0.2)
			if not clone_4_upvr.Parent then return end
			Overdrive_upvr(true, UIGradient_upvr, NoiseFrame_upvr, clone_2_upvr)
			TweenService_upvr:Create(module_upvr.PlaySFX(script.Glitch), TweenInfo_new_result1_upvr, {
				Volume = 0;
			}):Play()
			CreateParticle_upvr("http://www.roblox.com/asset/?id=10468554009", clone_4_upvr, 0.5, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(2, 2), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
			CreateParticle_upvr("http://www.roblox.com/asset/?id=13911306541", clone_4_upvr, 0.6, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(2.5, 2.5), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
			CreateParticle_upvr("rbxassetid://16924434689", clone_4_upvr, 0.6, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(2.3, 2.3), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
			CreateParticle_upvr("rbxassetid://16924595234", clone_4_upvr, 1, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1.8, 1.8), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
			CreateParticle_upvr("rbxassetid://10176632695", clone_4_upvr, 1.1, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(3, 3), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
			TweenService_upvr:Create(ShakeSize_upvr, TweenInfo.new(1, Enum.EasingStyle.Quart), {
				Value = 0;
			}):Play()
			TweenService_upvr:Create(clone_2_upvr, TweenInfo_new_result1_upvr, {
				Volume = 0.2;
			}):Play()
			Title_upvr.Visible = true
			TweenService_upvr:Create(Title_upvr, TweenInfo.new(1, Enum.EasingStyle.Quart), {
				Size = UDim2.fromScale(1, 0.3);
			}):Play()
			Corners_upvr.Visible = true
			TweenService_upvr:Create(Corners_upvr, TweenInfo_new_result1_upvr, {
				Size = UDim2.fromScale(0.97, 0.94);
			}):Play()
			TweenService_upvr:Create(SpinSpeed_upvr, TweenInfo.new(1, Enum.EasingStyle.Quart), {
				Value = -1.5;
			}):Play()
			task.wait(1)
			for _ = 1, 5 do
				task.wait(0.05)
				Corners_upvr.Visible = false
				Title_upvr.Visible = false
				task.wait(0.05)
				Corners_upvr.Visible = true
				Title_upvr.Visible = true
			end
			task.wait(0.05)
			Title_upvr.Visible = false
		end
	end)()
	TweenService_upvr:Create(clone_4_upvr.Ring, TweenInfo.new(3, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut, 0, false, 7), {
		Size = UDim2.fromScale(0.4, 0.4);
		ImageTransparency = 0.5;
	}):Play()
	coroutine.wrap(function() -- Line 281
		--[[ Upvalues[4]:
			[1]: clone_4_upvr (readonly)
			[2]: var51_upvw (read and write)
			[3]: UIGradient_upvr (readonly)
			[4]: CreateParticle2_upvr (copied, readonly)
		]]
		while clone_4_upvr.Parent and var51_upvw do
			if UIGradient_upvr.Color == ColorSequence.new(Color3.new(1, 0, 0), Color3.fromRGB(255, 61, 64)) then
				CreateParticle2_upvr(clone_4_upvr)
			end
			task.wait(0.03)
		end
	end)()
	coroutine.wrap(function() -- Line 291
		--[[ Upvalues[3]:
			[1]: clone_4_upvr (readonly)
			[2]: var51_upvw (read and write)
			[3]: CreateFlipbook_upvr (copied, readonly)
		]]
		task.wait(5)
		while clone_4_upvr.Parent and var51_upvw do
			task.defer(CreateFlipbook_upvr, "rbxassetid://15710960745", clone_4_upvr, 30, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1, 1), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.7, true)
			task.defer(CreateFlipbook_upvr, "rbxassetid://15011468690", clone_4_upvr, 30, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1, 1), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.1, true)
			task.defer(CreateFlipbook_upvr, "http://www.roblox.com/asset/?id=14820078557", clone_4_upvr, 30, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1, 1), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.5, true)
			task.wait(0.1)
		end
	end)()
	coroutine.wrap(function() -- Line 302
		--[[ Upvalues[3]:
			[1]: clone_4_upvr (readonly)
			[2]: var51_upvw (read and write)
			[3]: CreateFog_upvr (copied, readonly)
		]]
		task.wait(5)
		while clone_4_upvr.Parent and var51_upvw do
			CreateFog_upvr(clone_4_upvr)
			task.wait(0.2)
		end
	end)()
	module_upvr.PlaySFX("OneMilPlus")
	task.wait(3.23)
	TweenService_upvr:Create(Star_upvr, TweenInfo.new(6, Enum.EasingStyle.Exponential, Enum.EasingDirection.In), {
		Size = UDim2.fromScale(3, 3);
	}):Play()
	task.wait(4)
	CreateMark_upvr(clone_4_upvr, 0.6)
	task.wait(1)
	CreateMark_upvr(clone_4_upvr, 0)
	TweenService_upvr:Create(SpinSpeed_upvr, TweenInfo.new(1, Enum.EasingStyle.Quart), {
		Value = -4;
	}):Play()
	task.wait(1)
	CreateParticle_upvr("http://www.roblox.com/asset/?id=10468554009", clone_4_upvr, 0.5, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(2, 2), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
	CreateParticle_upvr("http://www.roblox.com/asset/?id=13911306541", clone_4_upvr, 0.6, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(2.5, 2.5), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
	CreateParticle_upvr("rbxassetid://16924434689", clone_4_upvr, 0.6, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(2.3, 2.3), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
	CreateParticle_upvr("rbxassetid://16924595234", clone_4_upvr, 1, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1.8, 1.8), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
	CreateParticle_upvr("rbxassetid://10176632695", clone_4_upvr, 1.1, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(3, 3), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
	Star_upvr.Visible = false
	clone_4_upvr.BackgroundTransparency = 1
	var51_upvw = false
	local Frame = Instance.new("Frame", arg2)
	Frame.Size = UDim2.fromScale(1, 1)
	Frame.BackgroundColor3 = Color3.new(1, 1, 1)
	Frame.ZIndex = 4
	TweenService_upvr:Create(Frame, TweenInfo.new(1), {
		BackgroundTransparency = 1;
	}):Play()
	Debris_upvr:AddItem(Frame, 1)
	TweenService_upvr:Create(NoiseFrame_upvr, TweenInfo.new(2), {
		ImageTransparency = 1;
	}):Play()
	module_upvr.PlaySFX(script.Ready)
	module_upvr.PlaySFX(script.Glitch2)
	module_upvr.PlaySFX(script.Glitch3)
	Ambient:Destroy()
	GradientFrame.Visible = false
	clone_4_upvr.Ring.Visible = false
	Corners_upvr.Visible = false
	TweenService_upvr:Create(clone_2_upvr, TweenInfo_new_result1_upvr, {
		Volume = 0;
	}):Play()
	for _ = 1, 60 do
		CreateParticle2_upvr(clone_4_upvr)
		task.wait()
	end
	TweenService_upvr:Create(clone_4_upvr, TweenInfo.new(3), {
		GroupTransparency = 1;
	}):Play()
	Debris_upvr:AddItem(clone_4_upvr, 3)
	var60_upvw:Disconnect()
end