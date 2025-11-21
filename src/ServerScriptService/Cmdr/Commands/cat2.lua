-- What the sigma?

local v1 = {
	["Name"] = "cat2",
	["Description"] = "Outputs the player\'s data.",
	["Group"] = "Debug",
	["Args"] = {
		{
			["Type"] = "number",
			["Name"] = "UserId",
			["Description"] = "Target Player\'s UserId"
		},
		{
			["Type"] = "catableKey",
			["Name"] = "DataKey",
			["Description"] = "The name of the data to be output (\'Data\' means the entire data.)"
		}
	}
}
return v1