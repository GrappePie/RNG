-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-14 08:32:00
-- Luau version 6, Types version 3
-- Time taken: 0.005060 seconds

local any_IsRunning_result1_upvr = game:GetService("RunService"):IsRunning()
local var2_upvw
if not any_IsRunning_result1_upvr or not (function() -- Line 8, Named "INLINED"
	--[[ Upvalues[1]:
		[1]: var2_upvw (read and write)
	]]
		var2_upvw = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("UI"):WaitForChild("Quad"))
		return var2_upvw
	end)() then
	var2_upvw = {}
end
local Class = var2_upvw.Class
local any_Extend_result1 = Class.Extend()
local function GetValue_upvr_upvr(arg1, arg2) -- Line 17, Named "GetValue_upvr"
	local _, _, _ = ipairs(arg1.Keypoints)
end
local function OnCreated_upvr_upvr(arg1, arg2) -- Line 27, Named "OnCreated_upvr"
	--[[ Upvalues[3]:
		[1]: GetValue_upvr_upvr (readonly)
		[2]: any_IsRunning_result1_upvr (readonly)
		[3]: var2_upvw (read and write)
	]]
	if arg2.UseCanvasGroup then
	else
		if not arg1.Parent then
			arg1:GetPropertyChangedSignal("Parent"):Wait()
		end
		local Parent_upvr = arg1.Parent
		task.wait(0.1)
		if not Parent_upvr then return end
		local function _() -- Line 41
			--[[ Upvalues[3]:
				[1]: Parent_upvr (readonly)
				[2]: arg2 (readonly)
				[3]: arg1 (readonly)
			]]
			local maximum = math.max(math.ceil(Parent_upvr.AbsoluteSize.Y * arg2.Size), 1)
			arg1.Size = UDim2.fromOffset(maximum, maximum)
		end
		local function Update_upvr_upvr() -- Line 50, Named "Update_upvr"
			--[[ Upvalues[5]:
				[1]: Parent_upvr (readonly)
				[2]: arg1 (readonly)
				[3]: GetValue_upvr_upvr (copied, readonly)
				[4]: Update_upvr_upvr (readonly)
				[5]: arg2 (readonly)
			]]
			local class_UIGradient_2 = Parent_upvr:FindFirstChildOfClass("UIGradient")
			if class_UIGradient_2 then
				local class_UIGradient = arg1:FindFirstChildOfClass("UIGradient")
				if not class_UIGradient then
					class_UIGradient = Instance.new("UIGradient", arg1)
				end
				local Scale = arg1.Position.Y.Scale
				local absolute = math.abs(arg1.Position.Y.Scale - arg1.Size.Y.Scale)
				class_UIGradient.Rotation = 90
				class_UIGradient.Color = ColorSequence.new(GetValue_upvr_upvr(class_UIGradient_2.Color, math.min(Scale, absolute)), GetValue_upvr_upvr(class_UIGradient_2.Color, math.max(Scale, absolute)))
				class_UIGradient_2:GetPropertyChangedSignal("Color"):Once(Update_upvr_upvr)
			end
			local maximum_2 = math.max(math.ceil(Parent_upvr.AbsoluteSize.Y * arg2.Size), 1)
			arg1.Size = UDim2.fromOffset(maximum_2, maximum_2)
		end
		Update_upvr_upvr()
		local var15_upvw
		if any_IsRunning_result1_upvr then
			var15_upvw = var2_upvw.ScreenUpdated:Connect(Update_upvr_upvr)
		else
			var15_upvw = workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(Update_upvr_upvr)
		end
		local any_Connect_result1_upvw = arg1.ChildAdded:Connect(Update_upvr_upvr)
		local any_Connect_result1_upvw_2 = Parent_upvr.AncestryChanged:Connect(Update_upvr_upvr)
		arg1.Destroying:Once(function() -- Line 82
			--[[ Upvalues[3]:
				[1]: any_Connect_result1_upvw (read and write)
				[2]: var15_upvw (read and write)
				[3]: any_Connect_result1_upvw_2 (read and write)
			]]
			any_Connect_result1_upvw:Disconnect()
			any_Connect_result1_upvw = nil
			var15_upvw:Disconnect()
			var15_upvw = nil
			any_Connect_result1_upvw_2:Disconnect()
			any_Connect_result1_upvw_2 = nil
		end)
	end
end
function any_Extend_result1.Init(arg1, arg2) -- Line 97
	arg2:Default("Transparency", 0)
	arg2:Default("ZIndex", 1)
	arg2:Default("Color3", Color3.new(1, 1, 1))
	arg2:Default("Size", 0.2)
	arg2:Default("UseCanvasGroup", false)
end
local Class_result1_upvr = Class("CanvasGroup")
local Class_result1_upvr_3 = Class("Frame")
local Class_result1_upvr_2 = Class("ImageLabel")
local Event_upvr = var2_upvw.Event
function any_Extend_result1.Render(arg1, arg2) -- Line 108
	--[[ Upvalues[5]:
		[1]: Class_result1_upvr (readonly)
		[2]: Class_result1_upvr_3 (readonly)
		[3]: Class_result1_upvr_2 (readonly)
		[4]: Event_upvr (readonly)
		[5]: OnCreated_upvr_upvr (readonly)
	]]
	local var23_upvw
	if not arg2.UseCanvasGroup or not (function() -- Line 117, Named "INLINED_2"
		--[[ Upvalues[2]:
			[1]: var23_upvw (read and write)
			[2]: Class_result1_upvr (copied, readonly)
		]]
			var23_upvw = Class_result1_upvr
			return var23_upvw
		end)() then
		var23_upvw = Class_result1_upvr_3
	end
	return var23_upvw({
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 1);
		ZIndex = arg2("ZIndex");

		Class_result1_upvr_2({
			AnchorPoint = Vector2.new(0, 1);
			Position = UDim2.fromScale(0, 1);
			Size = arg2("Size"):With(function(arg1_2, arg2_2) -- Line 132
				return UDim2.fromScale(arg2_2, arg2_2)
			end);
			BackgroundTransparency = 1;
			SizeConstraint = Enum.SizeConstraint.RelativeYY;
			Image = "rbxassetid://99920460968532";
			ImageColor3 = arg2("Color3");
			ImageTransparency = arg2("Transparency");
			[Event_upvr.CreatedAsync] = function(arg1_3) -- Line 140
				--[[ Upvalues[2]:
					[1]: OnCreated_upvr_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				OnCreated_upvr_upvr(arg1_3, arg2)
			end;
		}), Class_result1_upvr_2({
			AnchorPoint = Vector2.new(1, 1);
			Position = UDim2.fromScale(1, 1);
			Size = arg2("Size"):With(function(arg1_4, arg2_3) -- Line 150
				return UDim2.fromScale(arg2_3, arg2_3)
			end);
			BackgroundTransparency = 1;
			SizeConstraint = Enum.SizeConstraint.RelativeYY;
			Image = "rbxassetid://107520568741192";
			ImageColor3 = arg2("Color3");
			ImageTransparency = arg2("Transparency");
			[Event_upvr.CreatedAsync] = function(arg1_5) -- Line 158
				--[[ Upvalues[2]:
					[1]: OnCreated_upvr_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				OnCreated_upvr_upvr(arg1_5, arg2)
			end;
		}), Class_result1_upvr_2({
			Size = arg2("Size"):With(function(arg1_6, arg2_4) -- Line 166
				return UDim2.fromScale(arg2_4, arg2_4)
			end);
			BackgroundTransparency = 1;
			SizeConstraint = Enum.SizeConstraint.RelativeYY;
			Image = "rbxassetid://78318255248546";
			ImageColor3 = arg2("Color3");
			ImageTransparency = arg2("Transparency");
			[Event_upvr.CreatedAsync] = function(arg1_7) -- Line 174
				--[[ Upvalues[2]:
					[1]: OnCreated_upvr_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				OnCreated_upvr_upvr(arg1_7, arg2)
			end;
		}), Class_result1_upvr_2({
			AnchorPoint = Vector2.new(1, 0);
			Position = UDim2.fromScale(1, 0);
			Size = arg2("Size"):With(function(arg1_8, arg2_5) -- Line 184
				return UDim2.fromScale(arg2_5, arg2_5)
			end);
			BackgroundTransparency = 1;
			SizeConstraint = Enum.SizeConstraint.RelativeYY;
			Image = "rbxassetid://107366279631032";
			ImageColor3 = arg2("Color3");
			ImageTransparency = arg2("Transparency");
			[Event_upvr.CreatedAsync] = function(arg1_9) -- Line 192
				--[[ Upvalues[2]:
					[1]: OnCreated_upvr_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				OnCreated_upvr_upvr(arg1_9, arg2)
			end;
		})
	})
end
return any_Extend_result1