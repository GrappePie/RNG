local TweenService = game:GetService("TweenService")
local module_2 = {}
local module = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("UI"):WaitForChild("Quad"))
local Class = module.Class
local var5_upvw
module.Mount(game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainInterface"), Class("Frame")({
	AnchorPoint = Vector2.new(0.5, 0.5);
	Position = UDim2.fromScale(0.5, 0.5);
	Size = UDim2.fromScale(2, 2);
	BackgroundColor3 = Color3.new();
	BorderSizePixel = 0;
	ZIndex = 10;

	Class("UIGradient")({
		Rotation = -45;
		Offset = Vector2.new(-3, 0);
		Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.001, 0), NumberSequenceKeypoint.new(0.999, 0), NumberSequenceKeypoint.new(1, 1)});
		[module.Event.Created] = function(arg1) -- Line 44
			--[[ Upvalues[1]:
				[1]: var5_upvw (read and write)
			]]
			var5_upvw = arg1
		end;
	})
}))
local any_Create_result1_upvr = TweenService:Create(var5_upvw, Tween0o.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
	Offset = Vector2.new();
})
local any_Create_result1_upvr_2 = TweenService:Create(var5_upvw, Tween0o.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
	Offset = Vector2.new(-3, 0);
})
function module_2.Enter() -- Line 55
	--[[ Upvalues[3]:
		[1]: var5_upvw (read and write)
		[2]: any_Create_result1_upvr_2 (readonly)
		[3]: any_Create_result1_upvr (readonly)
	]]
	var5_upvw.Offset = Vector2.new(5, 0)
	any_Create_result1_upvr_2:Pause()
	any_Create_result1_upvr:Play()
end
function module_2.Exit() -- Line 61
	--[[ Upvalues[3]:
		[1]: var5_upvw (read and write)
		[2]: any_Create_result1_upvr (readonly)
		[3]: any_Create_result1_upvr_2 (readonly)
	]]
	var5_upvw.Offset = Vector2.new()
	any_Create_result1_upvr:Pause()
	any_Create_result1_upvr_2:Play()
end
return module_2
