-- What the sigma?

return {
	["Client"] = function()
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(script:WaitForChild("Active")):Play()
	end
}