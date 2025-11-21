-- What the sigma?

local v_u_1 = game:GetService("Players")
return function(p2)
	-- upvalues: (copy) v_u_1
	p2.Rotation = 0
	if p2:GetAttribute("UserId") then
		p2.Text = (v_u_1.LocalPlayer.DisplayName)
	end
	return function() end
end