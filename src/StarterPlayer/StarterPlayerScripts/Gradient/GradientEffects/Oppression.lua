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
		v_u_4 = v_u_4 + 80 * p5
		local v6 = v_u_4 / 60
		local v7 = math.sin(v6)
		local v8 = p_u_2
		local v9 = v_u_4 / 50
		v8.Rotation = 90 + math.sin(v9) * 10
		p_u_2.Color = ColorSequence.new(Color3.fromRGB(141 * v7, 126 * v7, 255 * v7), Color3.fromRGB(43 * v7, 0, 255 * v7))
	end)
end