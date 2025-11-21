--!strict
local Starfall = {
	["BiomeName"] = "Starfall",
	["Rarity"] = 7500/10,
	["Duration"] = 600,
	["Color"] = Color3.new(0.192157, 0.368627, 1),
	["BiomeMultiplier"] = 1,
	["CanSpawned"] = true,
	["IsTimeBiome"] = false,
	["LeavesShakeIntensity"] = 0,
	Structure = [[
		{
			"Grass": [
				0.3137255012989044,
				0.5764706134796143,
				1
			],
			"Rock": [
				0.14901961386203766,
				0.2823529541492462,
				0.7215686440467834
			],
			"Floor": [
				0.05882352963089943,
				0.062745101749897,
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
				0.14509804546833038,
				0.16862745583057404,
				0.1921568661928177
			],
			"Wood": [
				0.145098,
				0.168627,
				0.192157
			],
			"Bush": [
				0.3137255012989044,
				0.5764706134796143,
				1
			],
			"LightGrass": [
				0.14509804546833038,
				0.16862745583057404,
				0.1921568661928177
			],
			"Leafy Grass": [
				0.14509804546833038,
				0.16862745583057404,
				0.1921568661928177
			],
			"Leaves": [
				0.3137255012989044,
				0.5764706134796143,
				1
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
				"Haze": 5,
				"Glare": 0,
				"Offset": 0.25,
				"Density": 0.5
			},
			"ShadowSoftness": 0.20000000298023224,
			"FogStart": 0,
			"TweenTime": 3
		}
	]],
	Message = {
		Text = "[Starfall]: Beautiful and dreamy starlight pours into the world..",
		TextColor = Color3.new(0.192157, 0.368627, 1)
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
		Haze = 5,
		Glare = 0,
		Offset = 0.25,
		Density = 0.5
	},
	ShadowSoftness = 0.20000000298023224,
	FogStart = 0,
	TweenTime = 3
}

Starfall.Lighting = Lighting :: any

Starfall.StructureColors = {
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

return Starfall