local Inventory = require(game.ReplicatedStorage.Modules.Inventory)

return function (context, player : Player, item : string, amount : NumberValue)
	if not player then 
		return
	end


	Inventory.GiveItems(player, item, amount, tostring(item))

	return true
end