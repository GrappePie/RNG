local module_upvr = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("UI"):WaitForChild("Quad"))
local any_Class_result1 = module_upvr.Class("ImageLabel")
local any_GetStore_result1_upvr = module_upvr.Store.GetStore("Global")
any_GetStore_result1_upvr.Transparency = 1
local function _(arg1, arg2, arg3) -- Line 23, Named "lerp"
	if arg3 == 1 then
		return arg2
	end
	if arg3 == 0 then
		return arg1
	end
	return arg1 + (arg2 - arg1) * arg3
end
local var4_upvw
module_upvr.Mount(module_upvr.MainInterface, any_Class_result1({
	BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	BackgroundTransparency = 1;
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	AnchorPoint = Vector2.new(0.5, 0.5);
	Position = UDim2.new(0.5, 0, 0.5, 0);
	Size = any_GetStore_result1_upvr("Transparency"):With(function(arg1, arg2) -- Line 38
		-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
		local var7 = 1 - arg2
		if var7 == 1 then
		elseif var7 == 0 then
		else
		end
		local var8 = 1 - arg2
		if var8 == 1 then
			-- KONSTANTWARNING: GOTO [28] #24
		end
		-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [20] 17. Error Block 16 start (CF ANALYSIS FAILED)
		if var8 == 0 then
		else
		end
		-- KONSTANTERROR: [20] 17. Error Block 16 end (CF ANALYSIS FAILED)
	end);
	Image = "http://www.roblox.com/asset/?id=79400946059550";
	ImageColor3 = Color3.fromRGB(0, 0, 0);
	ImageTransparency = any_GetStore_result1_upvr("Transparency");
	ZIndex = -10;

	any_Class_result1({
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		BorderColor3 = Color3.fromRGB(0, 0, 0);
		BorderSizePixel = 0;
		Position = UDim2.new(0.5, 0, 0.5, 0);
		Size = UDim2.new(3, 0, 3, 0);
		ZIndex = 2;
		Image = "http://www.roblox.com/asset/?id=79400946059550";
		ImageColor3 = Color3.fromRGB(147, 70, 255);
		ImageTransparency = any_GetStore_result1_upvr("Transparency");
		[module_upvr.Event.Created] = function(arg1) -- Line 57
			--[[ Upvalues[1]:
				[1]: var4_upvw (read and write)
			]]
			var4_upvw = arg1
		end;

		any_Class_result1({
			AnchorPoint = Vector2.new(0.5, 0.5);
			BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			BackgroundTransparency = 1;
			BorderColor3 = Color3.fromRGB(0, 0, 0);
			BorderSizePixel = 0;
			Position = UDim2.new(0.5, 0, 0.5, 0);
			Size = UDim2.new(1, 0, 1, 0);
			ZIndex = 2;
			Image = "http://www.roblox.com/asset/?id=79400946059550";
			ImageColor3 = Color3.fromRGB(147, 70, 255);
			ImageTransparency = any_GetStore_result1_upvr("Transparency"):With(function(arg1, arg2) -- Line 72
				if arg2 == 1 then
					return 1
				end
				if arg2 == 0 then
					return 0.5
				end
				return 0.5 + 0.5 * arg2
			end);
		})
	}), any_Class_result1({
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		BorderColor3 = Color3.fromRGB(0, 0, 0);
		BorderSizePixel = 0;
		Size = UDim2.new(1, 0, 1, 0);
		Image = "http://www.roblox.com/asset/?id=79400946059550";
		ImageColor3 = Color3.fromRGB(0, 0, 0);
		ImageTransparency = any_GetStore_result1_upvr("Transparency");
	})
}))
game:GetService("RunService").RenderStepped:Connect(function(arg1) -- Line 91
	--[[ Upvalues[2]:
		[1]: var4_upvw (read and write)
		[2]: any_GetStore_result1_upvr (readonly)
	]]
	local var15 = 0.3 + math.sin(os.clock() * 4) * 0.3
	local Transparency = any_GetStore_result1_upvr.Transparency
	local var17
	if Transparency == 1 then
		var17 = 1
	elseif Transparency == 0 then
		var17 = var15
	else
		var17 = var15 + (1 - var15) * Transparency
	end
	var4_upvw.ImageTransparency = var17
end)
return {
	Enter = function() -- Line 96, Named "Enter"
		--[[ Upvalues[2]:
			[1]: module_upvr (readonly)
			[2]: any_GetStore_result1_upvr (readonly)
		]]
		module_upvr.Tween.RunTween(any_GetStore_result1_upvr, {
			Time = 0.5;
			Easing = "Quart";
		}, {
			Transparency = 0;
		})
	end;
	Exit = function() -- Line 100, Named "Exit"
		--[[ Upvalues[2]:
			[1]: module_upvr (readonly)
			[2]: any_GetStore_result1_upvr (readonly)
		]]
		module_upvr.Tween.RunTween(any_GetStore_result1_upvr, {
			Time = 0.5;
			Easing = "Quart";
		}, {
			Transparency = 1;
		})
	end;
}