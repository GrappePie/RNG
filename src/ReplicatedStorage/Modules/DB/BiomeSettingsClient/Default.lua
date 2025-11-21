-- What the sigma?

local v1 = {
	["BiomeName"] = "Normal",
	["Rarity"] = 1,
	["Duration"] = 1,
	["Color"] = Color3.new(1, 1, 1),
	["BiomeMultiplier"] = 1,
	["CanSpawned"] = true,
	["IsTimeBiome"] = false,
	["LeavesShakeIntensity"] = 0
}
local v2 = {
	["TweenTime"] = 3,
	["Ambient"] = Color3.fromRGB(52, 52, 52),
	["Brightness"] = 2,
	["ColorShift_Bottom"] = Color3.new(),
	["ColorShift_Top"] = Color3.new(),
	["EnvironmentDiffuseScale"] = 1,
	["EnvironmentSpecularScale"] = 1,
	["OutdoorAmbient"] = Color3.fromRGB(70, 70, 70),
	["ShadowSoftness"] = 0.2,
	["ExposureCompensation"] = 0,
	["Atmosphere"] = {
		["Density"] = 0.3,
		["Offset"] = 0.25,
		["Color"] = Color3.fromRGB(199, 199, 199),
		["Decay"] = Color3.fromRGB(106, 112, 125),
		["Glare"] = 0,
		["Haze"] = 0
	}
}
v1.Lighting = v2
v1.StructureColors = {
	["Leaves"] = Color3.fromRGB(75, 151, 75),
	["Woods"] = Color3.fromRGB(97, 82, 46),
	["LightGrass"] = Color3.fromRGB(75, 151, 75),
	["Floor"] = Color3.fromRGB(75, 151, 75),
	["Grass"] = Color3.fromRGB(40, 127, 71),
	["Bush"] = Color3.fromRGB(75, 151, 75),
	["Rock"] = Color3.fromRGB(100, 100, 100),
	["Mountain"] = Color3.fromRGB(86, 66, 54),
	["Underground"] = Color3.fromRGB(86, 66, 54)
}
return v1