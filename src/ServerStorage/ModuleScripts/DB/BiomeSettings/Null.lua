--!strict
local Null = {
	["BiomeName"] = "Null",
	["Rarity"] = 10000/10,
	["Duration"] = 99,
	["Color"] = Color3.new(0.203922, 0.203922, 0.203922),
	["BiomeMultiplier"] = 1,
	["CanSpawned"] = true,
	["IsTimeBiome"] = false,
	["LeavesShakeIntensity"] = 0,
	Structure = [[
		{
			"Grass": [
				0.24313725531101227,
				0.24313725531101227,
				0.24313725531101227
			],
			"Rock": [
				1,
				1,
				1
			],
			"Floor": [
				0.07058823853731155,
				0.07058823853731155,
				0.07058823853731155
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
				0.886274516582489,
				0.886274516582489,
				0.886274516582489
			],
			"Wood": [
				1,
				1,
				1
			],
			"Bush": [
				0.2823529541492462,
				0.2823529541492462,
				0.2823529541492462
			],
			"LightGrass": [
				0.14901961386203766,
				0.14901961386203766,
				0.14901961386203766
			],
			"Leafy Grass": [
				0.14901961386203766,
				0.14901961386203766,
				0.14901961386203766
			],
			"Leaves": [
				0.2823529541492462,
				0.2823529541492462,
				0.2823529541492462
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
					0,
					0,
					0
				],
				"Decay": [
					1,
					1,
					1
				],
				"Glare": 1,
				"Offset": 0.25
			},
			"Brightness": 2,
			"ColorShift_Top": [
				0,
				0,
				0
			],
			"TweenTime": 3
		}
	]],
	Message = {
		Text = "[Null]: It's too dark here..",
		TextColor = Color3.new(0, 0, 0)
	}
}

local Lighting = {
	["TweenTime"] = 3,
	["Ambient"] = Color3.fromRGB(52, 52, 52),
	["Brightness"] = 2,
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
		["Color"] = Color3.new(0.788235, 0.898039, 1),
		["Decay"] = Color3.new(0.415686, 0.439216, 0.490196),
		["Glare"] = 1,
		["Haze"] = 5
	}
}

Null.Lighting = Lighting :: any

Null.StructureColors = {
	["Leaves"] = Color3.new(0.313725, 0.576471, 1),
	["Woods"] = Color3.new(0.145098, 0.168627, 0.192157),
	["Wood"] = Color3.new(1, 1, 1),
	["LightGrass"] = Color3.new(0.145098, 0.168627, 0.192157),
	["Leafy Grass"] = Color3.new(0.145098, 0.168627, 0.192157),
	["Floor"] = Color3.new(0.058824, 0.062745, 0.070588),
	["Grass"] = Color3.new(0.313725, 0.576471, 1),
	["Bush"] = Color3.new(0.313725, 0.576471, 1),
	["Rock"] = Color3.new(0.149020, 0.282353, 0.721569),
	["Mountain"] = Color3.new(0, 0, 0),
	["Underground"] = Color3.new(0, 0, 0),
	["Ground"] = Color3.new(0, 0, 0)
}

return Null