local ServerStorage = game:GetService("ServerStorage")
local ServerInfo = game.ReplicatedStorage.ServerInfo
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

	ServerInfo:SetAttribute("CurrentBiome", biome.BiomeName)
	ServerInfo:SetAttribute("BiomeColor", biome.Color)
	ServerInfo:SetAttribute("Structures", biome.Structure)
	ServerInfo:SetAttribute("Lighting", lightingJson)
	ServerInfo:SetAttribute("LeaveIntensity", biome.LeavesShakeIntensity)
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