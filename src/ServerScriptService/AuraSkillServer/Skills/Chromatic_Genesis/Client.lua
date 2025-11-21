
return {
	["Client"] = function()
		if not game:GetService("RunService"):IsServer() then
			local v1 = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			task.wait(0.8)
		end
	end
}