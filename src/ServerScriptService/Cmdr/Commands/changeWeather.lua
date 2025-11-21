-- What the sigma?

local v1 = {
	["Name"] = "changeWeather",
	["Description"] = "changes game\'s weather",
	["Group"] = "Debug",
	["Args"] = {
		{
			["Type"] = "string",
			["Name"] = "weatherName",
			["Description"] = "weather name"
		},
		{
			["Type"] = "number",
			["Name"] = "duration",
			["Description"] = "weather duration"
		}
	}
}
return v1