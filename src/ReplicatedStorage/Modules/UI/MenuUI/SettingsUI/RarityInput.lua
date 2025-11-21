-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-14 21:40:43
-- Luau version 6, Types version 3
-- Time taken: 0.005372 seconds

local Modules = game:GetService("ReplicatedStorage"):WaitForChild("Modules")
local UI = Modules:WaitForChild("UI")
local module = require(UI:WaitForChild("Quad"))
local Class = module.Class
local Store = module.Store
local Class_result1_upvr_3 = Class("TextLabel")
local Class_result1_upvr_2 = Class("TextButton")
local Class_result1_upvr = Class("UIStroke")
local var5_result1_upvr_2 = Class("Frame")
local var5_result1_upvr = Class("UIGradient")
local var5_result1_upvr_4 = Class("TextBox")
local any_Extend_result1 = Class.Extend()
Class("UIListLayout").SortOrder = Enum.SortOrder.LayoutOrder
var5_result1_upvr_2.BackgroundColor3 = Color3.new()
var5_result1_upvr_2.BorderSizePixel = 0
Class("CanvasGroup").BorderSizePixel = 0
Class_result1_upvr.Color = Color3.new(1, 1, 1)
Class_result1_upvr.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Class_result1_upvr.Thickness = 1.5
Class_result1_upvr.Transparency = 0.5
Class_result1_upvr_3.TextColor3 = Color3.new(1, 1, 1)
Class_result1_upvr_3.FontFace = module.FontBold
Class_result1_upvr_3.BorderSizePixel = 0
Class_result1_upvr_3.BackgroundColor3 = Color3.new()
var5_result1_upvr_4.TextColor3 = Color3.new(1, 1, 1)
var5_result1_upvr_4.FontFace = module.FontDefault
var5_result1_upvr_4.BorderSizePixel = 0
var5_result1_upvr_4.BackgroundColor3 = Color3.new()
Class_result1_upvr_2.TextColor3 = Color3.new(1, 1, 1)
Class_result1_upvr_2.FontFace = module.FontBold
Class_result1_upvr_2.BorderSizePixel = 0
Class_result1_upvr_2.BackgroundColor3 = Color3.new()
var5_result1_upvr.Rotation = 90
function any_Extend_result1.Init(arg1, arg2) -- Line 77
	arg2:Default("Name", "SkipAuraEffect")
	arg2:Default("EnabledName", "SkipAuraEffectEnabled")
	arg2:Default("HasEnabled", true)
	arg2:Default("Text", "Cutscene Skip Rarity")
	arg2:Default("DefaultValue", 1000)
	arg2:Default("Hint", "")
	arg2:Default("Order", 0)
	arg2:Default("CanModify", true)
end
local Event_upvr = module.Event
local module_upvr = require(Modules:WaitForChild("Utility"))
local any_GetStore_result1_upvr = Store.GetStore("Global")
local ColorSequence_new_result1_upvr = ColorSequence.new(Color3.fromHex("aaff9d"), Color3.fromHex("6bff60"))
local var5_result1_upvr_3 = Class(UI:WaitForChild("Components"):WaitForChild("Corner"))
local any_GetStore_result1_upvr_2 = Store.GetStore("PlayerSettings")
local any_GetStore_result1_upvr_3 = Store.GetStore("PlayerSettingsPre")
local Mount_upvr = module.Mount
local var5_result1_upvr_5 = Class("ImageLabel")
function any_Extend_result1.Render(arg1, arg2) -- Line 88
	--[[ Upvalues[15]:
		[1]: var5_result1_upvr_2 (readonly)
		[2]: Class_result1_upvr_3 (readonly)
		[3]: Class_result1_upvr_2 (readonly)
		[4]: Event_upvr (readonly)
		[5]: module_upvr (readonly)
		[6]: any_GetStore_result1_upvr (readonly)
		[7]: var5_result1_upvr (readonly)
		[8]: ColorSequence_new_result1_upvr (readonly)
		[9]: Class_result1_upvr (readonly)
		[10]: var5_result1_upvr_3 (readonly)
		[11]: var5_result1_upvr_4 (readonly)
		[12]: any_GetStore_result1_upvr_2 (readonly)
		[13]: any_GetStore_result1_upvr_3 (readonly)
		[14]: Mount_upvr (readonly)
		[15]: var5_result1_upvr_5 (readonly)
	]]
	return var5_result1_upvr_2({
		LayoutOrder = arg2("Order");
		BackgroundTransparency = 0.5;
		Size = UDim2.fromScale(1, 0.12);
		[Event_upvr.Created] = function(arg1_5) -- Line 168
			--[[ Upvalues[10]:
				[1]: arg2 (readonly)
				[2]: Mount_upvr (copied, readonly)
				[3]: Class_result1_upvr_2 (copied, readonly)
				[4]: var5_result1_upvr_5 (copied, readonly)
				[5]: any_GetStore_result1_upvr_2 (copied, readonly)
				[6]: Event_upvr (copied, readonly)
				[7]: module_upvr (copied, readonly)
				[8]: any_GetStore_result1_upvr_3 (copied, readonly)
				[9]: Class_result1_upvr (copied, readonly)
				[10]: var5_result1_upvr_3 (copied, readonly)
			]]
			if arg2.HasEnabled then
				Mount_upvr(arg1_5, Class_result1_upvr_2({
					AnchorPoint = Vector2.new(0, 0.5);
					BackgroundTransparency = 0.8;
					BackgroundColor3 = Color3.new();
					Position = UDim2.fromScale(0.95, 0.5);
					TextTransparency = 1;
					Text = "";
					Size = UDim2.fromScale(0.49, 0.49);
					SizeConstraint = Enum.SizeConstraint.RelativeYY;
					ZIndex = 3;
					[Event_upvr("MouseButton1Down")] = function() -- Line 192
						--[[ Upvalues[4]:
							[1]: arg2 (copied, readonly)
							[2]: module_upvr (copied, readonly)
							[3]: any_GetStore_result1_upvr_3 (copied, readonly)
							[4]: any_GetStore_result1_upvr_2 (copied, readonly)
						]]
						if arg2.CanModify then
							module_upvr.PlaySFX("Click", "UISounds")
							any_GetStore_result1_upvr_3[arg2.EnabledName] = not any_GetStore_result1_upvr_2[arg2.EnabledName]
						end
					end;

					var5_result1_upvr_5({
						BackgroundColor3 = Color3.new(1, 1, 1);
						AnchorPoint = Vector2.new(0.5, 0.5);
						Position = UDim2.fromScale(0.5, 0.5);
						Size = UDim2.fromScale(0.95, 0.95);
						BackgroundTransparency = 1;
						Image = "http://www.roblox.com/asset/?id=6031068421";
						Visible = any_GetStore_result1_upvr_2(arg2.EnabledName);
					}), Class_result1_upvr({}), var5_result1_upvr_3({})
				}))
				Mount_upvr(arg1_5, Class_result1_upvr_2({
					Size = UDim2.fromScale(1, 1);
					BackgroundTransparency = 0.4;
					Text = "Disabled";
					TextScaled = true;
					TextColor3 = Color3.new(1, 0.262745, 0.262745);
					AutoButtonColor = false;
					ZIndex = 2;
					Visible = any_GetStore_result1_upvr_2(arg2.EnabledName):With(function(arg1_6, arg2_4) -- Line 213
						return not arg2_4
					end);

					var5_result1_upvr_3({
						Color3 = Color3.new(1, 0.262745, 0.262745);
					})
				}))
			end
		end;

		Class_result1_upvr_3({
			BackgroundTransparency = 1;
			TextXAlignment = Enum.TextXAlignment.Left;
			TextScaled = true;
			AnchorPoint = Vector2.new(0, 0.5);
			Position = UDim2.fromScale(0.02, 0.45);
			Size = UDim2.fromScale(0.4, 0.8);
			Text = arg2("Text");
		}), Class_result1_upvr_2({
			AnchorPoint = Vector2.new(0, 0.5);
			Position = UDim2.fromScale(0.44, 0.5);
			Size = UDim2.fromScale(0.6, 0.6);
			SizeConstraint = Enum.SizeConstraint.RelativeYY;
			Text = '?';
			TextScaled = true;
			Visible = arg2("Hint"):With(function(arg1_2, arg2_2) -- Line 112
				local var27
				if 0 >= #arg2_2 then
					var27 = false
				else
					var27 = true
				end
				return var27
			end);
			[Event_upvr("MouseButton1Down")] = function() -- Line 114
				--[[ Upvalues[3]:
					[1]: module_upvr (copied, readonly)
					[2]: any_GetStore_result1_upvr (copied, readonly)
					[3]: arg2 (readonly)
				]]
				module_upvr.PlaySFX("Click", "UISounds")
				any_GetStore_result1_upvr.HelpText = arg2.Hint
				any_GetStore_result1_upvr.HelpVisible = true
			end;

			var5_result1_upvr({
				Color = ColorSequence_new_result1_upvr;
			}), Class_result1_upvr({var5_result1_upvr({
				Color = ColorSequence_new_result1_upvr;
			})}), var5_result1_upvr_3({var5_result1_upvr({
				Color = ColorSequence_new_result1_upvr;
			})})
		}), var5_result1_upvr_4({
			AnchorPoint = Vector2.new(0, 0.5);
			BackgroundTransparency = 0.8;
			BackgroundColor3 = Color3.new();
			Position = UDim2.fromScale(0.49, 0.5);
			Text = any_GetStore_result1_upvr_2(arg2.Name);
			Size = UDim2.fromScale(0.5, 0.75);
			TextScaled = true;
			PlaceholderText = arg2("DefaultValue");
			[Event_upvr("FocusLost")] = function(arg1_3) -- Line 135
				--[[ Upvalues[4]:
					[1]: arg2 (readonly)
					[2]: any_GetStore_result1_upvr_2 (copied, readonly)
					[3]: module_upvr (copied, readonly)
					[4]: any_GetStore_result1_upvr_3 (copied, readonly)
				]]
				local CanModify = arg2.CanModify
				if CanModify then
					if arg2.HasEnabled then
						CanModify = any_GetStore_result1_upvr_2[arg2.EnabledName]
					else
						CanModify = true
					end
					if CanModify then
						CanModify = module_upvr.VaildateNumber(arg1_3.Text, 9007199254740991)
						local any_VaildateNumber_result1, any_VaildateNumber_result2 = module_upvr.VaildateNumber(arg1_3.Text, 9007199254740991)
						if any_VaildateNumber_result1 then
							any_GetStore_result1_upvr_3[arg2.Name] = any_VaildateNumber_result2
						else
							arg1_3.Text = any_GetStore_result1_upvr_2[arg2.Name]
						end
					end
				end
				arg1_3.Text = any_GetStore_result1_upvr_2[arg2.Name]
			end;

			Class_result1_upvr({}), var5_result1_upvr_3({})
		}), Class_result1_upvr_2({
			Size = UDim2.fromScale(1, 1);
			BackgroundTransparency = 0.2;
			Text = "Modifying Disabled";
			TextScaled = true;
			TextColor3 = Color3.new(1, 0.262745, 0.262745);
			AutoButtonColor = false;
			ZIndex = 4;
			Visible = arg2("CanModify"):With(function(arg1_4, arg2_3) -- Line 163
				return not arg2_3
			end);

			var5_result1_upvr_3({
				Color3 = Color3.new(1, 0.262745, 0.262745);
			})
		}), Class_result1_upvr({}), var5_result1_upvr_3({})
	})
end
return any_Extend_result1