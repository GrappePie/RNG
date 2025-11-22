-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-14 21:44:35
-- Luau version 6, Types version 3
-- Time taken: 0.008247 seconds

local TweenService_upvr = game:GetService("TweenService")
local Debris_upvr = game:GetService("Debris")
local RunService_upvr = game:GetService("RunService")
local module_upvr = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("UI"):WaitForChild("SceneUI"):WaitForChild("Assets"))
local TweenInfo_new_result1_upvr = TweenInfo.new(0.5, Enum.EasingStyle.Quart)
local TweenInfo_new_result1_upvr_2 = TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
local Particle_upvr = script:WaitForChild("Particle")
local function CreateParticle_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) -- Line 29, Named "CreateParticle"
	--[[ Upvalues[3]:
		[1]: Particle_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: Debris_upvr (readonly)
	]]
	local clone_3 = Particle_upvr:Clone()
	clone_3.Parent = arg2
	clone_3.Position = arg4
	clone_3.Rotation = arg8 or 0
	clone_3.Size = arg5
	clone_3.SizeConstraint = arg7
	clone_3.Image = arg1
	clone_3.ImageTransparency = arg9 or 0
	local Quart = Enum.EasingStyle.Quart
	local tbl = {}
	tbl.Size = arg6
	if arg10 then
		Quart = 1
	else
		Quart = 0
	end
	tbl.ImageTransparency = Quart
	TweenService_upvr:Create(clone_3, TweenInfo.new(arg3, Quart), tbl):Play()
	Debris_upvr:AddItem(clone_3, arg3)
end
local Flipbook_upvr = script:WaitForChild("Flipbook")
local module_upvr_2 = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("SpriteClip"))
local function CreateFlipbook_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) -- Line 42, Named "CreateFlipbook"
	print(arg2)
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
	local Quart_2 = Enum.EasingStyle.Quart
	local tbl_2 = {}
	tbl_2.Size = arg6
	if arg10 then
		Quart_2 = 1
	else
		Quart_2 = 0
	end
	tbl_2.ImageTransparency = Quart_2
	TweenService_upvr:Create(clone, TweenInfo.new(1 / arg3 * 16, Quart_2), tbl_2):Play()
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
local function CreateLeaf_upvr(arg1) -- Line 65, Named "CreateLeaf"
	--[[ Upvalues[5]:
		[1]: TweenService_upvr (readonly)
		[2]: TweenInfo_new_result1_upvr (readonly)
		[3]: TweenInfo_new_result1_upvr_2 (readonly)
		[4]: Debris_upvr (readonly)
		[5]: RunService_upvr (readonly)
	]]
	local clone_2_upvr = script.Leaf:Clone()
	clone_2_upvr.Parent = arg1
	local var18 = math.random(2, 6) / 100
	TweenService_upvr:Create(clone_2_upvr, TweenInfo_new_result1_upvr, {
		Size = UDim2.fromScale(var18, var18);
	}):Play()
	local var20_upvr = 25
	if math.random(1, 2) == 1 then
		var20_upvr = 1
	else
		var20_upvr = -1
	end
	local udim2_upvr = UDim2.fromScale(math.random(0, 100) / 100, 0)
	local randint_upvr = math.random(var20_upvr, 45)
	local var24_upvr = math.random(2, 5) / 500
	local randint_upvr_2 = math.random(-10, 30)
	coroutine.wrap(function() -- Line 75
		--[[ Upvalues[10]:
			[1]: clone_2_upvr (readonly)
			[2]: TweenService_upvr (copied, readonly)
			[3]: TweenInfo_new_result1_upvr_2 (copied, readonly)
			[4]: Debris_upvr (copied, readonly)
			[5]: udim2_upvr (readonly)
			[6]: randint_upvr (readonly)
			[7]: var20_upvr (readonly)
			[8]: var24_upvr (readonly)
			[9]: randint_upvr_2 (readonly)
			[10]: RunService_upvr (copied, readonly)
		]]
		local time_result1 = time()
		while clone_2_upvr and clone_2_upvr.Parent do
			if time_result1 + math.random(15, 20) / 10 - 0.5 <= time() and not clone_2_upvr:GetAttribute("Removing") then
				clone_2_upvr:SetAttribute("Removing", true)
				TweenService_upvr:Create(clone_2_upvr, TweenInfo_new_result1_upvr_2, {
					Size = UDim2.fromScale(0, 0);
				}):Play()
				Debris_upvr:AddItem(clone_2_upvr, 0.5)
			end
			local var28 = (time() - time_result1) * 50
			clone_2_upvr.Position = udim2_upvr + UDim2.fromScale(0.1 * math.sin(var28 / randint_upvr) * var20_upvr, var28 * var24_upvr)
			clone_2_upvr.Rotation = randint_upvr_2 + 5 * math.sin(var28 / randint_upvr) * var20_upvr
			RunService_upvr.Heartbeat:Wait()
		end
	end)()
end
local function CreateParticleEmit_upvr(arg1, arg2, arg3) -- Line 93, Named "CreateParticleEmit"
	--[[ Upvalues[5]:
		[1]: TweenService_upvr (readonly)
		[2]: TweenInfo_new_result1_upvr (readonly)
		[3]: TweenInfo_new_result1_upvr_2 (readonly)
		[4]: Debris_upvr (readonly)
		[5]: RunService_upvr (readonly)
	]]
	local ImageLabel_upvr = Instance.new("ImageLabel", arg1)
	ImageLabel_upvr.Size = UDim2.fromScale()
	ImageLabel_upvr.Image = arg2
	ImageLabel_upvr.SizeConstraint = Enum.SizeConstraint.RelativeXX
	ImageLabel_upvr.BackgroundTransparency = 1
	ImageLabel_upvr.Rotation = math.random(-15, 15)
	ImageLabel_upvr.AnchorPoint = Vector2.new(0.5, 0.5)
	TweenService_upvr:Create(ImageLabel_upvr, TweenInfo_new_result1_upvr, {
		Size = UDim2.fromScale(arg3, arg3);
	}):Play()
	local var31 = 50
	if math.random(1, 2) == 1 then
		var31 = -1
	else
		var31 = 1
	end
	local udim2_upvr_2 = UDim2.fromScale(math.random(0, 100) / 100, 1)
	local var34_upvr = math.random(var31, 70) * var31
	local var35_upvr = math.random(2, 5) / 500
	coroutine.wrap(function() -- Line 105
		--[[ Upvalues[8]:
			[1]: ImageLabel_upvr (readonly)
			[2]: TweenService_upvr (copied, readonly)
			[3]: TweenInfo_new_result1_upvr_2 (copied, readonly)
			[4]: Debris_upvr (copied, readonly)
			[5]: udim2_upvr_2 (readonly)
			[6]: var34_upvr (readonly)
			[7]: var35_upvr (readonly)
			[8]: RunService_upvr (copied, readonly)
		]]
		local time_result1_2 = time()
		while ImageLabel_upvr and ImageLabel_upvr.Parent do
			if time_result1_2 + math.random(15, 20) / 10 - 0.5 <= time() and not ImageLabel_upvr:GetAttribute("Removing") then
				ImageLabel_upvr:SetAttribute("Removing", true)
				TweenService_upvr:Create(ImageLabel_upvr, TweenInfo_new_result1_upvr_2, {
					Size = UDim2.fromScale(0, 0);
				}):Play()
				Debris_upvr:AddItem(ImageLabel_upvr, 0.5)
			end
			local var38 = (time() - time_result1_2) * 50
			ImageLabel_upvr.Position = udim2_upvr_2 + UDim2.fromScale(0.07 * math.sin(var38 / var34_upvr), var38 * -var35_upvr)
			RunService_upvr.Heartbeat:Wait()
		end
	end)()
end
local TweenInfo_new_result1_upvr_3 = TweenInfo.new(2, Enum.EasingStyle.Quart)
local function CreateMark_upvr(arg1, arg2) -- Line 122, Named "CreateMark"
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
	local ImageLabel = Instance.new("ImageLabel", arg1)
	ImageLabel.Size = UDim2.fromScale(0.8, 0.8)
	ImageLabel.Image = "https://assetgame.roblox.com/asset/?id=12389947566&assetName=06 %281%29"
	ImageLabel.SizeConstraint = Enum.SizeConstraint.RelativeYY
	ImageLabel.BackgroundTransparency = 1
	ImageLabel.ImageTransparency = arg2
	ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel.Position = UDim2.fromScale(0.5, 0.5)
	ImageLabel.ZIndex = 10
	TweenService_upvr:Create(ImageLabel, TweenInfo_new_result1_upvr_3, {
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
return function(arg1, arg2, arg3, arg4, arg5) -- Line 142
	--[[ Upvalues[11]:
		[1]: RunService_upvr (readonly)
		[2]: SpinSpeed_upvr (readonly)
		[3]: ShakeSize_upvr (readonly)
		[4]: TweenService_upvr (readonly)
		[5]: CreateParticleEmit_upvr (readonly)
		[6]: CreateFlipbook_upvr (readonly)
		[7]: CreateLeaf_upvr (readonly)
		[8]: module_upvr (readonly)
		[9]: CreateMark_upvr (readonly)
		[10]: CreateParticle_upvr (readonly)
		[11]: Debris_upvr (readonly)
	]]
	script.Ambient:Play()
	game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
	local var46_upvw = true
	local clone_4_upvr = script:WaitForChild("BaseGroup"):Clone()
	clone_4_upvr:AddTag("CutsceneAsset")
	print("EEEEEEEEEEd")
	clone_4_upvr.Parent = arg2
	print('AG')
	local GradientFrame = clone_4_upvr:WaitForChild("GradientFrame")
	local Star_upvr = clone_4_upvr:WaitForChild("Star")
	local var51_upvw
	print("BBB")
	var51_upvw = RunService_upvr.Heartbeat:Connect(function(arg1_2) -- Line 152
		--[[ Upvalues[5]:
			[1]: clone_4_upvr (readonly)
			[2]: Star_upvr (readonly)
			[3]: SpinSpeed_upvr (copied, readonly)
			[4]: ShakeSize_upvr (copied, readonly)
			[5]: var51_upvw (read and write)
		]]
		if clone_4_upvr.Parent then
			local var52 = Star_upvr
			var52.Rotation += arg1_2 * 60 * SpinSpeed_upvr.Value
			local Ring = clone_4_upvr.Ring
			Ring.Rotation -= arg1_2 * 35
			Star_upvr.Position = UDim2.fromScale(0.5, 0.5) + UDim2.fromScale(math.random(-100, 100) / 2000 * ShakeSize_upvr.Value, math.random(-100, 100) / 2000 * ShakeSize_upvr.Value)
		else
			var51_upvw:Disconnect()
		end
	end)
	print('EEEEEEEEEEEEEEEEEEEEEee')
	TweenService_upvr:Create(clone_4_upvr, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {
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
	TweenService_upvr:Create(clone_4_upvr.Ring, TweenInfo.new(3, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut, 0, false, 1), {
		Size = UDim2.fromScale(0.4, 0.4);
		ImageTransparency = 0.5;
	}):Play()
	print('Tweens')
	coroutine.wrap(function() -- Line 171
		--[[ Upvalues[3]:
			[1]: clone_4_upvr (readonly)
			[2]: var46_upvw (read and write)
			[3]: CreateParticleEmit_upvr (copied, readonly)
		]]
		while clone_4_upvr.Parent and var46_upvw do
			CreateParticleEmit_upvr(clone_4_upvr, "rbxassetid://8030760338", math.random(5, 20) / 500)
			task.wait(0.05)
		end
	end)()
	print("eXd")
	coroutine.wrap(function() -- Line 179
		--[[ Upvalues[4]:
			[1]: clone_4_upvr (readonly)
			[2]: var46_upvw (read and write)
			[3]: CreateFlipbook_upvr (copied, readonly)
			[4]: CreateLeaf_upvr (copied, readonly)
		]]
		while clone_4_upvr.Parent and var46_upvw do
			task.defer(CreateFlipbook_upvr, "rbxassetid://11518019293", clone_4_upvr, 30, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1, 1), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.6, false)
			task.defer(CreateFlipbook_upvr, "rbxassetid://12350056117", clone_4_upvr, 30, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1, 1), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.1, true)
			task.defer(CreateFlipbook_upvr, "rbxassetid://13414392494", clone_4_upvr, 30, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1, 1), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.5, true)
			task.defer(CreateFlipbook_upvr, "rbxassetid://14944433028", clone_4_upvr, 30, UDim2.fromScale(math.random(0, 100) / 100, 1.2), UDim2.fromScale(0.6, 0.6), UDim2.fromScale(1, 1), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.1, false)
			task.defer(CreateFlipbook_upvr, "rbxassetid://14944433028", clone_4_upvr, 30, UDim2.fromScale(math.random(0, 100) / 100, -0.2), UDim2.fromScale(0.6, 0.6), UDim2.fromScale(1, 1), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.1, false)
			CreateLeaf_upvr(clone_4_upvr)
			task.wait(0.1)
		end
	end)()
	print("eXd10")
	module_upvr.PlaySFX("OneMilPlus")
	task.wait(3.23)
	TweenService_upvr:Create(Star_upvr, TweenInfo.new(6, Enum.EasingStyle.Exponential, Enum.EasingDirection.In), {
		Size = UDim2.fromScale(3, 3);
	}):Play()
	print("ruh")
	task.wait(4)
	CreateMark_upvr(clone_4_upvr, 0.6)
	task.wait(1)
	CreateMark_upvr(clone_4_upvr, 0)
	task.wait(1)
	CreateParticle_upvr("http://www.roblox.com/asset/?id=10468554009", clone_4_upvr, 0.5, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(2, 2), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
	CreateParticle_upvr("http://www.roblox.com/asset/?id=13911306541", clone_4_upvr, 0.6, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(2.5, 2.5), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
	CreateParticle_upvr("rbxassetid://16924434689", clone_4_upvr, 0.6, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(2.3, 2.3), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
	CreateParticle_upvr("rbxassetid://16924595234", clone_4_upvr, 1, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(1.8, 1.8), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
	CreateParticle_upvr("rbxassetid://10176632695", clone_4_upvr, 1.1, UDim2.fromScale(0.5, 0.5), UDim2.fromScale(0.2, 0.2), UDim2.fromScale(3, 3), Enum.SizeConstraint.RelativeYY, math.random(0, 360), 0.2, true)
	Star_upvr.Visible = false
	clone_4_upvr.BackgroundTransparency = 1
	var46_upvw = false
	local Frame = Instance.new("Frame", arg2)
	Frame.Size = UDim2.fromScale(1, 1)
	Frame.BackgroundColor3 = Color3.new(1, 1, 1)
	Frame.ZIndex = 4
	TweenService_upvr:Create(Frame, TweenInfo.new(1), {
		BackgroundTransparency = 1;
	}):Play()
	Debris_upvr:AddItem(Frame, 1)
	module_upvr.PlaySFX(script.Ready)
	--module_upvr.PlaySFX("Ambient"):Destroy()
	script.Ambient:Stop()
	GradientFrame.Visible = false
	clone_4_upvr.Ring.Visible = false
	TweenService_upvr:Create(clone_4_upvr, TweenInfo.new(3), {
		GroupTransparency = 1;
	}):Play()
	Debris_upvr:AddItem(clone_4_upvr, 3)
	var51_upvw:Disconnect()
end