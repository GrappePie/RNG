local UserInputService = game:GetService("UserInputService")

local ReplicatedStorage = game.ReplicatedStorage

local Remotes = ReplicatedStorage:WaitForChild("Remotes")
local ChangePlayerAFKMode = Remotes:WaitForChild("ChangePlayerAFKMode")

UserInputService.WindowFocused:Connect(function()
	ChangePlayerAFKMode:FireServer(false)
end)
UserInputService.WindowFocusReleased:Connect(function()
	ChangePlayerAFKMode:FireServer(true)
end)