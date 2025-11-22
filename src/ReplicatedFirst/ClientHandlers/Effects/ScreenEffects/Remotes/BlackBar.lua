-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-18 19:32:57
-- Luau version 6, Types version 3
-- Time taken: 0.001258 seconds

local module = {}
local module_upvr = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("UI"):WaitForChild("Quad"))
local Lighting_upvr = game:GetService("Lighting")
local any_Class_result1_upvr = module_upvr.Class("Frame")
local Mount_upvr = module_upvr.Mount
local TweenService_upvr = game:GetService("TweenService")
local TweenInfo_new_result1_upvr = TweenInfo.new(1, Enum.EasingStyle.Quart)
local CurrentCamera_upvr = workspace.CurrentCamera
function module.Emit() -- Line 22
	--[[ Upvalues[7]:
		[1]: Lighting_upvr (readonly)
		[2]: any_Class_result1_upvr (readonly)
		[3]: Mount_upvr (readonly)
		[4]: module_upvr (readonly)
		[5]: TweenService_upvr (readonly)
		[6]: TweenInfo_new_result1_upvr (readonly)
		[7]: CurrentCamera_upvr (readonly)
	]]
	local ColorCorrectionEffect = Instance.new("ColorCorrectionEffect", Lighting_upvr)
	local any_Class_result1_upvr_result1_2 = any_Class_result1_upvr({
		Size = UDim2.fromScale(1, 1);
		BackgroundTransparency = 1;
	})
	local any_Class_result1_upvr_result1 = any_Class_result1_upvr({
		Size = UDim2.fromScale(1, 1);
		BackgroundColor3 = Color3.new(1, 1, 1);
		BackgroundTransparency = 1;
	})
	local var4_result1 = any_Class_result1_upvr({
		BackgroundColor3 = Color3.new();
		Position = UDim2.fromScale(0, -0.1);
		Size = UDim2.fromScale(1, 0.1);
	})
	local any_Class_result1_upvr_result1_3 = any_Class_result1_upvr({
		BackgroundColor3 = Color3.new();
		Position = UDim2.fromScale(0, 1);
		Size = UDim2.fromScale(1, 0.1);
	})
	Mount_upvr(any_Class_result1_upvr_result1_2, any_Class_result1_upvr_result1)
	Mount_upvr(any_Class_result1_upvr_result1_2, any_Class_result1_upvr_result1_3)
	Mount_upvr(any_Class_result1_upvr_result1_2, var4_result1)
	Mount_upvr(module_upvr.MainInterface, any_Class_result1_upvr_result1_2)
	TweenService_upvr:Create(var4_result1, TweenInfo_new_result1_upvr, {
		Position = UDim2.new();
	}):Play()
	TweenService_upvr:Create(any_Class_result1_upvr_result1_3, TweenInfo_new_result1_upvr, {
		Position = UDim2.fromScale(0, 0.9);
	}):Play()
	TweenService_upvr:Create(CurrentCamera_upvr, TweenInfo_new_result1_upvr, {
		FieldOfView = 50;
	}):Play()
	TweenService_upvr:Create(ColorCorrectionEffect, TweenInfo_new_result1_upvr, {
		Saturation = 0.2;
		Contrast = 0.2;
	}):Play()
	task.wait(1.5)
	ColorCorrectionEffect:Destroy()
	CurrentCamera_upvr.FieldOfView = 70
	var4_result1:Destroy()
	any_Class_result1_upvr_result1_3:Destroy()
	any_Class_result1_upvr_result1.BackgroundTransparency = 0
	TweenService_upvr:Create(any_Class_result1_upvr_result1, TweenInfo.new(3), {
		BackgroundTransparency = 1;
	}):Play()
end
return module
