-- What the sigma?

local v_u_1 = {
	Color3.fromRGB(255, 0, 174),
	Color3.fromRGB(58, 255, 137),
	Color3.fromRGB(74, 186, 255),
	Color3.fromRGB(255, 0, 0)
}
local v_u_2 = game:GetService("RunService")
return function(p_u_3)
	-- upvalues: (copy) v_u_2, (copy) v_u_1
	p_u_3.Offset = Vector2.new()
	local v_u_4 = tick()
	v_u_2.RenderStepped:Connect(function()
		-- upvalues: (ref) v_u_4, (copy) p_u_3, (ref) v_u_1
		if tick() - v_u_4 >= Random.new():NextNumber(0, 0.06) then
			v_u_4 = tick()
			p_u_3.Color = ColorSequence.new(v_u_1[math.random(1, #v_u_1)], v_u_1[math.random(1, #v_u_1)])
		end
	end)
end