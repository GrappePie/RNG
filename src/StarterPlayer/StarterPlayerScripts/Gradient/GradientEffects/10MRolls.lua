-- What the sigma?

local v_u_1 = game:GetService("RunService")
return function(p_u_2)
	-- upvalues: (copy) v_u_1
	local v_u_3 = 0
	p_u_2.Offset = Vector2.new()
	tick()
	v_u_1.RenderStepped:Connect(function(p4)
		-- upvalues: (ref) v_u_3, (copy) p_u_2
		v_u_3 = v_u_3 + p4 * 60
		if 100 <= v_u_3 then
			v_u_3 = 0
		end
		local v5 = Color3.fromHSV(v_u_3 / 100, 1, 1)
		local v6 = Color3.new(1, 1, 1)
		p_u_2.Color = ColorSequence.new(v6, v5)
	end)
end