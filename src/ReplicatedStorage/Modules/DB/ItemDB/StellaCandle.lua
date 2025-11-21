-- What the sigma?

local v1 = game:GetService("RunService")
local v2 = game:GetService("ServerStorage")
local v3 = game:GetService("ReplicatedStorage")
if v1:IsClient() then
	return function() end
end
local v_u_4 = v3:WaitForChild("ItemPreviewModels"):WaitForChild("StellaCandle")
local v5 = v2:WaitForChild("ModuleScripts")
local v_u_6 = require(v5:WaitForChild("AreaBuffGiver"))
function UseItem(p7, p8)
	-- upvalues: (copy) v_u_6, (copy) v_u_4
	if 1 < p8 then
		return "Invalid usage amount."
	end
	local v9 = (p7.Character or p7.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")
	v_u_6.Place(v9.Position, "Warmth?", v_u_4, 6, 1200)
end
return UseItem