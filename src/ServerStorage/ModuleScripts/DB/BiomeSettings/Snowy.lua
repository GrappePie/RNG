--!strict
local Snowy = {
	["BiomeName"] = "Snowy",
	["Rarity"] = 600/10,
	["Duration"] = 120,
	["Color"] = Color3.new(0.756863, 0.941176, 1),
	["BiomeMultiplier"] = 3,
	["CanSpawned"] = true,
	["IsTimeBiome"] = false,
	["LeavesShakeIntensity"] = 0,
	Structure = [[
		{
			"Grass": [
				0.7568627595901489,
				0.8666666746139526,
				1
			],
			"Rock": [
				0.6705882549285889,
				0.7333333492279053,
				0.7568627595901489
			],
			"Floor": [
				0.8588235378265381,
				0.9333333373069763,
				1
			],
			"Underground": [
				0.33725491166114807,
				0.25882354378700256,
				0.21176470816135406
			],
			"Ground": [
				0.33725491166114807,
				0.25882354378700256,
				0.21176470816135406
			],
			"Woods": [
				0.3803921639919281,
				0.32156863808631897,
				0.18039216101169586
			],
			"Wood": [
				0.3803921639919281,
				0.32156863808631897,
				0.18039216101169586
			],
			"Bush": [
				0.8588235378265381,
				0.9333333373069763,
				1
			],
			"LightGrass": [
				0.8588235378265381,
				0.9333333373069763,
				1
			],
			"Leafy Grass": [
				0.8588235378265381,
				0.9333333373069763,
				1
			],
			"Leaves": [
				0.8588235378265381,
				0.9333333373069763,
				1
			],
			"Mountain": [
				0.33725491166114807,
				0.25882354378700256,
				0.21176470816135406
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
				"Offset": 0,
				"Density": 0.4000000059604645
			},
			"ShadowSoftness": 0.20000000298023224,
			"FogStart": 0,
			"TweenTime": 3
		}
	]],
	Message = {
		Text = "[Snowy]: White snow and cold begin to cover the surroundings...",
		TextColor = Color3.new(0.756863, 0.941176, 1)
	}
}

local Lighting = {
	ColorShift_Bottom = {
		0,
		0,
		0
	},
	FogColor = {
		0.7529412508010864,
		0.7529412508010864,
		0.7529412508010864
	},
	FogEnd = 100000,
	EnvironmentDiffuseScale = 1,
	Brightness = 2,
	ColorShift_Top = {
		0,
		0,
		0
	},
	ExposureCompensation = 0,
	GlobalShadows = true,
	EnvironmentSpecularScale = 1,
	GeographicLatitude = 0,
	Ambient = {
		0.20392157137393951,
		0.20392157137393951,
		0.20392157137393951
	},
	OutdoorAmbient = {
		0.27450981736183167,
		0.27450981736183167,
		0.27450981736183167
	},
	Atmosphere = {
		Haze = 0,
		Glare = 0,
		Offset = 0,
		Density = 0.4000000059604645
	},
	ShadowSoftness = 0.20000000298023224,
	FogStart = 0,
	TweenTime = 3
}

Snowy.Lighting = Lighting :: any

Snowy.StructureColors = {
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

return Snowy