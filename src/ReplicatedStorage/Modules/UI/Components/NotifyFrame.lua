-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-14 08:29:54
-- Luau version 6, Types version 3
-- Time taken: 0.003439 seconds

local Modules = game:GetService("ReplicatedStorage"):WaitForChild("Modules")
local UI = Modules:WaitForChild("UI")
local module_upvr = require(UI:WaitForChild("Quad"))
local Class = module_upvr.Class
local Components = UI:WaitForChild("Components")
local any_Extend_result1 = Class.Extend()
local function ToGradient_upvr(arg1, arg2) -- Line 36, Named "ToGradient"
	return ColorSequence.new(arg2:Lerp(Color3.new(1, 1, 1), 0.3), arg2)
end
local Signal_upvr = module_upvr.Signal
function any_Extend_result1.Init(arg1, arg2) -- Line 41
	--[[ Upvalues[1]:
		[1]: Signal_upvr (readonly)
	]]
	arg2:Default("HeaderText", "! Warning !")
	arg2:Default("Description", "Description")
	arg2:Default("Color3", Color3.new(1, 1, 1))
	arg2:Default("ButtonColor3", Color3.fromRGB(106, 171, 255))
	arg2:Default("ButtonText", "Ok")
	arg1.OnSelected = Signal_upvr.Bindable.New()
	rawset(arg1, "__isOpenend", false)
end
local var4_result1_upvr_7 = Class("Frame")
local var4_result1_upvr_3 = Class("TextLabel")
local Class_result1_upvr = Class("ImageButton")
local var4_result1_upvr = Class("ImageLabel")
local Event_upvr = module_upvr.Event
local module_upvr_2 = require(Modules:WaitForChild("Utility"))
local var4_result1_upvr_4 = Class(Components:WaitForChild("Corner"))
local var4_result1_upvr_6 = Class(Components:WaitForChild("TextButton"))
local var4_result1_upvr_2 = Class("UIAspectRatioConstraint")
local var4_result1_upvr_5 = Class(Components:WaitForChild("Shadow"))
function any_Extend_result1.Render(arg1, arg2) -- Line 52
	--[[ Upvalues[12]:
		[1]: var4_result1_upvr_7 (readonly)
		[2]: var4_result1_upvr_3 (readonly)
		[3]: Class_result1_upvr (readonly)
		[4]: var4_result1_upvr (readonly)
		[5]: Event_upvr (readonly)
		[6]: module_upvr_2 (readonly)
		[7]: var4_result1_upvr_4 (readonly)
		[8]: module_upvr (readonly)
		[9]: var4_result1_upvr_6 (readonly)
		[10]: ToGradient_upvr (readonly)
		[11]: var4_result1_upvr_2 (readonly)
		[12]: var4_result1_upvr_5 (readonly)
	]]
	return var4_result1_upvr_7({
		AnchorPoint = Vector2.new(0.5, 0.5);
		Size = UDim2.fromScale(0.22, 0.15);
		Position = UDim2.fromScale(0.5, 0.72);
		BackgroundColor3 = Color3.new(0, 0, 0);
		BackgroundTransparency = 0.2;
		BorderSizePixel = 1;
		ZIndex = 3;
		Visible = false;
		[Event_upvr.CreatedAsync] = function(arg1_2) -- Line 142
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.__frame = arg1_2
		end;
		var4_result1_upvr_3({
			TextColor3 = Color3.new(1, 1, 1);
			Text = arg2("HeaderText");
			Size = UDim2.fromScale(1, 0.15);
			TextScaled = true;
			BackgroundColor3 = Color3.new();
			BackgroundTransparency = 0.65;

			Class_result1_upvr({
				BackgroundTransparency = 1;
				Position = UDim2.fromScale(0.95, 0);
				Size = UDim2.fromScale(1, 1);
				SizeConstraint = Enum.SizeConstraint.RelativeYY;
				[Event_upvr("MouseButton1Down")] = function() -- Line 86
					--[[ Upvalues[2]:
						[1]: module_upvr_2 (copied, readonly)
						[2]: arg1 (readonly)
					]]
					module_upvr_2.PlaySFX("Click", "UISounds")
					arg1.OnSelected:Fire(false)
				end;
				var4_result1_upvr({
					AnchorPoint = Vector2.new(0.5, 0.5);
					Position = UDim2.fromScale(0.5, 0.5);
					Image = "http://www.roblox.com/asset/?id=6031094678";
					Size = UDim2.fromScale(0.8, 0.8);
					SizeConstraint = Enum.SizeConstraint.RelativeYY;
					BackgroundTransparency = 1;
				})
			}), var4_result1_upvr_4({})
		}), var4_result1_upvr_3({
			AnchorPoint = Vector2.new(0.5, 0);
			Size = UDim2.fromScale(0.95, 0.4);
			Position = UDim2.fromScale(0.5, 0.17);
			BackgroundTransparency = 1;
			FontFace = module_upvr.FontDefault;
			TextColor3 = arg2("Color3");
			Text = arg2("Description");
			TextScaled = true;
		}), var4_result1_upvr_7({
			AnchorPoint = Vector2.new(0.5, 0);
			BackgroundColor3 = arg2("Color3");
			Size = UDim2.new(1, 0, 0, 1);
			Position = UDim2.fromScale(0.5, 0.6);
		}), var4_result1_upvr_7({
			AnchorPoint = Vector2.new(0.5, 0);
			BackgroundTransparency = 1;
			Position = UDim2.fromScale(0.5, 0.7);
			Size = UDim2.fromScale(0.95, 0.23);

			var4_result1_upvr_6({
				AnchorPoint = Vector2.new(0.5, 0.5);
				BackgroundColor3 = Color3.fromRGB(76, 76, 76);
				BackgroundTransparency = 0.7;
				GlobalColor3 = arg2("ButtonColor3"):With(ToGradient_upvr);
				Text = arg2("ButtonText");
				Size = UDim2.fromScale(0.6, 1);
				Position = UDim2.fromScale(0.5, 0.5);
				HoverScale = 1.02;
				Callback = function() -- Line 130, Named "Callback"
					--[[ Upvalues[1]:
						[1]: arg1 (readonly)
					]]
					arg1.OnSelected:Fire(true)
				end;
			})
		}), var4_result1_upvr_2({
			AspectRatio = 2.423;
		}), var4_result1_upvr_5({})
	})
end
function any_Extend_result1.IsOpened(arg1) -- Line 148
	return rawget(arg1, "__isOpenend")
end
function any_Extend_result1.GetResult(arg1) -- Line 152
	if rawget(arg1, "__isOpenend") then return end
	rawset(arg1, "__isOpenend", true)
	arg1.__frame.Visible = true
	arg1.__frame.Visible = false
	rawset(arg1, "__isOpenend", false)
	return arg1.OnSelected:Wait()
end
return any_Extend_result1