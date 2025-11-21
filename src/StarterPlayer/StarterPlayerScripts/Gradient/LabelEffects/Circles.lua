-- What the sigma?

return function(p1)
	p1.Text = "[\226\151\143]" .. game.Players:GetPlayerByUserId(p1:GetAttribute("UserId")).DisplayName
	p1.Rotation = 0
	return function() end
end