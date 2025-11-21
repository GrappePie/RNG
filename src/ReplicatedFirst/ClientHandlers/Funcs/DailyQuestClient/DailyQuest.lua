-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-16 17:19:05
-- Luau version 6, Types version 3
-- Time taken: 0.005431 seconds

local Modules = game:GetService("ReplicatedStorage"):WaitForChild("Modules")
local UI = Modules:WaitForChild("UI")
local module_upvr = require(UI:WaitForChild("Quad"))
local Class = module_upvr.Class
local var4_result1_upvr_6 = Class("TextLabel")
local var4_result1_upvr_3 = Class("UIStroke")
local any_Extend_result1 = Class.Extend()
var4_result1_upvr_6.TextColor3 = Color3.new(1, 1, 1)
var4_result1_upvr_6.BackgroundTransparency = 1
var4_result1_upvr_3.Transparency = 0.5
var4_result1_upvr_3.Color = Color3.new(1, 1, 1)
var4_result1_upvr_3.Thickness = 1.5
function any_Extend_result1.Init(arg1, arg2) -- Line 44
	arg2:Default("IsFianlQuest", false)
	arg2:Default("Name", "Epic Sol")
	arg2:Default("IsClaimed", false)
	arg2:Default("Goal", 0)
	arg2:Default("Progress", 0)
	arg2:Default("Index", 1)
	arg2:Default("Callback", function() -- Line 51
	end)
end
local var4_result1_upvr_4 = Class("ImageButton")
local var4_result1_upvr_2 = Class("ImageLabel")
local var4_result1_upvr = Class(UI:WaitForChild("Components"):WaitForChild("Corner"))
local var4_result1_upvr_5 = Class("Frame")
local module_upvr_2 = require(Modules:WaitForChild("Utility"))
local Event_upvr = module_upvr.Event
function any_Extend_result1.Render(arg1, arg2) -- Line 54
	--[[ Upvalues[9]:
		[1]: var4_result1_upvr_4 (readonly)
		[2]: var4_result1_upvr_6 (readonly)
		[3]: module_upvr (readonly)
		[4]: var4_result1_upvr_2 (readonly)
		[5]: var4_result1_upvr_3 (readonly)
		[6]: var4_result1_upvr (readonly)
		[7]: var4_result1_upvr_5 (readonly)
		[8]: module_upvr_2 (readonly)
		[9]: Event_upvr (readonly)
	]]
	if arg2.IsFinalQuest then
		return var4_result1_upvr_4({
			BackgroundColor3 = Color3.new();
			BackgroundTransparency = 0.4;
			Size = UDim2.fromScale(1, 0.2);
			LayoutOrder = arg2("Index");
			[Event_upvr("MouseButton1Down")] = function() -- Line 133
				--[[ Upvalues[2]:
					[1]: arg2 (readonly)
					[2]: module_upvr_2 (copied, readonly)
				]]
				if arg2.Callback then
					module_upvr_2.PlaySFX("Click", "UISounds")
					arg2.Callback()
				end
			end;

			var4_result1_upvr_6({
				Text = "Good job today";
				AnchorPoint = Vector2.new(0.5, 0);
				BackgroundTransparency = 1;
				Position = UDim2.fromScale(0.5, 0.1);
				Size = UDim2.fromScale(0.95, 0.4);
				FontFace = module_upvr.FontBold;
				TextScaled = true;
				TextXAlignment = Enum.TextXAlignment.Left;
				RichText = true;
			}), var4_result1_upvr_6({
				Text = "Complete all 3 daily quests";
				AnchorPoint = Vector2.new(0.5, 0);
				BackgroundTransparency = 1;
				Position = UDim2.fromScale(0.5, 0.45);
				Size = UDim2.fromScale(0.95, 0.2);
				FontFace = module_upvr.FontBold;
				TextScaled = true;
				TextXAlignment = Enum.TextXAlignment.Left;
				TextTransparency = 0.5;
			}), var4_result1_upvr_2({
				BackgroundColor3 = Color3.new();
				BackgroundTransparency = 0.8;
				Position = UDim2.fromScale(0.93, 0.13);
				Size = UDim2.fromScale(0.45, 0.45);
				SizeConstraint = Enum.SizeConstraint.RelativeYY;
				ImageTransparency = arg2("Goal,Progress"):With(function() -- Line 92
					--[[ Upvalues[1]:
						[1]: arg2 (readonly)
					]]
					if arg2.Goal == arg2.Progress then
						return 0
					end
					return 1
				end);
				Image = "http://www.roblox.com/asset/?id=6031094667";

				var4_result1_upvr_3({}), var4_result1_upvr({})
			}), var4_result1_upvr_5({
				AnchorPoint = Vector2.new(0.5, 0);
				BackgroundColor3 = Color3.new();
				BackgroundTransparency = 0.5;
				Position = UDim2.fromScale(0.5, 0.73);
				Size = UDim2.fromScale(0.95, 0.07);

				var4_result1_upvr_5({
					Size = arg2("Goal,Progress"):With(function() -- Line 107
						--[[ Upvalues[1]:
							[1]: arg2 (readonly)
						]]
						return UDim2.fromScale(math.clamp(arg2.Progress / arg2.Goal, 0, 1), 1)
					end);
					BackgroundColor3 = Color3.new(1, 1, 1);
					BackgroundTransparency = 0;
					BorderSizePixel = 0;
				}), var4_result1_upvr_6({
					AnchorPoint = Vector2.new(0.5, 0.5);
					Position = UDim2.fromScale(0.5, 0.5);
					Size = UDim2.fromScale(1, 3.5);
					ZIndex = 2;
					FontFace = module_upvr.FontBold;
					TextColor3 = Color3.new(1, 1, 1);
					TextScaled = true;
					Text = arg2("Goal,Progress"):With(function() -- Line 121
						--[[ Upvalues[2]:
							[1]: module_upvr_2 (copied, readonly)
							[2]: arg2 (readonly)
						]]
						return `{module_upvr_2.FormatNumber(math.floor(arg2.Progress))} / {module_upvr_2.FormatNumber(math.floor(arg2.Goal))}`
					end);

					var4_result1_upvr_3({
						Color = Color3.new();
						Thickness = 1;
						Transparency = 0;
					})
				}), var4_result1_upvr_3({})
			}), var4_result1_upvr_3({}), var4_result1_upvr({
				Size = 0.12;
			})
		})
	end
	return var4_result1_upvr_4({
		BackgroundColor3 = Color3.new();
		BackgroundTransparency = 0.4;
		Size = UDim2.fromScale(1, 0.15);
		LayoutOrder = arg2("Index");
		[Event_upvr("MouseButton1Down")] = function() -- Line 209
			--[[ Upvalues[2]:
				[1]: arg2 (readonly)
				[2]: module_upvr_2 (copied, readonly)
			]]
			if arg2.Callback then
				module_upvr_2.PlaySFX("Click", "UISounds")
				arg2.Callback()
			end
		end;

		var4_result1_upvr_6({
			Text = arg2("Name");
			AnchorPoint = Vector2.new(0.5, 0);
			BackgroundTransparency = 1;
			Position = UDim2.fromScale(0.5, 0.1);
			Size = UDim2.fromScale(0.95, 0.5);
			FontFace = module_upvr.FontBold;
			TextScaled = true;
			TextXAlignment = Enum.TextXAlignment.Left;
			RichText = true;
		}), var4_result1_upvr_2({
			BackgroundColor3 = Color3.new();
			BackgroundTransparency = 0.8;
			Position = UDim2.fromScale(0.93, 0.13);
			Size = UDim2.fromScale(0.45, 0.45);
			SizeConstraint = Enum.SizeConstraint.RelativeYY;
			ImageTransparency = arg2("Goal,Progress"):With(function() -- Line 168
				--[[ Upvalues[1]:
					[1]: arg2 (readonly)
				]]
				if arg2.Goal == arg2.Progress then
					return 0
				end
				return 1
			end);
			Image = "http://www.roblox.com/asset/?id=6031094667";

			var4_result1_upvr_3({}), var4_result1_upvr({})
		}), var4_result1_upvr_5({
			AnchorPoint = Vector2.new(0.5, 0);
			BackgroundColor3 = Color3.new();
			BackgroundTransparency = 0.5;
			Position = UDim2.fromScale(0.5, 0.73);
			Size = UDim2.fromScale(0.95, 0.07);

			var4_result1_upvr_5({
				Size = arg2("Goal,Progress"):With(function() -- Line 183
					--[[ Upvalues[1]:
						[1]: arg2 (readonly)
					]]
					return UDim2.fromScale(math.clamp(arg2.Progress / arg2.Goal, 0, 1), 1)
				end);
				BackgroundColor3 = Color3.new(1, 1, 1);
				BackgroundTransparency = 0;
				BorderSizePixel = 0;
			}), var4_result1_upvr_6({
				AnchorPoint = Vector2.new(0.5, 0.5);
				Position = UDim2.fromScale(0.5, 0.5);
				Size = UDim2.fromScale(1, 3.5);
				ZIndex = 2;
				FontFace = module_upvr.FontBold;
				TextColor3 = Color3.new(1, 1, 1);
				TextScaled = true;
				Text = arg2("Goal,Progress"):With(function() -- Line 197
					--[[ Upvalues[2]:
						[1]: module_upvr_2 (copied, readonly)
						[2]: arg2 (readonly)
					]]
					return `{module_upvr_2.FormatNumber(math.floor(arg2.Progress))} / {module_upvr_2.FormatNumber(math.floor(arg2.Goal))}`
				end);

				var4_result1_upvr_3({
					Color = Color3.new();
					Thickness = 1;
					Transparency = 0;
				})
			}), var4_result1_upvr_3({})
		}), var4_result1_upvr_3({}), var4_result1_upvr({
			Size = 0.12;
		})
	})
end
return any_Extend_result1