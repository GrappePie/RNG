-- What the sigma?

local v1 = {
	["Luck Glove"] = {
		["Equipped"] = { "Basic Luck" }
	},
	["Solar Device"] = {
		["Equipped"] = { "Solar Ignite" }
	},
	["Lunar Device"] = {
		["Equipped"] = { "Lunar Shift" }
	},
	["Eclipse Device"] = {
		["Equipped"] = { "Solar Ignite", "Lunar Shift" }
	},
	["Exo Gauntlet"] = {
		["Equipped"] = { "Exo Enhancement" }
	},
	["Jackpot Gauntlet"] = {
		["Equipped"] = { "Jackpot" }
	},
	["Galactic Device"] = {
		["Equipped"] = { "Cosmic Enhancement" }
	},
	["Subzero Device"] = {
		["Equipped"] = { "Subzero" }
	},
	["Gravitational Device"] = {
		["Equipped"] = { "Unstable Gravity" }
	},
	["Windstorm Device"] = {
		["Equipped"] = { "Galestorm" }
	},
	["Volcanic Device"] = {
		["Equipped"] = { "Volcanic" }
	},
	["Exoflex Device"] = {
		["Equipped"] = { "Exoflex Blessing" }
	},
	["Flesh Device"] = {
		["Equipped"] = { "Fierce Spirit" }
	},
	["Pump Punch Gauntlet"] = {
		["Equipped"] = { "Pumpking's Curse", "Pumpking's Blessing" }
	}
}
local v2 = {}
local v3 = {
	["Buffs"] = {
		{
			["BuffName"] = "Lucky",
			["Duration"] = 60,
			["Stack"] = 1
		}
	}
}
v2.Activated = v3
v1["Lucky Potion"] = v2
local v4 = {}
local v5 = {
	["Buffs"] = {
		{
			["BuffName"] = "QuickRoll",
			["Duration"] = 30,
			["Stack"] = 1
		}
	}
}
v4.Activated = v5
v1["Speed Potion"] = v4
return v1