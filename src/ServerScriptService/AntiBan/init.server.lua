--!strict
local games = {
	{
		PlaceID = 92762006264260,
		UniverseID = 6492421676,
		Mirror = 1
	};--[[
	{
		PlaceID = 1,
		UniverseID = 1,
		Mirror = 2
	};
	{
		PlaceID = 1,
		UniverseID = 1,
		Mirror = 3
	};]]
} :: {
	{
		PlaceID: number,
		UniverseID: number,
		Mirror: number
	}
}

game:BindToClose(function()
	local Response = game:GetService("HttpService"):GetAsync("https://games.roproxy.com/v1/games/multiget-playability-status?universeIds="..game.GameId)
	Response = game:GetService("HttpService"):JSONDecode(Response)
	if Response[1].playabilityStatus == "GameUnapproved" or Response[1].isPlayable == false then
		local function teleportPlayers(chosenGame)
			local newResponse = game:GetService("HttpService"):GetAsync("https://games.roproxy.com/v1/games/multiget-playability-status?universeIds="..tostring(chosenGame.UniverseID))
			if newResponse[1].isPlayable == true then
				for iteration, player in game.Players:GetPlayers() do
					game:GetService("TeleportService"):Teleport(chosenGame.PlaceID, player, nil, game:GetService("TeleportService"):GetArrivingTeleportGui())
				end
			else
				table.remove(games, table.find(games, chosenGame))
				chosenGame = games[Random.new():NextInteger(1, #games)]
				teleportPlayers(chosenGame)
			end
		end
		local chosenGame = games[Random.new():NextInteger(1, #games)]
		game:GetService("TeleportService"):SetTeleportGui(game.ReplicatedStorage.Assets.TPGui)
		teleportPlayers(chosenGame)
	else
		print("Game's still up and running without any issues; Cancel Anti-Ban Protocol.")
	end
end)