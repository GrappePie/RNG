--!strict

-- Types
export type settings = {
	["ModMenuUntoggled"]: boolean | nil,
	["AutoAddNotification"]: boolean | nil,
	["AutoEquip"]: number | nil,
	["AutoEquipEnabled"]: boolean | nil,
	["BuffEnabled"]: boolean | nil,
	["CoinNotification"]: boolean | nil,
	["SwapWarning"]: number | nil,
	["SwapWarningEnabled"]: boolean | nil,
	["GlobalMessage"]: boolean | nil,
	["HideAFK"]: boolean | nil,
	["OthersAuraSFX"]: boolean | nil,
	["PVP"]: boolean | nil,
	["ServerMessageSFX"]: boolean | nil,
	["SkipAuraEffect"]: number | nil,
	["SkipAuraEffectEnabled"]: boolean | nil,
	["SkipWarning"]: number | nil,
	["SkipWarningEnabled"]: boolean | nil,
	["ToggleBGM"]: boolean | nil,
	["UiSFXEnabled"]: boolean | nil,
	["StorageWarningEnabled"]: boolean | nil,
	["ItemCollectNotification"]: boolean | nil,
	["ServerMessageIgnore"]: number | nil
}

-- Services
local HttpService = game:GetService("HttpService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Modules
local Modules = ReplicatedStorage:WaitForChild("Modules")
local CoreModules = Modules:WaitForChild("CoreModules")

local ClientBasedFunctions = CoreModules:WaitForChild("ClientBasedFunctions")

local EffectHandler = require(ClientBasedFunctions)

-- Remotes
local Remotes = ReplicatedStorage:WaitForChild("Remotes")

local SettingChanged = Remotes:WaitForChild("SettingChanged")
local GetSettings = Remotes:WaitForChild("GetSettings")

-- Player
local Player = game.Players.LocalPlayer

-- UI
local MainInterface = script:FindFirstAncestorWhichIsA("ScreenGui")

local RemoteHolder = MainInterface:WaitForChild("RemoteFunction")

local SettingsClient = RemoteHolder:WaitForChild("SettingsClient")

local Settings = MainInterface:WaitForChild("Settings")

local SettingsMenu = Settings:WaitForChild("Menu")

local SettingsMain = SettingsMenu:WaitForChild("Main")
local SettingsTopbar = SettingsMenu:WaitForChild("Topbar")

local RollingTab = SettingsMain:WaitForChild("Rolling")
local NotificationsTab = SettingsMain:WaitForChild("Notifications")
local MiscellaneousTab = SettingsMain:WaitForChild("Miscellaneous")
local EffectsTab = SettingsMain:WaitForChild("Effects")

local RollingButton = SettingsTopbar:WaitForChild("Rolling")
local NotificationsButton = SettingsTopbar:WaitForChild("Notifications")
local MiscellaneousButton = SettingsTopbar:WaitForChild("Miscellaneous")
local EffectsButton = SettingsTopbar:WaitForChild("Effects")

-- Setup
local currentTab

local _closeOtherTabs = function(): ()
	for _, tab in SettingsMain:GetChildren() do
		if tab:HasTag("Tab") then
			if tab.Visible == true then
				tab.Visible = false
			end
		end
	end
end
local _topbarSetup = function(): any
	for _, btn in pairs(SettingsTopbar:GetChildren()) do
		if btn:IsA("TextButton") then
			local tab = SettingsMain:FindFirstChild(btn.Name)
			if tab ~= nil then
				btn.MouseButton1Click:Connect(function(): ()
					_closeOtherTabs()
					if tab:IsA("ScrollingFrame") or tab:IsA("Frame") then
						currentTab = tab.Name
						tab.Visible = true
					else
						return "Warning: tab isn't a ScrollingFrame / Frame; Nothing was effected"
					end
				end)
			end
		end
	end
	return true
end

SettingsClient:FireServer()

_closeOtherTabs()

RollingTab.Visible = true

_topbarSetup()

-- Main
local _getPlayerSettings = function(): settings
	local settingTable = GetSettings:InvokeServer() or {
		["ModMenuUntoggled"] = false,
		["AutoAddNotification"] = true,
		["AutoEquip"] = 1000,
		["AutoEquipEnabled"] = false,
		["BuffEnabled"] = true,
		["CoinNotification"] = true,
		["SwapWarning"] = 1000,
		["SwapWarningEnabled"] = true,
		["GlobalMessage"] = true,
		["HideAFK"] = false,
		["OthersAuraSFX"] = true,
		["PVP"] = true,
		["ServerMessageSFX"] = true,
		["SkipAuraEffect"] = 10_000_000,
		["SkipAuraEffectEnabled"] = true,
		["SkipWarning"] = 1000,
		["SkipWarningEnabled"] = true,
		["ToggleBGM"] = true,
		["UiSFXEnabled"] = true,
		["StorageWarningEnabled"] = false,
		["ItemCollectNotification"] = true,
		["ServerMessageIgnore"] = 1_000_000
	}
	local newTable = {}
	for attribute, value in settingTable do
		if settingTable[tostring(attribute)] ~= nil then
			newTable[attribute] = value
		end
	end
	return settingTable
end
local _loadSettings = function(): ()
	local settingTable = _getPlayerSettings()
	for _, frame in SettingsMain:GetChildren() do
		for _, slot in frame:GetChildren() do
			local _func = function(slot): ()
				local Button = slot:FindFirstChild("Button") :: TextButton
				local Input = slot:FindFirstChild("Input") :: TextBox
				local State = slot:FindFirstChild("State") :: TextButton
				local Status = slot:FindFirstChild("Status") :: TextButton
				if State ~= nil then
					local Setting = State:GetAttribute("Setting") or nil
					local StateToggle = State:FindFirstChild("ImageLabel") :: ImageLabel
					StateToggle.Visible = settingTable[Setting]
					local Availability = slot:FindFirstChild("Availability") :: TextButton
					if Availability ~= nil then
						Availability.Visible = (not settingTable[Setting])
					end
					State.MouseButton1Click:Connect(function()
						local settingTable = _getPlayerSettings()
						local newState = not settingTable[Setting] or false
						if StateToggle ~= nil then
							StateToggle.Visible = newState
						end
						if Availability ~= nil then
							Availability.Visible = not newState
						end
						if Setting ~= nil then
							settingTable[Setting] = newState
						end
						SettingChanged:FireServer(HttpService:JSONEncode(settingTable))
					end)
				end
				if Input ~= nil then
					local TXT = "1000"
					local Setting = Input:GetAttribute("Setting")
					Input.Text = settingTable[Setting] or 1000
					TXT = Input.Text
					Input.InputEnded:Connect(function(property)
						local settingTable = _getPlayerSettings()
						local newValue = Input.Text
						if newValue ~= nil and (string.len(newValue) ~= 0 and tonumber(newValue) ~= nil) then 
							if Setting ~= nil then
								settingTable[Setting] = tonumber(newValue)
							end
							SettingChanged:FireServer(HttpService:JSONEncode(settingTable))
							TXT = Input.Text
						else
							Input.Text = TXT
						end
					end)
				end
				if Button ~= nil then
					if Button:GetAttribute("Refer") ~= nil then
						local refer = Button:GetAttribute("Refer")
						Button.MouseButton1Click:Connect(function()
							EffectHandler.CloseAllWindows()
							local ReferObject = MainInterface:FindFirstChild(refer)
							if ReferObject ~= nil then
								ReferObject.Visible = true
							end
						end)
					end
				end
			end
			if slot:HasTag("InputBox") then
				_func(slot)
			end
			if slot:HasTag("Slot") then
				for _, _slot in slot:GetChildren() do
					_func(_slot)
				end
			end
		end
	end
end

_loadSettings()