local DataStoreService = game:GetService("DataStoreService")

return function (context, player : Player)
	if not (player) then
		return
	end

	player:Kick("Reset Data. Please rejoin :)")

	task.wait()

	DataStoreService:GetDataStore("PlayerData_MODDED"):RemoveAsync(("Player_%s"):format(tostring(player.UserId)))

	return true
end