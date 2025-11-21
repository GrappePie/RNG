local DataStore = game:GetService("DataStoreService")
local ds = DataStore:GetDataStore("LeaderStatSave_MODDED")

game.Players.PlayerAdded:connect(function(player)
	local leader = Instance.new("Folder",player)
	leader.Name = "leaderstats"
	local Rolls = Instance.new("IntValue",leader)
	Rolls.Name = "Rolls"
	Rolls.Value = ds:GetAsync(player.UserId) or 0
	ds:SetAsync(player.UserId, Rolls.Value)
end)

game.Players.PlayerRemoving:connect(function(player)
	ds:SetAsync(player.UserId, player.leaderstats.Rolls.Value) 
end)
