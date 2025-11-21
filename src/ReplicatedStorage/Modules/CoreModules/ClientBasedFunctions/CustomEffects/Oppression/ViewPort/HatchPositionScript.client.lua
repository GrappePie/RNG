-- What the sigma?

local v1 = game:GetService("RunService")
local v_u_2 = Random.new()
local v_u_3 = script.Parent:WaitForChild("Camera")
local v_u_4 = script.Parent.CrossHatch
local v_u_5 = v_u_4:WaitForChild("HatchLines1")
local v_u_6 = v_u_4:WaitForChild("HatchLines2")
local v_u_7 = 0
v1.RenderStepped:Connect(function(p8)
	-- upvalues: (ref) v_u_7, (copy) v_u_3, (copy) v_u_4, (copy) v_u_5, (copy) v_u_2, (copy) v_u_6
	v_u_7 = v_u_7 + p8
	local v9 = (v_u_3.Focus.Position - v_u_3.CFrame.Position).Magnitude
	v_u_4:PivotTo(CFrame.new(script.Parent.BrokenHeartMaskModel:GetPivot().Position + v_u_3.CFrame.LookVector * script.Parent:GetAttribute("PlaneDistance"), v_u_3.CFrame.Position))
	local v10 = v_u_4
	local v11 = (v9 + 5) / 2
	v10:ScaleTo((math.max(v11, 0.01)))
	if 0.1 <= v_u_7 then
		local v12 = v_u_4:GetScale()
		local v13 = v_u_5.CFrame.RightVector * v_u_2:NextNumber(-5, 5)
		local v14 = v_u_5.CFrame.LookVector * v_u_2:NextNumber(-5, 5)
		local v15 = v_u_6.CFrame.RightVector * v_u_2:NextNumber(-5, 5)
		local v16 = v_u_6.CFrame.LookVector * v_u_2:NextNumber(-5, 5)
		v_u_5.Position = v_u_4.WorldPivot.Position + (v13 + v14) * v12
		v_u_6.Position = v_u_4.WorldPivot.Position + (v15 + v16 - v_u_6.CFrame.UpVector * 0.001) * v12
		v_u_7 = 0
	end
end)