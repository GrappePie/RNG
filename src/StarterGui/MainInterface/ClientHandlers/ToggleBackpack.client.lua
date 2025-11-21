-- What the sigma?

local v_u_1 = game:GetService("StarterGui")
local v2 = game:GetService("RunService")
local v3 = game:GetService("ReplicatedStorage")
local v_u_4 = script:FindFirstAncestorOfClass("ScreenGui"):WaitForChild("ExtraButtons"):WaitForChild("ToggleBackpack")
local v_u_5 = true
local v6 = require(v3:WaitForChild("Modules"):WaitForChild("CoreModules"):WaitForChild("ClientBasedFunctions"))
local function v7()
	-- upvalues: (copy) v_u_1, (ref) v_u_5
	if not v_u_5 and v_u_1:GetCoreGuiEnabled(Enum.CoreGuiType.Backpack) then
		v_u_1:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false)
	end
end
local function v8()
	-- upvalues: (ref) v_u_5, (copy) v_u_4, (copy) v_u_1
	if v_u_5 then
		v_u_4.Icon.Image = "http://www.roblox.com/asset/?id=6035145368"
	else
		v_u_4.Icon.Image = "http://www.roblox.com/asset/?id=6035107928"
	end
	v_u_5 = not v_u_5
	v_u_1:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, v_u_5)
end
v2.RenderStepped:Connect(v7)
v_u_4.MouseButton1Click:Connect(v8)
v6.LoadButtonEffects(v_u_4)