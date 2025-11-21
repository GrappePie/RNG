-- What the sigma?

local v1 = {
	["Name"] = "addBuff",
	["Description"] = "Adds buff to target.",
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
		},
		{
			["Type"] = "number",
			["Name"] = "Length",
			["Description"] = "Buff\'s length"
		},
		{
			["Type"] = "integer",
			["Name"] = "Stack",
			["Description"] = "Buff\'s stack"
		}
	}
}
return v1