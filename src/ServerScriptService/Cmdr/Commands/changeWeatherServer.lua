local ServerStorage = game:GetService("ServerStorage")
local Server0o = game.ReplicatedStorage.Server0o
local HttpService = game:GetService("HttpService")
local BiomeSettings = ServerStorage.ModuleScripts.DB.BiomeSettings

local Normal = require(BiomeSettings.Normal)
local Snowy = require(BiomeSettings.Snowy)
local Windy = require(BiomeSettings.Windy)
local Hell = require(BiomeSettings.Hell)
local Starfall = require(BiomeSettings.Starfall)
local Rainy = require(BiomeSettings.Rainy)
local Corruption = require(BiomeSettings.Corruption)
local Glitched = require(BiomeSettings.Glitched)
local Null = require(BiomeSettings.Null)
local Time = require(BiomeSettings.Time)
local Skibidi = require(BiomeSettings.Skibidi)
local Heaven = require(BiomeSettings.Heaven)

local function applyBiome(biome)
	if biome.BiomeName ~= "Normal" then
		game.ReplicatedStorage.Remotes.BiomeServerMessage:FireAllClients(biome.Message)
	end

	local lightingJson = HttpService:JSONEncode(biome.Lighting)

	Server0o:SetAttribute("CurrentBiome", biome.BiomeName)
	Server0o:SetAttribute("BiomeColor", biome.Color)
	Server0o:SetAttribute("Structures", biome.Structure)
	Server0o:SetAttribute("Lighting", lightingJson)
	Server0o:SetAttribute("LeaveIntensity", biome.LeavesShakeIntensity)
end

return function (context, weather : string, duration : number)
	if weather == "Normal" then
		applyBiome(Normal)
	elseif weather == "Snowy" then
		applyBiome(Snowy)
	elseif weather =="Windy" then
		applyBiome(Windy)
	elseif weather =="Hell" then
		applyBiome(Hell)
	elseif weather=="Starfall" then
		applyBiome(Starfall)
	elseif weather=="Rainy" then
		applyBiome(Rainy)
	elseif weather=="Corruption" then
		applyBiome(Corruption)
	elseif weather=="Glitched"then
		applyBiome(Glitched)
	elseif weather=="Null" then
		applyBiome(Null)
	elseif weather=="Time" then
		applyBiome(Time)
	elseif weather=="Skibidi" then
		applyBiome(Skibidi)
	elseif weather=="Heaven" then
		applyBiome(Heaven)
	end

	task.delay(duration, function()
		applyBiome(Normal)
	end)

	return true
end