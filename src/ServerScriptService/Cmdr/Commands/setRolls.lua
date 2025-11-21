-- What the sigma?

local v1 = {
	["Name"] = "setRolls",
	["Description"] = "Change rolls",
	["Group"] = "Debug",
	["Args"] = {
		{
			["Type"] = "player",
			["Name"] = "player",
			["Description"] = "Target Player"
		},
		{
			["Type"] = "integer",
			["Name"] = "amount",
			["Description"] = "Amount"
		}
	}
}
return v1