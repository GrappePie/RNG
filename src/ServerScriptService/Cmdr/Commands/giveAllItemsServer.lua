local Inventory = require(game.ReplicatedStorage.Modules.Inventory)

local Items = require(game.ReplicatedStorage.Modules.DB.ItemDB)

return function (context, player : Player, amount : NumberValue)
	if not player then 
		return
	end


	for item, _ in Items do
		Inventory.GiveItems(player, item, amount or 1, tostring(item))
	end

	return true
end