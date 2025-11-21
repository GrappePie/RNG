local player = script.Parent.Parent.Parent.Parent
local rollmodule = require(game.ReplicatedStorage.Modules.RollModule)
local utility = require(game.ReplicatedStorage.Modules.Utility)
local datastore = require(game:GetService("ServerStorage").ModuleScripts.DataStore)
local HttpService = game:GetService("HttpService")

game.ReplicatedStorage.Remotes.GetSettings.OnServerInvoke = function(plr): ()
	local SettingData = datastore.GetStore(plr, true).Settings
	return SettingData or nil
end

player.PlayerGui.MainInterface.RemoteFunction.SettingsClient.OnServerEvent:Connect(function(plr)
	if plr.Name ~= player.Name then
		return
	end

	local SettingData = datastore.GetStore(plr, true).Settings

	player.PlayerGui.MainInterface.RemoteFunction.SettingsClient:FireClient(player, SettingData)

	player:SetAttribute("ModMenuUntoggled", SettingData.ModMenuUntoggled)
	player:SetAttribute("AutoAddNotification", SettingData.AutoAddNotification)
	player:SetAttribute("AutoEquip", SettingData.AutoEquip)
	player:SetAttribute("AutoEquipEnabled", SettingData.AutoEquipEnabled)
	player:SetAttribute("BuffEnabled", SettingData.BuffEnabled)
	player:SetAttribute("CoinNotification", SettingData.CoinNotification)
	player:SetAttribute("SwapWarning", SettingData.SwapWarning)
	player:SetAttribute("SwapWarningEnabled", SettingData.SwapWarningEnabled)
	player:SetAttribute("GlobalMessage", SettingData.GlobalMessage)
	player:SetAttribute("HideAFK", SettingData.HideAFK)
	player:SetAttribute("OthersAuraSFX", SettingData.OthersAuraSFX)
	player:SetAttribute("PVP", SettingData.PVP)
	player:SetAttribute("ServerMessageSFX", SettingData.ServerMessageSFX)
	player:SetAttribute("SkipAuraEffect", SettingData.SkipAuraEffect)
	player:SetAttribute("SkipAuraEffectEnabled", SettingData.SkipAuraEffectEnabled)
	player:SetAttribute("SkipWarning", SettingData.SkipWarning)
	player:SetAttribute("SkipWarningEnabled", SettingData.SkipWarningEnabled)
	player:SetAttribute("ToggleBGM", SettingData.ToggleBGM)
	player:SetAttribute("UiSFXEnabled", SettingData.UiSFXEnabled)
	player:SetAttribute("StorageWarningEnabled", SettingData.StorageWarningEnabled)
	player:SetAttribute("ItemCollectNotification", SettingData.ItemCollectNotification)
	player:SetAttribute("ServerMessageIgnore", SettingData.ServerMessageIgnore)

	return true
end)

game.ReplicatedStorage.Remotes.SettingChanged.OnServerEvent:Connect(function(plr, setting)
	if plr.Name ~= player.Name then
		return
	end

	local settingTable = HttpService:JSONDecode(setting)

	if type(settingTable) ~= "table" then
		return
	end

	local data = datastore.GetStore(plr, true)
	local changedata = datastore.GetChangeStore(plr, true)

	data.Settings = settingTable

	local ehm = data.Settings
	changedata:SetValue({"Settings"}, settingTable)

	player:SetAttribute("ModMenuUntoggled", ehm.ModMenuUntoggled)
	player:SetAttribute("AutoAddNotification", ehm.AutoAddNotification)
	player:SetAttribute("AutoEquip", ehm.AutoEquip)
	player:SetAttribute("AutoEquipEnabled", ehm.AutoEquipEnabled)
	player:SetAttribute("BuffEnabled", ehm.BuffEnabled)
	player:SetAttribute("CoinNotification", ehm.CoinNotification)
	player:SetAttribute("EquipWarning", ehm.EquipWarning)
	player:SetAttribute("SwapWarning", ehm.EquipWarning)
	player:SetAttribute("SwapWarningEnabled", ehm.SwapWarningEnabled)
	player:SetAttribute("GlobalMessage", ehm.GlobalMessage)
	player:SetAttribute("HideAFK", ehm.HideAFK)
	player:SetAttribute("OthersAuraSFX", ehm.OthersAuraSFX)
	player:SetAttribute("PVP", ehm.PVP)
	player:SetAttribute("ServerMessageSFX", ehm.ServerMessageSFX)
	player:SetAttribute("SkipAuraEffect", ehm.SkipAuraEffect)
	player:SetAttribute("SkipAuraEffectEnabled", ehm.SkipAuraEffectEnabled)
	player:SetAttribute("SkipWarning", ehm.SkipWarning)
	player:SetAttribute("SkipWarningEnabled", ehm.SkipWarningEnabled)
	player:SetAttribute("ToggleBGM", ehm.ToggleBGM)
	player:SetAttribute("UiSFXEnabled", ehm.UiSFXEnabled)
	player:SetAttribute("StorageWarningEnabled", ehm.StorageWarningEnabled)
	player:SetAttribute("ItemCollectNotification", ehm.ItemCollectNotification)
	player:SetAttribute("ServerMessageIgnore", ehm.ServerMessageIgnore)

	return true
end)


-- Add to Player Attributes
--[[
Active = boolean
AutoAddNotification = boolean
AutoEquip = number
AutoEquipEnabled = boolean
BuffEnabled = boolean
ClientLoaded = boolean
CoinNotification = boolean
Donated = number
EquipWarning = number
SwapWarningEnabled = boolean
GlobalMessage = boolean
GlobalMessageSFX = boolean
GroupRank = number
HideAFK = boolean
IsInCave = boolean
Loaded = boolean
OthersAuraSFX = boolean
PlayBegin = workspacetime
PVP = boolean
QuickRespawn = boolean
ServerMessageSFX = boolean
ServerOwner = boolean
SkillIncluded = boolean
SkipAuraEffect = number
SkipWarning = number
SkipWarningEnabled = boolean
StorageWarningEnabled = boolean
Title = "Lbtitle"
ToggleBGM = boolean
UiSFXEnabled = boolean
Verified = boolean
]]