-- What the sigma?

local v1 = {
	["Name"] = "cat",
	["Description"] = "Outputs the player\'s data.",
	["Group"] = "Debug",
	["Args"] = {
		{
			["Type"] = "player",
			["Name"] = "player",
			["Description"] = "Target Player"
		},
		{
			["Type"] = "catableKey",
			["Name"] = "DataKey",
			["Description"] = "The name of the data to be output (\'Data\' means the entire data.)"
		}
	}
}
return v1