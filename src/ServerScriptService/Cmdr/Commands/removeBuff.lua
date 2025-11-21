-- What the sigma?

local v1 = {
	["Name"] = "removeBuff",
	["Description"] = "Removes target\'s buff.",
	["Group"] = "Debug",
	["Args"] = {
		{
			["Type"] = "player",
			["Name"] = "player",
			["Description"] = "Target Player"
		},
		{
			["Type"] = "buff",
			["Name"] = "buffName",
			["Description"] = "Buff\'s name"
		}
	}
}
return v1