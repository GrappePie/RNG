local ReplicatedStorage = game.ReplicatedStorage
local Players = game:GetService("Players")
local BadgeService = game:GetService("BadgeService")
local DataStoreService = game:GetService("DataStoreService")
local ServerScriptService = game:GetService("ServerScriptService")
local DailyQuests = require(game.ServerStorage.ModuleScripts.Quests)
game.Workspace.Terrain:SetAttribute("ServerCreated", game.Workspace:GetServerTimeNow())
ReplicatedStorage:WaitForChild("Modules"):WaitForChild("RemoteFunction"):WaitForChild("AchievementClient").OnServerEvent:Connect(function(plr)
	--local achvdata = datastore.GetStore(plr).Achievements
	_G.achvdata = {
		["A sincere person"] = {
			Goal = 14,
			Rewards = {
				Items = {
					["Heavenly Potion I"] = 1,
				},
			},
			Index = 37,
			Description = "Complete all daily quests 14 times.",
		},
		["Terrible Experience"] = {
			Index = 30,
			SmallDescription = "[ Locked ]",
			Goal = 1,
			Description = "Unlock achievement and check out the description!",
			DisplayName = "The Stigma",
		},
		["I can't stop playing this"] = {
			IsTimeAchievement = true,
			Index = 20,
			Goal = 60,
			Rewards = {
				Coins = 150,
			},
			Description = "You played Sol's RNG for 1 hour.",
			SmallDescription = "literaly",
		},
		["Breakthrough"] = {
			Index = 24,
			Goal = 1,
			Rewards = {
				Items = {
					["Rune of Wind"] = 1,
				},
			},
			Description = "Get a Biome Exclusive Aura without native rarity.",
			SmallDescription = "a great deal of luck",
		},
		["Perfect attendance award"] = {
			Index = 39,
			Goal = 30,
			Rewards = {
				Items = {
					["Heavenly Potion II"] = 5,
				},
			},
			Description = "Complete all daily quests 30 times in a row.",
			SmallDescription = "You've worked hard :)",
		},
		["My first 100M+ finding"] = {
			Goal = 99999999,
			Description = "You got 100M+ Rarity stat",
			Index = 12,
			SmallDescription = "THERE IS NO WAY!!",
		},
		["I give my life..."] = {
			Index = 7,
			Goal = 5000000,
			Rewards = {
				Items = {
					["Void Coin"] = 1,
				},
				Coins = 100000,
			},
			Description = "You've rolled 5,000,000 times",
			SmallDescription = "And I got a good aura (or cooked)",
		},
		["I was just lucky"] = {
			Index = 14,
			Goal = 1,
			Rewards = {
				Coins = 500,
			},
			Description = "You have a 0.01% chance to get this achievement every minute.",
			SmallDescription = "You got Undead(real)",
		},
		["My first 1M+ finding"] = {
			Index = 10,
			Goal = 1000000,
			Rewards = {
				Coins = 750,
			},
			Description = "You got 1M+ Rarity stat",
			SmallDescription = "Woah, That's really lucky!",
		},
		["Break the Reality"] = {
			Index = 28,
			Goal = 10000,
			Rewards = {
				Items = {
					["Rune of Everything"] = 1,
				},
			},
			Description = "Get 10,000 Biome Exclusive Auras without native rarity.",
			SmallDescription = "EMPTY",
		},
		["Touch the grass"] = {
			IsTimeAchievement = true,
			Index = 22,
			Goal = 60000,
			Rewards = {
				Items = {
					["Heavenly Potion II"] = 1,
				},
			},
			Description = "You played Sol's RNG for 1,000 hours.",
			SmallDescription = "Go outside",
		},
		["Would You Leave? / Nah I'd Roll"] = {
			Index = 4,
			Goal = 10000,
			Rewards = {
				Coins = 1000,
			},
			Description = "You've rolled 10,000 times",
			SmallDescription = "You fell in love with gambling",
		},
		["Spotted the Sol"] = {
			Index = 29,
			Goal = 1,
			Rewards = {
				Coins = 50,
			},
			Description = "Unlock achievement and check out the description!",
			SmallDescription = "[ Locked ]",
		},
		["Achievement collector I"] = {
			Index = 15,
			SmallDescription = "",
			Goal = 10,
			Description = "You got 10 achievements",
			DisplayName = "Achievement Slayer",
		},
		["Take a break"] = {
			IsTimeAchievement = true,
			Index = 19,
			Goal = 30,
			Rewards = {
				Coins = 50,
			},
			Description = "You played Sol's RNG for 30 minutes.",
			SmallDescription = "Enough rest makes the game much more enjoyable",
		},
		["Something went wrong"] = {
			Hidden = true,
			Index = 34,
		},
		["-One who stands before God-"] = {
			Goal = 1,
			Description = "Unlock achievement and check out the description!",
			Index = 32,
			SmallDescription = "[ Locked ]",
		},
		["When is payday???"] = {
			Goal = 30,
			Rewards = {
				Items = {
					["Heavenly Potion II"] = 2,
				},
			},
			Index = 38,
			Description = "Complete all daily quests 30 times.",
		},
		["I just started Sol's RNG"] = {
			Index = 1,
			Goal = 1,
			Rewards = {
				Coins = 10,
			},
			Description = "You've rolled for the first time",
			SmallDescription = "Welcome to Sol's RNG!",
		},
		["-Flaws in the World-"] = {
			Goal = 1,
			Description = "Unlock achievement and check out the description!",
			Index = 31,
			SmallDescription = "[ Locked ]",
		},
		["Roll, Eat, Sleep, Repeat"] = {
			Index = 6,
			Goal = 1000000,
			Rewards = {
				Coins = 50000,
			},
			Description = "You've rolled 1,000,000 times",
			SmallDescription = "My life be like",
		},
		["Finished work for today"] = {
			Goal = 1,
			Rewards = {
				Items = {
					["Lucky Potion"] = 10,
					["Speed Potion"] = 10,
				},
			},
			Index = 35,
			Description = "Complete all daily quests.",
		},
		["Good job this week too"] = {
			Goal = 7,
			Rewards = {
				Items = {
					["Haste Potion I"] = 3,
					["Fortune Potion II"] = 3,
				},
			},
			Index = 36,
			Description = "Complete all daily quests 7 times.",
		},
		["Break the limit"] = {
			Index = 25,
			Goal = 5,
			Rewards = {
				Items = {
					["Rune of Wind"] = 1,
					["Rune of Rainstorm"] = 1,
					["Rune of Frost"] = 1,
				},
			},
			Description = "Get 5 Biome Exclusive Auras without native rarity.",
			SmallDescription = "There is no limit",
		},
		["Waste of time"] = {
			IsTimeAchievement = true,
			Index = 21,
			Goal = 6000,
			Rewards = {
				Coins = 1000,
			},
			Description = "You played Sol's RNG for 100 hours.",
			SmallDescription = "Be productive",
		},
		["Achievement Master"] = {
			Index = 16,
			SmallDescription = "",
			Goal = 20,
			Description = "You got 20 achievements",
			DisplayName = "Achievement Slayer",
		},
		["There's no way to stop it!"] = {
			Index = 5,
			Goal = 100000,
			Rewards = {
				Coins = 10000,
			},
			Description = "You've rolled 100,000 times",
			SmallDescription = "Playing even when I'm asleep!",
		},
		["I'm addicted to Sol's RNG"] = {
			Index = 3,
			Goal = 1000,
			Rewards = {
				Coins = 100,
			},
			Description = "You've rolled 1,000 times",
			SmallDescription = "This game is too easy",
		},
		["Break the Space"] = {
			Index = 26,
			Goal = 100,
			Rewards = {
				Items = {
					["Rune of Galaxy"] = 1,
					["Rune of Corruption"] = 1,
					["Rune of Hell"] = 1,
				},
			},
			Description = "Get 100 Biome Exclusive Auras without native rarity.",
			SmallDescription = "EMPTY",
		},
		["A little bit of rolls"] = {
			Index = 2,
			Goal = 100,
			Rewards = {
				Coins = 50,
			},
			Description = "You've rolled 100 times",
			SmallDescription = "Your shiny journey of getting rare stats",
		},
		["In-dev"] = {
			Goal = 1,
			Description = "You've played while game is in In-dev",
			Index = 18,
			SmallDescription = "Thanks for early supporting!",
		},
		["Eternal time..."] = {
			IsTimeAchievement = true,
			Index = 23,
			Goal = 120000,
			Rewards = {
				Items = {
					["Heavenly Potion II"] = 2,
				},
			},
			Description = "You played Sol's RNG for 2,000 hours.",
			SmallDescription = "Your PC is overloaded",
		},
		["Break the Galaxy"] = {
			Index = 27,
			Goal = 1000,
			Rewards = {
				Items = {
					["Rune of Wind"] = 1,
					["Rune of Corruption"] = 1,
					["Rune of Nothing"] = 1,
					["Rune of Frost"] = 1,
					["Rune of Galaxy"] = 1,
					["Rune of Rainstorm"] = 1,
					["Rune of Hell"] = 1,
				},
			},
			Description = "Get 1,000 Biome Exclusive Auras without native rarity.",
			SmallDescription = "EMPTY",
		},
		["-The Unknown-"] = {
			Goal = 1,
			Description = "Unlock achievement and check out the description!",
			Index = 33,
			SmallDescription = "[ Locked ]",
		},
		["My first 10M+ finding"] = {
			Goal = 10000000,
			Description = "You got 10M+ Rarity stat",
			Index = 11,
			SmallDescription = "OH. MY. GOD.",
		},
		["My first 99,999+ finding"] = {
			Index = 9,
			Goal = 99999,
			Rewards = {
				Coins = 500,
			},
			Description = "You got 99,999+ Rarity stat",
			SmallDescription = "Very lucky!",
		},
		["Achievement Champion"] = {
			Goal = 30,
			Description = "You got 30 achievements",
			Index = 17,
			SmallDescription = "",
		},
		["[10,000,000]"] = {
			Index = 8,
			Goal = 10000000,
			Rewards = {
				Items = {
					["Void Coin"] = 2,
				},
				Coins = 500000,
			},
			Description = "You've rolled 10,000,000 times",
			SmallDescription = "Not much left til' you become a ranker..",
		},
		["My first 1B+ finding"] = {
			Goal = 1000000000,
			Description = "You got 1B+ Rarity stat",
			Index = 13,
			SmallDescription = "RAHHHHHHHHHHHHH",
		},
	}


	ReplicatedStorage:WaitForChild("Modules"):WaitForChild("RemoteFunction"):WaitForChild("AchievementClient"):FireClient(plr, _G.achvdata)
	return true
end)

local datastore = require(game:GetService("ServerStorage").ModuleScripts.DataStore)
game.Players.PlayerAdded:Connect(function(plr)
	--local data = datastore.GetStore(plr, true)
	BadgeService:AwardBadge(plr.UserId, 2468375751195981)

	local craftclient = Instance.new("RemoteEvent")
	craftclient.Parent = ReplicatedStorage.Modules.RemoteFunction
	craftclient.Name = "GiftGamepass\n" .. plr.UserId.."Client"
	local craftserver = Instance.new("RemoteEvent")
	craftserver.Parent = ReplicatedStorage.Modules.RemoteFunction

	craftserver.Name = "GiftGamepass\n" .. plr.UserId.."Server"

	local craftclient = Instance.new("RemoteEvent")
	craftclient.Parent = ReplicatedStorage.Modules.RemoteFunction
	craftclient.Name = "LockAura\n" .. plr.UserId.."Client"
	local craftserver = Instance.new("RemoteEvent")
	craftserver.Parent = ReplicatedStorage.Modules.RemoteFunction
	craftserver.Name = "LockAura\n" .. plr.UserId.."Server"

	plr:SetAttribute("HasQuickRoll", true)
	plr:SetAttribute("ModMenuAccess", true)
	plr:SetAttribute("QuickRollEnabled", false)

	local thread: thread
	thread = coroutine.create(function()
		while task.wait() do
			if plr:GetAttribute("HasQuickRoll") and plr:GetAttribute("HasQuickRoll") ~= true then
				plr:SetAttribute("HasQuickRoll", true)
				plr:SetAttribute("QuickRollEnabled", false)
				coroutine.close(thread)
				return
			elseif not plr:GetAttribute("HasQuickRoll") then
				continue
			else
				return
			end
		end
	end)
	coroutine.resume(thread)

	if plr.UserId == game.PrivateServerOwnerId then
		plr:SetAttribute("ServerOwner", true)
	end

	--[[if game:GetService("MarketplaceService"):UserOwnsGamePassAsync(plr.UserId, 13600173502) then
		plr:SetAttribute("HasQuickRoll", true)
	end]]

	plr:SetAttribute("SkipAuraEffect", 0)
	plr:SetAttribute("SkipAuraEffectEnabled", false)

	plr.CharacterAdded:Connect(function(char)
		local humanoid = char:WaitForChild("Humanoid") :: Humanoid

		humanoid.Died:Connect(function()
			print("rip bro")
			task.wait(Players.RespawnTime or 3)
			plr:LoadCharacter()
		end)

		local torso = char:WaitForChild("Torso")

		local AFKUI = script:FindFirstChild("AFKUI"):Clone()
		AFKUI.Enabled = false
		AFKUI.Parent = torso

		local getstore = datastore.GetStore(char, true)
		local changestore = datastore.GetChangeStore(char, true)

		changestore:SetValue("Coins", math.huge)
		changestore:SetValue("DarkCoins", math.huge)
		changestore:SetValue("StorageExpandUpgrade", math.huge)
		changestore:SetValue("MaxStorableAuras", math.huge)
	end)
end)

game.Players.PlayerRemoving:Connect(function(plr)
	local client = "GiftGamepass\n" .. plr.UserId.."Client"
	local server = "GiftGamepass\n" .. plr.UserId.."Server"

	local client1 = "LockAura\n" .. plr.UserId.."Client"
	local server1 = "LockAura\n" .. plr.UserId.."Server"

	ReplicatedStorage.Modules.RemoteFunction[client]:Destroy()
	ReplicatedStorage.Modules.RemoteFunction[server]:Destroy()

	ReplicatedStorage.Modules.RemoteFunction[client1]:Destroy()
	ReplicatedStorage.Modules.RemoteFunction[server1]:Destroy()

	local data = datastore.GetStore(plr, true)
	local changedata = datastore.GetChangeStore(plr, true)

	pcall(function()
		local playtime = workspace:GetServerTimeNow() - plr:GetAttribute("PlayBegin") + data.Playtime
		data.Playtime = playtime
	end)
end)

local calledPlayers = {}

local Cmdr = ServerScriptService:WaitForChild("Cmdr")

local Commands = Cmdr:WaitForChild("Commands")

local Inventory = require(ReplicatedStorage.Modules.Inventory)
local Buffs = require(game.ServerStorage.ModuleScripts.Buff)

ReplicatedStorage.Remotes.ResetData.OnServerEvent:Connect(function(Player)
	require(Commands:FindFirstChild("wipeDataServer"))("Server", Player)
end)

ReplicatedStorage.Modules.RemoteFunction.DailyRemoteClient.OnServerEvent:Connect(function(player, thing, ok)
	local data = datastore.GetStore(player, true)
	local changedata = datastore.GetChangeStore(player, true)

	local playerData = DailyQuests.loadPlayerQuests(player)
	local currentTime = DailyQuests.getCurrentTime()

	if thing == "RequestData" then
		if calledPlayers[player.UserId] then
			--player:Kick("Exploits???")
			return
		end

		calledPlayers[player.UserId] = true

		if playerData == nil or data.QuestExpireTimeStamp == nil or data.QuestExpireTimeStamp <= currentTime then
			data.QuestExpireTimeStamp = currentTime + 24 * 60 * 60
			changedata:SetValue({"QuestExpireTimeStamp"}, data.QuestExpireTimeStamp)
			playerData = {Quests = DailyQuests.getRandomQuests(),}
			print(playerData)
			for i,v in pairs(playerData.Quests) do
				data.QuestSessionIds[i] = v.ID
			end
			changedata:SetValue({"QuestSessionIds"}, data.QuestSessionIds)
			data.QuestProgress[1] = 0
			data.QuestProgress[2] = 0
			data.QuestProgress[3] = 0
			data.ClaimedQuests[1] = false
			data.ClaimedQuests[2] = false
			data.ClaimedQuests[3] = false
			changedata:SetValue({"QuestProgress"}, data.QuestProgress)
			changedata:SetValue({"ClaimedQuests"}, data.ClaimedQuests)

			DailyQuests.savePlayerQuestsLocally(player, playerData)
		end

		local hmmm = playerData.Quests
		ReplicatedStorage.Modules.RemoteFunction.DailyRemoteClient:FireClient(player, hmmm)
	end

	if thing == "Reroll" then
		if data.ClaimedQuests[ok] == true then
			warn("Cant reroll claimed items smh")
			return
		end
		if ok and ok >= 1 and ok <= 3 then
			local excludeIDs = {}
			local excludeTypes = {}
			for i, quest in ipairs(playerData.Quests) do
				excludeIDs[quest.ID] = true
				if i ~= ok then
					excludeTypes[quest.Type] = true
				end
			end

			local newQuest = DailyQuests.getRandomQuest(excludeIDs, excludeTypes)
			playerData.Quests[ok] = newQuest

			data.QuestProgress[ok] = 0
			data.QuestSessionIds[ok] = newQuest.ID

			changedata:SetValue({"QuestProgress", ok}, data.QuestProgress[ok])
			changedata:SetValue({"QuestSessionIds", ok}, data.QuestSessionIds[ok])

			DailyQuests.savePlayerQuestsLocally(player, playerData)

			local hmmm = playerData.Quests
			ReplicatedStorage.Modules.RemoteFunction.DailyRemoteClient:FireClient(player, hmmm)
		else
			warn("Invalid reroll index:", ok)
		end
		warn("Rerolled")
	end

	if thing == "Claim" then
		if data.ClaimedQuests[ok] == true then
			warn("Already claimed")
			return
		end
		if data.QuestProgress[ok] >= playerData.Quests[ok].Goal then
			warn("Claimed")
			for i, v in pairs(playerData.Quests[ok]["Rewards"]) do
				if v.Type == "Item" then
					Inventory.GiveItems(player, v.Name, v.Amount, v.Name)
				end
				if v.Type == "Buff" then
					Buffs.AddBuff(player, v.Name, v.Duration, 1)
				end
			end
			data.ClaimedQuests[ok] = true
			changedata:SetValue({"ClaimedQuests", ok}, data.ClaimedQuests[ok])
			if data.ClaimedQuests[1] == true and data.ClaimedQuests[2] == true and data.ClaimedQuests[3] == true then
				Inventory.GiveItems(player, "Huge Fortune Potion I", 1, "Huge Fortune Potion I")
				changedata:SetValue("Coins", data.Coins + 50000)
			end
		end

	end
end)

ReplicatedStorage.Remotes.SetFilter.OnServerEvent:Connect(function(plr, thing)
	local data = datastore.GetStore(plr, true)
	local changedata = datastore.GetChangeStore(plr, true)
	-- nil false true
	if data.SmartFilter[thing] == nil then
		data.SmartFilter[thing] = false
	elseif data.SmartFilter[thing] == false then
		data.SmartFilter[thing] = true
	elseif data.SmartFilter[thing] == true then
		data.SmartFilter[thing] = nil
	end

	changedata:SetValue({"SmartFilter", thing}, data.SmartFilter[thing])
end)

ReplicatedStorage.Remotes.ChangePlayerAFKMode.OnServerEvent:Connect(function(plr, boolean)
	local _return = function(afkUI)
		afkUI.Enabled = false

		return
	end

	local char = plr.Character
	if not char then return end

	local torso = char:FindFirstChild("Torso")
	if not torso then return end

	local AFKUI = torso:FindFirstChild("AFKUI")
	if not AFKUI then _return(AFKUI) return end

	AFKUI.Enabled = boolean

	--[[pcall(function()
		repeat
			AFKUI.Enabled = boolean
		until
			AFKUI.Enabled == boolean
	end)]]
end)