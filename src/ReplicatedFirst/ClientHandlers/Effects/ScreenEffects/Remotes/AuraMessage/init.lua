local module = {}
local any_Class_result1_upvr = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("UI"):WaitForChild("Quad")).Class(script:WaitForChild("Label"))
function module.Emit(arg1) -- Line 14
	--[[ Upvalues[1]:
		[1]: any_Class_result1_upvr (readonly)
	]]
	any_Class_result1_upvr(arg1)
end
return module