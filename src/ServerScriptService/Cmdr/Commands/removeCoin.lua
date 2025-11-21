-- What the sigma?

local v1 = {
	["Name"] = "removeCoin",
	["Description"] = "removing coins",
	["Group"] = "Debug",
	["Args"] = {
		{
			["Type"] = "player",
			["Name"] = "player",
			["Description"] = "Target Player"
		},
		{
			["Type"] = "number",
			["Name"] = "amount",
			["Description"] = "Amount of coins to remove"
		}
	}
}
return v1