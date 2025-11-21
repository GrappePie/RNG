-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-14 08:27:29
-- Luau version 6, Types version 3
-- Time taken: 0.004814 seconds

local Modules = game:GetService("ReplicatedStorage"):WaitForChild("Modules")
local UI = Modules:WaitForChild("UI")
local module_upvr = require(UI:WaitForChild("Quad"))
local Class = module_upvr.Class
local var4_result1_upvr_8 = Class("TextLabel")
local var4_result1_upvr_3 = Class("UIStroke")
local Components = UI:WaitForChild("Components")
local any_Extend_result1 = Class.Extend()
var4_result1_upvr_8.FontFace = module_upvr.FontBold
var4_result1_upvr_3.Color = Color3.new(1, 1, 1)
var4_result1_upvr_3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
var4_result1_upvr_3.Thickness = 1.5
var4_result1_upvr_3.Transparency = 0.5
local function ToGradient_upvr(arg1, arg2) -- Line 57, Named "ToGradient"
	if typeof(arg2) == "Color3" then
		return ColorSequence.new(arg2:Lerp(Color3.new(1, 1, 1), 0.3), arg2)
	end
	return arg2
end
local Signal_upvr = module_upvr.Signal
function any_Extend_result1.Init(arg1, arg2) -- Line 62
	--[[ Upvalues[1]:
		[1]: Signal_upvr (readonly)
	]]
	arg2:Default("Size", UDim2.fromScale(0.22, 0.15))
	arg2:Default("Position", UDim2.fromScale(0.5, 0.72))
	arg2:Default("HeaderText", "[ Warning ]")
	arg2:Default("Description", "Description")
	arg2:Default("Color3", Color3.new(1, 1, 1))
	arg2:Default("YesButtonColor3", Color3.fromRGB(107, 255, 105))
	arg2:Default("YesButtonText", "Yes")
	arg2:Default("NoButtonColor3", Color3.fromRGB(255, 35, 35))
	arg2:Default("NoButtonText", "No")
	arg1.OnSelected = Signal_upvr.Bindable.New()
end
local Class_result1_upvr = Class("Frame")
local var4_result1_upvr = Class("ImageButton")
local var4_result1_upvr_6 = Class("ImageLabel")
local Event_upvr = module_upvr.Event
local module_upvr_2 = require(Modules:WaitForChild("Utility"))
local var4_result1_upvr_7 = Class(Components:WaitForChild("Corner"))
local var4_result1_upvr_2 = Class(Components:WaitForChild("TextButton"))
local var4_result1_upvr_5 = Class("UIAspectRatioConstraint")
local var4_result1_upvr_4 = Class(Components:WaitForChild("Shadow"))
function any_Extend_result1.Render(arg1, arg2) -- Line 76
	--[[ Upvalues[13]:
		[1]: Class_result1_upvr (readonly)
		[2]: var4_result1_upvr_3 (readonly)
		[3]: var4_result1_upvr_8 (readonly)
		[4]: var4_result1_upvr (readonly)
		[5]: var4_result1_upvr_6 (readonly)
		[6]: Event_upvr (readonly)
		[7]: module_upvr_2 (readonly)
		[8]: var4_result1_upvr_7 (readonly)
		[9]: module_upvr (readonly)
		[10]: var4_result1_upvr_2 (readonly)
		[11]: ToGradient_upvr (readonly)
		[12]: var4_result1_upvr_5 (readonly)
		[13]: var4_result1_upvr_4 (readonly)
	]]
	local module = {
		AnchorPoint = Vector2.new(0.5, 0.5);
		Size = arg2("Size");
		Position = arg2("Position");
		BackgroundColor3 = Color3.new(0, 0, 0);
		BackgroundTransparency = 0.2;
		BorderSizePixel = 0;
		ZIndex = 3;
		Visible = false;
		SelectionGroup = true;
	}
	local tbl = {
		AnchorPoint = Vector2.new(0.5, 0);
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(0.5, 0.7);
		Size = UDim2.fromScale(0.95, 0.23);
	}
	local tbl_2 = {
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = Color3.fromRGB(76, 76, 76);
		BackgroundTransparency = 0.7;
		GlobalColor3 = arg2("YesButtonColor3"):With(ToGradient_upvr);
		Text = arg2("YesButtonText");
		Size = UDim2.fromScale(0.47, 1);
		Position = UDim2.fromScale(0.235, 0.5);
		HoverScale = 1.02;
		Selectable = true;
	}
	local function Callback() -- Line 161
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.OnSelected:Fire(true)
	end
	tbl_2.Callback = Callback
	tbl[1] = var4_result1_upvr_2(tbl_2)
	tbl[2] = var4_result1_upvr_2({
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = Color3.fromRGB(76, 76, 76);
		BackgroundTransparency = 0.7;
		GlobalColor3 = arg2("NoButtonColor3"):With(ToGradient_upvr);
		Text = arg2("NoButtonText");
		Size = UDim2.fromScale(0.47, 1);
		Position = UDim2.fromScale(0.765, 0.5);
		HoverScale = 1.02;
		Selectable = true;
		Callback = function() -- Line 177, Named "Callback"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.OnSelected:Fire(false)
		end;
	})
	module[1] = var4_result1_upvr_3({})
	module[2] = var4_result1_upvr_8({
		TextColor3 = Color3.new(1, 1, 1);
		Text = arg2("HeaderText");
		Size = UDim2.fromScale(1, 0.15);
		TextScaled = true;
		BackgroundColor3 = Color3.new();
		BackgroundTransparency = 0.65;

		var4_result1_upvr({
			BackgroundTransparency = 1;
			Position = UDim2.fromScale(0.92, 0);
			Size = UDim2.fromScale(1, 1);
			SizeConstraint = Enum.SizeConstraint.RelativeYY;
			Selectable = true;
			[Event_upvr("MouseButton1Down")] = function() -- Line 114
				--[[ Upvalues[2]:
					[1]: module_upvr_2 (copied, readonly)
					[2]: arg1 (readonly)
				]]
				module_upvr_2.PlaySFX("Click", "UISounds")
				arg1.OnSelected:Fire(nil)
			end;
			var4_result1_upvr_6({
				AnchorPoint = Vector2.new(0.5, 0.5);
				Position = UDim2.fromScale(0.5, 0.5);
				Image = "http://www.roblox.com/asset/?id=6031094678";
				Size = UDim2.fromScale(0.8, 0.8);
				SizeConstraint = Enum.SizeConstraint.RelativeYY;
				BackgroundTransparency = 1;
			})
		}), var4_result1_upvr_3({}), var4_result1_upvr_7({})
	})
	module[3] = var4_result1_upvr_8({
		AnchorPoint = Vector2.new(0.5, 0);
		Size = UDim2.fromScale(0.95, 0.4);
		Position = UDim2.fromScale(0.5, 0.17);
		BackgroundTransparency = 1;
		FontFace = module_upvr.FontDefault;
		TextColor3 = arg2("Color3");
		Text = arg2("Description");
		TextScaled = true;
		RichText = true;
	})
	module[4] = Class_result1_upvr({
		AnchorPoint = Vector2.new(0.5, 0);
		BackgroundColor3 = arg2("Color3");
		Size = UDim2.new(1, 0, 0, 1);
		Position = UDim2.fromScale(0.5, 0.6);
	})
	module[5] = Class_result1_upvr(tbl)
	module[6] = var4_result1_upvr_5({
		AspectRatio = 2.423;
	})
	module[7] = var4_result1_upvr_4({})
	module[Event_upvr.CreatedAsync] = function(arg1_2) -- Line 189
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.__frame = arg1_2
	end
	return Class_result1_upvr(module)
end
function any_Extend_result1.IsOpened(arg1) -- Line 195
	return arg1.__frame.Visible
end
function any_Extend_result1.GetResult(arg1, arg2) -- Line 199
	local var31
	if arg1.__frame.Visible then return end
	var31 = true
	arg1.__frame.Visible = var31
	local any_Wait_result1 = arg1.OnSelected:Wait()
	var31 = arg1.__frame
	var31.Visible = false
	if arg2 then
		return any_Wait_result1
	end
	if any_Wait_result1 ~= true then
		var31 = false
	else
		var31 = true
	end
	return var31
end
return any_Extend_result1