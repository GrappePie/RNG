-- What the sigma?

local v1 = {
	["Name"] = "equipAura",
	["Aliases"] = { "aura" },
	["Description"] = "Aura equipped / not reflected in stats",
	["Group"] = "Debug",
	["Args"] = {
		{
			["Type"] = "aura",
			["Name"] = "auraName",
			["Description"] = "Aura Name"
		},
		{
			["Type"] = "players",
			["Name"] = "player",
			["Description"] = "Target Players"
		}
	}
}
return v1