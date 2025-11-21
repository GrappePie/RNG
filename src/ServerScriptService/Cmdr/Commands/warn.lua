-- What the sigma?

local v1 = {
	["Name"] = "warn",
	["Description"] = "Gives a warn to player",
	["Group"] = "Mod",
	["Args"] = {
		{
			["Type"] = "player",
			["Name"] = "target",
			["Description"] = "The player to warn."
		},
		{
			["Type"] = "string",
			["Name"] = "reason",
			["Description"] = "reason."
		}
	}
}
return v1