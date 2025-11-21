--!strict

-- Services
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Modules
local Modules = ReplicatedStorage:WaitForChild("Modules")
local CoreModules = Modules:WaitForChild("CoreModules")

local ClientBasedFunctions = CoreModules:WaitForChild("ClientBasedFunctions")

local EffectHandler = require(ClientBasedFunctions)

-- UI
local MainInterface = script:FindFirstAncestorWhichIsA("ScreenGui")

local Misc =  MainInterface:WaitForChild("Misc")
local ModMenu = MainInterface:WaitForChild("ModMenu")
local Settings = MainInterface:WaitForChild("Settings")
local FilterSettings = MainInterface:WaitForChild("FilterSettings")

local MiscMenu = Misc:FindFirstChild("Menu")

local MiscTopbar = Misc:WaitForChild("Topbar")
local ModMenuTopbar = ModMenu:WaitForChild("Top")

local ExtraButtons = MainInterface:WaitForChild("ExtraButtons")

local MiscButton = ExtraButtons:WaitForChild("Misc")
local ModMenuButton = ExtraButtons:WaitForChild("ModMenu")
local SettingsButton = MiscMenu:WaitForChild("Settings")

local MiscExitButton = MiscTopbar:WaitForChild("Exit")
local ModMenuExitButton = ModMenuTopbar:WaitForChild("Close")
local SettingsExitButton = Settings:WaitForChild("Topbar"):WaitForChild("Exit")
local FilterSettingsExitButton = FilterSettings:WaitForChild("Close")

-- Main

-- Button Effects
EffectHandler.LoadButtonEffects(MiscButton)

EffectHandler.LoadButtonEffects(ModMenuButton)
EffectHandler.LoadButtonEffects(ModMenuExitButton, 1)

-- Frame Effects
EffectHandler.LoadFrameEffects(Misc, MiscButton, MiscExitButton)
EffectHandler.LoadFrameEffects(Settings, SettingsButton, SettingsExitButton)
EffectHandler.LoadFrameEffects(ModMenu, ModMenuButton, ModMenuExitButton)
EffectHandler.LoadFrameEffects(FilterSettings, nil, FilterSettingsExitButton)