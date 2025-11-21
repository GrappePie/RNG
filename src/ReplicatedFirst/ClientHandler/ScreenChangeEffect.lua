-- What the sigma?

local v1 = game:GetService("Players")
local v_u_2 = game:GetService("TweenService")
local v3 = game:GetService("ReplicatedStorage")
local v_u_4 = v1.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainInterface")
local v_u_5 = v_u_4:WaitForChild("Teleport")
local v_u_6 = Tween0o.new(1.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local v_u_7 = {
	["Position"] = UDim2.fromScale(-2, 2)
}
local function v_u_10()
	-- upvalues: (copy) v_u_5, (copy) v_u_2, (copy) v_u_6, (copy) v_u_7, (copy) v_u_4
	local v_u_8 = v_u_5:Clone()
	local v_u_9 = v_u_2:Create(v_u_8, v_u_6, v_u_7)
	v_u_8.Parent = v_u_4
	v_u_9:Play()
	v_u_9.Completed:Once(function()
		-- upvalues: (ref) v_u_8, (ref) v_u_9
		v_u_8:Destroy()
		v_u_8 = nil
		v_u_9:Destroy()
		v_u_9 = nil
	end)
end
v3:WaitForChild("Remotes"):WaitForChild("ScreenEffect").OnClientEvent:Connect(function(p11)
	-- upvalues: (copy) v_u_10
	if p11 == "Teleport" then
		v_u_10()
	end
end)
return nil