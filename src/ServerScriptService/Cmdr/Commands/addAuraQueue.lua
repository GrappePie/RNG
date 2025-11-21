-- What the sigma?

local v1 = {
	["Name"] = "addAuraQueue",
	["Description"] = "Auras will appear in the order defined in future draws, and auras will be added at the end of that order.",
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
			["Description"] = "Aura (error occurs if Sol or unreleased aura is entered)"
		}
	}
}
return v1