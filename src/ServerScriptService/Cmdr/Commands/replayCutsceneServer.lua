local DataStoreService = game:GetService("DataStoreService")

return function (context, player : Player, aura: string)
	if context ~= "Server" and (not (player) and (player ~= context.Executor)) then
		return
	end

	game.ReplicatedStorage.Remotes.PlayRollEffect:FireClient(player, aura)

	return true
end