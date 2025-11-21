-- What the sigma?

local function v_u_11(p1, p2, p3)
	if p3 == 1 then
		return p2
	end
	if p3 == 0 then
		return p1
	end
	local v4 = Color3.new
	local v5 = p1.R
	local v6 = p2.R
	if p3 == 1 then
		v5 = v6
	elseif p3 ~= 0 then
		v5 = v5 + (v6 - v5) * p3
	end
	local v7 = p1.G
	local v8 = p2.G
	if p3 == 1 then
		v7 = v8
	elseif p3 ~= 0 then
		v7 = v7 + (v8 - v7) * p3
	end
	local v9 = p1.B
	local v10 = p2.B
	if p3 == 1 then
		v9 = v10
	elseif p3 ~= 0 then
		v9 = v9 + (v10 - v9) * p3
	end
	return v4(v5, v7, v9)
end
local v_u_12 = game:GetService("RunService")
return function(p_u_13)
	-- upvalues: (copy) v_u_12, (copy) v_u_11
	p_u_13.Offset = Vector2.new()
	local v_u_14 = tick()
	v_u_12.RenderStepped:Connect(function()
		-- upvalues: (copy) v_u_14, (copy) p_u_13, (ref) v_u_11
		if 0.02 <= tick() - v_u_14 then
			p_u_13.Color = ColorSequence.new(v_u_11(p_u_13.Color.Keypoints[1].Value, Color3.new(0.384314, 0.6, 1), 0.1))
		end
	end)
	while true do
		task.wait(0.3)
		p_u_13.Color = ColorSequence.new(Color3.new(1, 1, 1))
	end
end