-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-15 15:28:27
-- Luau version 6, Types version 3
-- Time taken: 0.014586 seconds

local TweenService_upvr = game:GetService("TweenService")
local Debris_upvr = game:GetService("Debris")
local RunService_upvr = game:GetService("RunService")
local Particle_upvr = script:WaitForChild("Particle")
local ShakeSize_upvr = script:WaitForChild("ShakeSize")
local module_upvr_2 = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("UI"):WaitForChild("SceneUI"):WaitForChild("Assets"))
local function CreateParticle_upvr_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) -- Line 12, Named "CreateParticle_upvr"
	--[[ Upvalues[3]:
		[1]: Particle_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: Debris_upvr (readonly)
	]]
	local clone_5 = Particle_upvr:Clone()
	clone_5.Parent = arg2
	clone_5.Position = arg4
	clone_5.Rotation = arg8 or 0
	clone_5.Size = arg5
	clone_5.SizeConstraint = arg7
	clone_5.Image = arg1
	local Quart_2 = Enum.EasingStyle.Quart
	local tbl_5 = {}
	tbl_5.Size = arg6
	if arg9 then
		Quart_2 = 1
	else
		Quart_2 = 0
	end
	tbl_5.ImageTransparency = Quart_2
	TweenService_upvr:Create(clone_5, Tween0o.new(arg3, Quart_2), tbl_5):Play()
	Debris_upvr:AddItem(clone_5, arg3)
end
local Flipbook_upvr = script:WaitForChild("Flipbook")
local module_upvr = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("SpriteClip"))
local function CreateFlipbook_upvr_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) -- Line 39, Named "CreateFlipbook_upvr"
	--[[ Upvalues[3]:
		[1]: Flipbook_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	local clone_2 = Flipbook_upvr:Clone()
	clone_2.Position = arg4
	clone_2.Rotation = arg8 or 0
	clone_2.Size = arg5
	clone_2.SizeConstraint = arg7
	clone_2.ImageTransparency = arg9 or 0
	clone_2.Image = arg1
	local Quart = Enum.EasingStyle.Quart
	local tbl_6 = {}
	tbl_6.Size = arg6
	if arg10 then
		Quart = 1
	else
		Quart = 0
	end
	tbl_6.ImageTransparency = Quart
	TweenService_upvr:Create(clone_2, Tween0o.new(1 / arg3 * 16, Quart), tbl_6):Play()
	local any_new_result1 = module_upvr.new()
	any_new_result1.Adornee = clone_2
	any_new_result1.SpriteSizePixel = Vector2.one * 1024 / 4
	any_new_result1.SpriteCount = 16
	any_new_result1.SpriteCountX = 4
	any_new_result1.FrameRate = arg3
	any_new_result1.FrameTime = 1
	any_new_result1.Looped = false
	any_new_result1:Play()
	clone_2.Parent = arg2
end
local function TitleChange_upvr_upvr(arg1, arg2, arg3, arg4) -- Line 73, Named "TitleChange_upvr"
	--[[ Upvalues[4]:
		[1]: TweenService_upvr (readonly)
		[2]: ShakeSize_upvr (readonly)
		[3]: CreateParticle_upvr_upvr (readonly)
		[4]: module_upvr_2 (readonly)
	]]
	arg4.Text = arg1
	arg4.Size = UDim2.fromScale(1, 0.12)
	arg4.TextTransparency = 0
	if arg2 then
	else
	end
	if not arg2 or Enum.EasingDirection.In then
	end
	local tbl_4 = {
		Size = UDim2.fromScale(1, 0.1);
	}
	if not arg2 then
	end
	tbl_4.TextTransparency = 0.5
	TweenService_upvr:Create(arg4, Tween0o.new(tbl_4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), tbl_4):Play()
	ShakeSize_upvr.Value = 1
	arg3.Shine.ImageTransparency = 0
	arg3.Shine.Size = UDim2.fromScale(2.5, 0.8)
	local tbl_7 = {
		Size = UDim2.fromScale(2.5, 0.8);
		ImageTransparency = 1;
	}
	TweenService_upvr:Create(arg3.Shine, Tween0o.new(tbl_7, Enum.EasingStyle.Quart), tbl_7):Play()
	local tbl = {
		Value = 0;
	}
	TweenService_upvr:Create(ShakeSize_upvr, Tween0o.new(tbl, Enum.EasingStyle.Quart), tbl):Play()
	CreateParticle_upvr_upvr("http://www.roblox.com/asset/?id=10468554009", arg3, 0.5, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1.5, 1.5), Enum.SizeConstraint.RelativeYY, math.random(0, 360), true)
	CreateParticle_upvr_upvr("http://www.roblox.com/asset/?id=13911306541", arg3, 0.6, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1.2, 1.2), Enum.SizeConstraint.RelativeYY, math.random(0, 360), true)
	CreateParticle_upvr_upvr("rbxassetid://16924434689", arg3, 0.6, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1.4, 1.4), Enum.SizeConstraint.RelativeYY, math.random(0, 360), true)
	CreateParticle_upvr_upvr("rbxassetid://16924595234", arg3, 1, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1.6, 1.6), Enum.SizeConstraint.RelativeYY, math.random(0, 360), true)
	CreateParticle_upvr_upvr("rbxassetid://10176632695", arg3, 1.1, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1.7, 1.7), Enum.SizeConstraint.RelativeYY, math.random(0, 360), true)
	if arg2 then
		script:WaitForChild("Magic").Pitch = 1
	else
		script:WaitForChild("Magic").Pitch = 0.8
	end
	module_upvr_2.PlaySFX(script.Magic)
end
local Tween0o_new_result1_upvr = Tween0o.new(0.5, Enum.EasingStyle.Quart)
local Tween0o_new_result1_upvr_3 = Tween0o.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
local function CreateParticleEmit_upvr_upvr(arg1, arg2, arg3) -- Line 134, Named "CreateParticleEmit_upvr"
	--[[ Upvalues[5]:
		[1]: TweenService_upvr (readonly)
		[2]: Tween0o_new_result1_upvr (readonly)
		[3]: Tween0o_new_result1_upvr_3 (readonly)
		[4]: Debris_upvr (readonly)
		[5]: RunService_upvr (readonly)
	]]
	local ImageLabel_2_upvr = Instance.new("ImageLabel", arg1)
	ImageLabel_2_upvr.Size = UDim2.fromScale()
	ImageLabel_2_upvr.Image = arg2
	ImageLabel_2_upvr.SizeConstraint = Enum.SizeConstraint.RelativeXX
	ImageLabel_2_upvr.BackgroundTransparency = 1
	ImageLabel_2_upvr.Rotation = math.random(-15, 15)
	ImageLabel_2_upvr.AnchorPoint = Vector2.new(0.5, 0.5)
	TweenService_upvr:Create(ImageLabel_2_upvr, Tween0o_new_result1_upvr, {
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
	coroutine.wrap(function() -- Line 161
		--[[ Upvalues[8]:
			[1]: ImageLabel_2_upvr (readonly)
			[2]: TweenService_upvr (copied, readonly)
			[3]: Tween0o_new_result1_upvr_3 (copied, readonly)
			[4]: Debris_upvr (copied, readonly)
			[5]: udim2_upvr (readonly)
			[6]: var26_upvr (readonly)
			[7]: var27_upvr (readonly)
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
			local var30 = (time() - time_result1) * 50
			ImageLabel_2_upvr.Position = udim2_upvr + UDim2.fromScale(0.07 * math.sin(var30 / var26_upvr), var30 * -var27_upvr)
			RunService_upvr.Heartbeat:Wait()
		end
	end)()
end
local LetterContainer_upvr = script:WaitForChild("LetterContainer")
local Tween0o_new_result1_upvr_5 = Tween0o.new(0.3, Enum.EasingStyle.Quart)
local Tween0o_new_result1_upvr_2 = Tween0o.new(0.5)
local function GenerateLetter_upvr_upvr(arg1, arg2, arg3, arg4) -- Line 190, Named "GenerateLetter_upvr"
	--[[ Upvalues[6]:
		[1]: LetterContainer_upvr (readonly)
		[2]: module_upvr_2 (readonly)
		[3]: TweenService_upvr (readonly)
		[4]: Tween0o_new_result1_upvr_5 (readonly)
		[5]: Tween0o_new_result1_upvr_2 (readonly)
		[6]: Debris_upvr (readonly)
	]]
	local clone_upvr_2 = LetterContainer_upvr:Clone()
	clone_upvr_2.Parent = arg4
	clone_upvr_2.LayoutOrder = arg2
	clone_upvr_2.Letter.Text = arg1
	clone_upvr_2.Letter.Rotation = math.random(-80, 80)
	coroutine.wrap(function() -- Line 204
		--[[ Upvalues[1]:
			[1]: clone_upvr_2 (readonly)
		]]
		for i = 1, 5 do
			local var37 = 6 - i
			clone_upvr_2.Letter.Position = UDim2.fromScale(0.5, 0.5) + UDim2.fromScale(math.random(-var37, var37) / 35, math.random(-var37, var37) / 35)
			task.wait(0.05)
		end
		clone_upvr_2.Letter.Position = UDim2.fromScale(0.5, 0.5)
	end)()
	if arg1 ~= ' ' then
		module_upvr_2.PlaySFX(script.TalkSound)
	end
	TweenService_upvr:Create(clone_upvr_2, Tween0o_new_result1_upvr_5, {
		Size = UDim2.fromScale(0.01, 1);
	}):Play()
	TweenService_upvr:Create(clone_upvr_2.Letter, Tween0o_new_result1_upvr_5, {
		Rotation = 0;
		TextTransparency = 0;
	}):Play()
	task.wait(arg3 - time())
	TweenService_upvr:Create(clone_upvr_2.Letter, Tween0o_new_result1_upvr_2, {
		TextTransparency = 1;
	}):Play()
	Debris_upvr:AddItem(clone_upvr_2, 0.6)
end
local HolderFrame_upvr = script:WaitForChild("HolderFrame")
local function CreateChat_upvr_upvr(arg1, arg2) -- Line 232, Named "CreateChat_upvr"
	--[[ Upvalues[3]:
		[1]: HolderFrame_upvr (readonly)
		[2]: GenerateLetter_upvr_upvr (readonly)
		[3]: Debris_upvr (readonly)
	]]
	local clone_4 = HolderFrame_upvr:Clone()
	clone_4.Parent = arg2
	for i_2 = 1, #arg1 do
		local var45 = GenerateLetter_upvr_upvr
		task.defer(var45, string.sub(arg1, i_2, i_2):upper(), i_2, time() + 0.03 * #arg1 + 2, clone_4)
		if string.sub(arg1, i_2, i_2) == ',' then
			var45 = 0.5
		else
			var45 = 0.03
		end
		task.wait(var45)
	end
	Debris_upvr:AddItem(clone_4, 8)
end
local function PlayTheme_upvr_upvr(arg1, arg2) -- Line 252, Named "PlayTheme_upvr"
	--[[ Upvalues[2]:
		[1]: module_upvr_2 (readonly)
		[2]: TweenService_upvr (readonly)
	]]
	local tbl_3 = {}
	tbl_3.TimePosition = arg1
	tbl_3.Volume = 0
	local any_PlaySFX_result1_2_upvr = module_upvr_2.PlaySFX(script.Theme, tbl_3)
	TweenService_upvr:Create(any_PlaySFX_result1_2_upvr, Tween0o.new(0.5, Enum.EasingStyle.Linear), {
		Volume = script.Theme.Volume;
	}):Play()
	task.delay(arg2 - 0.2, function() -- Line 264
		--[[ Upvalues[2]:
			[1]: TweenService_upvr (copied, readonly)
			[2]: any_PlaySFX_result1_2_upvr (readonly)
		]]
		TweenService_upvr:Create(any_PlaySFX_result1_2_upvr, Tween0o.new(1.5, Enum.EasingStyle.Linear), {
			Volume = 0;
		}):Play()
		task.wait(1.5)
		any_PlaySFX_result1_2_upvr:Destroy()
	end)
end
local function ChainSound_upvr_upvr() -- Line 276, Named "ChainSound_upvr"
	--[[ Upvalues[3]:
		[1]: module_upvr_2 (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: Debris_upvr (readonly)
	]]
	local any_PlaySFX_result1 = module_upvr_2.PlaySFX(script.Chain)
	TweenService_upvr:Create(any_PlaySFX_result1, Tween0o.new(2, Enum.EasingStyle.Quart), {
		PlaybackSpeed = 0.5;
		Volume = 0;
	}):Play()
	Debris_upvr:AddItem(any_PlaySFX_result1, 2)
end
local Luminosity_upvr = script:WaitForChild("Luminosity")
local Tween0o_new_result1_upvr_4 = Tween0o.new(1, Enum.EasingStyle.Quart)
return function(arg1) -- Line 291
	--[[ Upvalues[14]:
		[1]: RunService_upvr (readonly)
		[2]: ShakeSize_upvr (readonly)
		[3]: TweenService_upvr (readonly)
		[4]: TitleChange_upvr_upvr (readonly)
		[5]: CreateParticleEmit_upvr_upvr (readonly)
		[6]: CreateFlipbook_upvr_upvr (readonly)
		[7]: module_upvr_2 (readonly)
		[8]: ChainSound_upvr_upvr (readonly)
		[9]: Particle_upvr (readonly)
		[10]: Debris_upvr (readonly)
		[11]: PlayTheme_upvr_upvr (readonly)
		[12]: Luminosity_upvr (readonly)
		[13]: Tween0o_new_result1_upvr_4 (readonly)
		[14]: CreateChat_upvr_upvr (readonly)
	]]
	local var62_upvw = true
	local clone_upvr = script:WaitForChild("BaseGroup"):Clone()
	clone_upvr:AddTag("CutsceneAsset")
	clone_upvr.Parent = arg1
	local Center = clone_upvr:WaitForChild("Center")
	local Title_upvr = clone_upvr:WaitForChild("Title")
	local GradientFrame = clone_upvr:WaitForChild("GradientFrame")
	local Star = clone_upvr:WaitForChild("Star")
	local ScreenEffect = clone_upvr:WaitForChild("ScreenEffect")
	local Holder = clone_upvr:WaitForChild("Holder")
	local current_thread_upvr = coroutine.running()
	local var72_upvw
	var72_upvw = RunService_upvr.Heartbeat:Connect(function(arg1_2) -- Line 320
		--[[ Upvalues[4]:
			[1]: clone_upvr (readonly)
			[2]: Title_upvr (readonly)
			[3]: ShakeSize_upvr (copied, readonly)
			[4]: var72_upvw (read and write)
		]]
		if clone_upvr.Parent then
			local Ring1 = clone_upvr.Ring1
			Ring1.Rotation -= arg1_2 * 15
			local Ring2 = clone_upvr.Ring2
			Ring2.Rotation += arg1_2 * 60
			Title_upvr.Position = UDim2.fromScale(0.5, 0.5) + UDim2.fromScale(math.random(-100, 100) / 2000 * ShakeSize_upvr.Value, math.random(-100, 100) / 2000 * ShakeSize_upvr.Value)
		else
			var72_upvw:Disconnect()
		end
	end)
	TweenService_upvr:Create(clone_upvr, Tween0o.new(0.5, Enum.EasingStyle.Quad), {
		BackgroundTransparency = 0;
	}):Play()
	task.wait(3)
	clone_upvr.UpperBar.Visible = true
	clone_upvr.LowerBar.Visible = true
	task.defer(TitleChange_upvr_upvr, "THE", nil, clone_upvr, Title_upvr)
	GradientFrame.BackgroundTransparency = 0.6
	TweenService_upvr:Create(GradientFrame, Tween0o.new(0.5, Enum.EasingStyle.Quart), {
		BackgroundTransparency = 1;
	}):Play()
	task.wait(0.5)
	task.defer(TitleChange_upvr_upvr, "THE ABSOLUTE", nil, clone_upvr, Title_upvr)
	GradientFrame.BackgroundTransparency = 0.6
	TweenService_upvr:Create(GradientFrame, Tween0o.new(0.5, Enum.EasingStyle.Quart), {
		BackgroundTransparency = 1;
	}):Play()
	task.wait(0.5)
	task.defer(TitleChange_upvr_upvr, "THE ABSOLUTE RADIANCE", true, clone_upvr, Title_upvr)
	GradientFrame.BackgroundTransparency = 0.6
	TweenService_upvr:Create(GradientFrame, Tween0o.new(0.5, Enum.EasingStyle.Quart), {
		BackgroundTransparency = 0.8;
	}):Play()
	coroutine.wrap(function() -- Line 360
		--[[ Upvalues[3]:
			[1]: clone_upvr (readonly)
			[2]: var62_upvw (read and write)
			[3]: CreateParticleEmit_upvr_upvr (copied, readonly)
		]]
		while clone_upvr.Parent and var62_upvw do
			CreateParticleEmit_upvr_upvr(clone_upvr, "rbxassetid://8030760338", math.random(5, 20) / 500)
			task.wait(0.05)
		end
	end)()
	Center.Visible = true
	TweenService_upvr:Create(Center, Tween0o.new(1.5, Enum.EasingStyle.Quart), {
		Size = UDim2.fromScale(1, 1);
		Rotation = 0;
		ImageTransparency = 0;
	}):Play()
	coroutine.wrap(function() -- Line 377
		--[[ Upvalues[3]:
			[1]: clone_upvr (readonly)
			[2]: var62_upvw (read and write)
			[3]: CreateFlipbook_upvr_upvr (copied, readonly)
		]]
		while clone_upvr.Parent and var62_upvw do
			task.defer(CreateFlipbook_upvr_upvr, "rbxassetid://16924410706", clone_upvr, 30, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(1, 1), UDim2.fromScale(1.5, 1.5), Enum.SizeConstraint.RelativeYY, math.random(0, 360), nil, true)
			task.defer(CreateFlipbook_upvr_upvr, "http://www.roblox.com/asset/?id=14820078557", clone_upvr, 30, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(1.2, 1.2), UDim2.fromScale(1.5, 1.5), Enum.SizeConstraint.RelativeYY, math.random(0, 360), nil, true)
			task.wait(0.1)
		end
	end)()
	task.wait(2)
	module_upvr_2.PlaySFX(script.Magic3)
	TweenService_upvr:Create(Center, Tween0o.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
		Size = UDim2.fromScale(0.5, 0.5);
		ImageTransparency = 1;
	}):Play()
	Star.Visible = true
	TweenService_upvr:Create(Star, Tween0o.new(1.5, Enum.EasingStyle.Quart), {
		Size = UDim2.fromScale(1, 1);
		Rotation = 0;
		ImageTransparency = 0;
	}):Play()
	clone_upvr.Shine.Size = UDim2.fromScale(0.6, 0.6)
	TweenService_upvr:Create(clone_upvr.Shine, Tween0o.new(1.5, Enum.EasingStyle.Quart), {
		Size = UDim2.fromScale(1.3, 1.3);
		Rotation = 0;
		ImageTransparency = 0.3;
	}):Play()
	task.wait(0.5)
	var62_upvw = false
	TweenService_upvr:Create(clone_upvr.Chain1.Frame, Tween0o.new(2, Enum.EasingStyle.Quart), {
		Position = UDim2.fromScale(0, 0);
	}):Play()
	ChainSound_upvr_upvr()
	task.wait(0.2)
	TweenService_upvr:Create(clone_upvr.Chain2.Frame, Tween0o.new(2, Enum.EasingStyle.Quart), {
		Position = UDim2.fromScale(0, 0);
	}):Play()
	ChainSound_upvr_upvr()
	task.wait(0.2)
	TweenService_upvr:Create(clone_upvr.Chain3.Frame, Tween0o.new(2, Enum.EasingStyle.Quart), {
		Position = UDim2.fromScale(0, 0);
	}):Play()
	ChainSound_upvr_upvr()
	task.wait(0.5)
	local clone_3 = Particle_upvr:Clone()
	clone_3.Parent = clone_upvr
	clone_3.Position = UDim2.fromScale(0.5, 0.5)
	clone_3.Size = UDim2.fromScale(1.2, 1.2)
	clone_3.SizeConstraint = Enum.SizeConstraint.RelativeYY
	clone_3.ImageTransparency = 1
	clone_3.Image = "rbxassetid://11364097059"
	TweenService_upvr:Create(clone_3, Tween0o.new(1.7, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
		Size = UDim2.fromScale(0, 0);
		ImageTransparency = 0;
		Rotation = -179;
	}):Play()
	Debris_upvr:AddItem(clone_3, 1.7)
	TweenService_upvr:Create(Star, Tween0o.new(2, Enum.EasingStyle.Exponential, Enum.EasingDirection.In), {
		Size = UDim2.fromScale(3, 3);
	}):Play()
	TweenService_upvr:Create(clone_upvr.Shine, Tween0o.new(2, Enum.EasingStyle.Exponential, Enum.EasingDirection.In), {
		Size = UDim2.fromScale(3.5, 3.5);
	}):Play()
	TweenService_upvr:Create(ScreenEffect, Tween0o.new(2, Enum.EasingStyle.Exponential, Enum.EasingDirection.In), {
		ImageTransparency = 0;
	}):Play()
	PlayTheme_upvr_upvr(52.6, 19)
	task.wait(1.3)
	task.wait(0.5)
	module_upvr_2.PlaySFX(script.Magic4)
	task.wait(0.2)
	module_upvr_2.PlaySFX(Luminosity_upvr:WaitForChild("Charge")):Destroy()
	var62_upvw = true
	clone_upvr.Shine.Visible = false
	coroutine.wrap(function() -- Line 454
		--[[ Upvalues[3]:
			[1]: clone_upvr (readonly)
			[2]: var62_upvw (read and write)
			[3]: CreateFlipbook_upvr_upvr (copied, readonly)
		]]
		while clone_upvr.Parent and var62_upvw do
			task.defer(CreateFlipbook_upvr_upvr, "rbxassetid://14442131728", clone_upvr, 30, UDim2.fromScale(math.random(0, 100) / 100, 1), UDim2.fromScale(0.6, 0.6), UDim2.fromScale(1, 1), Enum.SizeConstraint.RelativeYY, math.random(0, 360), nil, false)
			task.defer(CreateFlipbook_upvr_upvr, "rbxassetid://14442131728", clone_upvr, 30, UDim2.fromScale(math.random(0, 100) / 100, 0), UDim2.fromScale(0.6, 0.6), UDim2.fromScale(1, 1), Enum.SizeConstraint.RelativeYY, math.random(0, 360), nil, false)
			task.wait(0.1)
		end
	end)()
	clone_upvr.Chain1.Visible = false
	clone_upvr.Chain2.Visible = false
	clone_upvr.Chain3.Visible = false
	Star.Visible = false
	ScreenEffect.Visible = false
	local Frame_2 = Instance.new("Frame", clone_upvr)
	Frame_2.Size = UDim2.fromScale(1, 1)
	Frame_2.BackgroundColor3 = Color3.new(1, 1, 1)
	Frame_2.ZIndex = 4
	TweenService_upvr:Create(Frame_2, Tween0o.new(1), {
		BackgroundTransparency = 1;
	}):Play()
	Debris_upvr:AddItem(Frame_2, 1)
	clone_upvr.Ring1.Visible = true
	clone_upvr.Ring2.Visible = true
	clone_upvr.Fog.Visible = true
	module_upvr_2.PlaySFX(script.Magic2)
	TweenService_upvr:Create(clone_upvr.Fog, Tween0o.new(20, Enum.EasingStyle.Linear), {
		Position = UDim2.fromScale(3, 0);
	}):Play()
	local tbl_2_upvr = {}
	local function _(arg1_3) -- Line 487
		--[[ Upvalues[1]:
			[1]: current_thread_upvr (readonly)
		]]
		local task_wait_result1 = task.wait(arg1_3)
		if task_wait_result1 then
			if coroutine.status(current_thread_upvr) == "dead" then
				task_wait_result1 = false
				return task_wait_result1
			end
			task_wait_result1 = true
		end
		return task_wait_result1
	end
	local var100_upvw = true
	task.defer(function() -- Line 502
		--[[ Upvalues[7]:
			[1]: var100_upvw (read and write)
			[2]: current_thread_upvr (readonly)
			[3]: clone_upvr (readonly)
			[4]: TweenService_upvr (copied, readonly)
			[5]: Tween0o_new_result1_upvr_4 (copied, readonly)
			[6]: Debris_upvr (copied, readonly)
			[7]: tbl_2_upvr (readonly)
		]]
		while var100_upvw do
			local task_wait_result1_2 = task.wait(1)
			if task_wait_result1_2 then
				if coroutine.status(current_thread_upvr) == "dead" then
					task_wait_result1_2 = false
				else
					task_wait_result1_2 = true
				end
			end
			if task_wait_result1_2 then
				local ImageLabel = Instance.new("ImageLabel", clone_upvr)
				ImageLabel.Position = UDim2.fromScale(math.random(0, 100) / 100, 0.5)
				ImageLabel.Image = "rbxassetid://16685733415"
				ImageLabel.Rotation = math.random(-30, 30) / 10
				ImageLabel.SizeConstraint = Enum.SizeConstraint.RelativeXY
				ImageLabel.BackgroundTransparency = 1
				ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
				local var103 = math.random(20, 70) / 100
				if 0.5 <= var103 then
					ImageLabel.ZIndex = 2
				else
					ImageLabel.ZIndex = 0
				end
				ImageLabel.Size = UDim2.fromScale(var103, 5)
				TweenService_upvr:Create(ImageLabel, Tween0o_new_result1_upvr_4, {
					Size = UDim2.fromScale(0, 5);
				}):Play()
				Debris_upvr:AddItem(ImageLabel, 1)
				table.insert(tbl_2_upvr, ImageLabel)
				local clone = script:WaitForChild("Strike"):Clone()
				clone.Parent = ImageLabel
				clone:Play()
				TweenService_upvr:Create(clone, Tween0o_new_result1_upvr_4, {
					Volume = 0;
				}):Play()
			end
		end
	end)
	task.wait(1)
	CreateChat_upvr_upvr("Well, You finally reached me.", Holder)
	task.wait(3)
	CreateChat_upvr_upvr("Now, don't be afraid of the dark.", Holder)
	task.wait(3)
	CreateChat_upvr_upvr("As long as you're with me...", Holder)
	local Frame = Instance.new("Frame", clone_upvr)
	Frame.Size = UDim2.fromScale(1, 1)
	Frame.BackgroundColor3 = Color3.new(1, 1, 1)
	Frame.ZIndex = 4
	Frame.BackgroundTransparency = 1
	TweenService_upvr:Create(Frame, Tween0o.new(3, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
		BackgroundTransparency = 0.5;
	}):Play()
	task.wait(4)
	for _ = 1, 25 do
		local ImageLabel_3 = Instance.new("ImageLabel", clone_upvr)
		clone_upvr.UIGradient:Clone().Parent = ImageLabel_3
		ImageLabel_3.Position = UDim2.fromScale(math.random(0, 100) / 100, 0.5)
		ImageLabel_3.Image = "rbxassetid://16685733415"
		ImageLabel_3.Rotation = math.random(-30, 30) / 10
		ImageLabel_3.SizeConstraint = Enum.SizeConstraint.RelativeXY
		ImageLabel_3.BackgroundTransparency = 1
		ImageLabel_3.AnchorPoint = Vector2.new(0.5, 0.5)
		ImageLabel_3.Size = UDim2.fromScale(math.random(50, 70) / 100, 5)
		TweenService_upvr:Create(ImageLabel_3, Tween0o_new_result1_upvr_4, {
			Size = UDim2.fromScale(0, 5);
		}):Play()
		Debris_upvr:AddItem(ImageLabel_3, 1)
	end
	module_upvr_2.PlaySFX(script.End1)
	module_upvr_2.PlaySFX(script.End2)
	module_upvr_2.PlaySFX(script.End3)
	for _, v in tbl_2_upvr do
		v:Destroy()
	end
	Frame.BackgroundTransparency = 0
	clone_upvr.UIGradient:Destroy()
	var100_upvw = false
	module_upvr_2.PlaySFX(Luminosity_upvr:WaitForChild("Ambience")):Destroy()
	clone_upvr.Fog.Visible = false
	TweenService_upvr:Create(Frame, Tween0o.new(1), {
		BackgroundTransparency = 1;
	}):Play()
	clone_upvr.BackgroundTransparency = 1
	clone_upvr.Ring1.Visible = false
	clone_upvr.Ring2.Visible = false
	clone_upvr.UpperBar.Visible = false
	clone_upvr.LowerBar.Visible = false
	TweenService_upvr:Create(clone_upvr, Tween0o.new(3), {
		GroupTransparency = 1;
	}):Play()
	Debris_upvr:AddItem(clone_upvr, 3)
	var72_upvw:Disconnect()
	var62_upvw = false
end