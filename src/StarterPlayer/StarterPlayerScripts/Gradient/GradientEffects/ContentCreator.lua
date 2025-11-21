-- What the sigma?

local v_u_1 = 0
local v_u_2 = game:GetService("RunService")
return function(p_u_3)
	-- upvalues: (copy) v_u_2, (ref) v_u_1
	p_u_3.Offset = Vector2.new()
	local v_u_4 = tick()
	v_u_2.RenderStepped:Connect(function()
		-- upvalues: (copy) v_u_4, (ref) v_u_1, (copy) p_u_3
		if 0.02 <= tick() - v_u_4 then
			v_u_1 = v_u_1 + 1
			local v5 = v_u_1 / 67
			local v6 = 0.5 + math.sin(v5) * 0.5
			local v7 = Color3.fromRGB(255, 255 * v6, 255 * v6)
			local v8 = Color3.fromRGB(255, 255 * (1 - v6), 255 * (1 - v6))
			p_u_3.Color = ColorSequence.new(v7, v8)
		end
	end)
end