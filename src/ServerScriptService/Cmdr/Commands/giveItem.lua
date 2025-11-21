 -- What the sigma?

local v1 = {
	["Name"] = "giveItem",
	["Description"] = "Provide item to target",
	["Group"] = "Debug",
	["Args"] = {
		{
			["Type"] = "player",
			["Name"] = "player",
			["Description"] = "Target Player"
		},
		{
			["Type"] = "item",
			["Name"] = "itemName",
			["Description"] = "Only items in ItemDB are available."
		},
		{
			["Type"] = "number",
			["Name"] = "number",
			["Description"] = "Quantity of items to be paid, but only positive numbers are allowed."
		}
	}
}
return v1