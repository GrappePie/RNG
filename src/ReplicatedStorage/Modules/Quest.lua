-- What the sigma?

local function v_u_1(...)
	warn(...)
	print(debug.traceback())
end
local v2 = game:GetService("ReplicatedStorage")
local v3 = game:GetService("ServerStorage")
local v4 = game:GetService("RunService")
game:GetService("BadgeService")
game:GetService("MarketplaceService")
local v_u_5, v_u_6
if v4:IsServer() then
	v_u_5 = require(v3:WaitForChild("ModuleScripts"):WaitForChild("AuraStorage"))
	v_u_6 = v3:WaitForChild("Events"):WaitForChild("GiveItems")
else
	v_u_5 = nil
	v_u_6 = nil
end
local v7 = v2:WaitForChild("Modules")
local v_u_8 = require(v7:WaitForChild("RemoteFunction"))
require(v7:WaitForChild("Utility"))
local v_u_9 = require(v7:WaitForChild("DB"):WaitForChild("QuestDB"))
local v_u_10 = script.AddQuest
local v_u_11 = script.RemoveQuest
local v_u_12 = script.RewardClaim
local v_u_13 = script.UpdateProgress
v2:WaitForChild("Remotes"):WaitForChild("LockEggFalling")
local v_u_14 = nil
local v15 = v4:IsServer()
v4:IsClient()
local v_u_16 = setmetatable({}, {
	["__mode"] = "k"
})
local v_u_19 = setmetatable({}, {
	["__mode"] = "k",
	["__index"] = function(p17, p18)
		return rawget(p17, p18) or 0
	end
})
local v_u_20, v_u_21
if v15 then
	v_u_20 = require(v3:WaitForChild("ModuleScripts"):WaitForChild("DataStore"))
	v_u_21 = require(v3:WaitForChild("ModuleScripts"):WaitForChild("Buff"))
else
	v_u_21 = nil
	v_u_20 = nil
end
local v_u_22
if v4:IsServer() then
	v_u_22 = require(v3:WaitForChild("ModuleScripts"):WaitForChild("ProximityPromptProtector"))
else
	v_u_22 = nil
end
local function v_u_26(p23)
	if type(p23) == "table" then
		local v24 = {}
		for _, v25 in p23 do
			table.insert(v24, {
				["Text"] = v25,
				["EndDelay"] = 2
			})
		end
		return v24
	end
	if type(p23) == "string" then
		return {
			{
				["Text"] = p23,
				["EndDelay"] = 0.2
			}
		}
	end
end
local function v28(p27)
	-- upvalues: (ref) v_u_20
	return v_u_20.GetStore(p27, true).Quests
end
local function v_u_37(p29, p30)
	-- upvalues: (ref) v_u_20, (copy) v_u_9, (copy) v_u_1
	local v31 = v_u_20.GetStore(p29, true).Quests
	for v32, v33 in v_u_9[p30].quests[v31[p30][1]].requirements do
		local v34 = v33[1]
		local v35
		if v34 == "item" or v34 == "useItem" then
			v35 = v33[3]
		else
			v35 = v33[2]
		end
		local v36 = v31[p30][2][v32]
		if not v36 then
			v_u_1("[ Quest ]: 53 error", v31[p30][2], v32)
			return false
		end
		if v36 < v35 then
			return false
		end
	end
	return true
end
local function v45(p38)
	-- upvalues: (ref) v_u_20, (copy) v_u_9, (copy) v_u_14, (copy) v_u_10
	local v39 = v_u_20.GetStore(p38, true).Quests
	for v40, v41 in v39 do
		if v_u_9[v40] then
			local v42 = v41[1]
			local v43 = v41[2]
			if v43[1] ~= "NONE" then
				for v44, _ in v_u_9[v40].quests[v42].requirements do
					if v43[v44] == nil then
						v43[v44] = 0
					end
				end
				v_u_10:FireClient(p38, v40, v42, v43)
			end
		else
			v39[v40] = v_u_14
			v_u_20.GetStore(p38, true):SetValue("Quests", v39)
		end
	end
end
local function v56(p46, p47, ...)
	-- upvalues: (ref) v_u_20, (copy) v_u_9, (copy) v_u_1, (copy) v_u_13
	local v48 = { ... }
	for v49, v50 in v_u_20.GetStore(p46, true).Quests do
		if v50[2][1] == "NONE" then
			return
		end
		local v51 = v_u_9[v49].quests[v50[1]].requirements
		local v52 = v50[2]
		for v53, _ in v52 do
			local v54 = v51[v53]
			if not v54 then
				v_u_1("[ Quest ]: 85 error", v51, v53)
				return
			end
			if p47 == v54[1] then
				local v55
				if p47 == "item" or p47 == "useItem" then
					if v48[1] == v54[2] then
						v55 = 1
						if v52[v53] ~= "NONE" then
							v52[v53] = v52[v53] + v55
							v_u_13:FireClient(p46, v49, v50[1], v53, v52[v53])
						end
					end
				else
					if p47 ~= "aura" then
						v55 = v48[1]
					end
					if v48[1] == v54[3] then
						v55 = v48[2]
					end
				end
			end
		end
	end
end
local function v_u_64(p57, p58, p59)
	-- upvalues: (ref) v_u_20, (copy) v_u_1, (copy) v_u_9, (copy) v_u_13, (copy) v_u_10
	local v60 = v_u_20.GetStore(p57, true).Quests
	if p59 < (v60[p58] and v60[p58][1] or 0) then
		v_u_1((("%* is already in the process of a higher level of quest"):format(p57.Name)))
	else
		local v61 = v_u_9[p58].quests[p59].requirements
		v60[p58] = { p59, table.create(#v61, 0) }
		if p58 == "2024 Egg Hunt Event" and p59 == 1 then
			local v62 = 0
			for _, v63 in v_u_20.GetStore(p57, true).ObtainedEggs do
				if v63 then
					v62 = v62 + 1
				end
			end
			v_u_20.GetStore(p57, true).Quests["2024 Egg Hunt Event"][2][1] = v62
			v_u_13:FireClient(p57, "2024 Egg Hunt Event", 1, 1, v62)
		end
		v_u_10:FireClient(p57, p58, p59)
	end
end
local function v93(p_u_65, p66)
	-- upvalues: (ref) v_u_22, (copy) v_u_16, (copy) v_u_8, (ref) v_u_20, (copy) v_u_9, (copy) v_u_64, (copy) v_u_37, (copy) v_u_11, (copy) v_u_12, (ref) v_u_5, (ref) v_u_6, (ref) v_u_21, (copy) v_u_26, (copy) v_u_19
	return v_u_22.Triggerd(p66, false):Connect(function(p67)
		-- upvalues: (ref) v_u_16, (ref) v_u_8, (ref) v_u_20, (copy) p_u_65, (ref) v_u_9, (ref) v_u_64, (ref) v_u_37, (ref) v_u_11, (ref) v_u_12, (ref) v_u_5, (ref) v_u_6, (ref) v_u_21, (ref) v_u_26, (ref) v_u_19
		if v_u_16[p67] then
			return
		else
			v_u_16[p67] = true
			local v68 = v_u_8.new("questDialogue\n" .. p67.UserId)
			local v69 = v_u_20.GetStore(p67, true)
			if p_u_65 == "Stella" and v69.Inventory["Stella\'s star"] and not v69.Quests.Stella then
				v68:Fire(p67, v_u_9.StellaAlreadyCollectedStar.dialogues)
				v69.Quests.Stella = {
					2,
					{ "NONE" }
				}
				v69:SetValue("CaveShortcutUnlocked", true)
				v69:SetValue("Quests", v69.Quests)
				v_u_16[p67] = false
			else
				local v70 = v_u_20.GetStore(p67, true).Quests[p_u_65]
				if v70 then
					if v70[2][1] == "NONE" then
						if v70[1] > #v_u_9[p_u_65].quests then
							v68:Fire(p67, v_u_9[p_u_65].alreadyFinished)
						else
							local v71 = v68:Fire(p67, v_u_9[p_u_65].quests[v70[1]].dialogues)
							if v71 == "Accept" or v71 == nil then
								v_u_64(p67, p_u_65, v70[1])
							end
						end
					elseif v_u_37(p67, p_u_65) then
						local v72 = v_u_20.GetStore(p67, true)
						local v73 = v_u_9[p_u_65].quests[v70[1]].rewards
						local v74 = v73.coins
						local v75 = v73.auras
						local v76 = v73.items
						local v77 = v73.unlock
						v68:Fire(p67, v_u_9[p_u_65].quests[v70[1]].completeDialogues)
						v_u_11:FireClient(p67, p_u_65)
						if v74 then
							local v78 = v_u_20.GetStore(p67, true)
							v78.Coins = v78.Coins + (p67:GetAttribute("HasVIP") and 1.2 or 1) * v74
							v_u_12:FireClient(p67, "coin")
						end
						if v75 then
							for _, v79 in v75 do
								local v80 = v79:split("_")
								local v81 = v80[1]
								local v82 = v80[2]
								if v82 then
									v72.SkinsOwned[v81] = v72.SkinsOwned[v81] or {}
									if not table.find(v72.SkinsOwned[v81], v82) then
										local v83 = v72.SkinsOwned[v81]
										table.insert(v83, v82)
									end
									v72:SetValue({ "SkinsOwned", v81 }, v72.SkinsOwned[v81])
								end
								v_u_5.AddAura(p67, v79, true)
							end
						end
						if v76 then
							for v84, v85 in v76 do
								v_u_6:Fire(p67, v84, v85, "Collect")
							end
						end
						if v77 then
							local v86 = v_u_20.GetStore(p67, true)
							if v77 == "Stella" then
								v86:SetValue("StellaUnlocked", true)
							elseif v77 == "CaveShortcut" then
								v86:SetValue("CaveShortcutUnlocked", true)
							elseif v77 == "2024 Egg Hunt Event" then
								v86:SetValue("2024EggHuntEventCompleted", true)
								v_u_21.AddBuff(p67, "Easter Blessing", (1 / 0))
								v86:SetValue("StarEggBadge", true)
							elseif v77 == "LockEgg" then
								v86:SetValue("LockEggCollectCompleted", true)
								v86:SetValue("2024EggHuntEventAllCompleted", true)
								v86:SetValue("LockEggBadge", true)
							end
						end
						v70[1] = v70[1] + 1
						v70[2] = { "NONE" }
					elseif p_u_65 == "2024 Egg Hunt Event" then
						if v70[1] == 1 then
							local v87 = v70[2][1]
							local v88 = {
								["Speaker"] = "_2024EggHuntSpeaker"
							}
							local v89 = v_u_26
							local v90
							if v_u_19[p67] == 7 then
								v90 = { "Grrrr\226\128\166 What are you doing?! You\226\128\153re supposed to be finding the eggs!!", "Because ...  you miss me, is that right..??!?", string.format("Only %s left! Keep searching!", 15 - v87) }
							else
								v90 = { string.format("Found %s eggs!!\nOnly %s left! Hurry up!!", v87, 15 - v87) }
							end
							v88.Contexts = v89(v90)
							v_u_19[p67] = v_u_19[p67] + 1
							v68:Fire(p67, v88)
						elseif v70[1] == 2 then
							local _ = v70[2][1]
							local v91 = {
								["Speaker"] = "_2024EggHuntSpeaker",
								["Contexts"] = v_u_26(v_u_19[p67] == 7 and { "Grrrrrr...!!! You like me, don\'t you?! (Actually I don\'t hate you either..)" } or { "Maybe this is related to an independent aura composed of the power to release something?" })
							}
							v_u_19[p67] = v_u_19[p67] + 1
							v68:Fire(p67, v91)
						end
					else
						v68:Fire(p67, v_u_9[p_u_65].notYetFinished)
					end
				else
					local v92 = v68:Fire(p67, v_u_9[p_u_65].quests[1].dialogues)
					if v92 == "Accept" or v92 == nil then
						v_u_64(p67, p_u_65, 1)
					end
				end
				v_u_16[p67] = false
			end
		end
	end)
end
function completeQuest(p94)
	-- upvalues: (ref) v_u_20, (copy) v_u_9, (copy) v_u_13
	for v95, v96 in v_u_20.GetStore(p94, true).Quests do
		local v97 = v_u_9[v95].quests[v96[1]].requirements
		local v98 = v96[2]
		for v99, _ in v98 do
			local _ = v97[v99]
			if v98[v99] ~= "NONE" then
				v98[v99] = v98[v99] + (1 / 0)
				v_u_13:FireClient(p94, v95, v96[1], v99, v98[v99])
			end
		end
	end
end
return {
	["AddQuestRemote"] = v_u_10,
	["RemoveQuestRemote"] = v_u_11,
	["RewardClaimRemote"] = v_u_12,
	["UpdateProgressRemote"] = v_u_13,
	["getQuestData"] = v28,
	["isCompleted"] = v_u_37,
	["initQuests"] = v45,
	["addQuest"] = v_u_64,
	["updateQuestProgress"] = v56,
	["questProximityTriggerd"] = v93,
	["completeQuest"] = completeQuest
}