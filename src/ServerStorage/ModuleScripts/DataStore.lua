local SETTINGS = {
	ProfileTemplate = {
		Crystals = 0,
		TitleRarity = 0,
		roll = 0,
		PendingAura = "None",
		RightGear = "",
		LeftGear = "",
		StrangePotion1CoolDown = 0,
		BankRefreshTimeStamp = 0,
		MaxStorableAuras = math.huge,
		MaximumCoinRetention = 5000000,
		IsPendingResolved = true,
		OwnedPasses = {},
		UnlockedAchievements = {},
		CraftingProgress = {},
		Buffs = {
			QuickRoll = {[1] = 0, [2] = 0},
			Lucky = {[1] = 0, [2] = 0},
			["1M LUCK"] = {[1] = 0, [2] = 0},
			["10M LUCK"] = {[1] = 0, [2] = 0},
			["100M LUCK"] = {[1] = 0, [2] = 0},
			["1B LUCK"] = {[1] = 0, [2] = 0},
			["Lunar Shift"] = {[1] = 0, [2] = 0},
			["Solar Ignite"] = {[1] = 0, [2] = 0},
			["Easter Blessing"] = {[1] = 0, [2] = 0},
			["We're sorry!"] = {[1] = 1, [2] = 0},
			["Heavenly I"] = {[1] = 0, [2] = 0},
			["Basic Luck"] = {[1] = 0, [2] = 0},
			["Unstable Gravity"] = {[1] = 0, [2] = 0},
			["Developer's Blessing?"] = {[1] = 0, [2] = 0},
			["Bank's Blessing"] = {[1] = 0, [2] = 0},
			["Tip's Blessing"] = {[1] = 0, [2] = 0},
			["The Chosen"] = {[1] = 0, [2] = 0},
			["Fortune III"] = {[1] = 0, [2] = 0},
			["Haste I"] = {[1] = 0, [2] = 0},
			["Haste II"] = {[1] = 0, [2] = 0},
			["Universe I"] = {[1] = 0, [2] = 0},
			["Fortune I"] = {[1] = 0, [2] = 0},
			["Cosmic Enhancement"] = {[1] = 0, [2] = 0},
			["Heavenly II"] = {[1] = 0, [2] = 0},
			Skip = {[1] = 0, [2] = 0},
			["Basic Blessing"] = {[1] = 0, [2] = 0},
			Subzero = {[1] = 0, [2] = 0},
			["Developer's Return"] = {[1] = 0, [2] = 0},
			["Fierce Spirit"] = {[1] = 0, [2] = 0},
			Galestorm = {[1] = 0, [2] = 0},
			["Lucky Penny"] = {[1] = 0, [2] = 0},
			["VIP Luck"] = {[1] = 0, [2] = 0},
			Volcanic = {[1] = 0, [2] = 0},
			Oblivion = {[1] = 0, [2] = 0},
			["Rune of Corruption"] = {[1] = 0, [2] = 0},
			["Rune of Wind"] = {[1] = 0, [2] = 0},
			["Rune of Rainstorm"] = {[1] = 0, [2] = 0},
			["Rune of Hell"] = {[1] = 0, [2] = 0},
			["Rune of Frost"] = {[1] = 0, [2] = 0},
			["Rune of Nothing"] = {[1] = 0, [2] = 0},
			["Rune of Galaxy"] = {[1] = 0, [2] = 0},
			["Rune of Everything"] = {[1] = 0, [2] = 0},
			["Haste III"] = {[1] = 0, [2] = 0},
			["Exo Enhancement"] = {[1] = 0, [2] = 0},
			["Exoflex Blessing"] = {[1] = 0, [2] = 0},
			["Christmas Blessing"] = {[1] = 0, [2] = 0},
			["Fortune II"] = {[1] = 0, [2] = 0},
			["The Power I"] = {[1] = 0, [2] = 0},
			["The Wrath I"] = {[1] = 0, [2] = 0},
			["The Knowledge I"] = {[1] = 0, [2] = 0},
			["The Knowledge II"] = {[1] = 0, [2] = 0},
			["The Power II"] = {[1] = 0, [2] = 0},
			["The Wrath II"] = {[1] = 0, [2] = 0},
			GODLIKE = {[1] = 0, [2] = 0},
			["The Sloth I"] = {[1] = 0, [2] = 0},
			["The Sloth II"] = {[1] = 0, [2] = 0},
			["Warmth?"] = {[1] = 0, [2] = 0},
			Jackpot = {[1] = 0, [2] = 0},
			Common = {[1] = 0, [2] = 0},
			["Pumpking's Curse"] = {[1] = 0, [2] = 0},
			["Pumpking's Blessing"] = {[1] = 0, [2] = 0}
		},
		Playtime = 0,
		DiscoveredAura = {"Common", "Uncommon", "Good", "Natural", "Rare","BOUNDED", "Divinus", "Crystallized", "Rage", "Topaz", "Ruby", "Forbidden", "Emerald", "Gilded", "Ink", "Glacier", "Jackpot", "Sapphire", "Aquamarine", "Wind", "Diaboli", "Precious", "Glock", "Magnetic", "Sidereum", "Bleeding", ":Flushed:", ":smiro:", "Hazard", "Quartz", "Undead", "Corrosive", "Powered", "Lightning", "Exotic", "Comet", "Jade", "Celestial", "Twilight", "Kyawthuite", "Arcane", "Aquatic", "Starlight", "Lunar", "Solar", "Nautilus", "Permafrost", "Stormal", "Eclipse", "Gravitational", "Virtual", "Poseidon", "Zeus", "Therma", "Galaxy", "Hades", "Hyper-Volt", "Starscourge", "Sailor", "Chromatic", "Ethereal", "Matrix", "Overture", "Undefined", "Astral", "Symphony", "MatrixOverdrive", "Atlas", "Impeached", "Archangel", "BLOODLUST", "AbyssalHunter", "GARGANTUA", "Ruins", "Sovereign", "InvertedSovereign", "Glitch", "Oppression", "Oblivion", "Blossom", "Sol", "Abomination", "samgong", "Memory", "cruel", "LAYERS", "Test", "Road Trip", "Monarch", "Twilight : Iridescent Memory", "Stardust", "Starfish", "StarRider", "Surfer", "ShardSurfer", "FindTheProbabilityOfThisAura", "yuyo", "Dynasty", "Watermelon", "Diamond", "ImChica", "Minimum", "ScaryCar", "APOSTOLOS", "Innovator", "Sirius", "Aviator", "Luminosity", "PUMP", "Vital", "Moonflower", "NIGHTMARE SKY"},
		--DiscoveredAura = {},
		OwnedTags = {"I just started Sol\'s RNG"},
		QuestExpireTimeStamp = nil,
		Settings = {
			ModMenuUntoggled = false,
			UiSFXEnabled = true,
			HideAFK = false,
			SkipAuraEffect = 10_000_000,
			SkipAuraEffectEnabled = true,
			GlobalMessage = true,
			SkipWarningEnabled = true,
			AutoAddNotification = true,
			ItemCollectNotification = true,
			ServerMessageIgnore = 0,
			AutoEquipEnabled = false,
			EquipWarning = 10_000_000,
			ServerMessageSFX = true,
			OthersAuraSFX = true, 
			SwapWarningEnabled = true,
			AutoEquip = 0, 
			CoinNotification = true, 
			SkipWarning = 10_000_000,
			ToggleBGM = true,
			BuffEnabled = true,
			StorageWarningEnabled = false, 
			PVP = false
		},
		SkinsOwned = {
			--["Stormal"] = {[1] = "Hurricane"},
			--["Chromatic"] = {[1] = "Genesis"}
		},
		--SkinsOwned = {},
		--Inventory = {["Fortune Potion II"] = {amount = 10}},
		Inventory = {
			["Pump Punch Gauntlet"] = {amount = math.huge},
			["Gravitational Device"] = {amount = math.huge},
			["Heavenly Potion I"] = {amount = math.huge},
			["Heavenly Potion II"] = {amount = math.huge},
			["Oblivion Potion"] = {amount = math.huge}
		},
		Quests = {},
		SmartSettings = {},
		SmartFilter = {},
		AutoCrafting = "",
		LockEggCollectCompleted = false,
		StrangeControllerCoolDown = 0,
		IsMuted = false,
		GlitchRemoved = false,
		AchievementRewardsChangeChecked2 = false,
		PotionCraftingProgress = {},
		Achievements = {},
		StarEggBadge = false,
		ClaimedQuests = {
			[1] = false,
			[2] = false,
			[3] = false
		},
		EarnedBadges = {},
		["2024EggHuntEventCompleted"] = false,
		SettingsChanged = false,
		StorageExpandUpgrade = math.huge,
		IsEquippingSpecial = false,
		EquippedAuraIndex = nil,
		QuestSessionIds = {
			[1] = 0,
			[2] = 0,
			[3] = 0,
		},
		DailyQuestReroll = 1,
		BankEnabled = false,
		SpecialInventoryAuras = {},
		QuestIndexes = {
			[1] = 21,
			[2] = 5,
			[3] = 18
		},
		Coins = math.huge,
		Warns = {},
		AchievementsClaimed = {},
		GildedCoin = false,
		Bank = math.huge,
		PlayerTag = "",
		PendingPasses = {},
		ObtainedEggs = {},
		IndevChecked = false,
		DarkCoins = math.huge,
		Slots = {
			[1] = "Empty",
			[2] = "Empty",
			[3] = "Empty",
			[4] = "Empty",
			[5] = "Empty"
		},
		InventoryAuras = {},
		["2024EggHuntEventAllCompleted"] = false,
		StorageDataLoaded = true,
		BiomeRandomizerCoolDown = 0,
		Tools = "NONE",
		QuestProgress = {
			[1] = 0,
			[2] = 0,
			[3] = 0
		},
		HiddenAuraFound = {
			["Celestial"] = true
		},
		BankCapacity = 100000,
		AchievementTranslationErrorCorrected = true,
		AuraDataPatched1 = true,
		ClaimedFollowReward = false
	}
}

----- Module Table -----

local ReplicaTestServer = {

}

----- Loaded Modules -----

local ReplicaService = require(game:GetService("ServerScriptService").ReplicaService)
local ProfileService = require(game:GetService("ServerScriptService").ProfileService)

----- Private Variables -----

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local PlayerProfileClassToken = ReplicaService.NewClassToken("PlayerProfile")

local GameProfileStore = ProfileService.GetProfileStore(
	"PlayerData_MODDED",
	SETTINGS.ProfileTemplate
)

local PlayerProfile -- PlayerProfile object
_G.PlayerProfiles = {} -- [player] = {Profile = profile, Replica = replica}

local LastPayout = os.clock()

----- Private functions -----

local function PlayerAdded(player)
	local profile = GameProfileStore:LoadProfileAsync(
		"Player_" .. player.UserId,
		"ForceLoad"
	)
	--player:Kick("Data resetted")
	--GameProfileStore:WipeProfileAsync("Player_" .. player.UserId)
	--player:Kick("Data resetted")
	
	if profile ~= nil then
		profile:AddUserId(player.UserId)
		profile:Reconcile()
		profile:ListenToRelease(function()
			_G.PlayerProfiles[player].Replica:Destroy()
			_G.PlayerProfiles[player] = nil
			--player:Kick()
		end)
		if player:IsDescendantOf(Players) == true then
			local player_profile = {
				Profile = profile,
				Replica = ReplicaService.NewReplica({
					ClassToken = PlayerProfileClassToken,
					Tags = {Player = player},
					Data = profile.Data,
					Replication = "All",
				}),
				_player = player,
			}
			player:SetAttribute("UID", player_profile.Replica.Id)
			player:SetAttribute("Loaded", true)
			setmetatable(player_profile, PlayerProfile)
			_G.PlayerProfiles[player] = player_profile
		else
			profile:Release()
		end
	else
		--player:Kick() 
	end
end

-- PlayerProfile object:
PlayerProfile = {
	--[[
		_player = player,
	--]]
}
PlayerProfile.__index = PlayerProfile

--function PlayerProfile:GiveCash(cash_amount)
--	if self:IsActive() == false then
--		return
--	end
--	self.Replica:SetValue({"Cash"}, self.Replica.Data.Cash + cash_amount)
--end

function PlayerProfile:SetValue(key_path, value)
	--if self.IsActive() == false then
	--	return
	--end
	
	self.Replica:SetValue(key_path, value)
end

function PlayerProfile:IsActive() --> is_active
	return _G.PlayerProfiles[self._player] ~= nil
end

----- Initialize -----

for _, player in ipairs(Players:GetPlayers()) do
	coroutine.wrap(PlayerAdded)(player)
end

----- Connections -----

--RunService.Heartbeat:Connect(function()
---	if os.clock() - LastPayout > 3 then
--		LastPayout = os.clock()
--		print("Something")
--		for _, player_profile in pairs(_G.PlayerProfiles) do
--			player_profile:GiveCash(100)
--		end
--	end
--end)

Players.PlayerAdded:Connect(PlayerAdded)

Players.PlayerRemoving:Connect(function(player)
	local player_profile = _G.PlayerProfiles[player]
	if player_profile ~= nil then
		player_profile.Profile:Release()
	end
end)

function PlayerProfile.GetStore(plr, bool)
	local data = _G.PlayerProfiles[plr].Replica.Data
	return data
end

function PlayerProfile.GetChangeStore(plr, bool)
	local data = _G.PlayerProfiles[plr]
	return data
end

return PlayerProfile