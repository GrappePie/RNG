-- What the sigma?

local v_u_1 = game:GetService("RunService")
return function(p_u_2)
	-- upvalues: (copy) v_u_1
	local v_u_3 = 0
	local v_u_7 = v_u_1.RenderStepped:Connect(function(p4)
		-- upvalues: (ref) v_u_3, (copy) p_u_2
		v_u_3 = v_u_3 + p4 * 50
		if 100 <= v_u_3 then
			v_u_3 = 0
		end
		local v5 = Color3.fromHSV(v_u_3 / 100, 1, 1)
		local v6 = Color3.fromRGB(v5.R * 255 + 80, v5.G * 255 + 80, v5.B * 255 + 80)
		p_u_2.Color = ColorSequence.new(v6)
	end)
	local v_u_8 = nil
	v_u_8 = p_u_2.Destroying:Once(function()
		-- upvalues: (copy) v_u_7, (ref) v_u_8
		v_u_7:Disconnect()
		v_u_8:Disconnect()
	end)
end