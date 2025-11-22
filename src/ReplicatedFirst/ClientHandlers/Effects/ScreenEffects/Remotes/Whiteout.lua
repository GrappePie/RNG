local TweenService = game:GetService("TweenService")
local module_2 = {}
local module = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("UI"):WaitForChild("Quad"))
local var4_upvw
local var5_upvw
module.Mount(game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainInterface"), module.Class("Frame")({
	AnchorPoint = Vector2.new(0.5, 0.5);
	Position = UDim2.fromScale(0.5, 0.5);
	Size = UDim2.fromScale(1, 1);
	BackgroundColor3 = Color3.new(1, 1, 1);
	BorderSizePixel = 0;
	ZIndex = 9;
	[module.Event.Created] = function(arg1) -- Line 35
		--[[ Upvalues[1]:
			[1]: var5_upvw (read and write)
		]]
		var5_upvw = arg1
	end;
}))
local any_Create_result1_upvr_2 = TweenService:Create(var5_upvw, TweenInfo.new(3), {
	BackgroundTransparency = 0;
})
local any_Create_result1_upvr = TweenService:Create(var5_upvw, TweenInfo.new(1), {
	BackgroundTransparency = 1;
})
local function Emit() -- Line 45
	--[[ Upvalues[3]:
		[1]: any_Create_result1_upvr_2 (readonly)
		[2]: any_Create_result1_upvr (readonly)
		[3]: var4_upvw (read and write)
	]]
	any_Create_result1_upvr_2:Pause()
	any_Create_result1_upvr:Pause()
	any_Create_result1_upvr_2:Play()
	task.wait(3)
	any_Create_result1_upvr:Play()
	var4_upvw = nil
end
function module_2.Emit() -- Line 56
	--[[ Upvalues[2]:
		[1]: var4_upvw (read and write)
		[2]: Emit (readonly)
	]]
	if var4_upvw and var4_upvw ~= coroutine.running() then
		task.cancel(var4_upvw)
		var4_upvw = nil
	end
	var4_upvw = task.defer(Emit)
end
return module_2
