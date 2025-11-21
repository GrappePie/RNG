-- What the sigma?

local v_u_1 = game:GetService("RunService")
local function v_u_16(p2)
	local v3 = {}
	local v4 = p2 / 40
	local v5 = 0.5 + math.sin(v4)
	local v6 = ColorSequenceKeypoint.new
	local v7 = Color3.fromRGB
	local v8 = 255 * v5
	table.insert(v3, v6(0, v7(v8, 0, 0)))
	local v9 = ColorSequenceKeypoint.new
	local v10 = Color3.fromRGB
	local v11 = 255 * v5
	local v12 = 85 * v5
	local v13 = 85 * v5
	table.insert(v3, v9(0.3, v10(v11, v12, v13)))
	local v14 = ColorSequenceKeypoint.new
	local v15 = Color3.fromRGB
	table.insert(v3, v14(1, v15(0, 0, 0)))
	return ColorSequence.new(v3)
end
return function(p_u_17)
	-- upvalues: (copy) v_u_1, (copy) v_u_16
	p_u_17.Offset = Vector2.new()
	local v_u_18 = tick()
	local v_u_19 = 0
	v_u_1.RenderStepped:Connect(function(p20)
		-- upvalues: (ref) v_u_18, (ref) v_u_19, (copy) p_u_17, (ref) v_u_16
		v_u_18 = tick()
		v_u_19 = v_u_19 + 50 * p20
		local v21 = v_u_19 / 60
		math.sin(v21)
		local v22 = p_u_17
		local v23 = v_u_19 / 50
		v22.Rotation = 90 + math.sin(v23) * 10
		p_u_17.Color = v_u_16(v_u_19)
	end):Disconnect()
end