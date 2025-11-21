local HttpService = game:GetService("HttpService")
local TweenService = game:GetService("TweenService")
local MarketplaceService = game:GetService("MarketplaceService")
local MessagingService = game:GetService("MessagingService")

local player = script.Parent.Parent.Parent.Parent
local rollmodule = require(game.ReplicatedStorage.Modules.RollModule)
local utility = require(game.ReplicatedStorage.Modules.Utility)
local datastore = require(game:GetService("ServerStorage").ModuleScripts.DataStore)
local NewRemotes = game.ReplicatedStorage:WaitForChild("Remotes")
local AchRemote = NewRemotes:WaitForChild("Achievement")
local auracontroll = require(game.ReplicatedStorage.Modules.AuraControll)
local DailyQuests = require(game.ServerStorage.ModuleScripts.Quests)
local tierskins = require(game.ReplicatedStorage.Modules.DB.TierSkins)
local tagoptions = require(game.ReplicatedStorage.Modules.DB.TagOptions)
local global = require(game.ReplicatedStorage.Packets.Global)


local hasgivenachoice = true
local cooldown = false
local thisroll = nil
local iscurrentlyrolling = false
local onroll = 0

local datalol = datastore.GetStore(player, true)
if datalol.PendingAura ~= "None" then
	local erm = {Response = 200, Rarity = 1, Success = true, Aura = datalol.PendingAura}--{[1] = datalol.PendingAura}
	NewRemotes.RollEvent:FireClient(player, "Select", erm)

	local data1 = datastore.GetStore(player, true)
	local changedata1 = datastore.GetChangeStore(player, true)

	local connection
	connection = NewRemotes.RollEvent.OnServerEvent:Connect(function(plr, wut, ok)
		if wut == "Choice" then
			if ok["Action"] == "Equip" then
				warn("Equipped")
				if data1.PendingAura == "Oppression" then
					if not (MarketplaceService:UserOwnsGamePassAsync(player.UserId, 899518838) or MarketplaceService:UserOwnsGamePassAsync(player.UserId, 908740614)) then
						MarketplaceService:PromptGamePassPurchase(player, 908740614)
					else
						if tonumber(#data1.InventoryAuras) + 1 > data1.MaxStorableAuras then
							data1.PendingAura = "None"
							changedata1:SetValue("PendingAura", data1.PendingAura)
						else
							local okaytable = {Locked = false, Name = data1.PendingAura}
							table.insert(data1.InventoryAuras, okaytable)
							changedata1:SetValue("InventoryAuras", data1.InventoryAuras)
							data1.PendingAura = "None"
							changedata1:SetValue("PendingAura", data1.PendingAura)
						end
						local thedelay = {[1] = game.Workspace:GetServerTimeNow() + 1, [2] = 1}
						NewRemotes.RollEvent:FireClient(plr, "SetDelay", thedelay)
					end
				else
					if tonumber(#data1.InventoryAuras) + 1 > data1.MaxStorableAuras then
						data1.PendingAura = "None"
						changedata1:SetValue("PendingAura", data1.PendingAura)
					else
						local okaytable = {Locked = false, Name = data1.PendingAura}
						table.insert(data1.InventoryAuras, okaytable)
						changedata1:SetValue("InventoryAuras", data1.InventoryAuras)
						data1.PendingAura = "None"
						changedata1:SetValue("PendingAura", data1.PendingAura)
					end
					local thedelay = {[1] = game.Workspace:GetServerTimeNow() + 1, [2] = 1}
					NewRemotes.RollEvent:FireClient(plr, "SetDelay", thedelay)
				end
			else
				warn("Skipped")
				data1.PendingAura = "None"
				changedata1:SetValue("PendingAura", data1.PendingAura)
				local thedelay = {[1] = game.Workspace:GetServerTimeNow() + 1, [2] = 1}
				NewRemotes.RollEvent:FireClient(plr, "SetDelay", thedelay)
			end
		end
	end)
end

local function formatNumberWithCommas(number)
	local formatted = tostring(number)
	local k
	while true do  
		formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
		if k == 0 then
			break
		end
	end
	return formatted
end

local function updateachievements()
	local data = datastore.GetStore(player, true)
	local changedata = datastore.GetChangeStore(player, true)

	local v_u_33 = _G.PlayerProfiles[player].Replica

	local currentachievement = nil

	currentachievement = "I just started Sol's RNG"

	if table.find(v_u_33.Data.Achievements, currentachievement) == nil or table.find(v_u_33.Data.Achievements, currentachievement) ~= _G.achvdata[currentachievement].Goal then	
		local heh = data.Achievements
		if heh[currentachievement] == nil then
			heh[currentachievement] = 1
		else
			if heh[currentachievement] == _G.achvdata[currentachievement].Goal then

			else
				heh[currentachievement] += 1
			end
		end
		changedata:SetValue({"Achievements", currentachievement}, heh[currentachievement])

		if heh[currentachievement] >= _G.achvdata[currentachievement].Goal then
			if table.find(v_u_33.Data.UnlockedAchievements, currentachievement) == nil then
				local v69 = data.UnlockedAchievements
				table.insert(v69, currentachievement)
				changedata:SetValue("UnlockedAchievements", v69)
				table.insert(data.OwnedTags, "I just started Sol\'s RNG")
				changedata:SetValue("OwnedTags", data.OwnedTags)

				AchRemote:FireClient(player, currentachievement, 123)
			end
		end
	end

	currentachievement = "A little bit of rolls"

	if table.find(v_u_33.Data.Achievements, currentachievement) == nil or table.find(v_u_33.Data.Achievements, currentachievement) ~= _G.achvdata[currentachievement].Goal then	
		local heh = data.Achievements
		if heh[currentachievement] == nil then
			heh[currentachievement] = 1
		else
			if heh[currentachievement] == _G.achvdata[currentachievement].Goal then

			else
				heh[currentachievement] += 1
			end
		end
		changedata:SetValue({"Achievements", currentachievement}, heh[currentachievement])

		if heh[currentachievement] >= _G.achvdata[currentachievement].Goal then
			if table.find(v_u_33.Data.UnlockedAchievements, currentachievement) == nil then
				local v69 = data.UnlockedAchievements
				table.insert(v69, currentachievement)
				changedata:SetValue("UnlockedAchievements", v69)

				AchRemote:FireClient(player, currentachievement, 123)
			end
		end
	end

	currentachievement = "I'm addicted to Sol's RNG"

	if table.find(v_u_33.Data.Achievements, currentachievement) == nil or table.find(v_u_33.Data.Achievements, currentachievement) ~= _G.achvdata[currentachievement].Goal then	
		local heh = data.Achievements
		if heh[currentachievement] == nil then
			heh[currentachievement] = 1
		else
			if heh[currentachievement] == _G.achvdata[currentachievement].Goal then

			else
				heh[currentachievement] += 1
			end
		end
		changedata:SetValue({"Achievements", currentachievement}, heh[currentachievement])

		if heh[currentachievement] >= _G.achvdata[currentachievement].Goal then
			if table.find(v_u_33.Data.UnlockedAchievements, currentachievement) == nil then
				local v69 = data.UnlockedAchievements
				table.insert(v69, currentachievement)
				changedata:SetValue("UnlockedAchievements", v69)

				AchRemote:FireClient(player, currentachievement, 123)
			end
		end
	end

	currentachievement = "Would You Leave? / Nah I'd Roll"

	if table.find(v_u_33.Data.Achievements, currentachievement) == nil or table.find(v_u_33.Data.Achievements, currentachievement) ~= _G.achvdata[currentachievement].Goal then	
		local heh = data.Achievements
		if heh[currentachievement] == nil then
			heh[currentachievement] = 1
		else
			if heh[currentachievement] == _G.achvdata[currentachievement].Goal then

			else
				heh[currentachievement] += 1
			end
		end
		changedata:SetValue({"Achievements", currentachievement}, heh[currentachievement])

		if heh[currentachievement] >= _G.achvdata[currentachievement].Goal then
			if table.find(v_u_33.Data.UnlockedAchievements, currentachievement) == nil then
				local v69 = data.UnlockedAchievements
				table.insert(v69, currentachievement)
				changedata:SetValue("UnlockedAchievements", v69)

				AchRemote:FireClient(player, currentachievement, 123)
			end
		end
	end

	currentachievement = "There's no way to stop it!"

	if table.find(v_u_33.Data.Achievements, currentachievement) == nil or table.find(v_u_33.Data.Achievements, currentachievement) ~= _G.achvdata[currentachievement].Goal then	
		local heh = data.Achievements
		if heh[currentachievement] == nil then
			heh[currentachievement] = 1
		else
			if heh[currentachievement] == _G.achvdata[currentachievement].Goal then

			else
				heh[currentachievement] += 1
			end
		end
		changedata:SetValue({"Achievements", currentachievement}, heh[currentachievement])

		if heh[currentachievement] >= _G.achvdata[currentachievement].Goal then
			if table.find(v_u_33.Data.UnlockedAchievements, currentachievement) == nil then
				local v69 = data.UnlockedAchievements
				table.insert(v69, currentachievement)
				changedata:SetValue("UnlockedAchievements", v69)

				AchRemote:FireClient(player, currentachievement, 123)
			end
		end
	end

	currentachievement = "Roll, Eat, Sleep, Repeat"

	if table.find(v_u_33.Data.Achievements, currentachievement) == nil or table.find(v_u_33.Data.Achievements, currentachievement) ~= _G.achvdata[currentachievement].Goal then	
		local heh = data.Achievements
		if heh[currentachievement] == nil then
			heh[currentachievement] = 1
		else
			if heh[currentachievement] == _G.achvdata[currentachievement].Goal then

			else
				heh[currentachievement] += 1
			end
		end
		changedata:SetValue({"Achievements", currentachievement}, heh[currentachievement])

		if heh[currentachievement] >= _G.achvdata[currentachievement].Goal then
			if table.find(v_u_33.Data.UnlockedAchievements, currentachievement) == nil then
				local v69 = data.UnlockedAchievements
				table.insert(v69, currentachievement)
				changedata:SetValue("UnlockedAchievements", v69)

				AchRemote:FireClient(player, currentachievement, 123)
			end
		end
	end

	currentachievement = "I give my life..."

	if table.find(v_u_33.Data.Achievements, currentachievement) == nil or table.find(v_u_33.Data.Achievements, currentachievement) ~= _G.achvdata[currentachievement].Goal then	
		local heh = data.Achievements
		if heh[currentachievement] == nil then
			heh[currentachievement] = 1
		else
			if heh[currentachievement] == _G.achvdata[currentachievement].Goal then

			else
				heh[currentachievement] += 1
			end
		end
		changedata:SetValue({"Achievements", currentachievement}, heh[currentachievement])

		if heh[currentachievement] >= _G.achvdata[currentachievement].Goal then
			if table.find(v_u_33.Data.UnlockedAchievements, currentachievement) == nil then
				local v69 = data.UnlockedAchievements
				table.insert(v69, currentachievement)
				changedata:SetValue("UnlockedAchievements", v69)

				AchRemote:FireClient(player, currentachievement, 123)
			end
		end
	end

	currentachievement = "[10,000,000]"

	if table.find(v_u_33.Data.Achievements, currentachievement) == nil or table.find(v_u_33.Data.Achievements, currentachievement) ~= _G.achvdata[currentachievement].Goal then	
		local heh = data.Achievements
		if heh[currentachievement] == nil then
			heh[currentachievement] = 1
		else
			if heh[currentachievement] == _G.achvdata[currentachievement].Goal then

			else
				heh[currentachievement] += 1
			end
		end
		changedata:SetValue({"Achievements", currentachievement}, heh[currentachievement])

		if heh[currentachievement] >= _G.achvdata[currentachievement].Goal then
			if table.find(v_u_33.Data.UnlockedAchievements, currentachievement) == nil then
				local v69 = data.UnlockedAchievements
				table.insert(v69, currentachievement)
				changedata:SetValue("UnlockedAchievements", v69)

				AchRemote:FireClient(player, currentachievement, 123)
			end
		end
	end

	for i, v in tagoptions do
		currentachievement = v["Name"]
		if table.find(v_u_33.Data.Achievements, currentachievement) == nil or table.find(v_u_33.Data.Achievements, currentachievement) ~= _G.achvdata[currentachievement].Goal then	
			if table.find(v_u_33.Data.UnlockedAchievements, currentachievement) == nil then
				local v69 = data.UnlockedAchievements
				table.insert(v69, currentachievement)
				changedata:SetValue("UnlockedAchievements", v69)
				table.insert(data.OwnedTags, currentachievement)
				changedata:SetValue("OwnedTags", data.OwnedTags)

				AchRemote:FireClient(player, currentachievement, 123)
			end
		end
	end
end

local function valueExists(tbl, value)
	for _, v in ipairs(tbl) do
		if v == value then
			return true
		end
	end
	return false
end

local function playSoundGlobally(sfx)
	coroutine.wrap(function()
		if sfx:IsA("Sound") then
			local newSfx = sfx:Clone()
			newSfx:Stop()
			newSfx.TimePosition = 0
			newSfx.Parent = game.Workspace
			newSfx:Play()
			newSfx.Ended:Wait()
			newSfx:Destroy()
		end
		return
	end)()
end

script.Parent.Parent.RollRemote.OnServerInvoke = function(plr, wuttodo, bool)
	if plr.Name ~= player.Name then
		return
	end

	if wuttodo == "Roll" then
		if cooldown == true then
			return {Response = 403}
		end
		if hasgivenachoice == false then
			return {Response = 404}
		end
		if bool == false or bool == nil or bool == true then
			if iscurrentlyrolling == true then
				return {Response = 405}
			end
			iscurrentlyrolling = true
			onroll += 1

			local luck = 1

			if onroll == 11 then
				onroll = 0
				luck = utility.GetLuck(plr, 10)
			else
				luck = utility.GetLuck(plr)
			end
			local data = datastore.GetStore(plr, true)
			local rolltable = rollmodule.GetItem(utility.GetRollTable(), tonumber(luck));--utility.GetLuck(plr));

			if data.Buffs["Oblivion"][1] ~= 0 then
				local RolledThing = nil
				local GeneratedNumber = math.random(1, 2000)
				if GeneratedNumber == 2000 then
					RolledThing = "Oblivion"
				else
					GeneratedNumber = math.random(1, 100)
					if GeneratedNumber == 100 then
						RolledThing = "Memory"
					end
				end

				if RolledThing ~= nil then
					rolltable["Value"] = RolledThing
					rolltable["Rarity"] = 1
				end  
			end

			if rolltable["SkinChance"] ~= nil then
				local SkinChance = rolltable["SkinChance"]
				if SkinChance == 20.0000002 then
					SkinChance = 20
				end
				if SkinChance < 1 then
					local RollChance = 0
				else
					local generatedNumber = math.random(1, SkinChance)
					if generatedNumber == SkinChance then
						local SkinsToGet = tierskins[rolltable["Value"]]

						local sortedSkins = {}
						for SkinName, Skin0o in pairs(SkinsToGet) do
							table.insert(sortedSkins, {Name = SkinName, 0o = Skin0o})
						end

						table.sort(sortedSkins, function(a, b)
							return a.0o.Rarity > b.0o.Rarity
						end)
						local GotThis = nil
						local Success, Error = pcall(function()
							for _, skin in ipairs(sortedSkins) do
								local SkinName = skin.Name
								local Skin0o = skin.0o

								if Skin0o.Unobtainable ~= true then
									print(skin, Skin0o, Skin0o.Rarity)
									if not Skin0o.Rarity then warn(skin, "ERROR") continue end
									local RollNumber = Random.new():NextInteger(1, math.round(Skin0o.Rarity))
									if RollNumber == Skin0o.Rarity then
										GotThis = SkinName
										break
									end
								end
							end
						end)
						if not Success then
							warn("ERROR", Error)
							return
						end

						if not GotThis then
						else
							rolltable["Value"] = rolltable["Value"].."_"..GotThis
							rolltable["Rarity"] = utility.GetGeneralRarityByName(rolltable["Value"])
						end
					end
				end
			end

			thisroll = {Response = 200, Rarity = rolltable["Rarity"], Success = true, Aura = rolltable["Value"]}


			data.PendingAura = rolltable["Value"]
			data.roll += 1
			updateachievements()
			DailyQuests.progressQuest(player, "RollTimes", nil, nil)
			DailyQuests.progressQuest(player, "Roll", rolltable["Value"], 1)


			local changedata = datastore.GetChangeStore(plr, true)
			local messagestring = nil

			if string.find(rolltable["Value"], "_") then
				local before, after = string.match(rolltable["Value"], "([^_]+)_([^_]+)")
				messagestring = string.gsub(rolltable["Value"], "_", " : ")
				if data.SkinsOwned[before] ~= nil then
				else
					data.SkinsOwned[before] = {[1] = after}

					changedata:SetValue({"SkinsOwned", before}, data.SkinsOwned[before])
					if not valueExists(data.DiscoveredAura, before) then
						table.insert(data.DiscoveredAura, before)
						changedata:SetValue("DiscoveredAura", data.DiscoveredAura)
					end
				end
			else
				messagestring = rolltable["Value"]
				if valueExists(data.DiscoveredAura, rolltable["Value"]) then
				else
					table.insert(data.DiscoveredAura, rolltable["Value"])
					changedata:SetValue("DiscoveredAura", data.DiscoveredAura)
				end
			end

			if data.Buffs["Heavenly I"][1] ~= 0 then
				data.Buffs["Heavenly I"][1] -= 1
				if data.Buffs["Heavenly I"][1] == 0 then
					data.Buffs["Heavenly I"][2] = 0
				end
				changedata:SetValue({"Buffs", "Heavenly I"}, data.Buffs["Heavenly I"])
			end

			if data.Buffs["Heavenly II"][1] ~= 0 then
				data.Buffs["Heavenly II"][1] -= 1
				if data.Buffs["Heavenly II"][1] == 0 then
					data.Buffs["Heavenly II"][2] = 0
				end
				changedata:SetValue({"Buffs", "Heavenly II"}, data.Buffs["Heavenly II"])
			end

			if data.Buffs["Oblivion"][1] ~= 0 then
				data.Buffs["Oblivion"][1] -= 1
				if data.Buffs["Oblivion"][1] == 0 then
					data.Buffs["Oblivion"][2] = 0
				end
				changedata:SetValue({"Buffs", "Oblivion"}, data.Buffs["Oblivion"])
			end

			if data.Buffs["1M LUCK"][1] ~= 0 then
				data.Buffs["1M LUCK"][1] -= 1
				if data.Buffs["1M LUCK"][1] == 0 then
					data.Buffs["1M LUCK"][2] = 0
				end
				changedata:SetValue({"Buffs", "1M LUCK"}, data.Buffs["1M LUCK"])
			end

			if data.Buffs["10M LUCK"][1] ~= 0 then
				data.Buffs["10M LUCK"][1] -= 1
				if data.Buffs["10M LUCK"][1] == 0 then
					data.Buffs["10M LUCK"][2] = 0
				end
				changedata:SetValue({"Buffs", "10M LUCK"}, data.Buffs["10M LUCK"])
			end

			if data.Buffs["100M LUCK"][1] ~= 0 then
				data.Buffs["100M LUCK"][1] -= 1
				if data.Buffs["100M LUCK"][1] == 0 then
					data.Buffs["100M LUCK"][2] = 0
				end
				changedata:SetValue({"Buffs", "100M LUCK"}, data.Buffs["100M LUCK"])
			end

			if data.Buffs["1B LUCK"][1] ~= 0 then
				data.Buffs["1B LUCK"][1] -= 1
				if data.Buffs["1B LUCK"][1] == 0 then
					data.Buffs["1B LUCK"][2] = 0
				end
				changedata:SetValue({"Buffs", "1B LUCK"}, data.Buffs["1B LUCK"])
			end

			changedata:SetValue("PendingAura", data.PendingAura)
			changedata:SetValue("roll", data.roll)
			plr.leaderstats.Rolls.Value = data.roll


			local rollResult = thisroll
			thisroll = nil

			local msg = nil

			local raritydisplay = formatNumberWithCommas(rollResult["Rarity"] * 10)

			local function getMessageColor(rarity)
				if rarity >= 99000000 then
					return Color3.fromRGB(233, 43, 118)
				elseif rarity >= 9900000 then
					return Color3.fromRGB(0, 0, 255)
				elseif rarity >= 999000 then
					return Color3.fromRGB(252, 114, 250)
				elseif rarity >= 99000 then
					return Color3.fromRGB(53, 233, 212)
				elseif rarity >= 9900 then
					return Color3.fromRGB(255, 125, 0)
				elseif rarity >= 990 then
					return Color3.fromRGB(169, 79, 226)
				else
					return Color3.fromRGB(255, 255, 255)
				end
			end
			local function spawnMapVFX(which: Part, dur : number)
				task.spawn(function()
					local newwhich = which:Clone()
					newwhich.Parent = which.Parent
					for i, v in newwhich:GetDescendants() do
						task.spawn(function()
							if v:IsA("Beam") then
								if v.Enabled == false then
									v.Enabled = true
									task.wait(dur)
									v.Enabled = false
									task.wait(20)
								end
								newwhich:Destroy()
							end
						end)
					end
				end)
			end
			local getMessageFromAura = function(auraName: string, isGlobal: boolean)
				local auras = {
					Luminosity = {
						Message = ("<font color=\"#86bcff\">The Blinding Light</font> has devoured %s"):format((player.DisplayName and ("%s(@%s)"):format(player.DisplayName, player.Name)) or player.Name)
					},
					Memory = {
						Message = ("%s HAS FOUND Memory, The Fallen"):format((player.DisplayName and ("%s(@%s)"):format(player.DisplayName, player.Name)) or player.Name)
					},
					Oblivion = {
						Message = ("%s HAS DISCOVERED <font color=\"rgb(0,0,0)\"><b><stroke color=\"#B963FF\" joins=\"miter\" thickness=\"1.5\" transparency=\"0.25\">[THE TRUTH]</stroke></b></font>"):format((player.DisplayName and ("%s(@%s)"):format(player.DisplayName, player.Name)) or player.Name)
					}
				} :: {
					[("Luminosity" | "Memory" | "Oblivion")]: {
						Message: string
					}
				}

				local message

				local Aura

				for _Aura, Aura in auras do
					if tostring(_Aura) == auraName then
						message = Aura.Message or ""
						Aura = tostring(_Aura)
					end
				end

				if message == nil then
					local color = "#"..getMessageColor(rollResult["Rarity"]):ToHex()
					if player.Name == player.DisplayName then
						message = "@" .. player.Name .. " HAS FOUND " .. messagestring .. ", CHANCE OF 1 IN " .. raritydisplay
					else
						message = player.DisplayName .. "(@" .. player.Name .. ") HAS FOUND " .. messagestring .. ", CHANCE OF 1 IN " .. raritydisplay
					end
				end

				if isGlobal ~= nil and isGlobal == true then
					message = ("<font color=\"#6075ff\">[Global]:</font> %s"):format(message)
				else
					local color = "#"..getMessageColor(rollResult["Rarity"]):ToHex()
					message = ("<font color=\"%s\">%s</font>"):format(color, message)
				end

				return message
			end

			if rollResult["Unobtainable"] ~= true then
				local isGlobal
				if rollResult["Rarity"] >= 99000000/10 then
					print("99m+")
					isGlobal = true
					task.delay(11.1, function()
						spawnMapVFX(game.Workspace.GlobalRolls.LegendaryRoll, 5)
						NewRemotes:WaitForChild("Do100MEffect"):FireAllClients(rollResult["Rarity"])
						local Properties = {
							Type = (
								(isGlobal and "Global") or "Rarity"
							),
							Message = getMessageFromAura(messagestring, isGlobal),
							Rarity = rollResult["Rarity"],
							Translate = true
						}
						if isGlobal then
							local Properties2 = {
								Type = "Rarity",
								Message = getMessageFromAura(messagestring, false),
								Rarity = rollResult["Rarity"],
								Translate = true
							}
							global.SendMessage.sendToAll(Properties2)
							MessagingService:PublishAsync("Global_Message", HttpService:JSONEncode(Properties))
						else
							global.SendMessage.sendToAll(Properties)
						end
						--[[playSoundGlobally(game.ReplicatedStorage.Assets.SFXs.HundredMillion1)
						playSoundGlobally(game.ReplicatedStorage.Assets.SFXs.HundredMillion2)
						local color = "#"..getMessageColor(rollResult["Rarity"]):ToHex()
						if player.Name == player.DisplayName then
							msg = "<font color=\""..color.."\">@"..player.Name.." HAS FOUND "..messagestring..", CHANCE OF 1 IN "..raritydisplay.."</font>"
						else
							msg = "<font color=\""..color.."\">"..player.DisplayName.."(@"..player.Name..") HAS FOUND "..messagestring..", CHANCE OF 1 IN "..raritydisplay.."</font>"
						end]]
					end)
				elseif rollResult["Rarity"] >= 10000000/10 then
					print("10m+")
					local color ="#".. Color3.new(0.0784314, 0.027451, 0.611765):ToHex()
					global.SendMessage.sendToAll({
						Type = "Rarity",
						Message = getMessageFromAura(messagestring),
						Rarity = rollResult["Rarity"],
						Translate = true
					})
					--[[if player.Name == player.DisplayName then
						msg = "<font color=\""..color.."\">@"..player.Name.." HAS FOUND "..messagestring..", CHANCE OF 1 IN "..raritydisplay.."</font>"
					else
						msg = "<font color=\""..color.."\">"..player.DisplayName.."(@"..player.Name..") HAS FOUND "..messagestring..", CHANCE OF 1 IN "..raritydisplay.."</font>"
					end
					coroutine.wrap(function()
						for i, v in pairs(game.Workspace.GlobalRolls.MythicalRoll:GetChildren()) do
							v.Enabled = true
						end
						task.wait(4)
						for i, v in pairs(game.Workspace.GlobalRolls.MythicalRoll:GetChildren()) do
							v.Enabled = false
						end
					end)()]]
					--local msg = {Text = player., TextColor = Color3.new(0.529412, 0.294118, 1)}
					--NewRemotes.ServerMessage:FireAllClients("Rarity", msg, rollResult["Rarity"])
				elseif rollResult["Rarity"] >= 1000000/10 then
					print("1m+")
					local color = "#"..Color3.new(1, 0.333333, 1):ToHex()
					global.SendMessage.sendToAll({
						Type = "Rarity",
						Message = getMessageFromAura(messagestring),
						Rarity = rollResult["Rarity"],
						Translate = true
					})
					--[[if player.Name == player.DisplayName then
						msg = "<font color=\""..color.."\">@"..player.Name.." HAS FOUND "..messagestring..", CHANCE OF 1 IN "..raritydisplay.."</font>"
					else
						msg = "<font color=\""..color.."\">"..player.DisplayName.."(@"..player.Name..") HAS FOUND "..messagestring..", CHANCE OF 1 IN "..raritydisplay.."</font>"
					end

					coroutine.wrap(function()
						for i, v in pairs(game.Workspace.GlobalRolls.ExoticRoll:GetChildren()) do
							v.Enabled = true
						end
						task.wait(0.15)
						for i, v in pairs(game.Workspace.GlobalRolls.ExoticRoll:GetChildren()) do
							v.Enabled = false
						end
					end)()]]
					--local msg = {Text = player., TextColor = Color3.new(0.529412, 0.294118, 1)}
					--NewRemotes.ServerMessage:FireAllClients("Rarity", msg, rollResult["Rarity"])
				elseif rollResult["Rarity"] >= 99999/10 then
					print("100k+")
					local color = "#"..Color3.new(0.313725, 1, 0.690196):ToHex()
					global.SendMessage.sendToAll({
						Type = "Rarity",
						Message = getMessageFromAura(messagestring),
						Rarity = rollResult["Rarity"],
						Translate = true
					})
					--[[if player.Name == player.DisplayName then
						msg = "<font color=\""..color.."\">@"..player.Name.." HAS FOUND "..messagestring..", CHANCE OF 1 IN "..raritydisplay.."</font>"
					else
						msg = "<font color=\""..color.."\">"..player.DisplayName.."(@"..player.Name..") HAS FOUND "..messagestring..", CHANCE OF 1 IN "..raritydisplay.."</font>"
					end

					coroutine.wrap(function()
						for i, v in pairs(game.Workspace.GlobalRolls.UniqueRoll:GetChildren()) do
							v.Enabled = true
						end
						task.wait(1)
						for i, v in pairs(game.Workspace.GlobalRolls.UniqueRoll:GetChildren()) do
							v.Enabled = false
						end
					end)()]]
					--local msg = {Text = player., TextColor = Color3.new(0.529412, 0.294118, 1)}
					--NewRemotes.ServerMessage:FireAllClients("Rarity", msg, rollResult["Rarity"])
				elseif rollResult["Rarity"] >= 10000/5 then
					print("10k+")
					local color = "#"..Color3.new(1, 0.427451, 0.2):ToHex()
					global.SendMessage.sendToAll({
						Type = "Rarity",
						Message = getMessageFromAura(messagestring),
						Rarity = rollResult["Rarity"],
						Translate = true
					})
					--[[if player.Name == player.DisplayName then
						msg = "<font color=\""..color.."\">@"..player.Name.." HAS FOUND "..messagestring..", CHANCE OF 1 IN "..raritydisplay.."</font>"
					else
						msg = "<font color=\""..color.."\">"..player.DisplayName.."(@"..player.Name..") HAS FOUND "..messagestring..", CHANCE OF 1 IN "..raritydisplay.."</font>"
					end

					coroutine.wrap(function()
						for i, v in pairs(game.Workspace.GlobalRolls.EpicRoll:GetChildren()) do
							v.Enabled = true
						end
						task.wait(1)
						for i, v in pairs(game.Workspace.GlobalRolls.EpicRoll:GetChildren()) do
							v.Enabled = false
						end
					end)()]]

					--local msg = {Text = player., TextColor = Color3.new(0.529412, 0.294118, 1)}
					--NewRemotes.ServerMessage:FireAllClients("Rarity", msg, rollResult["Rarity"])	
				elseif rollResult["Rarity"] >= 1000/5 then
					print("1k+")
					local color = "#873EFF"  -- Hex color equivalent to Color3.new(0.529412, 0.294118, 1)
					global.SendMessage.sendToAll({
						Type = "Rarity",
						Message = getMessageFromAura(messagestring),
						Rarity = rollResult["Rarity"],
						Translate = true
					})
					--local msg = {Text = player., TextColor = Color3.new(0.529412, 0.294118, 1)}
					--NewRemotes.ServerMessage:FireAllClients("Rarity", msg, rollResult["Rarity"])
				end

				--if rollResult["Rarity"] > 0.1 then
				NewRemotes.ServerMessage:FireAllClients("Rarity", msg, rollResult["Rarity"])
				--end
			end

			local connection
			connection = NewRemotes.RollEvent.OnServerEvent:Connect(function(plr, wut, ok)
				if plr.Name ~= player.Name then
					return
				end 
				if wut == "Choice" then

					if ok["Action"] == "Equip" then
						data.PendingAura = "None"
						if rollResult["Aura"] == "Oppression" then
							if not (MarketplaceService:UserOwnsGamePassAsync(player.UserId, 899518838) or MarketplaceService:UserOwnsGamePassAsync(player.UserId, 908740614)) then
								MarketplaceService:PromptGamePassPurchase(player, 908740614)
							else
								changedata:SetValue("PendingAura", data.PendingAura)
								if tonumber(#data.InventoryAuras) + 1 > data.MaxStorableAuras then

								else
									local okaytable = {Locked = false, Name = rollResult["Aura"]}
									table.insert(data.InventoryAuras, okaytable)
									changedata:SetValue("InventoryAuras", data.InventoryAuras)
									data.EquippedAuraIndex = tonumber(#data.InventoryAuras)
									changedata:SetValue({"EquippedAuraIndex"}, data.EquippedAuraIndex)
									auracontroll.EquipAura(plr.Character, tostring(data.InventoryAuras[data.EquippedAuraIndex].Name))
								end
								local thedelay = {[1] = game.Workspace:GetServerTimeNow() + 1, [2] = 1} --1
								NewRemotes.RollEvent:FireClient(plr, "SetDelay", thedelay)
							end
						else
							changedata:SetValue("PendingAura", data.PendingAura)
							if tonumber(#data.InventoryAuras) + 1 > data.MaxStorableAuras then

							else
								local okaytable = {Locked = false, Name = rollResult["Aura"]}
								table.insert(data.InventoryAuras, okaytable)
								changedata:SetValue("InventoryAuras", data.InventoryAuras)
								data.EquippedAuraIndex = tonumber(#data.InventoryAuras)
								changedata:SetValue({"EquippedAuraIndex"}, data.EquippedAuraIndex)
								pcall(function()
									auracontroll.EquipAura(plr.Character, tostring(data.InventoryAuras[data.EquippedAuraIndex].Name))
								end)
							end
							local thedelay = {[1] = game.Workspace:GetServerTimeNow() + 1, [2] = 1} --1
							print("ei")
							NewRemotes.RollEvent:FireClient(plr, "SetDelay", thedelay)
						end
					elseif ok["Action"] == "Skip" then
						data.PendingAura = "None"
						changedata:SetValue("PendingAura", data.PendingAura)
						local thedelay = {[1] = game.Workspace:GetServerTimeNow() + 1, [2] = 1} --1
						NewRemotes.RollEvent:FireClient(plr, "SetDelay", thedelay)
					elseif ok["Action"] == "AddToCraft" then
						if data.AutoCrafting ~= "" then
							local craftingitem = data.AutoCrafting
							local iteminsert = data.PendingAura
							local amountofitem = 1
							if not data.CraftingProgress then
								data.CraftingProgress = {}
							end

							if not data.CraftingProgress[craftingitem] then
								data.CraftingProgress[craftingitem] = {
									[iteminsert] = 0		
								}
							end

							if not data.CraftingProgress[craftingitem][iteminsert] then
								data.CraftingProgress[craftingitem][iteminsert] = 0
							end
							changedata:SetValue({"CraftingProgress", craftingitem}, data.CraftingProgress[craftingitem])

							data.CraftingProgress[craftingitem][iteminsert] += amountofitem


							changedata:SetValue({"CraftingProgress", craftingitem, iteminsert}, data.CraftingProgress[craftingitem][iteminsert])
							data.PendingAura = "None"
							changedata:SetValue("PendingAura", data.PendingAura)
							local thedelay = {[1] = game.Workspace:GetServerTimeNow() + 1, [2] = 1} --1
							NewRemotes.RollEvent:FireClient(plr, "SetDelay", thedelay)
						else
							data.PendingAura = "None"
							changedata:SetValue("PendingAura", data.PendingAura)
							local thedelay = {[1] = game.Workspace:GetServerTimeNow() + 1, [2] = 1} --1
							NewRemotes.RollEvent:FireClient(plr, "SetDelay", thedelay)
						end

					else
						data.PendingAura = "None"
						changedata:SetValue("PendingAura", data.PendingAura)
						local thedelay = {[1] = game.Workspace:GetServerTimeNow() + 1, [2] = 1} --1
						print("a")
						NewRemotes.RollEvent:FireClient(plr, "SetDelay", thedelay)
					end
					hasgivenachoice = true
					connection:Disconnect()
					cooldown = true
					iscurrentlyrolling = false
					wait(0.9)
					cooldown = false
				end
			end)
			return rollResult
		end
	end
end