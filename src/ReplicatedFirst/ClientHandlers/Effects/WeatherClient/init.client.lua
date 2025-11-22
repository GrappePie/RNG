--!strict

--[[
	TODO:  MAKE THE LOCALSCRIPT DETECT IF THE CURRENT BIOME IS WINDY, AND IF SO, USE THE WINDSHAKE MODULE.
			IF IT ISN'T HOWEVER, ANY WIND INSTANCES CURRENTLY UP WILL BE REMOVED
			THIS SHOULD BE REALLY EASY TO DO WITH SERVERINFO INSIDE OF REPLICATEDSTORAGE
			~ kuro
]]

local ReplicatedStorage = game:GetService("ReplicatedStorage")

local ServerInfo = ReplicatedStorage:WaitForChild("ServerInfo")

local WindLines = require(script.WindLines)

local Biomes = {
	["Rainy"] = true,
	["Windy"] = true
}

local WindActive = false
ServerInfo:GetAttributeChangedSignal("CurrentBiome"):Connect(function()
	local CurrentBiome = ServerInfo:GetAttribute("CurrentBiome")
	print(CurrentBiome)
	if Biomes[CurrentBiome] then
		if not WindActive then
			local WIND_DIRECTION = Vector3.new(1, 0, 0.3)
			local WIND_SPEED = 20
			WindLines:Init({
				Direction = WIND_DIRECTION,
				Speed = WIND_SPEED,
				Lifetime = 1.5,
				SpawnRate = 11,
			})
			WindActive = true
		end
	else
		WindLines:Cleanup()
		WindActive = false
	end
end)