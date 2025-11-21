--!strict
local PlayersService = game:GetService("Players")

local Player = PlayersService.LocalPlayer

local Character = Player.Character or Player.CharacterAdded:Wait()

Character.Destroying:Connect(function()
	coroutine.wrap(function()
		task.wait(PlayersService.RespawnTime or 3)
		Player:LoadCharacter()
	end)()
end)