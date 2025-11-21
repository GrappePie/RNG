--!strict
local Corruption = {
	["BiomeName"] = "Corruption",
	["Rarity"] = 9000/10,
	["Duration"] = 660,
	["Color"] = Color3.new(0.529412, 0.294118, 1),
	["BiomeMultiplier"] = 1,
	["CanSpawned"] = true,
	["IsTimeBiome"] = false,
	["LeavesShakeIntensity"] = 0,
	Structure = [[
		{
			"Grass": [
				0.1882352977991104,
				0.13333334028720856,
				0.3019607961177826
			],
			"Rock": [
				0.10196078568696976,
				0.09803921729326248,
				0.1921568661928177
			],
			"Floor": [
				0.13333334028720856,
				0.08627451211214066,
				0.2235294133424759
			],
			"Underground": [
				0.11372549086809158,
				0.08235294371843338,
				0.05882352963089943
			],
			"Ground": [
				0.11372549086809158,
				0.08235294371843338,
				0.05882352963089943
			],
			"Woods": [
				0.0784313753247261,
				0.062745101749897,
				0.09803921729326248
			],
			"Wood": [
				0.0784313753247261,
				0.062745101749897,
				0.09803921729326248
			],
			"Bush": [
				0.15294118225574493,
				0.07058823853731155,
				0.2666666805744171
			],
			"LightGrass": [
				0.24313725531101227,
				0.1921568661928177,
				0.38823530077934265
			],
			"Leafy Grass": [
				0.24313725531101227,
				0.1921568661928177,
				0.38823530077934265
			],
			"Leaves": [
				0.14901961386203766,
				0.12941177189350128,
				0.30980393290519714
			],
			"Mountain": [
				0.10588235408067703,
				0.10196078568696976,
				0.11372549086809158
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
		Text = "[Corruption]: Poisonous pollution spreads throughout the world..",
		TextColor = Color3.new(0.529412, 0.294118, 1)
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

Corruption.Lighting = Lighting :: any

Corruption.StructureColors = {
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

return Corruption