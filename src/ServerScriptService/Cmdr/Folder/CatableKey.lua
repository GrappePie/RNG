-- What the sigma?

local v_u_1 = require(script.Parent.Parent.Shared.Util)
local v_u_2 = v_u_1.MakeFuzzyFinder({
	"roll",
	"Coins",
	"Title",
	"TitleRarity",
	"DiscoveredAura",
	"Buffs",
	"Settings",
	"CraftingProgress",
	"PotionCraftingProgress",
	"AutoCrafting",
	"Inventory",
	"Quests",
	"Achievements",
	"EarnedBadges",
	"EquippedAuraIndex",
	"MaxStorableAuras",
	"InventoryAuras",
	"SpecialInventoryAuras",
	"SkinsOwned",
	"SmartFilter",
	"Warns",
	"OwnedPasses",
	"PendingAura",
	"IsPendingResolved",
	"QuestProgress",
	"QuestIndexes",
	"ClaimedQuests",
	"QuestSessionIds",
	"IsMuted",
	"Playtime",
	"BiomeRandomizerCoolDown",
	"StrangeControllerCoolDown",
	"Data"
})
local v_u_10 = {
	["Transform"] = function(p3)
		-- upvalues: (copy) v_u_2
		local v4 = {}
		for v5, v6 in pairs(v_u_2(p3)) do
			v4[v5] = v6
		end
		return v4
	end,
	["Validate"] = function(p7)
		return 0 < #p7, "No valid items with that name could be found."
	end,
	["Autocomplete"] = function(p8)
		-- upvalues: (copy) v_u_1
		return v_u_1.GetNames(p8)
	end,
	["Parse"] = function(p9)
		return p9[1]
	end
}
return function(p11)
	-- upvalues: (copy) v_u_10
	p11:RegisterType("catableKey", v_u_10)
end