--!strict
local Hell = {
	["BiomeName"] = "Hell",
	["Rarity"] = 6666/10,
	["Duration"] = 660,
	["Color"] = Color3.new(1, 0.368627, 0),
	["BiomeMultiplier"] = 6,
	["CanSpawned"] = true,
	["IsTimeBiome"] = false,
	["LeavesShakeIntensity"] = 0,
	Structure = [[
		{
			"Grass": [
				0.6039215922355652,
				0,
				0.0117647061124444
			],
			"Rock": [
				0.18431372940540314,
				0.10588235408067703,
				0.0470588244497776
			],
			"Floor": [
				0,
				0,
				0
			],
			"Underground": [
				0,
				0,
				0
			],
			"Ground": [
				0,
				0,
				0
			],
			"Woods": [
				0,
				0,
				0
			],
			"Wood": [
				0,
				0,
				0
			],
			"Bush": [
				0.6039215922355652,
				0,
				0.0117647061124444
			],
			"LightGrass": [
				0.6039215922355652,
				0,
				0.0117647061124444
			],
			"Leafy Grass": [
				0.6039215922355652,
				0,
				0.0117647061124444
			],
			"Leaves": [
				0.6039215922355652,
				0,
				0.0117647061124444
			],
			"Mountain": [
				0,
				0,
				0
			]
		}
	]],
	Lighting = [[
		{
			"ExposureCompensation": 0,
			"ColorShift_Bottom": [
				0,
				0,
				0
			],
			"EnvironmentDiffuseScale": 1,
			"EnvironmentSpecularScale": 1,
			"ShadowSoftness": 0.2,
			"Ambient": [
				0.20392157137393951,
				0.20392157137393951,
				0.20392157137393951
			],
			"OutdoorAmbient": [
				0.27450981736183167,
				0.27450981736183167,
				0.27450981736183167
			],
			"Atmosphere": {
				"Density": 0.5,
				"Haze": 5,
				"Color": [
					0.3019607961177826,
					0,
					0.0117647061124444
				],
				"Decay": [
					0.686274528503418,
					0.32156863808631897,
					0.07450980693101883
				],
				"Glare": 0,
				"Offset": 0.25
			},
			"Brightness": 0.4,
			"ColorShift_Top": [
				0,
				0,
				0
			],
			"TweenTime": 3
		}
	]],
	Message = {
		Text = "[Hell]: A strong and violent energy of chaos overtakes the world..",
		TextColor = Color3.new(1, 0.368627, 0)
	}
}

local Lighting = {
	["TweenTime"] = 3,
	["Ambient"] = Color3.fromRGB(52, 52, 52),
	["Brightness"] = 0.4,
	["ColorShift_Bottom"] = Color3.new(0, 0, 0),
	["ColorShift_Top"] = Color3.new(0, 0, 0),
	["EnvironmentDiffuseScale"] = 1,
	["EnvironmentSpecularScale"] = 1,
	["OutdoorAmbient"] = Color3.fromRGB(70, 70, 70),
	["ShadowSoftness"] = 0.2,
	["ExposureCompensation"] = 0,
	["Atmosphere"] = {
		["Density"] = 0.5,
		["Offset"] = 0.25,
		["Color"] = Color3.new(0.301961, 0, 0.011765),
		["Decay"] = Color3.new(0.686275, 0.321569, 0.07451),
		["Glare"] = 0,
		["Haze"] = 5
	}
}

Hell.Lighting = Lighting :: any

Hell.StructureColors = {
	["Leaves"] = Color3.new(0.603922, 0, 0.011765),
	["Woods"] = Color3.new(0, 0, 0),
	["Wood"] = Color3.new(0, 0, 0),
	["LightGrass"] = Color3.new(0.603922, 0, 0.011765),
	["Leafy Grass"] = Color3.new(0.603922, 0, 0.011765),
	["Floor"] = Color3.new(0, 0, 0),
	["Grass"] = Color3.new(0.603922, 0, 0.011765),
	["Bush"] = Color3.new(0.603922, 0, 0.011765),
	["Rock"] = Color3.new(0.184314, 0.105882, 0.047059),
	["Mountain"] = Color3.new(0, 0, 0),
	["Underground"] = Color3.new(0, 0, 0),
	["Ground"] = Color3.new(0, 0, 0)
}

return Hell