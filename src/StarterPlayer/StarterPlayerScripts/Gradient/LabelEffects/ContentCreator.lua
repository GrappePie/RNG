-- What the sigma?

return function(p1)
	p1.Text = game.Players:GetPlayerByUserId(p1:GetAttribute("UserId")).DisplayName .. " \226\152\133"
	p1.Rotation = 0
	return function() end
end