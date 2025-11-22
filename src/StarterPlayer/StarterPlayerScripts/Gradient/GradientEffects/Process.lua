-- What the sigma?

return function(p_u_1)
	local v_u_2 = game:GetService("TweenService"):Create(p_u_1, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
		["Offset"] = Vector2.new(1, 0)
	})
	local function v_u_3()
		-- upvalues: (copy) p_u_1, (copy) v_u_2, (copy) v_u_3
		p_u_1.Offset = Vector2.new(-1, 0)
		v_u_2:Play()
		task.delay(1.2, v_u_3)
	end
	p_u_1.Offset = Vector2.new(-1, 0)
	v_u_2:Play()
	task.delay(1.2, v_u_3)
end