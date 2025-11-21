local Commands = game.ServerScriptService.Cmdr.Commands

local giveAura = require(Commands.giveAuraServer)
local changeWeather = require(Commands.changeWeatherServer)
local giveItem = require(Commands.giveItemServer)
local giveAllItems = require(Commands.giveAllItemsServer)

local Items = require(game.ReplicatedStorage.Modules.DB.ItemDB)
local BiomeSettings = game.ServerStorage.ModuleScripts.DB.BiomeSettings

script.Parent.Parent.RemoteFunction.ModificationsMenuClient.OnServerEvent:Connect(function(plr, type: string, input_plr: number, value: any)
	if type == "BiomeChanger" then
		local Biome0ormation = require(BiomeSettings:FindFirstChild(value))
		changeWeather(plr, value, Biome0ormation.Duration)
	elseif type == "AuraGiver" then
		giveAura(plr, game.Players:GetPlayerByUserId(input_plr), value, false)
	elseif type == "ItemGiver" then
		giveItem(plr, game.Players:GetPlayerByUserId(input_plr), value, 1)
	elseif type == "AllItemsGiver" then
		giveAllItems(plr, input_plr, 1)
	end
end)