--!strict
local Normal = {
	["BiomeName"] = "Normal",
	["Rarity"] = 1,
	["Duration"] = 1,
	["Color"] = Color3.new(1, 1, 1),
	["BiomeMultiplier"] = 1,
	["CanSpawned"] = true,
	["IsTimeBiome"] = false,
	["LeavesShakeIntensity"] = 0,
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
				0.3803921639919281,
				0.32156863808631897,
				0.18039216101169586
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
	]]
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

Normal.Lighting = Lighting :: any

Normal.StructureColors = {
	["Leaves"] = Color3.fromRGB(75, 151, 75),
	["Woods"] = Color3.fromRGB(97, 82, 46),
	["Wood"] = Color3.fromRGB(97, 82, 46),
	["WoodPlanks"] = Color3.fromRGB(175, 106, 60),
	["LightGrass"] = Color3.fromRGB(75, 151, 75),
	["Leafy Grass"] = Color3.fromRGB(75, 151, 75),
	["Floor"] = Color3.fromRGB(75, 151, 75),
	["Grass"] = Color3.fromRGB(40, 127, 71),
	["Bush"] = Color3.fromRGB(75, 151, 75),
	["Rock"] = Color3.fromRGB(100, 100, 100),
	["Mountain"] = Color3.fromRGB(86, 66, 54),
	["Underground"] = Color3.fromRGB(86, 66, 54),
	["Ground"] = Color3.fromRGB(86, 66, 54)
}

return Normal