-- What the sigma?

local v1 = game:GetService("Players")
game:GetService("ReplicatedStorage")
local v_u_2 = v1.LocalPlayer
local function v5()
	-- upvalues: (copy) v_u_2
	local v3 = v_u_2:GetAttribute("CameraOffset") or Vector3.zero
	local v4 = v_u_2.Character
	if v4 then
		v4 = v4:FindFirstChildWhichIsA("Humanoid")
	end
	if v4 then
		v4.CameraOffset = v3
	end
end
local v6 = v_u_2:GetAttribute("CameraOffset") or Vector3.zero
local v7 = v_u_2.Character
if v7 then
	v7 = v7:FindFirstChildWhichIsA("Humanoid")
end
if v7 then
	v7.CameraOffset = v6
end
v_u_2:GetAttributeChangedSignal("CameraOffset"):Connect(v5)
return nil