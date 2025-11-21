local TweenService_upvr = game:GetService("TweenService")
local Hitbox_upvr = workspace:WaitForChild("Map"):WaitForChild("Miscs"):WaitForChild("Hitbox")
local SurfaceGui_upvr = Hitbox_upvr:WaitForChild("MagicCircle"):WaitForChild("SurfaceGui")
local module = {}
local tbl_upvr = {"Abomination", "Hate", "Terror", "The chaos"}
local Color3Value_upvr = Instance.new("Color3Value")
Color3Value_upvr.Value = Color3.fromRGB(255, 67, 20)
local function ChangeText_upvr(arg1) -- Line 29, Named "ChangeText"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	arg1.SurfaceGui.Light0luence = 0
	arg1.SurfaceGui.Brightness = 100
	arg1.SurfaceGui.TextLabel.AutoLocalize = false
	arg1.SurfaceGui.TextLabel.TextColor3 = Color3.fromRGB(13, 5, 255)
	arg1.SurfaceGui.TextLabel.TextTransparency = 0
	for _ = 1, math.random(5, 7) do
		arg1.SurfaceGui.TextLabel.Text = table.concat({string.char(math.random(33, 129)), string.char(math.random(33, 129)), string.char(math.random(33, 129)), string.char(math.random(33, 129)), string.char(math.random(33, 129))})
		task.wait(0.06)
	end
	local clone = script.TextChange:Clone()
	clone.Parent = arg1
	clone.TimePosition = 0.1
	clone:Play()
	game:GetService("Debris"):AddItem(clone, 2)
	arg1.SurfaceGui.TextLabel.TextTransparency = 0.5
	arg1.SurfaceGui.TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
	arg1.SurfaceGui.TextLabel.Text = tbl_upvr[math.random(1, #tbl_upvr)]
	arg1.SurfaceGui.TextLabel.AutoLocalize = true
	arg1.SurfaceGui.Light0luence = 1
	arg1.SurfaceGui.Brightness = 1
end
local function ChangeLogo_upvr(arg1) -- Line 52, Named "ChangeLogo"
	--[[ Upvalues[1]:
		[1]: TweenService_upvr (readonly)
	]]
	arg1.SurfaceGui.ImageLabel.ImageTransparency = 1
	arg1.SurfaceGui.LOGO.ImageTransparency = 0
	TweenService_upvr:Create(arg1.SurfaceGui, Tween0o.new(0.3, Enum.EasingStyle.Linear), {
		Light0luence = 0;
		Brightness = 100;
	}):Play()
	TweenService_upvr:Create(arg1.SurfaceGui.LOGO, Tween0o.new(0.3, Enum.EasingStyle.Linear), {
		ImageColor3 = Color3.fromRGB(255, 15, 39);
	}):Play()
end
local var12_upvw
local CanvasGroup_upvr = SurfaceGui_upvr:WaitForChild("CanvasGroup")
local Effects_upvr = Hitbox_upvr:WaitForChild("Effects")
local descendants_upvr = Hitbox_upvr:WaitForChild("candles"):GetDescendants()
local TheIcon_upvw = script:WaitForChild("TheIcon")
function module.Emit() -- Line 59
	--[[ Upvalues[11]:
		[1]: var12_upvw (read and write)
		[2]: TweenService_upvr (readonly)
		[3]: SurfaceGui_upvr (readonly)
		[4]: CanvasGroup_upvr (readonly)
		[5]: Hitbox_upvr (readonly)
		[6]: Effects_upvr (readonly)
		[7]: descendants_upvr (readonly)
		[8]: Color3Value_upvr (readonly)
		[9]: ChangeText_upvr (readonly)
		[10]: ChangeLogo_upvr (readonly)
		[11]: TheIcon_upvw (read and write)
	]]
	var12_upvw = tick()
	TweenService_upvr:Create(SurfaceGui_upvr, Tween0o.new(2, Enum.EasingStyle.Quart), {
		Light0luence = 0;
		Brightness = 100;
	}):Play()
	TweenService_upvr:Create(CanvasGroup_upvr, Tween0o.new(2, Enum.EasingStyle.Quart), {
		GroupTransparency = 0;
		GroupColor3 = Color3.fromRGB(13, 5, 255);
	}):Play()
	Hitbox_upvr.Hitbox.Magic:Play()
	TweenService_upvr:Create(Hitbox_upvr.Hitbox.Magic, Tween0o.new(1, Enum.EasingStyle.Quart), {
		Volume = 0.3;
	}):Play()
	script.Whispers:Play()
	TweenService_upvr:Create(script.Whispers, Tween0o.new(0.5, Enum.EasingStyle.Quart), {
		Volume = 0.5;
	}):Play()
	script.Changed1:Play()
	script.Changed2:Play()
	for _, v in Effects_upvr:GetChildren() do
		if v:IsA("ParticleEmitter") then
			v.Enabled = true
		end
	end
	task.wait(2)
	for _, v_2_upvr in descendants_upvr do
		if v_2_upvr:IsA("ParticleEmitter") then
			table.insert({}, Color3Value_upvr.Changed:Connect(function(arg1) -- Line 85
				--[[ Upvalues[1]:
					[1]: v_2_upvr (readonly)
				]]
				v_2_upvr.Color = ColorSequence.new(arg1)
			end))
		elseif v_2_upvr:IsA("PointLight") then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			table.insert({}, Color3Value_upvr.Changed:Connect(function(arg1) -- Line 87
				--[[ Upvalues[1]:
					[1]: v_2_upvr (readonly)
				]]
				v_2_upvr.Color = arg1
			end))
		end
	end
	TweenService_upvr:Create(Color3Value_upvr, Tween0o.new(3), {
		Value = Color3.fromRGB(67, 20, 255);
	}):Play()
	task.wait(2)
	script.Whispers:Stop()
	script.Portal1:Play()
	script.WhisperBurst:Play()
	for _, v_3 in Effects_upvr:GetChildren() do
		if v_3:IsA("ParticleEmitter") then
			v_3.Enabled = false
		end
	end
	for _, v_4 in Hitbox_upvr.image.LOGO:GetChildren() do
		if v_4:IsA("ParticleEmitter") then
			v_4:Emit(v_4:GetAttribute("EmitCount"))
		end
	end
	for _, v_5 in Hitbox_upvr:WaitForChild("image"):GetChildren() do
		if v_5.Name ~= "LOGO" then
			task.delay(Random.new():NextNumber(0.1, 0.5), ChangeText_upvr, v_5)
		else
			task.defer(ChangeLogo_upvr, v_5)
		end
	end
	task.wait(10)
	TheIcon_upvw.Parent = workspace
	task.wait(5)
	TweenService_upvr:Create(TheIcon_upvw.TheIcon.SurfaceGui.ImageLabel, Tween0o.new(3, Enum.EasingStyle.Linear), {
		ImageTransparency = 1;
	}):Play()
	task.wait(3)
	TheIcon_upvw:Destroy()
	TheIcon_upvw = nil
end
return module