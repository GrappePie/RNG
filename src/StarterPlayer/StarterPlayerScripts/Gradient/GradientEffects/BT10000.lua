-- What the sigma?

local v_u_1 = game:GetService("RunService")
return function(p_u_2)
	-- upvalues: (copy) v_u_1
	p_u_2.Offset = Vector2.new()
	local v_u_3 = tick()
	local v_u_4 = 0
	v_u_1.RenderStepped:Connect(function(p5)
		-- upvalues: (ref) v_u_3, (ref) v_u_4, (copy) p_u_2
		v_u_3 = tick()
		v_u_4 = v_u_4 + 50 * p5
		local v6 = p_u_2
		local v7 = v_u_4 / 50
		v6.Rotation = 90 + math.sin(v7) * 10
	end)
end