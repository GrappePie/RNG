-- What the sigma?

local v1 = {
	["Name"] = "replayCutscene",
	["Description"] = "Replay an aura's cutscene.",
	["Group"] = "Debug",
	["Args"] = {
		{
			["Type"] = "player",
			["Name"] = "player",
			["Description"] = "Target Player"
		},
		{
			["Type"] = "aura",
			["Name"] = "auraName",
			["Description"] = "Aura"
		}
	}
}
return v1