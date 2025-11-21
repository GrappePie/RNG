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

local Credits =  MainInterface:WaitForChild("Credits")

local ExitButton = Credits:WaitForChild("Topbar"):WaitForChild("Exit")

local CreditsButton = MainInterface:WaitForChild("Misc"):WaitForChild("Menu"):WaitForChild("Credits")

-- Main
EffectHandler.LoadFrameEffects(Credits, CreditsButton, ExitButton)