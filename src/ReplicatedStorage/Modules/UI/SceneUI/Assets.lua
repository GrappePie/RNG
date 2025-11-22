-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-14 07:13:38
-- Luau version 6, Types version 3
-- Time taken: 0.008343 seconds

local RunService_upvr = game:GetService("RunService")
local TweenService_upvr = game:GetService("TweenService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
--local module_2_upvr = require(ReplicatedStorage:WaitForChild("Modules"):WaitForChild("UI"):WaitForChild("RollUI"))
local ScreenGui_upvr = Instance.new("ScreenGui")
ScreenGui_upvr.ResetOnSpawn = false
ScreenGui_upvr.IgnoreGuiInset = true
ScreenGui_upvr.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui_upvr.DisplayOrder = 9000
ScreenGui_upvr.SafeAreaCompatibility = Enum.SafeAreaCompatibility.FullscreenExtension
ScreenGui_upvr.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
local function CreateImageLabel(arg1) -- Line 12
	--[[ Upvalues[1]:
		[1]: ScreenGui_upvr (readonly)
	]]
	local ImageLabel = Instance.new("ImageLabel")
	local var19
	if not var19 then
		var19 = ImageLabel.Image
	end
	ImageLabel.Image = var19
	ImageLabel.BackgroundTransparency = 1
	ImageLabel.Size = UDim2.fromOffset(1, 1)
	ImageLabel.Parent = ScreenGui_upvr
	if ImageLabel.Image ~= "" and not ImageLabel.IsLoaded then
		repeat
			task.wait()
		until ImageLabel.IsLoaded
	end
	ImageLabel.Parent = nil
	for i, v in arg1 do
		ImageLabel[i] = v
	end
	ImageLabel.Parent = ScreenGui_upvr
	return ImageLabel
end
local function _(arg1, arg2) -- Line 40
	local any = Instance.new(arg1)
	if arg2 then
		for i_2, v_2 in arg2 do
			any[i_2] = v_2
		end
	end
	return any
end
local function GetLabelColor_upvr_upvr(arg1) -- Line 49, Named "GetLabelColor_upvr"
	local var25
	print(arg1)
	for i,v in arg1:GetChildren() do
		if v:IsA("TextButton") or v:IsA("TextLabel") then
			print(i,v)
		end
	end
	if select(3, arg1.TextColor3:ToHSV()) ~= 0 then
		var25 = false
	else
		var25 = true
	end
	local class_UIStroke = arg1:FindFirstChildOfClass("UIStroke")
	local var27
	if var25 and not arg1:FindFirstChildOfClass("UIGradient") and class_UIStroke then
		var27 = class_UIStroke
		return class_UIStroke.Color, var27
	end
	if not var25 then
		return var27.TextColor3, var27
	end
	return Color3.new(1, 1, 1), var27
end
local function ApplyLabelColor_upvr_upvr(arg1, arg2) -- Line 69, Named "ApplyLabelColor_upvr"
	--[[ Upvalues[1]:
		[1]: GetLabelColor_upvr_upvr (readonly)
	]]
	print("WATASIGMA", arg1, arg2)
	local Mutation = arg2:FindFirstChild("Mutation")
	print("BUH")
	local GetLabelColor_upvr_upvr_result1_3, GetLabelColor_upvr_upvr_result2 = GetLabelColor_upvr_upvr(arg2)
	print("AA")
	arg1.ImageColor3 = GetLabelColor_upvr_upvr_result1_3
	print("AAAAAAAAAAAAAAAAAAAAa")
	local var47 = GetLabelColor_upvr_upvr_result2
	print('WWWWWWWWWWWWWWW')
	if Mutation then
		print("EEEEEEEEEEEEE")
		var47 = Mutation
		print("z")
		local GetLabelColor_upvr_upvr_result1 = GetLabelColor_upvr_upvr(Mutation)
		print(12442)
		if GetLabelColor_upvr_upvr_result1 ~= Color3.new(1, 1, 1) then
			print('HELP')
			arg1.ImageColor3 = arg1.ImageColor3:Lerp(GetLabelColor_upvr_upvr_result1, 0.3)
			print("a")
		end
	end
	for _, v_3 in var47:GetChildren() do
		if not v_3:IsA("TextLabel") and not v_3:IsA("UIStroke") then
			v_3:Clone().Parent = arg1
		end
	end
end
local CreateImageLabel_result1 = CreateImageLabel({
	Name = "Colorboard";
	BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	BackgroundTransparency = 1;
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Size = UDim2.new(1, 0, 1, 0);
	ZIndex = 10;
	Image = "rbxassetid://12353440665";
	ImageTransparency = 1;
})
local tbl = {
	Size = UDim2.fromScale(1, 1);
	BackgroundColor3 = Color3.new();
	BorderSizePixel = 0;
	BackgroundTransparency = 1;
	Parent = ScreenGui_upvr;
}
local Frame = Instance.new("Frame")
if tbl then
	for i_4, v_4 in tbl do
		Frame[i_4] = v_4
	end
end
local tbl_2 = {
	Value = 0;
}
if tbl_2 then
	for i_5, v_5 in tbl_2 do
		Instance.new("NumberValue")[i_5] = v_5
	end
end
local function _() -- Line 187
	if math.random(1, 2) == 1 then
		return -1
	end
	return 1
end
--local any_GetShake_result1_upvr = module_2_upvr:GetShake()
RunService_upvr.RenderStepped:Connect(function(arg1) -- Line 194
	--[[ Upvalues[1]:
		[1]: any_GetShake_result1_upvr (readonly)
	]]
	if math.random(1, 2) == 1 then
	else
	end
	if math.random(1, 2) ~= 1 then
	end
end)
local module = {
	Break1 = CreateImageLabel({
		Name = "Break1";
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		BorderColor3 = Color3.fromRGB(0, 0, 0);
		BorderSizePixel = 0;
		Position = UDim2.new(0.5, 0, 0.5, 0);
		Size = UDim2.new(1, 0, 1.20000005, 0);
		SizeConstraint = Enum.SizeConstraint.RelativeYY;
		Visible = false;
		ZIndex = 11;
		Image = "rbxassetid://11155931654";
		ImageColor3 = Color3.fromRGB(0, 0, 0);
	});
	Break2 = CreateImageLabel({
		Name = "Break2";
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		BorderColor3 = Color3.fromRGB(0, 0, 0);
		BorderSizePixel = 0;
		Position = UDim2.new(0.5, 0, 0.5, 0);
		Size = UDim2.new(1, 0, 1, 0);
		SizeConstraint = Enum.SizeConstraint.RelativeYY;
		Visible = false;
		ZIndex = 11;
		Image = "rbxassetid://11155929795";
		ImageColor3 = Color3.fromRGB(0, 0, 0);
	});
	Colorboard = CreateImageLabel_result1;
	GradientBoard = CreateImageLabel({
		Name = "GradientBoard";
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		BorderColor3 = Color3.fromRGB(0, 0, 0);
		BorderSizePixel = 0;
		Size = UDim2.new(1, 0, 1, 0);
		ZIndex = 10;
		Image = "rbxassetid://12417426090";
		ImageTransparency = 1;
	});
	Star = CreateImageLabel({
		Name = "Star";
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		BorderColor3 = Color3.fromRGB(0, 0, 0);
		BorderSizePixel = 0;
		Position = UDim2.new(0.5, 0, 0.5, 0);
		Size = UDim2.new(1, 0, 1, 0);
		SizeConstraint = Enum.SizeConstraint.RelativeYY;
		Visible = false;
		ZIndex = 11;
		Image = "rbxassetid://6909741538";
	});
	Star2 = CreateImageLabel({
		Name = "Star2";
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		BorderColor3 = Color3.fromRGB(0, 0, 0);
		BorderSizePixel = 0;
		Position = UDim2.new(0.5, 0, 0.5, 0);
		Size = UDim2.new(1, 0, 1, 0);
		SizeConstraint = Enum.SizeConstraint.RelativeYY;
		Visible = false;
		ZIndex = 11;
		Image = "rbxassetid://17068400400";
	});
	Interface = ScreenGui_upvr;
	BlackBoard = Frame;
	StarSpinSpeed = 1;
	BaseQuartInfo1 = TweenInfo.new(0.5, Enum.EasingStyle.Quart);
	BaseQuartInfo2 = TweenInfo.new(1, Enum.EasingStyle.Quart);
	BaseQuartInfo3 = TweenInfo.new(2, Enum.EasingStyle.Quart);
	ReverseQuartInfo1 = TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In);
	ReverseQuartInfo2 = TweenInfo.new(6, Enum.EasingStyle.Quart, Enum.EasingDirection.In);
	ReverseQuartInfo3 = TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.In);
	ColorboardAppear = TweenService_upvr:Create(CreateImageLabel_result1, TweenInfo.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
		ImageTransparency = 0;
	});
	ColorboardDisappear = TweenService_upvr:Create(CreateImageLabel_result1, TweenInfo.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
		ImageTransparency = 1;
	});
	BlackBoardTransitionize = function(Blackboard: Frame, Transparency: number, Instant: boolean): ()
		Blackboard = Blackboard -- or Frame
		if Instant then
			Blackboard.BackgroundTransparency = Transparency;
		else
			TweenService_upvr:Create(Blackboard, TweenInfo.new(0.5, Enum.EasingStyle.Quart), {
				BackgroundTransparency = Transparency;
			}):Play();
		end;
	end;
	ApplyLabelColor = ApplyLabelColor_upvr_upvr;
}
local Sounds_upvr = ReplicatedStorage:WaitForChild("Assets"):WaitForChild("Sounds")
local SoundService_upvr = game:GetService("SoundService")
function module.SetBlackboard(Blackboard: Frame)
	Frame = Blackboard
end
function module.PlaySFX(arg1, arg2) -- Line 253
	--[[ Upvalues[2]:
		[1]: Sounds_upvr (readonly)
		[2]: SoundService_upvr (readonly)
	]]
	local var74_upvw
	if typeof(arg1) == "string" then
		var74_upvw = Sounds_upvr:WaitForChild(arg1):Clone()
	else
		var74_upvw = arg1:Clone()
	end
	if arg2 then
		for i_6, v_6 in arg2 do
			var74_upvw[i_6] = v_6
		end
	end
	var74_upvw:AddTag("CutsceneAsset")
	var74_upvw.Parent = SoundService_upvr
	var74_upvw.Ended:Once(function() -- Line 271
		--[[ Upvalues[1]:
			[1]: var74_upvw (read and write)
		]]
		var74_upvw:Destroy()
	end)
	var74_upvw:Play()
	return var74_upvw
end
function module.SetShake(arg1, arg2, arg3) -- Line 280
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	--module_2_upvr:SetShake(arg1, arg2, arg3)
end
local TweenInfo_new_result1_upvr = TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
function module.CreateParticleEmit(arg1, arg2, arg3, arg4, arg5) -- Line 286
	--[[ Upvalues[4]:
		[1]: ApplyLabelColor_upvr_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: TweenInfo_new_result1_upvr (readonly)
		[4]: RunService_upvr (readonly)
	]]
	local ImageLabel_upvr = Instance.new("ImageLabel", arg1)
	ImageLabel_upvr.Size = UDim2.new()
	ImageLabel_upvr.Image = arg2
	ImageLabel_upvr.ImageColor3 = arg3
	ImageLabel_upvr.SizeConstraint = Enum.SizeConstraint.RelativeXX
	ImageLabel_upvr.BackgroundTransparency = 1
	ImageLabel_upvr.Rotation = math.random(-15, 15)
	ImageLabel_upvr.AnchorPoint = Vector2.new(0.5, 0.5)
	if arg5 then
		ApplyLabelColor_upvr_upvr(ImageLabel_upvr, arg5)
	end
	TweenService_upvr:Create(ImageLabel_upvr, TweenInfo.new(0.5, Enum.EasingStyle.Quart), {
		Size = UDim2.fromScale(arg4, arg4);
	}):Play()
	local var79 = 50
	if math.random(1, 2) == 1 then
		var79 = -1
	else
		var79 = 1
	end
	local udim2_upvr = UDim2.fromScale(math.random(0, 100) / 100, 1)
	local var82_upvr = math.random(var79, 70) * var79
	local var83_upvr = math.random(2, 5) / 500
	coroutine.wrap(function() -- Line 316
		--[[ Upvalues[7]:
			[1]: ImageLabel_upvr (readonly)
			[2]: TweenService_upvr (copied, readonly)
			[3]: TweenInfo_new_result1_upvr (copied, readonly)
			[4]: udim2_upvr (readonly)
			[5]: var82_upvr (readonly)
			[6]: var83_upvr (readonly)
			[7]: RunService_upvr (copied, readonly)
		]]
		local time_result1 = time()
		while ImageLabel_upvr and ImageLabel_upvr.Parent do
			if time_result1 + math.random(15, 20) / 10 - 0.5 <= time() and not ImageLabel_upvr:GetAttribute("Removing") then
				ImageLabel_upvr:SetAttribute("Removing", true)
				TweenService_upvr:Create(ImageLabel_upvr, TweenInfo_new_result1_upvr, {
					Size = UDim2.fromScale(0, 0);
				}):Play()
				game:GetService("Debris"):AddItem(ImageLabel_upvr, 0.5)
			end
			local var86 = (time() - time_result1) * 50
			ImageLabel_upvr.Position = udim2_upvr + UDim2.fromScale(0.07 * math.sin(var86 / var82_upvr), var86 * -var83_upvr)
			RunService_upvr.Heartbeat:Wait()
		end
	end)()
end
return module