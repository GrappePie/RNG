local ServerStorage = game:GetService("ServerStorage")
local ServerInfo = game.ReplicatedStorage.ServerInfo
local HttpService = game:GetService("HttpService")
local BiomeSettings = ServerStorage.ModuleScripts.DB.BiomeSettings

local DailyQuests = require(game.ServerStorage.ModuleScripts.Quests)
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
local Biomes = {Snowy, Windy, Hell, Starfall, Rainy, Corruption, Glitched, Null, Time, Skibidi}
local CurrentBiome = Normal

local function applyBiome(biome)
	-- Placeholder function to apply the biome settings to your game
	if biome.BiomeName ~= "Normal" then
		game.ReplicatedStorage.Remotes.BiomeServerMessage:FireAllClients(biome.Message)
		for i, v in pairs(game.Players:GetPlayers()) do
			DailyQuests.progressQuest(v, "Biome", biome.BiomeName, nil)
		end
	end

	local lightingJson = HttpService:JSONEncode(biome.Lighting)
	
	ServerInfo:SetAttribute("CurrentBiome", biome.BiomeName)
	ServerInfo:SetAttribute("BiomeColor", biome.Color)
	ServerInfo:SetAttribute("Structures", biome.Structure)
	ServerInfo:SetAttribute("Lighting", lightingJson)
	ServerInfo:SetAttribute("LeaveIntensity", biome.LeavesShakeIntensity)
end

local function chooseBiome()
	for _, biome in ipairs(Biomes) do
		if math.random(biome.Rarity) == 1 then
			return biome
		end
	end
	return nil  -- No biome selected
end

local function switchToNextBiome()
	-- Choose and apply a random biome
	local selectedBiome = chooseBiome()
	if selectedBiome then
		CurrentBiome = selectedBiome
		applyBiome(CurrentBiome)

		-- Wait for the duration of the current biome, then switch back to Normal
		task.wait(CurrentBiome.Duration)

		applyBiome(Normal)
	end
end

local function startBiomeRolling()
	while true do
		switchToNextBiome()

		-- If no biome is selected, wait for at least 1 second before checking again
		task.wait(1)
	end
end

-- Start the biome rolling process
startBiomeRolling()
