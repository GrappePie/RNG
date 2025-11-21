local l_ItemDB_0 = require(game:WaitForChild("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("DB"):WaitForChild("ItemDB"));
return {
	["Gear Basing"] = {
		2; 
		Ingredients = {
			{
				"Common", 
				1
			}, 
			{
				"Uncommon", 
				1
			}, 
			{
				"Good", 
				1
			}, 
			{
				"Rare", 
				1
			}
		}, 
		Desc = l_ItemDB_0["Gear Basing"].Description, 
		Type = "Tool"
	}, 
	["Luck Glove"] = {
		3; 
		Ingredients = {
			{
				"Gear Basing", 
				1
			}, 
			{
				"Rare", 
				3
			}, 
			{
				"Divinus", 
				2
			}, 
			{
				"Crystallized", 
				1
			}
		}, 
		Desc = l_ItemDB_0["Luck Glove"].Description, 
		Type = "Tool", 
		OneTimeCraft = true
	}, 
	["Lunar Device"] = {
		4; 
		Ingredients = {
			{
				"Gear Basing", 
				1
			}, 
			{
				"Lunar", 
				1
			}, 
			{
				"Divinus", 
				1
			}, 
			{
				"Rare", 
				1
			}
		}, 
		Desc = l_ItemDB_0["Lunar Device"].Description, 
		Type = "Tool"
	}, 
	["Solar Device"] = {
		5; 
		Ingredients = {
			{
				"Gear Basing", 
				1
			}, 
			{
				"Solar", 
				1
			}, 
			{
				"Divinus", 
				1
			}, 
			{
				"Rare", 
				1
			}
		}, 
		Desc = l_ItemDB_0["Solar Device"].Description, 
		Type = "Tool"
	}, 
	Eclipse = {
		6; 
		Ingredients = {
			{
				"Lunar", 
				1
			}, 
			{
				"Solar", 
				1
			}, 
			{
				"Divinus", 
				1
			}
		}, 
		Desc = "Some refer to this as a miracle, while others call it a disaster... \n\nwell, although it's merely a celestial event where the <font color=\"rgb(97,87,153)\">Moon</font> obscures the <font color=\"rgb(239,196,90)\">Sun</font>.", 
		Type = "Aura", 
		DoServerMessage = true
	}, 
	["Eclipse Device"] = {
		7; 
		Ingredients = {
			{
				"Solar Device", 
				1
			}, 
			{
				"Lunar Device", 
				1
			}, 
			{
				"Eclipse", 
				1
			}
		}, 
		Desc = l_ItemDB_0["Eclipse Device"].Description, 
		Type = "Tool", 
		OneTimeCraft = true, 
		DoServerMessage = true
	}, 
	["Jackpot Gauntlet"] = {
		8; 
		Ingredients = {
			{
				"Gear Basing", 
				7
			}, 
			{
				"Rare", 
				777
			}, 
			{
				"Gilded", 
				77
			}, 
			{
				"Jackpot", 
				77
			}
		}, 
		Desc = l_ItemDB_0["Jackpot Gauntlet"].Description, 
		Type = "Tool", 
		OneTimeCraft = false, 
		DoServerMessage = true
	}, 
	["Exo Gauntlet"] = {
		9; 
		Ingredients = {
			{
				"Exotic", 
				1
			}, 
			{
				"Undead", 
				1
			}, 
			{
				"Gear Basing", 
				3
			}, 
			{
				"Sidereum", 
				1
			}, 
			{
				"Precious", 
				2
			}, 
			{
				"Magnetic", 
				2
			}, 
			{
				"Gilded", 
				3
			}
		}, 
		Desc = l_ItemDB_0["Exo Gauntlet"].Description, 
		Type = "Tool", 
		OneTimeCraft = false, 
		DoServerMessage = true
	}, 
	["Galactic Device"] = {
		10; 
		Ingredients = {
			{
				"Gear Basing", 
				25
			}, 
			{
				"Solar", 
				15
			}, 
			{
				"Lunar", 
				15
			}, 
			{
				"Eclipse Device", 
				1
			}, 
			{
				"Sapphire", 
				100
			}, 
			{
				"Magnetic", 
				62
			}, 
			{
				"Diaboli", 
				80
			}, 
			{
				"Comet", 
				3
			}, 
			{
				"Galaxy", 
				1
			}
		}, 
		Desc = l_ItemDB_0["Galactic Device"].Description, 
		Type = "Tool", 
		OneTimeCraft = true, 
		DoServerMessage = true
	}, 
	["Subzero Device"] = {
		11; 
		Ingredients = {
			{
				"Gear Basing", 
				5
			}, 
			{
				"Crystallized", 
				600
			}, 
			{
				"Glacier", 
				60
			}, 
			{
				"Precious", 
				40
			}, 
			{
				"Magnetic", 
				20
			}, 
			{
				"Sidereum", 
				10
			}, 
			{
				"Aquatic", 
				2
			}, 
			{
				"Permafrost", 
				2
			}
		}, 
		Desc = l_ItemDB_0["Subzero Device"].Description, 
		Type = "Tool", 
		OneTimeCraft = true, 
		DoServerMessage = true
	}, 
	["Gravitational Device"] = {
		12; 
		Ingredients = {
			{
				"Gear Basing", 
				15
			}, 
			{
				"Diaboli", 
				152
			}, 
			{
				"Precious", 
				152
			}, 
			{
				"Magnetic", 
				75
			}, 
			{
				"Sidereum", 
				31
			}, 
			{
				"Nautilus", 
				5
			}, 
			{
				"Exotic", 
				5
			}, 
			{
				"BOUNDED", 
				3
			}, 
			{
				"Gravitational", 
				1
			}
		}, 
		Desc = l_ItemDB_0["Gravitational Device"].Description, 
		Type = "Tool", 
		OneTimeCraft = true, 
		DoServerMessage = true
	}, 
	["Windstorm Device"] = {
		13; 
		Ingredients = {
			{
				"Gear Basing", 
				5
			}, 
			{
				"Wind", 
				25
			}, 
			{
				"Precious", 
				12
			}, 
			{
				"Sidereum", 
				4
			}, 
			{
				"Aquatic", 
				1
			}, 
			{
				"Stormal", 
				1
			}
		}, 
		Desc = l_ItemDB_0["Windstorm Device"].Description, 
		Type = "Tool"
	}, 
	["Volcanic Device"] = {
		14; 
		Ingredients = {
			{
				"Hades", 
				1
			}, 
			{
				"Rage_Heated", 
				10
			}, 
			{
				"Diaboli", 
				140
			}, 
			{
				"Rage", 
				1000
			}, 
			{
				"Bleeding", 
				55
			}, 
			{
				"Gear Basing", 
				6
			}, 
			{
				"Solar Device", 
				1
			}, 
			{
				"Windstorm Device", 
				1
			}
		}, 
		Desc = l_ItemDB_0["Volcanic Device"].Description, 
		Type = "Tool"
	}, 
	["Strange Controller"] = {
		16; 
		Ingredients = {
			{
				"NULL?", 
				1
			}, 
			{
				"Eternal Flame", 
				1
			}, 
			{
				"Piece of Star", 
				1
			}, 
			{
				"Curruptaine", 
				1
			}, 
			{
				"Rainy Bottle", 
				1
			}, 
			{
				"Icicle", 
				1
			}, 
			{
				"Wind essence", 
				1
			}
		}, 
		Desc = l_ItemDB_0["Strange Controller"].Description, 
		Type = "Tool"
	}, 
	["Biome Randomizer"] = {
		17; 
		Ingredients = {
			{
				"Undefined", 
				1
			}, 
			{
				"Hades", 
				1
			}, 
			{
				"Poseidon", 
				1
			}, 
			{
				"Galaxy", 
				1
			}, 
			{
				"Astral", 
				1
			}, 
			{
				"Permafrost", 
				1
			}, 
			{
				"Stormal", 
				1
			}, 
			{
				"Strange Controller", 
				4
			}
		}, 
		Desc = l_ItemDB_0["Biome Randomizer"].Description, 
		Type = "Tool"
	}, 
	["Exoflex Device"] = {
		18; 
		Ingredients = {
			{
				"Arcane", 
				3
			}, 
			{
				"Jade", 
				5
			}, 
			{
				"Exotic", 
				50
			}, 
			{
				"Undead", 
				37
			}, 
			{
				"Sidereum", 
				350
			}, 
			{
				"Starlight", 
				80
			}, 
			{
				"Aquamarine", 
				1000
			}, 
			{
				"Forbidden", 
				2000
			}, 
			{
				"Rare", 
				30000
			}, 
			{
				"Exo Gauntlet", 
				1
			}
		}, 
		Desc = l_ItemDB_0["Exoflex Device"].Description, 
		Type = "Tool"
	}, 
	["Flesh Device"] = {
		19; 
		Ingredients = {
			{
				"Astral", 
				1
			}, 
			{
				"Hazard", 
				30
			}, 
			{
				"Corrosive", 
				15
			}, 
			{
				"Undead", 
				10
			}, 
			{
				"Crystallized", 
				6000
			}, 
			{
				"Bleeding", 
				30
			}, 
			{
				"Ink", 
				190
			}
		}, 
		Desc = l_ItemDB_0["Flesh Device"].Description, 
		Type = "Tool"
	}, 
	Bank = {
		20; 
		Ingredients = {
			{
				"Jackpot Gauntlet", 
				1
			}, 
			{
				"Gear A", 
				1
			}, 
			{
				"Gear B", 
				1
			}, 
			{
				"Gilded", 
				777
			}, 
			{
				"Jackpot", 
				777
			}
		}, 
		Desc = "Every time you roll a jackpot, 200Coin is saved in your bank (77Coin is saved in the bank when you use the jackpot gauntlet)\nEvery time you roll Gilded, 100 Coin is saved in your bank.", 
		Type = "Bank", 
		OneTimeCraft = true
	},
	["Pump Punch Gauntlet"] = {
		21; 
		Ingredients = {
			{
				"Pump King's Soul", 
				1
			}, 
			{
				"Pump King's Head", 
				80
			}, 
			{
				"Lunar_Full Moon", 
				2
			}, 
			{
				"Pump Token", 
				8000
			}, 
			{
				"Lunar Device", 
				1
			},
		}, 
		Desc = l_ItemDB_0["Pump Punch Gauntlet"].Description, 
		Type = "Tool"
	}, 
};
