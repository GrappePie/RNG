-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-15 15:31:25
-- Luau version 6, Types version 3
-- Time taken: 0.009738 seconds

local TweenService_upvr = game:GetService("TweenService")
local Tween0o_new_result1_upvr_2 = Tween0o.new(2, Enum.EasingStyle.Quart)
local Tween0o_new_result1_upvr_6 = Tween0o.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
;({}).BackgroundTransparency = 0.6
local tbl_4_upvr = {
	BackgroundTransparency = 1;
}
;({}).BackgroundTransparency = 0
;({}).TextTransparency = 1
local Debris_upvr = game:GetService("Debris")
local tbl_upvr = {"rbxassetid://12403099647", "https://assetgame.roblox.com/asset/?id=12389950520&assetName=01 %281%29", "https://assetgame.roblox.com/asset/?id=12389949860&assetName=02 %281%29", "https://assetgame.roblox.com/asset/?id=12389949289&assetName=03 %281%29", "https://assetgame.roblox.com/asset/?id=12389948778&assetName=04 %281%29", "https://assetgame.roblox.com/asset/?id=12389947566&assetName=06 %281%29", "https://assetgame.roblox.com/asset/?id=12389946314&assetName=08 %281%29", "https://assetgame.roblox.com/asset/?id=12389945698&assetName=09 %281%29"}
local tbl_2_upvr = {"\"HAVE YOU SEEN MY LAST MEMORY?\"", "\"ARE YOU AFRAID OF ME?\"", "\"AM I THE ONLY ONE IN THIS WORLD?\"", "\"THE REASON I'M CRUEL IS THIS WORLD.\"", "\"I DON'T WANT TO LOSE ANYTHING MORE.\""}
local function CreateImpact_upvr_upvr(arg1, arg2, arg3) -- Line 19, Named "CreateImpact_upvr"
	--[[ Upvalues[3]:
		[1]: TweenService_upvr (readonly)
		[2]: Tween0o_new_result1_upvr_2 (readonly)
		[3]: Debris_upvr (readonly)
	]]
	local ImageLabel_4 = Instance.new("ImageLabel", arg1)
	ImageLabel_4.Size = UDim2.fromScale(0.3, 0.3)
	ImageLabel_4.Image = arg2
	ImageLabel_4.Rotation = math.random(0, 360)
	ImageLabel_4.ImageColor3 = Color3.new(0.611765, 0.458824, 1)
	ImageLabel_4.SizeConstraint = Enum.SizeConstraint.RelativeYY
	ImageLabel_4.BackgroundTransparency = 1
	ImageLabel_4.ImageTransparency = 0.2
	ImageLabel_4.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel_4.Position = UDim2.fromScale(0.5, 0.5)
	TweenService_upvr:Create(ImageLabel_4, Tween0o_new_result1_upvr_2, {
		Size = UDim2.fromScale(1.8 * (arg3 or 1), 1.8 * (arg3 or 1));
		ImageTransparency = 1;
	}):Play()
	Debris_upvr:AddItem(ImageLabel_4, 2)
end
local function CreateMagicCircle_upvr_upvr(arg1) -- Line 41, Named "CreateMagicCircle_upvr"
	--[[ Upvalues[3]:
		[1]: TweenService_upvr (readonly)
		[2]: Tween0o_new_result1_upvr_2 (readonly)
		[3]: Tween0o_new_result1_upvr_6 (readonly)
	]]
	local ImageLabel_3 = Instance.new("ImageLabel", arg1)
	ImageLabel_3.Size = UDim2.fromScale(1.2, 1.2)
	ImageLabel_3.Image = "https://assetgame.roblox.com/asset/?id=12389945119&assetName=39ab5bcc-4b0f-46e8-8186-95c23204cfe4"
	ImageLabel_3.Rotation = 202
	ImageLabel_3.ImageColor3 = Color3.new(0.494118, 0.368627, 1)
	ImageLabel_3.SizeConstraint = Enum.SizeConstraint.RelativeYY
	ImageLabel_3.BackgroundTransparency = 1
	ImageLabel_3.ImageTransparency = 1
	ImageLabel_3.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel_3.Position = UDim2.fromScale(0.5, 0.5)
	TweenService_upvr:Create(ImageLabel_3, Tween0o_new_result1_upvr_2, {
		Size = UDim2.fromScale(0.9, 0.9);
		Rotation = 22;
		ImageTransparency = 0;
	}):Play()
	task.wait(2)
	TweenService_upvr:Create(ImageLabel_3, Tween0o_new_result1_upvr_6, {
		Size = UDim2.fromScale(1.2, 1.2);
		ImageTransparency = 1;
	}):Play()
	return ImageLabel_3
end
local Tween0o_new_result1_upvr_3 = Tween0o.new(1, Enum.EasingStyle.Quart)
local function CreateBigText_upvr_upvr(arg1, arg2) -- Line 70, Named "CreateBigText_upvr"
	--[[ Upvalues[3]:
		[1]: TweenService_upvr (readonly)
		[2]: Tween0o_new_result1_upvr_3 (readonly)
		[3]: Tween0o_new_result1_upvr_6 (readonly)
	]]
	local clone_2 = script:WaitForChild("TextTemplate"):Clone()
	clone_2.Size = UDim2.fromScale(1, 0.1)
	clone_2.Text = arg1
	clone_2.Parent = arg2
	TweenService_upvr:Create(clone_2, Tween0o_new_result1_upvr_3, {
		Size = UDim2.fromScale(1, 0.07);
	}):Play()
	task.wait(2)
	TweenService_upvr:Create(clone_2, Tween0o_new_result1_upvr_6, {
		Size = UDim2.fromScale(1, 0.12);
	}):Play()
	return clone_2
end
local function CreateBeam_upvr_upvr(arg1, arg2) -- Line 89, Named "CreateBeam_upvr"
	--[[ Upvalues[2]:
		[1]: TweenService_upvr (readonly)
		[2]: Debris_upvr (readonly)
	]]
	local ImageLabel = Instance.new("ImageLabel", arg1)
	ImageLabel.Position = UDim2.fromScale(math.random(20, 80) / 100, math.random(20, 80) / 100)
	ImageLabel.Image = "rbxassetid://16685733415"
	ImageLabel.ImageColor3 = arg2
	ImageLabel.SizeConstraint = Enum.SizeConstraint.RelativeXY
	ImageLabel.BackgroundTransparency = 1
	ImageLabel.Rotation = math.random(0, 360)
	ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel.Size = UDim2.fromScale(1, 5)
	ImageLabel.ZIndex = 100000
	local tbl = {}
	local var23 = 40
	if math.random(1, 2) == 1 then
		var23 = -1
	else
		var23 = 1
	end
	tbl.Rotation = ImageLabel.Rotation + math.random(var23, 50) * var23
	tbl.Size = UDim2.fromScale(0.2, 5)
	TweenService_upvr:Create(ImageLabel, Tween0o.new(0.7, Enum.EasingStyle.Quart, Enum.EasingDirection.Out, 0, true, 0), tbl):Play()
	Debris_upvr:AddItem(ImageLabel, 1)
end
local Tween0o_new_result1_upvr_5 = Tween0o.new(0.5, Enum.EasingStyle.Quart)
local Tween0o_new_result1_upvr_7 = Tween0o.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
local RunService_upvr = game:GetService("RunService")
local function CreateParticleEmit_upvr_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 118, Named "CreateParticleEmit_upvr"
	--[[ Upvalues[5]:
		[1]: TweenService_upvr (readonly)
		[2]: Tween0o_new_result1_upvr_5 (readonly)
		[3]: Tween0o_new_result1_upvr_7 (readonly)
		[4]: Debris_upvr (readonly)
		[5]: RunService_upvr (readonly)
	]]
	local ImageLabel_2_upvr = Instance.new("ImageLabel", arg1)
	ImageLabel_2_upvr.Size = UDim2.fromScale()
	ImageLabel_2_upvr.Image = arg2
	ImageLabel_2_upvr.ImageColor3 = arg3
	ImageLabel_2_upvr.SizeConstraint = Enum.SizeConstraint.RelativeXX
	ImageLabel_2_upvr.BackgroundTransparency = 1
	ImageLabel_2_upvr.Rotation = math.random(-15, 15)
	ImageLabel_2_upvr.AnchorPoint = Vector2.new(0.5, 0.5)
	if arg5 then
		arg5:Clone().Parent = ImageLabel_2_upvr
	end
	TweenService_upvr:Create(ImageLabel_2_upvr, Tween0o_new_result1_upvr_5, {
		Size = UDim2.fromScale(arg4, arg4);
	}):Play()
	local var29 = 50
	if math.random(1, 2) == 1 then
		var29 = -1
	else
		var29 = 1
	end
	local udim2_upvr = UDim2.fromScale(math.random(0, 100) / 100, 1)
	local var32_upvr = math.random(var29, 70) * var29
	local var33_upvr = math.random(2, 5) / 500
	coroutine.wrap(function() -- Line 149
		--[[ Upvalues[8]:
			[1]: ImageLabel_2_upvr (readonly)
			[2]: TweenService_upvr (copied, readonly)
			[3]: Tween0o_new_result1_upvr_7 (copied, readonly)
			[4]: Debris_upvr (copied, readonly)
			[5]: udim2_upvr (readonly)
			[6]: var32_upvr (readonly)
			[7]: var33_upvr (readonly)
			[8]: RunService_upvr (copied, readonly)
		]]
		local time_result1 = time()
		while ImageLabel_2_upvr and ImageLabel_2_upvr.Parent do
			if time_result1 + math.random(15, 20) / 10 - 0.5 <= time() and not ImageLabel_2_upvr:GetAttribute("Removing") then
				ImageLabel_2_upvr:SetAttribute("Removing", true)
				TweenService_upvr:Create(ImageLabel_2_upvr, Tween0o_new_result1_upvr_7, {
					Size = UDim2.fromScale(0, 0);
				}):Play()
				Debris_upvr:AddItem(ImageLabel_2_upvr, 0.5)
			end
			local var36 = (time() - time_result1) * 50
			ImageLabel_2_upvr.Position = udim2_upvr + UDim2.fromScale(0.07 * math.sin(var36 / var32_upvr), var36 * -var33_upvr)
			RunService_upvr.Heartbeat:Wait()
		end
	end)()
end
local _ = {
	I = 1;
	V = 5;
	X = 10;
	L = 50;
	C = 100;
	D = 500;
	M = 1000;
}
local tbl_3_upvr = {1, 5, 10, 50, 100, 500, 1000}
local tbl_5 = {'I', 'V', 'X', 'L', 'C', 'D', 'M'}
function ToRomanNumerals(arg1) -- Line 186
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	local var40
	if not var40 or var40 ~= var40 then
		error("Unable to convert to number")
	end
	if var40 == math.huge then
		error("Unable to convert 0inity")
	end
	var40 = math.floor(var40)
	if var40 <= 0 then
		return var40
	end
	local var41 = tbl_3_upvr[#tbl_3_upvr]
	while 0 <= var40 - var41 and 0 < var40 do
		var40 -= var41
	end
	if nil > nil or var40 >= var41 or nil >= var40 then
	end
end
local UICache = require(game:GetService("ReplicatedStorage").Modules.UICache)
local Queue = require(game:GetService("ReplicatedStorage").Modules.Queue)
local any_new_result1 = Queue.Waitter.new()
for _, v in tbl_upvr do
	any_new_result1:insert(Queue.Process.new(UICache.new, v):execute())
end
any_new_result1:executeAll():await():destroy()
local Assets_upvr = require(game:GetService("ReplicatedStorage").Modules.UI.SceneUI.Assets)
local Tween0o_new_result1_upvr_4 = Tween0o.new(3, Enum.EasingStyle.Quart)
local Tween0o_new_result1_upvr = Tween0o.new(6, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
return function(arg1, arg2) -- Line 242
	--[[ Upvalues[14]:
		[1]: Assets_upvr (readonly)
		[2]: CreateParticleEmit_upvr_upvr (readonly)
		[3]: CreateImpact_upvr_upvr (readonly)
		[4]: CreateMagicCircle_upvr_upvr (readonly)
		[5]: CreateBigText_upvr_upvr (readonly)
		[6]: tbl_2_upvr (readonly)
		[7]: TweenService_upvr (readonly)
		[8]: Tween0o_new_result1_upvr_2 (readonly)
		[9]: tbl_4_upvr (readonly)
		[10]: Debris_upvr (readonly)
		[11]: tbl_upvr (readonly)
		[12]: Tween0o_new_result1_upvr_4 (readonly)
		[13]: Tween0o_new_result1_upvr (readonly)
		[14]: CreateBeam_upvr_upvr (readonly)
	]]
	local current_thread_upvr = coroutine.running()
	local BlackBoard_upvr = Assets_upvr.BlackBoard
	local Colorboard = Assets_upvr.Colorboard
	Assets_upvr.ApplyLabelColor(Colorboard, arg2)
	local clone_6_upvr = script:WaitForChild("ImageLabel"):Clone()
	clone_6_upvr.Parent = BlackBoard_upvr
	Assets_upvr.BlackBoardAppear:Play()
	local clone_4_upvr = script:WaitForChild("BGText"):Clone()
	clone_4_upvr.Parent = BlackBoard_upvr
	local var54_upvw = true
	coroutine.wrap(function() -- Line 270
		--[[ Upvalues[4]:
			[1]: current_thread_upvr (readonly)
			[2]: var54_upvw (read and write)
			[3]: CreateParticleEmit_upvr_upvr (copied, readonly)
			[4]: BlackBoard_upvr (readonly)
		]]
		if coroutine.status(current_thread_upvr) ~= "dead" and var54_upvw then
			CreateParticleEmit_upvr_upvr(BlackBoard_upvr, "rbxassetid://8030760338", Color3.new(0.509804, 0.360784, 1), math.random(5, 20) / 500, nil)
		end
	end)()
	local clone_7 = script:WaitForChild("Corner"):Clone()
	clone_7.Parent = BlackBoard_upvr.Parent
	coroutine.wrap(function() -- Line 288
		--[[ Upvalues[3]:
			[1]: current_thread_upvr (readonly)
			[2]: var54_upvw (read and write)
			[3]: clone_6_upvr (readonly)
		]]
		if coroutine.status(current_thread_upvr) ~= "dead" and var54_upvw then
			clone_6_upvr.Position = UDim2.new(math.random(3, 7) / 10, 0, math.random(3, 7) / 10, 0)
		end
	end)()
	CreateImpact_upvr_upvr(BlackBoard_upvr, "http://www.roblox.com/asset/?id=7185003058")
	Assets_upvr.PlaySFX(script:WaitForChild("Boom Impact Deep Distant Thumping Hits Boomi (SFX)"))
	local var58_upvw
	task.spawn(function() -- Line 307
		--[[ Upvalues[3]:
			[1]: var58_upvw (read and write)
			[2]: CreateMagicCircle_upvr_upvr (copied, readonly)
			[3]: BlackBoard_upvr (readonly)
		]]
		var58_upvw = CreateMagicCircle_upvr_upvr(BlackBoard_upvr)
	end)
	task.wait(2)
	if var58_upvw then
		var58_upvw:Destroy()
	end
	CreateBigText_upvr_upvr(tbl_2_upvr[math.random(1, #tbl_2_upvr)], BlackBoard_upvr):Destroy()
	local clone = script:WaitForChild("Frame"):Clone()
	clone.Parent = BlackBoard_upvr.Parent
	TweenService_upvr:Create(clone, Tween0o_new_result1_upvr_2, tbl_4_upvr):Play()
	Debris_upvr:AddItem(clone, 2)
	Assets_upvr.PlaySFX("OneMilPlus")
	local Star2_upvr = arg1.Star2
	Assets_upvr.ApplyLabelColor(Star2_upvr, arg2)
	local NumberValue_upvr = Instance.new("NumberValue")
	NumberValue_upvr.Value = 1
	local NumberValue_upvr_2 = Instance.new("NumberValue")
	NumberValue_upvr_2.Value = 1
	local var65_upvw = true
	local var66_upvw = 1
	coroutine.wrap(function() -- Line 333
		--[[ Upvalues[9]:
			[1]: current_thread_upvr (readonly)
			[2]: var65_upvw (read and write)
			[3]: Star2_upvr (readonly)
			[4]: tbl_upvr (copied, readonly)
			[5]: NumberValue_upvr (readonly)
			[6]: Assets_upvr (copied, readonly)
			[7]: var66_upvw (read and write)
			[8]: clone_4_upvr (readonly)
			[9]: NumberValue_upvr_2 (readonly)
		]]
		while coroutine.status(current_thread_upvr) ~= "dead" and var65_upvw do
			Star2_upvr.Image = tbl_upvr[math.random(1, #tbl_upvr)]
			local var67 = math.random(80, 120) / 100
			Star2_upvr.Size = UDim2.fromScale(NumberValue_upvr.Value * var67, NumberValue_upvr.Value * var67)
			Assets_upvr.PlaySFX(script.TypeSound)
			var66_upvw += 1
			clone_4_upvr.Text = ToRomanNumerals(var66_upvw)
			task.wait(NumberValue_upvr_2.Value)
		end
	end)()
	Star2_upvr.Visible = true
	Star2_upvr.Rotation = 0
	TweenService_upvr:Create(NumberValue_upvr_2, Tween0o.new(9.23), {
		Value = 0;
	}):Play()
	TweenService_upvr:Create(NumberValue_upvr, Tween0o_new_result1_upvr_4, {
		Value = 0.6;
	}):Play()
	Assets_upvr.StarSpinSpeed.Value = 0
	task.wait(3.23)
	TweenService_upvr:Create(NumberValue_upvr, Tween0o_new_result1_upvr, {
		Value = 1.5;
	}):Play()
	task.wait(4)
	Assets_upvr.ColorboardAppear:Play()
	task.wait(1)
	CreateBeam_upvr_upvr(BlackBoard_upvr.Parent, Color3.fromRGB(127, 88, 255))
	CreateBeam_upvr_upvr(BlackBoard_upvr.Parent, Color3.fromRGB(127, 88, 255))
	CreateBeam_upvr_upvr(BlackBoard_upvr.Parent, Color3.fromRGB(127, 88, 255))
	Assets_upvr.PlaySFX(script:WaitForChild("what the sig"), {
		TimePosition = 0.15;
	})
	local clone_5 = script:WaitForChild("ClientEffects"):Clone()
	clone_5.Parent = game.Players.LocalPlayer.PlayerGui
	clone_5:WaitForChild("LocalScript").Disabled = false
	game:GetService("Debris"):AddItem(clone_5, 2)
	Assets_upvr.PlaySFX(script:WaitForChild("OOO"))
	task.wait(1)
	clone_4_upvr:Destroy()
	clone_7:Destroy()
	NumberValue_upvr:Destroy()
	var65_upvw = false
	local clone_3 = script:WaitForChild("Frame"):Clone()
	clone_3.Parent = BlackBoard_upvr.Parent
	TweenService_upvr:Create(clone_3, Tween0o_new_result1_upvr_2, tbl_4_upvr):Play()
	Debris_upvr:AddItem(clone_3, 2)
	Assets_upvr.PlaySFX("Ambient"):Destroy()
	Star2_upvr.Visible = false
	Assets_upvr.PlaySFX(script:WaitForChild("DeepImpact"))
	var54_upvw = false
	clone_6_upvr:Destroy()
	Colorboard.Image = "http://www.roblox.com/asset/?id=1195495135"
	Colorboard.ImageTransparency = 0
	Assets_upvr.SetShake(0.02, Tween0o_new_result1_upvr_4)
	Colorboard.ImageColor3 = Color3.new(1, 1, 1)
	if Colorboard:FindFirstChildOfClass("UIGradient") then
		Colorboard:FindFirstChildOfClass("UIGradient"):Destroy()
	end
	Assets_upvr.ColorboardDisappear:Play()
	BlackBoard_upvr.BackgroundTransparency = 1
end