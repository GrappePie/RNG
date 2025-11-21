-- What the sigma?

return {
	["Client"] = function()
		if not game:GetService("RunService"):IsServer() then
			local v1 = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			v1:LoadAnimation(script:WaitForChild("Active")):Play()
			task.wait(0.4)
			local v2 = Instance.new("ColorCorrectionEffect", game.Lighting)
			v2.Saturation = -1
			v2.Contrast = 500
			game:GetService("Debris"):AddItem(v2, 0.02)
			coroutine.wrap(function()
				task.wait(0.05)
				local v3 = Instance.new("ColorCorrectionEffect", game.Lighting)
				v3.Saturation = -1
				v3.Contrast = 500
				game:GetService("Debris"):AddItem(v3, 0.02)
			end)()
			for v4 = 0, 3 do
				local v5 = math.random(-25 + v4 * 5, 25 - v4 * 5) / 100
				local v6 = math.random(-25 + v4 * 5, 25 - v4 * 5) / 100
				local v7 = math.random(-25 + v4 * 5, 25 - v4 * 5) / 100
				v1.CameraOffset = Vector3.new(v5, v6, v7)
				task.wait(0.02)
			end
			v1.CameraOffset = Vector3.new()
		end
	end
}