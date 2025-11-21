-- What the sigma?

local v1 = {
	["Name"] = "addAchievement",
	["Description"] = "Adds an Achievement",
	["Group"] = "Debug",
	["Args"] = {
		{
			["Type"] = "player",
			["Name"] = "player",
			["Description"] = "Target Player"
		},
		{
			["Type"] = "string",
			["Name"] = "Achievement",
			["Description"] = "Achievement to give"
		},
		{
			["Type"] = "boolean",
			["Name"] = "complete",
			["Description"] = "Fill half way or not"
		}
	}
}
return v1