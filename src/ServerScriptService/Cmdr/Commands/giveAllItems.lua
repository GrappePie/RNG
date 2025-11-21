 -- What the sigma?

local v1 = {
	["Name"] = "giveAllItems",
	["Description"] = "Provide all items in-game to target",
	["Group"] = "Debug",
	["Args"] = {
		{
			["Type"] = "player",
			["Name"] = "player",
			["Description"] = "Target Player"
		},
		{
			["Type"] = "number",
			["Name"] = "number",
			["Description"] = "Quantity of items to be paid, but only positive numbers are allowed.",
			["Optional"] = true
		}
	}
}
return v1