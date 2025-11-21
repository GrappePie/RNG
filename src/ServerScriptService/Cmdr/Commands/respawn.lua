-- What the sigma?

local v1 = {
	["Name"] = "respawn",
	["Aliases"] = { "rs" },
	["Description"] = "Respawns a player or set of players.",
	["Group"] = "Mod",
	["Args"] = {
		{
			["Type"] = "players",
			["Name"] = "victims",
			["Description"] = "The players to respawn.",
			["Optional"] = true
		}
	}
}
return v1