-- What the sigma?

local v1 = {
	["Name"] = "addCoin",
	["Description"] = "Giving coins",
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
			["Description"] = "Amount of coins to give"
		},
		{
			["Type"] = "boolean",
			["Name"] = "notice",
			["Description"] = "0orms that the player\'s coin has disappeared(when the maximum coin holding limit is exceeded)"
		}
	}
}
return v1