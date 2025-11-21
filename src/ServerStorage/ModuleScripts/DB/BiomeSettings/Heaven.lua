--!strict

--[[
	Block Mayhem reference teehee
]]

local Corruption = {
	["BiomeName"] = "Heaven",
	["Rarity"] = 7777/10,
	["Duration"] = 600,
	["Color"] = Color3.fromRGB(254, 243, 187),
	["BiomeMultiplier"] = 1,
	["CanSpawned"] = true,
	["IsTimeBiome"] = false,
	["LeavesShakeIntensity"] = 1,
	Structure = [[
		{
			"Leaves": [
				0.5411764705882353,
				0.6705882352941176,
				0.5215686274509804
			],
			"WoodPlanks": [
				0.6392156862745098,
				0.6392156862745098,
				0.6392156862745098
			],
			"Woods": [
				0.34901960784313724,
				0.23529411764705882,
				0.2235294117647059
			],
			"Wood": [
				0.34901960784313724,
				0.23529411764705882,
				0.2235294117647059
			],
			"LightGrass": [
				0.5411764705882353,
				0.6705882352941176,
				0.5215686274509804
			],
			"Leafy Grass": [
				0.5411764705882353,
				0.6705882352941176,
				0.5215686274509804
			],
			"Floor": [
				0.6901960784313725,
				0.6901960784313725,
				0.6901960784313725
			],
			"Grass": [
				0.4588235294117647,
				0.5686274509803921,
				0.44313725490196076
			],
			"Bush1": [
				0.5411764705882353,
				0.6705882352941176,
				0.5215686274509804
			],
			"Bush2": [
				0.42745098039215684,
				0.5294117647058824,
				0.4117647058823529
			],
			"Rock": [
				0.6392156862745098,
				0.6352941176470588,
				0.6470588235294118
			],
			"Mountain": [
				0.6392156862745098,
				0.6352941176470588,
				0.6470588235294118
			],
			"Underground": [
				0.8666666666666667,
				0.8274509803921568,
				0.6392156862745098
			],
			"Ground": [
				0.8666666666666667,
				0.8274509803921568,
				0.6392156862745098
			],
			"Ground2": [
				0.8392156862745098,
				0.803921568627451,
				0.6235294117647059
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
			"FogColor": [
				0.7529412508010864,
				0.7529412508010864,
				0.7529412508010864
			],
			"FogEnd": 100000,
			"EnvironmentDiffuseScale": 0.2639999985694885,
			"EnvironmentSpecularScale": 0,
			"ShadowSoftness": 0.20000000298023224,
			"FogStart": 0,
			"Ambient": [
				0.5411764979362488,
				0.5411764979362488,
				0.5411764979362488
			],
			"OutdoorAmbient": [
				0.501960813999176,
				0.501960813999176,
				0.501960813999176
			],
			"GlobalShadows": true,
			"Brightness": 3.1333863735198975,
			"ColorShift_Top": [
				0,
				0,
				0
			],
			"GeographicLatitude": 200,
			"TweenTime": 2
		}
	]],
	Message = {
		Text = "[Server]: The Biome Is Changing To Heaven",
		TextColor = Color3.fromRGB(254, 243, 187)
	}
}

local Lighting = {
	["TweenTime"] = 2,
	ExposureCompensation = 0,
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
	EnvironmentDiffuseScale = 0.2639999985694885,
	EnvironmentSpecularScale = 0,
	ShadowSoftness = 0.20000000298023224,
	FogStart = 0,
	Ambient = { 
		0.5411764979362488, 
		0.5411764979362488, 
		0.5411764979362488 
	},
	OutdoorAmbient = { 
		0.501960813999176, 
		0.501960813999176, 
		0.501960813999176 
	},
	GlobalShadows = true,
	Brightness = 3.1333863735198975,
	ColorShift_Top = { 
		0, 
		0, 
		0 
	},
	GeographicLatitude = 200,
	Atmosphere = {
		Density = 0.25,
		Offset = 0,
		Color = Color3.new(1, 1, 1),
		Decay = Color3.new(1, 1, 1),
		Glare = 0,
		Haze = 0
	}
}

Corruption.Lighting = Lighting :: any

Corruption.StructureColors = {
	["Leaves"] = Color3.fromRGB(138, 171, 133),
	["WoodPlanks"] = Color3.fromRGB(163, 163, 163),
	["Woods"] = Color3.fromRGB(89, 60, 57),
	["Wood"] = Color3.fromRGB(89, 60, 57),
	["LightGrass"] = Color3.fromRGB(138, 171, 133),
	["Leafy Grass"] = Color3.fromRGB(138, 171, 133),
	["Floor"] = Color3.fromRGB(176, 176, 176),
	["Grass"] = Color3.fromRGB(117, 145, 113),
	--["Bush"] = Color3.fromRGB(138, 171, 133),
	["Bush1"] = Color3.fromRGB(138, 171, 133),
	["Bush2"] = Color3.fromRGB(109, 135, 105),
	["Rock"] = Color3.fromRGB(163, 162, 165),
	["Mountain"] = Color3.fromRGB(163, 162, 165),
	["Underground"] = Color3.fromRGB(221, 211, 163),
	["Ground"] = Color3.fromRGB(221, 211, 163),
	["Ground2"] = Color3.fromRGB(214, 205, 158)
}

return Corruption