-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-14 08:28:26
-- Luau version 6, Types version 3
-- Time taken: 0.003075 seconds

local Modules = game:GetService("ReplicatedStorage"):WaitForChild("Modules")
local module = require(Modules:WaitForChild("UI"):WaitForChild("Quad"))
local Parent = script.Parent
local Class = module.Class
local Mount_upvr = module.Mount
local any_Extend_result1 = Class.Extend()
function any_Extend_result1.Init(arg1, arg2) -- Line 64
	arg2:Default("UsageText", "")
	arg2:Default("Icon", "Description")
	arg2:Default("LayoutOrder", 1)
	arg2:Default("Hover", false)
	arg2:Default("HoverScale", 1.05)
	arg2:Default("Callback", function() -- Line 70
	end)
end
local var4_result1_upvr_7 = Class("TextButton")
local var4_result1_upvr_4 = Class("UIScale")
local var4_result1_upvr_6 = Class("UIStroke")
local var4_result1_upvr_2 = Class("ImageLabel")
local var4_result1_upvr_5 = Class("TextLabel")
local var4_result1_upvr = Class(require(Parent:WaitForChild("Shadow")))
local var4_result1_upvr_3 = Class(require(Parent:WaitForChild("Corner")))
local Event_upvr = module.Event
local module_2_upvr = require(Modules:WaitForChild("Utility"))
local Store_upvr = module.Store
function any_Extend_result1.Render(arg1, arg2) -- Line 73
	--[[ Upvalues[11]:
		[1]: var4_result1_upvr_7 (readonly)
		[2]: var4_result1_upvr_4 (readonly)
		[3]: var4_result1_upvr_6 (readonly)
		[4]: var4_result1_upvr_2 (readonly)
		[5]: var4_result1_upvr_5 (readonly)
		[6]: var4_result1_upvr (readonly)
		[7]: var4_result1_upvr_3 (readonly)
		[8]: Event_upvr (readonly)
		[9]: module_2_upvr (readonly)
		[10]: Mount_upvr (readonly)
		[11]: Store_upvr (readonly)
	]]
	return var4_result1_upvr_7({
		AnchorPoint = Vector2.new(0.5, 0.5);
		Size = UDim2.fromScale(1, 1);
		LayoutOrder = arg2("LayoutOrder");
		BorderSizePixel = 0;
		BackgroundColor3 = Color3.new(0, 0, 0);
		BackgroundTransparency = 0.45;
		Text = "";
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		ZIndex = -1;
		[Event_upvr("MouseEnter")] = function() -- Line 142
			--[[ Upvalues[2]:
				[1]: module_2_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			module_2_upvr.PlaySFX("MouseHover", "UISounds")
			arg1.Hover = true
		end;
		[Event_upvr("MouseLeave")] = function() -- Line 147
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.Hover = false
		end;
		[Event_upvr("MouseButton1Down")] = function(...) -- Line 151
			--[[ Upvalues[2]:
				[1]: arg2 (readonly)
				[2]: module_2_upvr (copied, readonly)
			]]
			if arg2.Callback then
				module_2_upvr.PlaySFX("Click", "UISounds")
				arg2.Callback(...)
			end
		end;
		[Event_upvr.Created] = function(arg1_3) -- Line 158
			--[[ Upvalues[2]:
				[1]: Mount_upvr (copied, readonly)
				[2]: Store_upvr (copied, readonly)
			]]
			Mount_upvr(Store_upvr.GetObject("SideButtons"), arg1_3)
		end;
		var4_result1_upvr_4({
			Scale = arg2("Hover"):With(function(arg1_2, arg2_2) -- Line 91
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
		}), var4_result1_upvr_6({
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
			Color = Color3.new(1, 1, 1);
			Transparency = 0.5;
			Thickness = 1.5;
		}), var4_result1_upvr_2("Icon")({
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.fromScale(0.5, 0.5);
			Size = UDim2.fromScale(0.8, 0.8);
			BackgroundTransparency = 1;
			Image = arg2("Icon");
			ImageColor3 = Color3.new(1, 1, 1);
		}), var4_result1_upvr_5("Usage")({
			AnchorPoint = Vector2.new(0, 0.5);
			Position = UDim2.fromScale(1.25, 0.5);
			Size = UDim2.fromScale(2, 0.5);
			BackgroundColor3 = Color3.new(0, 0, 0);
			BackgroundTransparency = 0.65;
			BorderSizePixel = 0;
			TextColor3 = Color3.new(1, 1, 1);
			FontFace = Font.new("rbxasset://fonts/families/Sarpanch.json", Enum.FontWeight.Bold);
			Visible = arg2("Hover");
			Text = arg2("UsageText");
			TextScaled = true;

			var4_result1_upvr({}), var4_result1_upvr_3({
				Size = 0.25;
			})
		}), var4_result1_upvr({}), var4_result1_upvr_3({})
	})
end
Mount_upvr(game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainInterface"), Class("Frame")("SideButtons")({
	AnchorPoint = Vector2.new(0, 0.5);
	Position = UDim2.new(0, 10, 0.5, 0);
	Size = UDim2.new(0.032, 0, 0.527, 0);
	BackgroundTransparency = 1;

	Class("UIAspectRatioConstraint")("Aspect")({
		AspectRatio = 0.122;
	}), Class("UIListLayout")("ListLayout")({
		Padding = UDim.new(0.01, 0);
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
		SortOrder = Enum.SortOrder.LayoutOrder;
		VerticalAlignment = Enum.VerticalAlignment.Center;
	})
}))
return any_Extend_result1