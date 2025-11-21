-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-14 08:26:19
-- Luau version 6, Types version 3
-- Time taken: 0.006039 seconds

local Modules = game:GetService("ReplicatedStorage"):WaitForChild("Modules")
local UI = Modules:WaitForChild("UI")
local module_upvr = require(UI:WaitForChild("Quad"))
local Components = UI:WaitForChild("Components")
local function var5_upvr() -- Line 14
end
local Class = module_upvr.Class
local any_Extend_result1 = Class.Extend()
local Signal_upvr = module_upvr.Signal
function any_Extend_result1.Init(arg1, arg2) -- Line 68
	--[[ Upvalues[2]:
		[1]: var5_upvr (readonly)
		[2]: Signal_upvr (readonly)
	]]
	arg2:Default("Visible", true)
	arg2:Default("Size", UDim2.fromOffset(200, 50))
	arg2:Default("Position", UDim2.new())
	arg2:Default("AnchorPoint", Vector2.new())
	arg2:Default("SizeConstraint", Enum.SizeConstraint.RelativeXY)
	arg2:Default("ZIndex", 1)
	arg2:Default("BackgroundColor3", Color3.new(0, 0, 0))
	arg2:Default("BackgroundTransparency", 0.4)
	arg2:Default("GlobalColor3", ColorSequence.new(Color3.new(1, 1, 1)))
	arg2:Default("Disabled", false)
	arg2:Default("Processing", false)
	arg2:Default("Text", "Button")
	arg2:Default("TextColor3", Color3.new(1, 1, 1))
	arg2:Default("TextTransparency", 0)
	arg2:Default("TextSize", UDim2.fromScale(1, 0.75))
	arg2:Default("CornerSize", 0.2)
	arg2:Default("CornerColor3", Color3.new(1, 1, 1))
	arg2:Default("StrokeColor3", Color3.new(1, 1, 1))
	arg2:Default("StrokeTransparency", 0.5)
	arg2:Default("StrokeThickness", 1.5)
	arg2:Default("ShadowVisible", true)
	arg2:Default("ShadowTransparency", 0)
	arg2:Default("Hover", false)
	arg2:Default("HoverScale", 1.05)
	arg2:Default("Callback", var5_upvr)
	arg1.ClickedWhenDisabled = Signal_upvr.Bindable.New()
end
local Class_result1_upvr = Class("ImageButton")
local var6_result1_upvr = Class("UIScale")
local Event_upvr = module_upvr.Event
local module_upvr_2 = require(Modules:WaitForChild("Utility"))
local Class_result1_upvr_5 = Class("Frame")
local Class_result1_upvr_2 = Class("UIGradient")
local Class_result1_upvr_4 = Class("TextLabel")
local var6_result1_upvr_2 = Class("UIStroke")
local Class_result1_upvr_3 = Class(require(Components:WaitForChild("Corner")))
local Class_result1_upvr_6 = Class(require(Components:WaitForChild("Shadow")))
function any_Extend_result1.Render(arg1, arg2) -- Line 98
	--[[ Upvalues[11]:
		[1]: Class_result1_upvr (readonly)
		[2]: var6_result1_upvr (readonly)
		[3]: Event_upvr (readonly)
		[4]: module_upvr_2 (readonly)
		[5]: Class_result1_upvr_5 (readonly)
		[6]: Class_result1_upvr_2 (readonly)
		[7]: Class_result1_upvr_4 (readonly)
		[8]: module_upvr (readonly)
		[9]: var6_result1_upvr_2 (readonly)
		[10]: Class_result1_upvr_3 (readonly)
		[11]: Class_result1_upvr_6 (readonly)
	]]
	return Class_result1_upvr({
		Visible = arg2("Visible");
		Size = arg2("Size");
		Position = arg2("Position");
		AnchorPoint = arg2("AnchorPoint");
		SizeConstraint = arg2("SizeConstraint");
		ZIndex = arg2("ZIndex");
		BackgroundColor3 = arg2("BackgroundColor3");
		BackgroundTransparency = arg2("BackgroundTransparency");
		[Event_upvr("MouseButton1Down")] = function(...) -- Line 204
			--[[ Upvalues[2]:
				[1]: arg2 (readonly)
				[2]: module_upvr_2 (copied, readonly)
			]]
			if not arg2.Disabled and not arg2.Processing and arg2.Callback then
				module_upvr_2.PlaySFX("Click", "UISounds")
				arg2.Callback(...)
			end
		end;
		[Event_upvr("MouseEnter")] = function(arg1_9) -- Line 211
			--[[ Upvalues[3]:
				[1]: arg2 (readonly)
				[2]: module_upvr_2 (copied, readonly)
				[3]: arg1 (readonly)
			]]
			if not arg2.Disabled and not arg2.Processing then
				module_upvr_2.PlaySFX("MouseHover", "UISounds")
				arg1.Hover = true
			end
		end;
		[Event_upvr("MouseLeave")] = function(arg1_10) -- Line 218
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.Hover = false
		end;
		[Event_upvr.Created] = function(arg1_11) -- Line 222
			--[[ Upvalues[2]:
				[1]: arg2 (readonly)
				[2]: arg1 (readonly)
			]]
			arg2("Disabled,Processing"):Observe(function() -- Line 223
				--[[ Upvalues[2]:
					[1]: arg2 (copied, readonly)
					[2]: arg1 (copied, readonly)
				]]
				if arg2.Disabled or arg2.Processing then
					arg1.Hover = false
				end
			end)
		end;
		var6_result1_upvr({
			Scale = arg2("Hover"):With(function(arg1_2, arg2_2) -- Line 110
				--[[ Upvalues[1]:
					[1]: arg2 (readonly)
				]]
				if arg2_2 then
					return arg2.HoverScale
				end
				return 1
			end):Tween({
				Easing = "Quart";
				Time = 0.2;
			});
		}), Class_result1_upvr({
			Size = UDim2.fromScale(1, 1);
			BackgroundTransparency = 0.6;
			BackgroundColor3 = Color3.new();
			ZIndex = 2;
			Visible = arg2("Disabled");
			[Event_upvr("MouseButton1Down")] = function(...) -- Line 126
				--[[ Upvalues[3]:
					[1]: arg2 (readonly)
					[2]: module_upvr_2 (copied, readonly)
					[3]: arg1 (readonly)
				]]
				if arg2.Disabled then
					module_upvr_2.PlaySFX("Click", "UISounds")
					arg1.ClickedWhenDisabled:Fire(...)
				end
			end;
		}), Class_result1_upvr({
			Size = UDim2.fromScale(1, 1);
			BackgroundTransparency = 0.6;
			BackgroundColor3 = Color3.new();
			ZIndex = 2;
			Visible = arg2("Processing");

			Class_result1_upvr_5({
				Size = UDim2.fromScale(1, 1);

				Class_result1_upvr_2({
					[Event_upvr.CreatedAsync] = function(arg1_3) -- Line 145
						arg1_3:SetAttribute("Follow", "Process")
					end;
				})
			})
		}), Class_result1_upvr_4({
			Text = arg2("Text");
			TextColor3 = arg2("TextColor3");
			TextTransparency = arg2("TextTransparency");
			Size = arg2("TextSize");
			TextScaled = true;
			BackgroundTransparency = 1;
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.fromScale(0.5, 0.5);
			FontFace = module_upvr.FontBold;

			Class_result1_upvr_2({
				Rotation = 90;
				Color = arg2("GlobalColor3"):With(function(arg1_4, arg2_3) -- Line 165
					if typeof(arg2_3) == "Color3" then
						return ColorSequence.new(arg2_3)
					end
					return arg2_3
				end);
			})
		}), Class_result1_upvr_2({
			Rotation = 90;
			Color = arg2("GlobalColor3"):With(function(arg1_5, arg2_4) -- Line 171
				if typeof(arg2_4) == "Color3" then
					return ColorSequence.new(arg2_4)
				end
				return arg2_4
			end);
		}), var6_result1_upvr_2({
			Color = arg2("StrokeColor3");
			Transparency = arg2("StrokeTransparency");
			Thickness = arg2("StrokeThickness");

			Class_result1_upvr_2({
				Rotation = 90;
				Color = arg2("GlobalColor3"):With(function(arg1_6, arg2_5) -- Line 181
					if typeof(arg2_5) == "Color3" then
						return ColorSequence.new(arg2_5)
					end
					return arg2_5
				end);
			})
		}), Class_result1_upvr_3({
			Size = arg2("CornerSize");
			Color3 = arg2("CornerColor3");

			Class_result1_upvr_2({
				Rotation = 90;
				Color = arg2("GlobalColor3"):With(function(arg1_7, arg2_6) -- Line 191
					if typeof(arg2_6) == "Color3" then
						return ColorSequence.new(arg2_6)
					end
					return arg2_6
				end);
			})
		}), Class_result1_upvr_6({
			Visible = arg2("ShadowVisible");
			Transparency = arg2("ShadowTransparency");
			[Event_upvr.Created] = function(arg1_8) -- Line 199
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1._Shadow = arg1_8
			end;
		})
	})
end
return any_Extend_result1