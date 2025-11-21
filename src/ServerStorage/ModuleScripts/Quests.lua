local datastore = require(game:GetService("ServerStorage").ModuleScripts.DataStore)
local DataStoreService = game:GetService("DataStoreService")
local QuestsDataStore = DataStoreService:GetDataStore("PlayerQuests_MODDED")

local module = {}

local playerQuestData = {}

local DataStoreService = game:GetService("DataStoreService")
local QuestsDataStore = DataStoreService:GetDataStore("PlayerQuests_MODDED")
local HttpService = game:GetService("HttpService")

local Quests = {
	[1] = {
		Rewards = {
			[1] = {
				Type = "Item",
				Name = "Lucky Potion",
				Amount = 10,
			}
		},
		Type = "Use",
		Goal = 5,
		DisplayName = "Use 5 Speed Potions"
	},
	[2] = {
		Rewards = {
			[1] = {
				Type = "Item",
				Name = "Speed Potion",
				Amount = 5,
			}
		},
		Type = "Use",
		Goal = 10,
		DisplayName = "Use 10 Lucky Potions"
	},
	[3] = {
		Rewards = {
			[1] = {
				Type = "Buff",
				Name = "Basic Blessing",
				Duration = 3600,
			}
		},
		Type = "Obby",
		Goal = 5,
		DisplayName = "Complete the obby for the Basic Blessing 5 times"
	},
	[4] = {
		Rewards = {
			[1] = {
				Type = "Buff",
				Name = "Basic Blessing",
				Duration = 1800,
			}
		},
		Type = "Obby",
		Goal = 3,
		DisplayName = "Complete the obby for the Basic Blessing 3 times"
	},
	[5] = {
		Rewards = {
			[1] = {
				Type = "Item",
				Name = "Speed Potion",
				Amount = 10,
			}
		},
		Type = "Craft",
		Goal = 1,
		DisplayName = "Craft Haste Potion I"
	},
	[6] = {
		Rewards = {
			[1] = {
				Type = "Item",
				Name = "Lucky Potion",
				Amount = 5,
			},
		},
		Type = "Craft",
		Goal = 1,
		DisplayName = "Craft Fortune Potion II",
	},
	[7] = {
		Rewards = {
			[1] = {
				Type = "Item",
				Name = "Fortune Potion II",
				Amount = 1,
			},
		},
		Type = "Roll",
		Goal = 1,
		DisplayName = "Roll Undead",
	},
	[8] = {
		Rewards = {
			[1] = {
				Type = "Item",
				Name = "Lucky Potion",
				Amount = 10,
			},
			[2] = {
				Type = "Item",
				Name = "Speed Potion",
				Amount = 10
			}
		},
		Type = "Roll",
		Goal = 2,
		DisplayName = "Roll Glock 2 times",
	},
	[9] = {
		IsTimeQuest = true,
		Goal = 30,
		Rewards = {
			[1] = {
				Type = "Item",
				Name = "Fortune Potion II",
				Amount = 1,
			},
		},
		Type = "PlayTime",
		DisplayName = "Play Sol's RNG for 30 minutes",
	},
	[10] = {
		IsTimeQuest = true,
		Goal = 10,
		Rewards = {
			[1] = {
				Type = "Item",
				Name = "Fortune Potion I",
				Amount = 1,
			},
		},
		Type = "PlayTime",
		DisplayName = "Play Sol's RNG for 10 minutes",
	},
	[11] = {
		Rewards = {
			[1] = {
				Type = "Item",
				Name = "Fortune Potion II",
				Amount = 2,
			}
		},
		Type = "Biome",
		Goal = 1,
		DisplayName = "Play in Corruption Biome",
	},
	[12] = {
		Rewards = {
			[1] = {
				Type = "Item",
				Name = "Fortune Potion I",
				Amount = 2,
			}
		},
		Type = "Biome",
		Goal = 1,
		DisplayName = "Play in Hell Biome",
	},
	[13] = {
		Rewards = {
			[1] = {
				Type = "Item",
				Name = "Heavenly Potion I",
				Amount = 1,
			}
		},
		Type = "Biome",
		Goal = 1,
		DisplayName = "Play in Null Biome",
	},
	[14] = {
		Rewards = {
			[1] = {
				Type = "Item",
				Name = "Fortune Potion I",
				Amount = 3,
			}
		},
		Type = "Biome",
		Goal = 1,
		DisplayName = "Play in Starfall Biome",
	},
	[15] = {
		Rewards = {
			[1] = {
				Type = "Item",
				Name = "Lucky Potion",
				Amount = 7,
			},
			[2] = {
				Type = "Item",
				Name = "Speed Potion",
				Amount = 7
			}
		},
		Type = "Biome",
		Goal = 1,
		DisplayName = "Play in Rainy Biome",
	},
	[16] = {
		Rewards = {
			[1] = {
				Type = "Item",
				Name = "Lucky Potion",
				Amount = 6,
			},
			[2] = {
				Type = "Item",
				Name = "Speed Potion",
				Amount = 5
			}
		},
		Type = "Biome",
		Goal = 1,
		DisplayName = "Play in Snowy Biome",
	},
	[17] = {
		Rewards = {
			[1] = {
				Type = "Item",
				Name = "Lucky Potion",
				Amount = 5,
			},
			[2] = {
				Type = "Item",
				Name = "Speed Potion",
				Amount = 5
			}
		},
		Type = "Biome",
		Goal = 1,
		DisplayName = "Play in Windy Biome",
	},
	[18] = {
		Rewards = {
			[1] = {
				Type = "Item",
				Name = "Haste Potion III",
				Amount = 1,
			}
		},
		Type = "RollTimes",
		Goal = 500,
		DisplayName = "Roll 500 times",
	},
	[19] = {
		Rewards = {
			[1] = {
				Type = "Item",
				Name = "Haste Potion II",
				Amount = 1,
			}
		},
		Type = "RollTimes",
		Goal = 300,
		DisplayName = "Roll 300 times",
	},
	[20] = {
		Rewards = {
			[1] = {
				Type = "Item",
				Name = "Haste Potion I",
				Amount = 1,
			}
		},
		Type = "RollTimes",
		Goal = 100,
		DisplayName = "Roll 100 times",
	},
	[21] = {
		Rewards = {
			[1] = {
				Type = "Item",
				Name = "Lucky Potion",
				Amount = 10,
			},
		},
		Type = "Item",
		Goal = 5,
		DisplayName = "Collect 5 Speed Potions",
	},
	[22] = {
		Rewards = {
			[1] = {
				Type = "Item",
				Name = "Speed Potion",
				Amount = 5,
			},
		},
		Type = "Item",
		Goal = 10,
		DisplayName = "Collect 10 Lucky Potions",
	}
}


function module.generateUniqueID()
	return HttpService:GenerateGUID(false)
end

function module.getCurrentTime()
	return os.time()
end

function module.getRandomQuest(excludeIDs, excludeTypes)
	excludeIDs = excludeIDs or {}
	excludeTypes = excludeTypes or {}
	local quest = nil
	while quest == nil do
		local randomIndex = math.random(1, #Quests)
		local candidateQuest = Quests[randomIndex]
		if not excludeIDs[randomIndex] and not excludeTypes[candidateQuest.Type] then
			quest = candidateQuest
			quest.ID = module.generateUniqueID()
		end
	end
	return quest
end

function module.getRandomQuests()
	local selectedQuests = {}
	local questIDs = {}
	local questTypes = {}
	while #selectedQuests < 3 do
		local quest = module.getRandomQuest(questIDs, questTypes)
		table.insert(selectedQuests, quest)
		questIDs[quest.ID] = true
		questTypes[quest.Type] = true
	end
	return selectedQuests
end

function module.loadPlayerQuests(player)
	if playerQuestData[player.UserId] then
		return playerQuestData[player.UserId]
	end

	local success, data = pcall(function()
		return QuestsDataStore:GetAsync(player.UserId)
	end)

	if success then
		playerQuestData[player.UserId] = data
		return data
	else
		warn("Failed to load quests for player:", player.UserId)
		return nil
	end
end

function module.savePlayerQuestsLocally(player, data)
	playerQuestData[player.UserId] = data
end

function module.savePlayerQuestsGlobally(player)
	local data = playerQuestData[player.UserId]
	if data then
		local success, err = pcall(function()
			QuestsDataStore:SetAsync(player.UserId, data)
		end)
		if not success then
			warn("Failed to save quests for player:", player.UserId, err)
		else
			playerQuestData[player.UserId] = nil
		end
	end
end

function module.saveAllPlayerQuestsGlobally()
	for userId, data in pairs(playerQuestData) do
		local success, err = pcall(function()
			QuestsDataStore:SetAsync(userId, data)
		end)
		if not success then
			warn("Failed to save quests for player:", userId, err)
		end
	end
	playerQuestData = {}
end

function module.progressQuest(player, questtype, thing, amount)
	local data = datastore.GetStore(player, true)
	local changedata = datastore.GetChangeStore(player, true)
	for i,v in pairs(module.loadPlayerQuests(player).Quests) do
		if v.Type == questtype then
			if questtype == "RollTimes" then
				if data.QuestProgress[i] >= v.Goal then
					return
				else
					data.QuestProgress[i] += 1
					changedata:SetValue({"QuestProgress", i}, data.QuestProgress[i])
				end
			elseif questtype == "Roll" then
				if v.DisplayName == "Roll Glock 2 times" and thing == "Glock" then
					if data.QuestProgress[i] >= v.Goal then
						return
					else
						data.QuestProgress[i] += 1
						changedata:SetValue({"QuestProgress", i}, data.QuestProgress[i])
					end
				elseif v.DisplayName == "Roll Undead" and thing == "Undead" then
					if data.QuestProgress[i] >= v.Goal then
						return
					else
						data.QuestProgress[i] += 1
						changedata:SetValue({"QuestProgress", i}, data.QuestProgress[i])
					end
				end
			elseif questtype == "Use" then
				if v.DisplayName == "Use 5 Speed Potions" and thing == "Speed Potion" then
					if data.QuestProgress[i] >= v.Goal then
						return
					else
						data.QuestProgress[i] += 1
						changedata:SetValue({"QuestProgress", i}, data.QuestProgress[i])
					end
				elseif v.DisplayName == "Use 10 Lucky Potions" and thing == "Lucky Potion" then
					if data.QuestProgress[i] >= v.Goal then
						return
					else
						data.QuestProgress[i] += 1
						changedata:SetValue({"QuestProgress", i}, data.QuestProgress[i])
					end
				end
			elseif questtype == "Item" then
				if v.DisplayName == "Collect 5 Speed Potions" and thing == "Speed Potion" then
					if data.QuestProgress[i] >= v.Goal then
						return
					else
						data.QuestProgress[i] += 1
						changedata:SetValue({"QuestProgress", i}, data.QuestProgress[i])
					end
				elseif v.DisplayName == "Collect 10 Lucky Potions" and thing == "Lucky Potion" then
					if data.QuestProgress[i] >= v.Goal then
						return
					else
						data.QuestProgress[i] += 1
						changedata:SetValue({"QuestProgress", i}, data.QuestProgress[i])
					end
				end
			elseif questtype == "Craft" then
				if v.DisplayName == "Craft Fortune Potion II" and thing == "Fortune Potion II" then
					if data.QuestProgress[i] >= v.Goal then
						return
					else
						data.QuestProgress[i] += 1
						changedata:SetValue({"QuestProgress", i}, data.QuestProgress[i])
					end
				elseif v.DisplayName == "Craft Haste Potion I" and thing == "Haste Potion I" then
					if data.QuestProgress[i] >= v.Goal then
						return
					else
						data.QuestProgress[i] += 1
						changedata:SetValue({"QuestProgress", i}, data.QuestProgress[i])
					end
				end
			elseif questtype == "Obby" then
				if data.QuestProgress[i] >= v.Goal then
					return
				else
					data.QuestProgress[i] += 1
					changedata:SetValue({"QuestProgress", i}, data.QuestProgress[i])
				end
			elseif questtype == "Biome" then
				if v.DisplayName == "Play in Null Biome" and thing == "Null" then
					if data.QuestProgress[i] >= v.Goal then
						return
					else
						data.QuestProgress[i] += 1
						changedata:SetValue({"QuestProgress", i}, data.QuestProgress[i])
					end
				elseif v.DisplayName == "Play in Rainy Biome" and thing == "Rainy" then
					if data.QuestProgress[i] >= v.Goal then
						return
					else
						data.QuestProgress[i] += 1
						changedata:SetValue({"QuestProgress", i}, data.QuestProgress[i])
					end
				elseif v.DisplayName == "Play in Windy Biome" and thing == "Windy" then
					if data.QuestProgress[i] >= v.Goal then
						return
					else
						data.QuestProgress[i] += 1
						changedata:SetValue({"QuestProgress", i}, data.QuestProgress[i])
					end
				elseif v.DisplayName == "Play in Starfall Biome" and thing == "Starfall" then
					if data.QuestProgress[i] >= v.Goal then
						return
					else
						data.QuestProgress[i] += 1
						changedata:SetValue({"QuestProgress", i}, data.QuestProgress[i])
					end
				elseif v.DisplayName == "Play in Hell Biome" and thing == "Hell" then
					if data.QuestProgress[i] >= v.Goal then
						return
					else
						data.QuestProgress[i] += 1
						changedata:SetValue({"QuestProgress", i}, data.QuestProgress[i])
					end
				elseif v.DisplayName == "Play in Corruption Biome" and thing == "Corruption" then
					if data.QuestProgress[i] >= v.Goal then
						return
					else
						data.QuestProgress[i] += 1
						changedata:SetValue({"QuestProgress", i}, data.QuestProgress[i])
					end
				elseif v.DisplayName == "Play in Snowy Biome" and thing == "Snowy" then
					if data.QuestProgress[i] >= v.Goal then
						return
					else
						data.QuestProgress[i] += 1
						changedata:SetValue({"QuestProgress", i}, data.QuestProgress[i])
					end
				end
			end
		end
	end
end

game.Players.PlayerRemoving:Connect(function(player)
	module.savePlayerQuestsGlobally(player)
end)

game:BindToClose(function()
	module.saveAllPlayerQuestsGlobally()
end)

return module
