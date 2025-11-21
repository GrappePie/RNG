-- What the sigma?

local v1 = {
	["Name"] = "removeItem",
	["Description"] = "Delete items owned by the target. However, if the quantity to be deleted is greater than the quantity of items the target has, all items are simply deleted.",
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
			["Description"] = "Quantity of items to be deleted, but only positive numbers are allowed."
		}
	}
}
return v1