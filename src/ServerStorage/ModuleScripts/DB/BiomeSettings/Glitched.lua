--!strict
local Glitched = {
	["BiomeName"] = "Glitched",
	["Rarity"] = 15000/10, --100000, -- per second (normally per biome change) (30,000)
	["Duration"] = 164,
	["Color"] = Color3.new(0.192157, 0.368627, 1),
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
				0.886274516582489,
				0.886274516582489,
				0.886274516582489
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
			"ColorShift_Bottom": [
				0,
				0,
				0
			],
			"FogColor": [
				0.7529412508010864,
				0.7529412508010864,
				0.7529412508010864
			],
			"FogEnd": 100000,
			"EnvironmentDiffuseScale": 1,
			"Brightness": 2,
			"ColorShift_Top": [
				0,
				0,
				0
			],
			"ExposureCompensation": 0,
			"GlobalShadows": true,
			"EnvironmentSpecularScale": 1,
			"GeographicLatitude": 0,
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
				"Haze": 0,
				"Glare": 0,
				"Offset": 0.25,
				"Density": 0.30000001192092896
			},
			"ShadowSoftness": 0.20000000298023224,
			"FogStart": 0,
			"TweenTime": 3
		}
	]],
	Message = {
		Text = "[Manager]: Unexpected Error Occurred. [Code: 404].",
		TextColor = Color3.new(0.192157, 0.368627, 1)
	}
}

local Lighting = {
	["ColorShift_Bottom"] = {
		0,
		0,
		0
	},
	["FogColor"] = {
		0.7529412508010864,
		0.7529412508010864,
		0.7529412508010864
	},
	["FogEnd"] = 100000,
	["EnvironmentDiffuseScale"] = 1,
	["Brightness"] = 2,
	["ColorShift_Top"] = {
		0,
		0,
		0
	},
	["ExposureCompensation"] = 0,
	["GlobalShadows"] = true,
	["EnvironmentSpecularScale"] = 1,
	["GeographicLatitude"] = 0,
	["Ambient"] = {
		0.20392157137393951,
		0.20392157137393951,
		0.20392157137393951
	},
	["OutdoorAmbient"] = {
		0.27450981736183167,
		0.27450981736183167,
		0.27450981736183167
	},
	["Atmosphere"] = {
		["Haze"] = 0,
		["Glare"] = 0,
		["Offset"] = 0.25,
		["Density"] = 0.30000001192092896
	},
	["ShadowSoftness"] = 0.20000000298023224,
	["FogStart"] = 0,
	["TweenTime"] = 3
}

Glitched.Lighting = Lighting :: any

Glitched.StructureColors = {
	["Leaves"] = Color3.new(0.313725, 0.576471, 1),
	["Woods"] = Color3.new(0.145098, 0.168627, 0.192157),
	["Wood"] = Color3.new(0.145098, 0.168627, 0.192157),
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

return Glitched