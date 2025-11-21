--!strict
local Windy = {
	["BiomeName"] = "Windy",
	["Rarity"] = 500/10,
	["Duration"] = 120,
	["Color"] = Color3.new(0.482353, 0.819608, 1),
	["BiomeMultiplier"] = 1,
	["CanSpawned"] = true,
	["IsTimeBiome"] = false,
	["LeavesShakeIntensity"] = 15,
	Structure = [[
		{
			"Grass": [
				0.1568627506494522,
				0.49803921580314636,
				0.27843138575553894
			],
			"Rock": [
				0.3921568691730499,
				0.3921568691730499,
				0.3921568691730499
			],
			"Floor": [
				0.29411765933036804,
				0.5921568870544434,
				0.29411765933036804
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
				0.145098,
				0.168627,
				0.192157
			],
			"WoodPlanks": [
				0.6862745098039216,
				0.41568627450980394,
				0.23529411764705882
			],
			"Bush": [
				0.29411765933036804,
				0.5921568870544434,
				0.29411765933036804
			],
			"LightGrass": [
				0.29411765933036804,
				0.5921568870544434,
				0.29411765933036804
			],
			"Leafy Grass": [
				0.29411765933036804,
				0.5921568870544434,
				0.29411765933036804
			],
			"Leaves": [
				0.29411765933036804,
				0.5921568870544434,
				0.29411765933036804
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
				"Offset": 0.25,
				"Density": 0.30000001192092896
			},
			"ShadowSoftness": 0.20000000298023224,
			"FogStart": 0,
			"TweenTime": 3
		}
	]],
	Message = {
		Text = "[Windy]: A refreshing and cool wind passes through the world..",
		TextColor = Color3.new(0.482353, 0.819608, 1)
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

Windy.Lighting = Lighting :: any

Windy.StructureColors = {
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

return Windy

-- windy is bugged a bit due to structure being improper. fix later