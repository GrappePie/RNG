-- What the sigma?

if game.GameId == 15662116912 then
	game:GetService("UserInputService").InputBegan:Connect(function(p1, p2)
		if p1.KeyCode == Enum.KeyCode.M and not p2 then
			script.Parent.Enabled = not script.Parent.Enabled
		end
	end)
end