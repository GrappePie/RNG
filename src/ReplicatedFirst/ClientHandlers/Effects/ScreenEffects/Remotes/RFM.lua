local module = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("UI"):WaitForChild("Quad"))
local Class = module.Class
local var3_result1 = Class("ImageLabel")
local var8_upvr = Class("CanvasGroup")({
	BackgroundTransparency = 1;
	SizeConstraint = Enum.SizeConstraint.RelativeYY;
	AnchorPoint = Vector2.one * 0.5;
	Size = UDim2.fromScale(0.8, 0.8);
	Position = UDim2.fromScale(0.5, 0.5);
	ZIndex = 9999999;

	var3_result1({
		Size = UDim2.fromScale(1, 1);
		BackgroundTransparency = 1;
		Image = "http://www.roblox.com/asset/?id=78026818356813";
		ImageColor3 = Color3.new(1, 0, 0);
	}), var3_result1({
		Size = UDim2.fromScale(1, 1);
		BackgroundTransparency = 1;
		Image = "http://www.roblox.com/asset/?id=105600062167997";
		ImageColor3 = Color3.fromRGB(15, 0, 0);
		ZIndex = 2;
	})
})
module.Mount(module.MainInterface, var8_upvr)
local module_2 = {}
local Sound_upvr = script:WaitForChild("Sound")
local var11_upvw
local TweenService_upvr = game:GetService("TweenService")
function module_2.Emit() -- Line 57
	--[[ Upvalues[4]:
		[1]: Sound_upvr (readonly)
		[2]: var11_upvw (read and write)
		[3]: TweenService_upvr (readonly)
		[4]: var8_upvr (readonly)
	]]
	local any_NextNumber_result1 = Random.new():NextNumber(0.8, 1.3)
	Sound_upvr.PlaybackSpeed = any_NextNumber_result1
	if var11_upvw then
		var11_upvw:Destroy()
	end
	var11_upvw = TweenService_upvr:Create(var8_upvr, TweenInfo.new(1.5 / any_NextNumber_result1), {
		GroupTransparency = 1;
		Size = UDim2.fromScale(0.4, 0.4);
	})
	var8_upvr.GroupTransparency = 0
	var8_upvr.Size = UDim2.fromScale(0.8, 0.8)
	Sound_upvr:Play()
	var11_upvw:Play()
end
return module_2