-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-14 08:29:10
-- Luau version 6, Types version 3
-- Time taken: 0.004005 seconds

local module_upvr = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("UI"):WaitForChild("Quad"))
local Class = module_upvr.Class
local var2_result1_upvr = Class("UIGradient")
local any_Extend_result1 = Class.Extend()
var2_result1_upvr.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.1, 0.318), NumberSequenceKeypoint.new(0.258, 0.644), NumberSequenceKeypoint.new(0.445, 0.906), NumberSequenceKeypoint.new(0.736, 1), NumberSequenceKeypoint.new(1, 1)})
local var6_upvr = module_upvr.MainInterface.AbsoluteSize.Y / 777
function any_Extend_result1.Init(arg1, arg2) -- Line 48
	--[[ Upvalues[1]:
		[1]: var6_upvr (readonly)
	]]
	arg2:Default("Visible", true)
	arg2:Default("Transparency", 0)
	arg2:Default("ZIndex", 1)
	arg2:Default("Scale", 1)
	arg2:Default("UseCustomSize", false)
	arg2:Default("TopSize", UDim.new(0, 30 * var6_upvr))
	arg2:Default("LeftSize", UDim.new(0, 40 * var6_upvr))
	arg2:Default("RightSize", UDim.new(0, 40 * var6_upvr))
	arg2:Default("BottomSize", UDim.new(0, 50 * var6_upvr))
end
local Class_result1_upvr = Class("ImageLabel")
function any_Extend_result1.Render(arg1, arg2) -- Line 60
	--[[ Upvalues[2]:
		[1]: Class_result1_upvr (readonly)
		[2]: var2_result1_upvr (readonly)
	]]
	return Class_result1_upvr({
		BackgroundTransparency = 1;
		ImageTransparency = 1;
		Size = arg2("Scale"):With(function(arg1_2, arg2_2) -- Line 64
			return UDim2.fromScale(arg2_2, arg2_2)
		end);
		ZIndex = arg2("ZIndex");
		Visible = arg2("Visible");

		Class_result1_upvr({
			Image = "rbxassetid://6030947500";
			BackgroundColor3 = Color3.new();
			BackgroundTransparency = 0.75;
			BorderSizePixel = 0;
			ZIndex = 0;
			Position = UDim2.fromScale(0, 1);
			Size = arg2("BottomSize"):With(function(arg1_3, arg2_3) -- Line 76
				return UDim2.new(UDim.new(1, 0), arg2_3)
			end);
			ImageTransparency = 1;

			var2_result1_upvr({
				Rotation = 90;
			})
		}), Class_result1_upvr({
			Image = "rbxassetid://6030946815";
			BackgroundColor3 = Color3.new();
			BackgroundTransparency = 0.75;
			BorderSizePixel = 0;
			ZIndex = 0;
			Size = arg2("LeftSize"):With(function(arg1_4, arg2_4) -- Line 91
				return UDim2.new(arg2_4, UDim.new(1, 0))
			end);
			AnchorPoint = Vector2.new(1, 0);
			ImageTransparency = 1;

			var2_result1_upvr({
				Rotation = 180;
			})
		}), Class_result1_upvr({
			Image = "rbxassetid://6030947326";
			BackgroundColor3 = Color3.new();
			BackgroundTransparency = 0.75;
			BorderSizePixel = 0;
			ZIndex = 0;
			Size = arg2("TopSize"):With(function(arg1_5, arg2_5) -- Line 107
				return UDim2.new(UDim.new(1, 0), arg2_5)
			end);
			AnchorPoint = Vector2.new(0, 1);
			ImageTransparency = 1;

			var2_result1_upvr({
				Rotation = -90;
			})
		}), Class_result1_upvr({
			Image = "rbxassetid://6030947135";
			BackgroundColor3 = Color3.new();
			BackgroundTransparency = 0.75;
			BorderSizePixel = 0;
			ZIndex = 0;
			Position = UDim2.fromScale(1, 0);
			Size = arg2("RightSize"):With(function(arg1_6, arg2_6) -- Line 124
				return UDim2.new(arg2_6, UDim.new(1, 0))
			end);
			ImageTransparency = 1;

			var2_result1_upvr({
				Rotation = 0;
			})
		}), Class_result1_upvr({
			Image = "rbxassetid://6030947802";
			BackgroundTransparency = 1;
			ZIndex = 0;
			Position = UDim2.fromScale(0, 1);
			AnchorPoint = Vector2.new(1, 0);
			Size = arg2("BottomSize,LeftSize"):With(function() -- Line 139
				--[[ Upvalues[1]:
					[1]: arg2 (readonly)
				]]
				return UDim2.new(arg2.LeftSize, arg2.BottomSize)
			end);
			ImageTransparency = arg2("Transparency");
		}), Class_result1_upvr({
			Image = "rbxassetid://6030948089";
			BackgroundTransparency = 1;
			ZIndex = 0;
			Position = UDim2.fromScale(1, 1);
			Size = arg2("BottomSize,RightSize"):With(function() -- Line 149
				--[[ Upvalues[1]:
					[1]: arg2 (readonly)
				]]
				return UDim2.new(arg2.RightSize, arg2.BottomSize)
			end);
			ImageTransparency = arg2("Transparency");
		}), Class_result1_upvr({
			Image = "rbxassetid://6030947654";
			BackgroundTransparency = 1;
			ZIndex = 0;
			AnchorPoint = Vector2.new(1, 1);
			Size = arg2("TopSize,LeftSize"):With(function() -- Line 159
				--[[ Upvalues[1]:
					[1]: arg2 (readonly)
				]]
				return UDim2.new(arg2.LeftSize, arg2.TopSize)
			end);
			ImageTransparency = arg2("Transparency");
		}), Class_result1_upvr({
			Image = "rbxassetid://6030947949";
			BackgroundTransparency = 1;
			ZIndex = 0;
			Position = UDim2.fromScale(1, 0);
			AnchorPoint = Vector2.new(0, 1);
			Size = arg2("RightSize,TopSize"):With(function() -- Line 170
				--[[ Upvalues[1]:
					[1]: arg2 (readonly)
				]]
				return UDim2.new(arg2.RightSize, arg2.TopSize)
			end);
			ImageTransparency = arg2("Transparency");
		})
	})
end
function any_Extend_result1.AfterRender(arg1) -- Line 176
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	task.spawn(function() -- Line 177
		--[[ Upvalues[2]:
			[1]: module_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		repeat
			task.wait()
		until game:IsLoaded()
		local var31_upvr = module_upvr.MainInterface.AbsoluteSize.Y / 777
		local function UpdateSize() -- Line 182
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: var31_upvr (readonly)
			]]
			arg1.TopSize = UDim.new(0, 30 * var31_upvr)
			arg1.LeftSize = UDim.new(0, 40 * var31_upvr)
			arg1.RightSize = UDim.new(0, 40 * var31_upvr)
			arg1.BottomSize = UDim.new(0, 50 * var31_upvr)
		end
		UpdateSize()
		module_upvr.ScreenUpdated:Connect(UpdateSize)
	end)
end
return any_Extend_result1