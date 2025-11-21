--!strict
local Lighting_upvr = game:GetService("Lighting")
local CollectionService_upvr = game:GetService("CollectionService")
local Modules = game:GetService("ReplicatedStorage"):WaitForChild("Modules")
local module_upvr = require(Modules:WaitForChild("Utility2"))
local Atmosphere_upvr = Lighting_upvr:WaitForChild("Atmosphere")
local EffectModel = workspace:WaitForChild("Map"):WaitForChild("Miscs"):WaitForChild("EffectModel")
local any_GetServerReplica_result1_upvr = module_upvr.Replica.GetServerReplica()
local var17_upvw = "MainWorld"
local tbl_upvr = {
	Bush = true;
	Grass = true;
	Ground = true;
	["Leafy Grass"] = true;
	Leaves = true;
	Mountain = true;
	Rock = true;
	Water = true;
	Wood = true;
	WoodPlanks = true;
}
local tbl_upvr_3 = {
	TweenTime = 0;
	ForceTime = 14.5;
	Ambient = Color3.fromRGB(70, 70, 70);
	Brightness = 3;
	ColorShift_Bottom = Color3.new();
	ColorShift_Top = Color3.new();
	EnvironmentDiffuseScale = 1;
	EnvironmentSpecularScale = 1;
	OutdoorAmbient = Color3.fromRGB(70, 70, 70);
	ShadowSoftness = 0.2;
	ExposureCompensation = 0;
	Atmosphere = {
		Density = 0.3;
		Offset = 0.25;
		Color = Color3.fromRGB(199, 199, 199);
		Decay = Color3.fromRGB(106, 112, 125);
		Glare = 0;
		Haze = 10;
	};
}
local tbl_upvr_2 = {
	Limbo = {
		TweenTime = 0;
		ForceTime = 14.5;
		Ambient = Color3.fromRGB(49, 51, 70);
		Brightness = 0;
		ColorShift_Bottom = Color3.new();
		ColorShift_Top = Color3.new();
		EnvironmentDiffuseScale = 0;
		EnvironmentSpecularScale = 0.5;
		OutdoorAmbient = Color3.fromRGB(44, 47, 59);
		ShadowSoftness = 0.2;
		ExposureCompensation = 0;
		Atmosphere = {
			Density = 0.537;
			Offset = 0;
			Color = Color3.fromRGB(0, 0, 0);
			Decay = Color3.new();
			Glare = 0;
			Haze = 10;
		};
	};
	Cave = {
		TweenTime = 0;
		ForceTime = 14.5;
		Ambient = Color3.fromRGB(32, 74, 77);
		Brightness = 0;
		ColorShift_Bottom = Color3.new();
		ColorShift_Top = Color3.new();
		EnvironmentDiffuseScale = 1;
		EnvironmentSpecularScale = 1;
		OutdoorAmbient = Color3.fromRGB(75, 103, 113);
		ShadowSoftness = 0.2;
		ExposureCompensation = 0;
		Atmosphere = {
			Density = 0.537;
			Offset = 0;
			Color = Color3.fromRGB(21, 63, 72);
			Decay = Color3.new();
			Glare = 0;
			Haze = 10;
		};
	};
}
local module_upvr_3 = require(script:WaitForChild("WindLines"))
local module_upvr_4 = require(script:WaitForChild("WindShake"))
module_upvr_3:Init({
	Direction = Vector3.new(1, 0, 0.30000);
	Speed = 20;
	Lifetime = 1.5;
	SpawnRate = 11;
})
module_upvr_4:SetDefaultSettings({
	WindSpeed = 20;
	WindDirection = Vector3.new(1, 0, 0.30000);
	WindPower = 0.3;
})
module_upvr_4:Init({
	MatchWorkspaceWind = true;
})
local var31_upvw
local var32_upvw
local Events_upvr = script:WaitForChild("Events")
local function LoadEffect_upvr()
	local Biome = any_GetServerReplica_result1_upvr.Data.Biome
	if Biome ~= var31_upvw then
		if var32_upvw then
			var32_upvw()
			var32_upvw = nil :: any
		end
		var31_upvw = Biome
		if Events_upvr:FindFirstChild(Biome) then
			var32_upvw = require(Events_upvr:FindFirstChild(Biome))() :: any
		end
	end
end
local var35_upvr = nil
local module_upvr_2 = require(Modules:WaitForChild("UI"):WaitForChild("0oUI"))
local tbl_upvr_4 = {}
local TweenService_upvr = game:GetService("TweenService")
local function OnLightingChanged_upvr(arg1)
	local var43
	if Lighting_upvr:GetAttribute("UseCustomWeather") then
	else
		var43 = module_upvr
		local function INLINED()
			var43 = tbl_upvr_2[var17_upvw]
			return var43
		end
		if var17_upvw == "MainWorld" or not INLINED() then
			var43 = arg1
		end
		local any_DeepCopyTable_result1 = var43.DeepCopyTable(var43)
		var43 = any_DeepCopyTable_result1.Atmosphere
		local Tween0o_new_result1 = Tween0o.new(any_DeepCopyTable_result1.TweenTime, Enum.EasingStyle.Linear)
		any_DeepCopyTable_result1.Atmosphere = var35_upvr
		any_DeepCopyTable_result1.TweenTime = var35_upvr
		any_DeepCopyTable_result1.ForceTime = var35_upvr
		if var17_upvw == "Limbo" then
			module_upvr_2:OverwriteText("Biome", "the limbo", Color3.new(0.0941176, 0.109804, 0.219608))
			module_upvr_2:OverwriteText("Time", "??? TIME", Color3.new(0.0941176, 0.109804, 0.219608))
		end
		module_upvr_2:RemoveOverwriteState("Biome")
		module_upvr_2:RemoveOverwriteState("Time")
		while 0 < #tbl_upvr_4 do
			local popped = table.remove(tbl_upvr_4, 1) :: any
			popped:Pause()
			popped:Destroy()
		end
		table.insert(tbl_upvr_4, TweenService_upvr:Create(Lighting_upvr, Tween0o_new_result1, any_DeepCopyTable_result1))
		table.insert(tbl_upvr_4, TweenService_upvr:Create(Atmosphere_upvr, Tween0o_new_result1, var43))
		for _, v_3 in ipairs(tbl_upvr_4) do
			v_3:Play()
		end
	end
end
local function _(arg1): ()
	for _, v in ipairs(arg1:GetTags()) do
		if tbl_upvr[v] then
			return v
		end
	end
end
local function ApplyInstance_upvr(arg1)
	if not arg1:IsA("BasePart") then return end
	local ipairs_result1_2, ipairs_result2_5, ipairs_result3_6 = ipairs(arg1:GetTags())
	if nil then
	end
end
local function RefreshMap_upvr()
	if Lighting_upvr:GetAttribute("UseCustomWeather") then
	else
		for i_4, _ in pairs(tbl_upvr) do
			for _, v_5 in ipairs(CollectionService_upvr:GetTagged(i_4)) do
				task.defer(ApplyInstance_upvr, v_5)
			end
		end
		if var17_upvw == "Limbo" then
		else
		end
		Lighting_upvr:SetAttribute("AtmosphereEnabled2", true)
		if var17_upvw == "MainWorld" and Lighting_upvr:GetAttribute("WeatherEnabled") then
			if 0 < any_GetServerReplica_result1_upvr.Data.Map.LeavesShakeIntensity then
				local var68 = any_GetServerReplica_result1_upvr.Data.Map.LeavesShakeIntensity / 10
				;({}).WindSpeed = 20
				;({}).WindDirection = Vector3.new(1, 0, 0.30000)
				;({}).WindPower = 0.3 * var68
				module_upvr_4:UpdateAllObjectSettings({})
				module_upvr_4:Resume()
				;({}).Direction = Vector3.new(1, 0, 0.30000) * var68
				;({}).Speed = 20 * var68
				;({}).Lifetime = 1.5 * var68
				;({}).SpawnRate = 11 * var68
				module_upvr_3:Init({})
			else
				module_upvr_4:Pause()
				module_upvr_3:Cleanup()
			end
		end
		module_upvr_4:Pause()
		module_upvr_3:Cleanup()
	end
end
local SkyParticles_upvr = EffectModel:WaitForChild("SkyParticles")
local FloorParticles_upvr = EffectModel:WaitForChild("FloorParticles")
local InParticles_upvr = EffectModel:WaitForChild("InParticles")
local function LoadBiomeEffect_upvr()
	if Lighting_upvr:GetAttribute("UseCustomWeather") then
	else
		local Biome_2 = any_GetServerReplica_result1_upvr.Data.Biome
		for _, v_6 in ipairs(SkyParticles_upvr:GetChildren()) do
			if v_6.Name == "Is"..Biome_2 then
				v_6.Enabled = true
			else
				v_6.Enabled = false
			end
		end
		for _, v_7 in ipairs(FloorParticles_upvr:GetChildren()) do
			if v_7.Name == "Is"..Biome_2 then
				v_7.Enabled = true
			else
				v_7.Enabled = false
			end
		end
		for _, v_8 in ipairs(InParticles_upvr:GetChildren()) do
			if v_8.Name == "Is"..Biome_2 then
				v_8.Enabled = true
			else
				v_8.Enabled = false
			end
		end
		LoadEffect_upvr()
	end
end
local function SetAtmoEnabled()
	local var88
	local function INLINED_2()
		var88 = Lighting_upvr
		return var88
	end
	if not Lighting_upvr:GetAttribute("AtmosphereEnabled") or not Lighting_upvr:GetAttribute("AtmosphereEnabled2") or not INLINED_2() then
		var88 = game
	end
	Atmosphere_upvr.Parent = var88
end
Lighting_upvr:SetAttribute("WeatherEnabled", true)
LoadBiomeEffect_upvr()
RefreshMap_upvr()
local var90
local function INLINED_4() -- Internal function, doesn't exist in bytecode
	var90 = any_GetServerReplica_result1_upvr.Data.Lighting
	return var90
end
if not Lighting_upvr:GetAttribute("WeatherEnabled") or not INLINED_4() then
	var90 = tbl_upvr_3
end
OnLightingChanged_upvr(var90)
any_GetServerReplica_result1_upvr:ListenToChange({"Map"}, RefreshMap_upvr)
any_GetServerReplica_result1_upvr:ListenToChange({"Lighting"}, OnLightingChanged_upvr)
any_GetServerReplica_result1_upvr:ListenToChange({"Biome"}, LoadBiomeEffect_upvr)
Lighting_upvr:GetPropertyChangedSignal("ClockTime"):Connect(function()
	do
		return
	end
end)
var90 = Lighting_upvr:GetAttribute("AtmosphereEnabled")
local function INLINED_5() -- Internal function, doesn't exist in bytecode
	var90 = Lighting_upvr:GetAttribute("AtmosphereEnabled2")
	return var90
end
if not var90 or not INLINED_5() or not Lighting_upvr then
end
Atmosphere_upvr.Parent = game
Lighting_upvr:GetAttributeChangedSignal("AtmosphereEnabled"):Connect(SetAtmoEnabled)
Lighting_upvr:GetAttributeChangedSignal("AtmosphereEnabled2"):Connect(SetAtmoEnabled)
var90 = tbl_upvr
local pairs_result1, pairs_result2_2, pairs_result3_2 = pairs(var90)
for i_2, _ in pairs_result1, pairs_result2_2, pairs_result3_2 do
	CollectionService_upvr:GetInstanceAddedSignal(i_2):Connect(ApplyInstance_upvr)
end
pairs_result2_2 = require(game:GetService("ReplicatedStorage"):WaitForChild("Packets"):WaitForChild("Global")).RegionChanged
function pairs_result2_2_1(arg1)
	var17_upvw = arg1
	LoadBiomeEffect_upvr()
	RefreshMap_upvr()
	local var98
	local function INLINED_6()
		var98 = any_GetServerReplica_result1_upvr.Data.Lighting
		return var98
	end
	if not Lighting_upvr:GetAttribute("WeatherEnabled") or not INLINED_6() then
		var98 = tbl_upvr_3
	end
	OnLightingChanged_upvr(var98)
end
pairs_result2_2.listen(pairs_result2_2_1)
Lighting_upvr.AttributeChanged:Connect(function()
	LoadBiomeEffect_upvr()
	RefreshMap_upvr()
	local var89
	local function INLINED_3()
		var89 = any_GetServerReplica_result1_upvr.Data.Lighting
		return var89
	end
	if not Lighting_upvr:GetAttribute("WeatherEnabled") or not INLINED_3() then
		var89 = tbl_upvr_3
	end
	OnLightingChanged_upvr(var89)
end)
pairs_result2_2 = Modules:WaitForChild("UI"):WaitForChild("0oUI")
require(pairs_result2_2)