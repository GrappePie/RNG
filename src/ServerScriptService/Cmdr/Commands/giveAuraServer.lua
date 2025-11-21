local MarketplaceService = game:GetService("MarketplaceService")

local datastore = require(game:GetService("ServerStorage").ModuleScripts.DataStore)

return function (context, player : Player, aura : string, isspecial : boolean)
	if context ~= "Server" and (aura:lower() == "oppression") then
		if not (MarketplaceService:UserOwnsGamePassAsync(context.Executor.UserId, 899518838) or MarketplaceService:UserOwnsGamePassAsync(context.Executor.UserId, 908740614) or MarketplaceService:UserOwnsGamePassAsync(context.Executor.UserId, 1010166161)) then
			MarketplaceService:PromptGamePassPurchase(context.Executor, 1010166161)
			return "To gain this aura please purchase the gamepass for it, thank you!"
		end
	end


	local data = datastore.GetStore(player, true)
	local changedata = datastore.GetChangeStore(player, true)


	local okaytable = {Locked = false, Name = aura}
	table.insert(data.InventoryAuras, okaytable)
	changedata:SetValue("InventoryAuras", data.InventoryAuras)

	--data.QuestExpireTimeStamp = nil
	return true
end