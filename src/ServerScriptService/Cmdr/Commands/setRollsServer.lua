local datastore = require(game:GetService("ServerStorage").ModuleScripts.DataStore)

return function (context, player : Player, amount : number)
	if not (player and amount) then
		return
	end


	local changedata = datastore.GetChangeStore(player, true)
	changedata:SetValue("roll", amount)

	local Rolls = player:WaitForChild("leaderstats"):WaitForChild("Rolls")
	Rolls.Value = amount

	return true
end