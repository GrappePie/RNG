-- What the sigma?

local v1 = game:GetService("ServerStorage"):WaitForChild("ModuleScripts")
local v_u_2 = require(v1:WaitForChild("Item"))
local v3 = game:GetService("ReplicatedStorage")
local v4 = v3:WaitForChild("Modules")
local v_u_5 = require(v4:WaitForChild("RollModule"))
local v_u_6 = v3:WaitForChild("Remotes"):WaitForChild("Notification")
local v_u_7 = {
	{
		["Rarity"] = 1,
		["Name"] = "Lucky Potion"
	},
	{
		["Rarity"] = 2,
		["Name"] = "Speed Potion"
	},
	{
		["Rarity"] = 5,
		["Name"] = "Fortune Potion I"
	},
	{
		["Rarity"] = 10,
		["Name"] = "Fortune Potion II"
	},
	{
		["Rarity"] = 15,
		["Name"] = "Fortune Potion III"
	},
	{
		["Rarity"] = 5,
		["Name"] = "Haste Potion I"
	},
	{
		["Rarity"] = 10,
		["Name"] = "Haste Potion II"
	},
	{
		["Rarity"] = 15,
		["Name"] = "Haste Potion III"
	},
	{
		["Rarity"] = 10,
		["Name"] = "Strange Potion I"
	},
	{
		["Rarity"] = 30,
		["Name"] = "Strange Potion II"
	},
	{
		["Rarity"] = 200,
		["Name"] = "Heavenly Potion I"
	},
	{
		["Rarity"] = 1000,
		["Name"] = "Heavenly Potion II"
	},
	{
		["Rarity"] = 2000,
		["Name"] = "Santa Claus Potion"
	},
	{
		["Rarity"] = 5000,
		["Name"] = "Warp Potion"
	},
	{
		["Rarity"] = 20000,
		["Name"] = "Transcendent Potion"
	},
	{
		["Rarity"] = 100000,
		["Name"] = "Oblivion Potion"
	}
}
return function(p8, p9)
	-- upvalues: (copy) v_u_5, (copy) v_u_7, (copy) v_u_6, (copy) v_u_2
	for _ = 1, p9 do
		local v10 = v_u_5.GetItemByWeight(v_u_7)
		v_u_6:FireClient(p8, "[ Random Potion Sack ]", ("You got %* potion."):format(v10.Name), 10, "Badge")
		v_u_2.GiveItems(p8, v10.Name, 1, "Collect")
		task.wait()
	end
end