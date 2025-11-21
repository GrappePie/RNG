-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-14 08:30:29
-- Luau version 6, Types version 3
-- Time taken: 0.006375 seconds

local UI = game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("UI")
local Components = UI:WaitForChild("Components")
local module = require(UI:WaitForChild("Quad"))
local Class = module.Class
local any_Extend_result1 = Class.Extend()
local function FormatInteger_upvr(arg1) -- Line 50, Named "FormatInteger"
	local _, any_find_result2, any_find_result3, any_find_result4, any_find_result5 = tostring(arg1):find("([-]?)(%d+)([.]?%d*)")
	return any_find_result3..any_find_result4:reverse():gsub("(%d%d%d)", "%1,"):reverse():gsub("^,", "")..any_find_result5
end
function any_Extend_result1.Init(arg1, arg2) -- Line 56
	arg2:Default("Name", "Ingredient\nUnknown\nUnknown")
	arg2:Default("IngredientName", "Unknown")
	arg2:Default("IngredientNameColor3", Color3.new(1, 1, 1))
	arg2:Default("MaxProgress", 0)
	arg2:Default("CurrentProgress", 0)
	arg2:Default("Visible", true)
end
local var4_result1_upvr_3 = Class("Frame")
local var4_result1_upvr_2 = Class("TextLabel")
local Class_result1_upvr_4 = Class("ImageLabel")
local Class_result1_upvr = Class("TextBox")
local Class_result1_upvr_3 = Class("UIStroke")
local var4_result1_upvr_4 = Class(Components:WaitForChild("Corner"))
local Event_upvr = module.Event
local var4_result1_upvr = Class("TextButton")
local Class_result1_upvr_2 = Class(Components:WaitForChild("Shadow"))
function any_Extend_result1.Render(arg1, arg2) -- Line 66
	--[[ Upvalues[10]:
		[1]: var4_result1_upvr_3 (readonly)
		[2]: var4_result1_upvr_2 (readonly)
		[3]: Class_result1_upvr_4 (readonly)
		[4]: Class_result1_upvr (readonly)
		[5]: Class_result1_upvr_3 (readonly)
		[6]: var4_result1_upvr_4 (readonly)
		[7]: Event_upvr (readonly)
		[8]: var4_result1_upvr (readonly)
		[9]: FormatInteger_upvr (readonly)
		[10]: Class_result1_upvr_2 (readonly)
	]]
	return var4_result1_upvr_3("Ingredient\n_\n_")({
		Size = UDim2.fromScale(1, 0.25);
		BackgroundTransparency = 1;
		Name = arg2("Name");
		Visible = arg2("Visible");

		var4_result1_upvr_3("IngredientFrame")({
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.fromScale(0.5, 0.5);
			Size = UDim2.fromScale(0.95, 0.95);
			BackgroundColor3 = Color3.new();
			BackgroundTransparency = 0.65;

			var4_result1_upvr_2("IngredientName")({
				Position = UDim2.fromScale(0.05, 0.1);
				Size = UDim2.fromScale(0.47, 0.5);
				BackgroundTransparency = 1;
				Text = arg2("IngredientName");
				TextScaled = true;
				TextColor3 = Color3.new(1, 1, 1);
				FontFace = Font.new("rbxasset://fonts/families/Sarpanch.json", Enum.FontWeight.Bold);
			}), var4_result1_upvr_3("Finished")({
				Size = UDim2.fromScale(1, 1);
				BackgroundColor3 = Color3.fromRGB(39, 255, 64);
				BackgroundTransparency = 0.5;
				Visible = arg2("CurrentProgress"):With(function(arg1_2, arg2_2) -- Line 102
					--[[ Upvalues[1]:
						[1]: arg2 (readonly)
					]]
					local var25
					local function INLINED() -- Internal function, doesn't exist in bytecode
						var25 = arg2.__self.MaxProgress
						return var25
					end
					if 0 >= arg2.__self.MaxProgress or not INLINED() then
						var25 = 1
					end
					if arg2_2 == var25 then
						return true
					end
					return false
				end);
				ZIndex = 200;

				Class_result1_upvr_4("FinishedImage")({
					AnchorPoint = Vector2.new(0.5, 0.5);
					Position = UDim2.fromScale(0.5, 0.5);
					Size = UDim2.fromScale(0.9, 0.9);
					SizeConstraint = Enum.SizeConstraint.RelativeYY;
					BackgroundTransparency = 1;
					Image = "rbxassetid://6031094667";
					ImageColor3 = Color3.new();
				})
			}), Class_result1_upvr("AddAmount")({
				Position = UDim2.fromScale(0.53, 0.1);
				Size = UDim2.fromScale(0.206, 0.5);
				BackgroundColor3 = Color3.new();
				BackgroundTransparency = 0.6;
				Text = '1';
				TextScaled = true;
				TextColor3 = Color3.new(1, 1, 1);
				FontFace = Font.new("rbxasset://fonts/families/Sarpanch.json", Enum.FontWeight.Bold);
				ClearTextOnFocus = false;
				Visible = arg2("CurrentProgress"):With(function(arg1_3, arg2_3) -- Line 142
					--[[ Upvalues[1]:
						[1]: arg2 (readonly)
					]]
					local var29
					local function INLINED_2() -- Internal function, doesn't exist in bytecode
						var29 = arg2.__self.MaxProgress
						return var29
					end
					if 0 >= arg2.__self.MaxProgress or not INLINED_2() then
						var29 = 1
					end
					if arg2_3 == var29 then
						return false
					end
					return true
				end);
				[Event_upvr("FocusLost")] = function(arg1_4) -- Line 161
					arg1_4.Text = arg1_4.Text:gsub("%D", "")
				end;
				Class_result1_upvr_3({
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
					Color = Color3.new(1, 1, 1);
					Transparency = 0.5;
					Thickness = 1.5;
				}), var4_result1_upvr_4({
					Size = 0.3;
				})
			}), var4_result1_upvr("Add")({
				Position = UDim2.fromScale(0.76, 0.1);
				Size = UDim2.fromScale(0.206, 0.5);
				BackgroundColor3 = Color3.new();
				BackgroundTransparency = 0.6;
				Text = "Add";
				TextScaled = true;
				TextColor3 = Color3.new(1, 1, 1);
				FontFace = Font.new("rbxasset://fonts/families/Sarpanch.json", Enum.FontWeight.Bold);
				Visible = arg2("CurrentProgress"):With(function(arg1_5, arg2_4) -- Line 180
					--[[ Upvalues[1]:
						[1]: arg2 (readonly)
					]]
					local var35
					local function INLINED_3() -- Internal function, doesn't exist in bytecode
						var35 = arg2.__self.MaxProgress
						return var35
					end
					if 0 >= arg2.__self.MaxProgress or not INLINED_3() then
						var35 = 1
					end
					if arg2_4 == var35 then
						return false
					end
					return true
				end);
				[Event_upvr("MouseButton1Click")] = arg2.__self.Click;
				Class_result1_upvr_3({
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
					Color = Color3.new(1, 1, 1);
					Transparency = 0.5;
					Thickness = 1.5;
				}), var4_result1_upvr_4({
					Size = 0.3;
				})
			}), var4_result1_upvr_3("Progress")({
				AnchorPoint = Vector2.new(0.5, 0);
				Position = UDim2.fromScale(0.5, 0.73);
				Size = UDim2.fromScale(0.95, 0.1);
				BackgroundColor3 = Color3.new();
				BackgroundTransparency = 0.5;

				var4_result1_upvr_3("ProgressBar")({
					Size = arg2("CurrentProgress"):With(function(arg1_6, arg2_5) -- Line 211
						--[[ Upvalues[1]:
							[1]: arg2 (readonly)
						]]
						local var41
						local function INLINED_4() -- Internal function, doesn't exist in bytecode
							var41 = arg2.__self.MaxProgress
							return var41
						end
						if 0 >= arg2.__self.MaxProgress or not INLINED_4() then
							var41 = 1
						end
						if 0 < var41 then
							return UDim2.fromScale(arg2_5 / var41, 1)
						end
						return UDim2.fromScale(1, 1)
					end);
					BackgroundColor3 = arg2("CurrentProgress"):With(function(arg1_7, arg2_6) -- Line 221
						--[[ Upvalues[1]:
							[1]: arg2 (readonly)
						]]
						local var43
						local function INLINED_5() -- Internal function, doesn't exist in bytecode
							var43 = arg2.__self.MaxProgress
							return var43
						end
						if 0 >= arg2.__self.MaxProgress or not INLINED_5() then
							var43 = 1
						end
						if arg2_6 == var43 then
							return Color3.fromRGB(80, 255, 0)
						end
						return Color3.new(1, 1, 1)
					end);
				}), var4_result1_upvr_2("ProgressTextLabel")({
					AnchorPoint = Vector2.new(0.5, 0.5);
					Position = UDim2.fromScale(0.5, 0.5);
					Size = UDim2.fromScale(1, 3.5);
					BackgroundTransparency = 1;
					ZIndex = 2;
					Text = arg2("CurrentProgress"):With(function(arg1_8, arg2_7) -- Line 241
						--[[ Upvalues[2]:
							[1]: arg2 (readonly)
							[2]: FormatInteger_upvr (copied, readonly)
						]]
						local var46
						local function INLINED_6() -- Internal function, doesn't exist in bytecode
							var46 = arg2.__self.MaxProgress
							return var46
						end
						if 0 >= arg2.__self.MaxProgress or not INLINED_6() then
							var46 = 1
						end
						return `{FormatInteger_upvr(arg2_7)} / {FormatInteger_upvr(var46)}`
					end);
					TextScaled = true;
					TextColor3 = Color3.new(1, 1, 1);
					FontFace = Font.new("rbxasset://fonts/families/Sarpanch.json", Enum.FontWeight.Bold);
					TextStrokeColor3 = Color3.new();
					TextStrokeTransparency = 0.2;
				}), Class_result1_upvr_3({
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
					Color = Color3.new(1, 1, 1);
					Transparency = 0.5;
					Thickness = 1.5;
				})
			}), Class_result1_upvr_3({
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
				Color = Color3.new(1, 1, 1);
				Transparency = 0.5;
				Thickness = 1.5;
			}), var4_result1_upvr_4({
				Size = 0.1;
			}), Class_result1_upvr_2({})
		})
	})
end
return any_Extend_result1