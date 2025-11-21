-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-14 07:37:44
-- Luau version 6, Types version 3
-- Time taken: 0.008354 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_5_upvr = {}
local workspace_GetServerTimeNow_result1_upvw = workspace:GetServerTimeNow()
local var4_upvw = 1
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_6_upvr = require(Modules:WaitForChild("Utility"))
--local Utility2 = require(Modules:WaitForChild("Utility2"))
local Rolling = Modules:WaitForChild("Rolling")
local UI = Modules:WaitForChild("UI")
local Components = UI:WaitForChild("Components")
local module = require(UI:WaitForChild("Quad"))
local Assets = ReplicatedStorage:WaitForChild("Assets")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local MainInterface = LocalPlayer_upvr:WaitForChild("PlayerGui"):WaitForChild("MainInterface")
local BottomFrame = MainInterface:WaitForChild("BottomFrame")
local AutoRoll = BottomFrame:WaitForChild("AutoRoll")
local QuickRoll_upvr = BottomFrame:WaitForChild("QuickRoll")
local RollButton_upvr = BottomFrame:WaitForChild("RollButton")
local QuickRollI_upvr = BottomFrame:WaitForChild("QuickRollI")
local RollButtonI_upvr = BottomFrame:WaitForChild("RollButtonI")
local NumberValue_upvr = Instance.new("NumberValue")
local Class = module.Class
local Mount_upvr = module.Mount
local Store_upvr = module.Store
local Tween_upvr = module.Tween
local Class_result1 = Class("Frame")
local Class_result1_4 = Class(require(Components:WaitForChild("TextButton")))
local var28_upvr = Class_result1("Background")({
	Size = UDim2.fromScale(1, 1);
	BackgroundTransparency = 1;
	BackgroundColor3 = Color3.new();
	ZIndex = 1;
})
local var30_upvr = Class_result1_4("EquipButton")({
	AnchorPoint = Vector2.new(0.5, 0.5);
	Position = UDim2.fromScale(0.4, 0.85);
	Size = UDim2.fromScale(0.15, 0.05);
	CornerColor3 = Color3.fromRGB(106, 173, 255);
	TextColor3 = Color3.fromRGB(106, 173, 255);
	StrokeColor3 = Color3.fromRGB(106, 173, 255);
	BackgroundColor3 = Color3.fromRGB(106, 173, 255):Lerp(Color3.new(), 0.9);
	CornerSize = 0.25;
	Text = "Equip";
	ZIndex = 3;
	Visible = false;
})
local var32_upvr = Class_result1_4("SkipButton")({
	AnchorPoint = Vector2.new(0.5, 0.5);
	Position = UDim2.fromScale(0.6, 0.85);
	Size = UDim2.fromScale(0.15, 0.05);
	CornerColor3 = Color3.fromRGB(255, 90, 93);
	TextColor3 = Color3.fromRGB(255, 90, 93);
	StrokeColor3 = Color3.fromRGB(255, 90, 93);
	BackgroundColor3 = Color3.fromRGB(255, 90, 93):Lerp(Color3.new(), 0.9);
	CornerSize = 0.25;
	Text = "Skip";
	ZIndex = 3;
	Visible = false;
})
local var25_result1_upvr = Class_result1({
	BackgroundColor3 = Color3.new(1, 1, 1);
	BackgroundTransparency = 0.8;
	ZIndex = 3;
})
module_5_upvr.Buttons = {
	Roll = RollButton_upvr;
	QuickRoll = QuickRoll_upvr;
	AutoRoll = AutoRoll;
	Equip = var30_upvr;
	Skip = var32_upvr;
}
local Class_result1_3_upvr = Class(Components:WaitForChild("Shadow"))
local Class_result1_2_upvr = Class(Components:WaitForChild("Corner"))
local function LoadButton(arg1) -- Line 121
	--[[ Upvalues[5]:
		[1]: module_6_upvr (readonly)
		[2]: Tween_upvr (readonly)
		[3]: Mount_upvr (readonly)
		[4]: Class_result1_3_upvr (readonly)
		[5]: Class_result1_2_upvr (readonly)
	]]
	local Context_upvr = arg1:FindFirstChild("Context")
	local UIScale_upvr = Instance.new("UIScale", arg1)
	if Context_upvr then
		Context_upvr.Text = arg1.Text
		arg1:GetPropertyChangedSignal("Text"):Connect(function() -- Line 128
			--[[ Upvalues[2]:
				[1]: Context_upvr (readonly)
				[2]: arg1 (readonly)
			]]
			Context_upvr.Text = arg1.Text
		end)
	end
	arg1.MouseEnter:Connect(function() -- Line 133
		--[[ Upvalues[4]:
			[1]: module_6_upvr (copied, readonly)
			[2]: Tween_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: UIScale_upvr (readonly)
		]]
		module_6_upvr.PlaySFX("MouseHover", "UISounds")
		Tween_upvr.StopTween(arg1)
		Tween_upvr.RunTween(UIScale_upvr, {
			Easing = "Quart";
			Time = 0.2;
		}, {
			Scale = 1.05;
		})
	end)
	arg1.MouseLeave:Connect(function() -- Line 139
		--[[ Upvalues[3]:
			[1]: Tween_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: UIScale_upvr (readonly)
		]]
		Tween_upvr.StopTween(arg1)
		Tween_upvr.RunTween(UIScale_upvr, {
			Easing = "Quart";
			Time = 0.2;
		}, {
			Scale = 1;
		})
	end)
	Mount_upvr(arg1, Class_result1_3_upvr({}))
	Mount_upvr(arg1, Class_result1_2_upvr({}))
end
local module_2_upvr = require(Rolling:WaitForChild("RollData"))
local module_3_upvr = require(Modules:WaitForChild("RollModule")) -- require(Rolling:WaitForChild("RollModule"))
local function PlayRollEffect(arg1) -- Line 148
	--[[ Upvalues[8]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: module_5_upvr (readonly)
		[3]: module_2_upvr (readonly)
		[4]: module_3_upvr (readonly)
		[5]: Tween_upvr (readonly)
		[6]: Mount_upvr (readonly)
		[7]: var28_upvr (readonly)
		[8]: module_6_upvr (readonly)
	]]
	if LocalPlayer_upvr:GetAttribute("QuickRollEnabled") then
	else
		module_5_upvr:AppearBackground()
		local unpacked_value_1_2, unpacked_value_2, unpacked_value_3, unpacked_value_4 = table.unpack(module_2_upvr.GetRollEffectData())
		local var54 = nil
		for i_3 = unpacked_value_1_2, unpacked_value_2, unpacked_value_3 do
			local any_GetRollUI_result1_3 = module_5_upvr:GetRollUI(module_3_upvr.GetValue(module_2_upvr.GetRollTable(), module_2_upvr.GetLuck()).Value)
			if var54 then
				Tween_upvr.StopTween(var54)
				var54:Destroy()
			end
			any_GetRollUI_result1_3.Position = UDim2.fromScale(0.5, 0.47)
			any_GetRollUI_result1_3.Visible = true
			Mount_upvr(var28_upvr, any_GetRollUI_result1_3)
			module_6_upvr.PlaySFX("SpinningSound", "UISounds")
			task.defer(Tween_upvr.RunTween, any_GetRollUI_result1_3, {
				Time = 0.5;
				Easing = "Quart";
			}, {
				Position = UDim2.fromScale(0.5, 0.5);
			})
			task.wait((i_3) * (module_2_upvr.GetCooldown() / unpacked_value_4))
		end
		module_5_upvr:ClearBackground()
		if arg1 then
			module_5_upvr:DisappearBackground()
		end
	end
end
local function _() -- Line 187, Named "GetMul"
	if math.random(0, 1) == 0 then
		return 1
	end
	return -1
end
local Position_upvr = var32_upvr.Position
local Position_upvr_2 = var30_upvr.Position
local CollectionService_upvr = game:GetService("CollectionService")
function module_5_upvr.AppearBackground(arg1) -- Line 224
	--[[ Upvalues[6]:
		[1]: QuickRollI_upvr (readonly)
		[2]: RollButtonI_upvr (readonly)
		[3]: RollButton_upvr (readonly)
		[4]: QuickRoll_upvr (readonly)
		[5]: Tween_upvr (readonly)
		[6]: var28_upvr (readonly)
	]]
	QuickRollI_upvr.Visible = true
	RollButtonI_upvr.Visible = true
	RollButton_upvr.Visible = false
	QuickRoll_upvr.Visible = false
	Tween_upvr.StopTween(var28_upvr)
	Tween_upvr.RunTween(var28_upvr, {
		Time = 0.2;
		Easing = "Linear";
	}, {
		BackgroundTransparency = 0.8;
	})
end
function module_5_upvr.DisappearBackground(arg1) -- Line 233
	--[[ Upvalues[8]:
		[1]: QuickRollI_upvr (readonly)
		[2]: RollButtonI_upvr (readonly)
		[3]: RollButton_upvr (readonly)
		[4]: QuickRoll_upvr (readonly)
		[5]: var30_upvr (readonly)
		[6]: var32_upvr (readonly)
		[7]: Tween_upvr (readonly)
		[8]: var28_upvr (readonly)
	]]
	QuickRollI_upvr.Visible = false
	RollButtonI_upvr.Visible = false
	RollButton_upvr.Visible = true
	QuickRoll_upvr.Visible = true
	var30_upvr.Visible = false
	var32_upvr.Visible = false
	Tween_upvr.StopTween(var28_upvr)
	Tween_upvr.RunTween(var28_upvr, {
		Time = 0.2;
		Easing = "Linear";
	}, {
		BackgroundTransparency = 1;
	})
end
function module_5_upvr.ClearBackground(arg1) -- Line 244
	--[[ Upvalues[2]:
		[1]: var28_upvr (readonly)
		[2]: Tween_upvr (readonly)
	]]
	local class_TextLabel = var28_upvr:FindFirstChildOfClass("TextLabel")
	if class_TextLabel then
		Tween_upvr.StopTween(class_TextLabel)
		class_TextLabel:Destroy()
	end
end
local TiersUI_upvr = Assets:WaitForChild("TiersUI")
local TierSkinUIs_upvr = Assets:WaitForChild("TierSkinUIs")
function module_5_upvr.GetRollUI(arg1, arg2, arg3, arg4) -- Line 253
	--[[ Upvalues[2]:
		[1]: TiersUI_upvr (readonly)
		[2]: TierSkinUIs_upvr (readonly)
	]]
	local unpacked_value_1, unpacked_value_2_2 = table.unpack(arg2:split('_'))
	local clone = TiersUI_upvr:WaitForChild(unpacked_value_1):Clone()
	local Rarity_2 = clone:FindFirstChild("Rarity")
	if unpacked_value_2_2 then
		local clone_2 = TierSkinUIs_upvr:WaitForChild(unpacked_value_1):WaitForChild(unpacked_value_2_2):Clone()
		clone_2.Name = "Mutation"
		clone_2.Parent = clone
	end
	if arg4 and clone:FindFirstChild("Title") then
		clone:FindFirstChild("Title"):Destroy()
	end
	if not arg3 and Rarity_2 then
		Rarity_2:Destroy()
	end
	return clone
end
function module_5_upvr.DisplayWarning(arg1, arg2) -- Line 276
	--[[ Upvalues[1]:
		[1]: Store_upvr (readonly)
	]]
	local any_GetObject_result1 = Store_upvr.GetObject("WarningFrame")
	local var80 = arg2
	if not var80 then
		var80 = {}
	end
	for i, v in pairs(var80) do
		any_GetObject_result1[i] = v
	end
	return any_GetObject_result1:GetResult()
end
function module_5_upvr.DisplayMessage(arg1, arg2) -- Line 286
	--[[ Upvalues[1]:
		[1]: Store_upvr (readonly)
	]]
	local any_GetObject_result1_2 = Store_upvr.GetObject("NotifyFrame")
	local var89 = arg2
	if not var89 then
		var89 = {}
	end
	for i_2, v_2 in pairs(var89) do
		any_GetObject_result1_2[i_2] = v_2
	end
	return any_GetObject_result1_2:GetResult()
end
function module_5_upvr.PlayRollEffect(arg1, arg2) -- Line 296
	--[[ Upvalues[1]:
		[1]: PlayRollEffect (readonly)
	]]
	return task.defer(PlayRollEffect, arg2)
end
function module_5_upvr.UpdateValues(arg1, arg2, arg3) -- Line 300
	--[[ Upvalues[2]:
		[1]: workspace_GetServerTimeNow_result1_upvw (read and write)
		[2]: var4_upvw (read and write)
	]]
	workspace_GetServerTimeNow_result1_upvw = arg2
	var4_upvw = arg3
end
--local module_4_upvr = require(ReplicatedStorage:WaitForChild("Storage"):WaitForChild("RarityDB"))
function module_5_upvr.ShowResponse(arg1, arg2) -- Line 305
	--[[ Upvalues[8]:
		[1]: module_4_upvr (readonly)
		[2]: module_5_upvr (readonly)
		[3]: module_6_upvr (readonly)
		[4]: Mount_upvr (readonly)
		[5]: var28_upvr (readonly)
		[6]: Tween_upvr (readonly)
		[7]: var30_upvr (readonly)
		[8]: var32_upvr (readonly)
	]]
	local any_GetRollUI_result1 = module_5_upvr:GetRollUI(arg2.Value, true)
	local Rarity = any_GetRollUI_result1:FindFirstChild("Rarity")
	local var101
	if Rarity then
		var101 = `1 in {module_6_upvr.format_int(arg2.Rarity)}`
		Rarity.Text = var101
		var101 = arg2.Bypassed
		if not var101 then
			var101 = #arg2.FromWhat
			if 0 < var101 then
				var101 = Rarity:Clone()
				var101.Size = UDim2.fromScale(1, 1)
				var101.AnchorPoint = Vector2.new(0.5, 0)
				var101.Position = UDim2.fromScale(0.5, 1.1)
				var101.Text = `[From {string.gsub(arg2.FromWhat, "Is", "")}]`
				var101.Parent = Rarity
			end
		end
	end
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var101 = UDim2.fromScale(0.5, 0.5)
		return var101
	end
	if not arg2.PlayCutscene or not INLINED_2() then
		var101 = UDim2.fromScale(0.5, 0.47)
	end
	any_GetRollUI_result1.Position = var101
	var101 = true
	any_GetRollUI_result1.Visible = var101
	var101 = Mount_upvr
	var101(var28_upvr, any_GetRollUI_result1)
	var101 = arg2.PlayCutscene
	if not var101 then
		var101 = task.defer
		var101(Tween_upvr.RunTween, any_GetRollUI_result1, {
			Time = 0.5;
			Easing = "Quart";
		}, {
			Position = UDim2.fromScale(0.5, 0.5);
		})
	else
		any_GetRollUI_result1:AddTag("Shake")
	end
	var101 = var30_upvr
	var101.Visible = true
	var101 = var32_upvr
	var101.Visible = true
end
local TweenService_upvr = game:GetService("TweenService")
function module_5_upvr.SetShake(arg1, arg2, arg3, arg4) -- Line 342
	--[[ Upvalues[2]:
		[1]: NumberValue_upvr (readonly)
		[2]: TweenService_upvr (readonly)
	]]
	NumberValue_upvr.Value = arg2
	if arg4 then
		task.wait(arg4)
	end
	TweenService_upvr:Create(NumberValue_upvr, arg3, {
		Value = 0;
	}):Play()
end
function module_5_upvr.GetShake(arg1) -- Line 350
	--[[ Upvalues[1]:
		[1]: NumberValue_upvr (readonly)
	]]
	return NumberValue_upvr
end
Mount_upvr(RollButton_upvr, var25_result1_upvr)
Mount_upvr(MainInterface, var28_upvr)
Mount_upvr(MainInterface, var32_upvr)
Mount_upvr(MainInterface, var30_upvr)
Mount_upvr(MainInterface, Class(require(Components:WaitForChild("WarningFrame")))("WarningFrame")({}))
Mount_upvr(MainInterface, Class(Components:WaitForChild("NotifyFrame"))("NotifyFrame")({}))
LoadButton(RollButton_upvr)
LoadButton(AutoRoll)
LoadButton(QuickRoll_upvr)
--[[game:GetService("RunService").RenderStepped:Connect(function(arg1) -- Line 191, Named "OnRenderStepped"
	--[[ Upvalues[9]:
		[1]: workspace_GetServerTimeNow_result1_upvw (read and write)
		[2]: var4_upvw (read and write)
		[3]: var25_result1_upvr (readonly)
		[4]: NumberValue_upvr (readonly)
		[5]: var32_upvr (readonly)
		[6]: Position_upvr (readonly)
		[7]: var30_upvr (readonly)
		[8]: Position_upvr_2 (readonly)
		[9]: CollectionService_upvr (readonly)
	
	-- KONSTANTERROR: [0] 1. Error Block 45 start (CF ANALYSIS FAILED)
	if workspace:GetServerTimeNow() <= workspace_GetServerTimeNow_result1_upvw and 0 < var4_upvw then
		var25_result1_upvr.Size = UDim2.fromScale(math.max(workspace_GetServerTimeNow_result1_upvw - workspace:GetServerTimeNow(), 0) / var4_upvw, 1)
	else
		var25_result1_upvr.Size = UDim2.fromScale(0, 1)
	end
	local var61 = NumberValue_upvr
	if math.random(0, 1) == 0 then
		var61 = 1
	else
		var61 = -1
	end
	if math.random(0, 1) == 0 then
		-- KONSTANTWARNING: GOTO [73] #55
	end
	-- KONSTANTERROR: [0] 1. Error Block 45 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [72] 54. Error Block 49 start (CF ANALYSIS FAILED)
	local udim2 = UDim2.fromScale(var61.Value * var61, NumberValue_upvr.Value * -1)
	var32_upvr.Position = Position_upvr + udim2
	var30_upvr.Position = Position_upvr_2 + udim2
	if math.random(0, 1) == 0 then
		-- KONSTANTWARNING: GOTO [102] #78
	end
	-- KONSTANTERROR: [72] 54. Error Block 49 end (CF ANALYSIS FAILED)
end)]]
return module_5_upvr