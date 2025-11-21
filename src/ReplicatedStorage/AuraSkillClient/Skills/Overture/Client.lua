-- What the sigma?

return {
	["Client"] = function()
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(script:WaitForChild("Active")):Play()
		task.wait(0.23)
		coroutine.wrap(function()
			local v1 = Instance.new("ColorCorrectionEffect", game.Lighting)
			v1.Saturation = -1
			v1.Contrast = 500
			game:GetService("Debris"):AddItem(v1, 0.02)
			task.wait(0.05)
			local v2 = Instance.new("ColorCorrectionEffect", game.Lighting)
			v2.Saturation = -1
			v2.Contrast = 500
			game:GetService("Debris"):AddItem(v2, 0.02)
		end)()
	end
}