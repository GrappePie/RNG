local datastore = require(game:GetService("ServerStorage").ModuleScripts.DataStore)
local function valueExists(tbl, value)
	for _, v in ipairs(tbl) do
		if v == value then
			return true
		end
	end
	return false
end

return function (context, player : Player, tag : string)
	local data = datastore.GetStore(player, true)
	local changedata = datastore.GetChangeStore(player, true)
	
	if valueExists(data.OwnedTags, tag) then
		return "Player already owns this tag"
	else
		table.insert(data.OwnedTags, tag)
		changedata:SetValue("OwnedTags", data.OwnedTags)
	end
	return true
end