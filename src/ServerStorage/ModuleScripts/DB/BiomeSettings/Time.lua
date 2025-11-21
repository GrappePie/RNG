local v1 = {
	["BiomeName"] = "Time",
	["Rarity"] = 8888/10,
	["Duration"] = 510,
	["Color"] = Color3.new(0.35, 1, 0.2),
	["BiomeMultiplier"] = 1,
	["CanSpawned"] = true,
	["IsTimeBiome"] = true,
	["LeavesShakeIntensity"] = 0,
	Structure = '{"Grass":[0.35294117647058826,0.6274509803921569,0.4117647058823529],"Rock":[0.35294117647058826,0.39215686274509803,0.3137254901960784],"Floor":[0.39215686274509803,0.7450980392156863,0.49019607843137253],"Underground":[0.27450980392156865,0.35294117647058826,0.19607843137254902],"Woods":[0.3137254901960784,0.39215686274509803,0.23529411764705882],"Bush":[0.47058823529411764,0.5882352941176471,0.47058823529411764],"LightGrass":[0.27450980392156865,0.49019607843137253,0.35294117647058826],"Leaves":[0.29411764705882354,0.592156862745098,0.29411764705882354],"Mountain":[0.27450980392156865,0.35294117647058826,0.19607843137254902]}',  -- CHANGE ME
	Lighting = '{"ExposureCompensation":0,"ColorShift_Bottom":[0,0,0],"EnvironmentDiffuseScale":1,"EnvironmentSpecularScale":1,"ShadowSoftness":0.2,"Ambient":[0.20392157137393952,0.20392157137393952,0.20392157137393952],"OutdoorAmbient":[0.27450981736183169,0.27450981736183169,0.27450981736183169],"Atmosphere":{"Density":0.5,"Haze":5,"Color":[0.16862745583057404,0.43529412150382998,0.7803921699523926],"Decay":[0.4156862795352936,0.43921568989753725,0.4901960790157318],"Glare":0,"Offset":0.25},"Brightness":2,"ColorShift_Top":[0,0,0],"TweenTime":3}',
	Message = {Text = "[Time]: The movement and surroundings around you seem unusual..", TextColor = Color3.new(0.35, 1, 0.2)}
}
local v2 = {
	["TweenTime"] = 3,
	["Ambient"] = Color3.fromRGB(1, 1, 1),
	["Brightness"] = 3,
	["ColorShift_Bottom"] = Color3.new(0, 0, 0),
	["ColorShift_Top"] = Color3.new(0, 0, 0),
	["EnvironmentDiffuseScale"] = 0,
	["EnvironmentSpecularScale"] = 1,
	["OutdoorAmbient"] = Color3.fromRGB(5, 5, 5),
	["ShadowSoftness"] = 0.2,
	["ExposureCompensation"] = 0,
	["Atmosphere"] = {
		["Density"] = 0.25,
		["Offset"] = 0.25,
		["Color"] = Color3.new(0.788235, 0.898039, 1),
		["Decay"] = Color3.new(0.415686, 0.439216, 0.490196),
		["Glare"] = 0,
		["Haze"] = 0
	}
}
v1.Lighting = v2
v1.StructureColors = {
	["Leaves"] = Color3.new(75 / 255, 151 / 255, 75 / 255),
	["Woods"] = Color3.new(80 / 255, 100 / 255, 60 / 255),
	["LightGrass"] = Color3.new(70 / 255, 125 / 255, 90 / 255),
	["Floor"] = Color3.new(100 / 255, 190 / 255, 125 / 255),
	["Grass"] = Color3.new(90 / 255, 160 / 255, 105 / 255),
	["Bush"] = Color3.new(120 / 255, 150 / 255, 120 / 255),
	["Rock"] = Color3.new(90 / 255, 100 / 255, 80 / 255),
	["Mountain"] = Color3.new(70 / 255, 90 / 255, 50 / 255),
	["Underground"] = Color3.new(70 / 255, 90 / 255, 50 / 255)
}
return v1
