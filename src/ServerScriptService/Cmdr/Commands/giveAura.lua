-- What the sigma?

local v1 = {
	["Name"] = "giveAura",
	["Description"] = "Add aura to storage",
	["Group"] = "Debug",
	["Args"] = {
		{
			["Type"] = "player",
			["Name"] = "player",
			["Description"] = "Target Player"
		},
		{
			["Type"] = "aura",
			["Name"] = "auraName",
			["Description"] = "Aura"
		},
		{
			["Type"] = "boolean",
			["Name"] = "isSpecial",
			["Description"] = "Whether to put it in special storage"
		}
	}
}
return v1