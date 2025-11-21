-- What the sigma?

local v1 = {
	["Name"] = "refresh",
	["Aliases"] = { "rf" },
	["Description"] = "Refreshes a player or set of players.",
	["Group"] = "Mod",
	["Args"] = {
		{
			["Type"] = "players",
			["Name"] = "victims",
			["Description"] = "The players to refresh."
		}
	}
}
return v1