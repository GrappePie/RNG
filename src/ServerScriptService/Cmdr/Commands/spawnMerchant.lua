-- What the sigma?

local v1 = {
	["Name"] = "spawnMerchant",
	["Description"] = "Spawn Merchant",
	["Group"] = "Debug",
	["Args"] = {
		{
			["Type"] = "string",
			["Name"] = "Merchant",
			["Description"] = "Target Merchant"
		},
		{
			["Type"] = "integer",
			["Name"] = "Time",
			["Description"] = "Amount of time the Merchant should be selling for"
		},
		{
			["Type"] = "number",
			["Name"] = "ProductAmount",
			["Description"] = "Amount of products the Merchant should be selling (max 14)",
			["Optional"] = true
		},
	}
}
return v1