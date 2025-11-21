--!strict
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local LocalPlayer = Players.LocalPlayer

local Mouse = LocalPlayer:GetMouse()

local UseSkillUI = script:FindFirstAncestorOfClass("ScreenGui"):WaitForChild("UseSkill")

local CooldownUI = UseSkillUI:WaitForChild("Cooldown")
local SelectionCorners = UseSkillUI:WaitForChild("SelectionCorners"):GetDescendants()

local AuraAbilityRemote = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("AuraAbilityRemote")

local ClientBasedFunctions = require(ReplicatedStorage:WaitForChild("Modules"):WaitForChild("CoreModules"):WaitForChild("ClientBasedFunctions"))

local Config = script:WaitForChild("Config").Value

local CooldownTween = TweenService:Create(CooldownUI, Tween0o.new(0.5, Enum.EasingStyle.Linear), {
	BackgroundTransparency = 1
})

local AuraCooldowns = HttpService:JSONDecode("{}")
local AuraDelayTime = 1
local AuraCooldownEndTime = 0

local canUseAbility = true
local isAbilityActive = false

-- local _ = {}

local function UpdateCooldownUI()
	local currentServerTime = workspace:GetServerTimeNow()
	local Title = LocalPlayer:GetAttribute("Title") or ""

	if not UseSkillUI:GetAttribute("Disabled") then
		for _, descendant in ipairs(SelectionCorners) do
			if descendant:IsA("TextLabel") then
				descendant.TextColor3 = Color3.new(1, 1, 1)
			elseif descendant:IsA("Frame") then
				descendant.BackgroundColor3 = Color3.new(1, 1, 1)
			end
		end

		if (currentServerTime < AuraCooldownEndTime) then
			CooldownUI.Size = UDim2.fromScale(1, (AuraCooldownEndTime - currentServerTime) / AuraDelayTime)
			CooldownUI.BackgroundTransparency = 0.7
		else
			if isAbilityActive == true then
				CooldownUI.Size = UDim2.fromScale(1, 1)
				CooldownUI.BackgroundTransparency = 0
				CooldownTween:Play()
				isAbilityActive = false
			end
		end
	else
		for _, descendant in ipairs(SelectionCorners) do
			if descendant:IsA("TextLabel") then
				descendant.TextColor3 = Color3.fromRGB(150, 150, 150)
			elseif descendant:IsA("Frame") then
				descendant.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
			end
		end

		CooldownUI.BackgroundTransparency = 1
	end
end

local function UpdateCooldownValues()
	local Title = LocalPlayer:GetAttribute("Title") or ""

	local _AuraCooldowns = LocalPlayer:GetAttribute("AuraCooldowns") or nil

	if not _AuraCooldowns then return end

	AuraCooldowns = HttpService:JSONDecode(_AuraCooldowns) or AuraCooldowns

	if AuraCooldowns[Title] == nil then
		AuraCooldowns[Title] = {
			AuraDelaytime = -1,
			AuraCooltime = -1,
			Toggled = false
		}

		canUseAbility = true

		AuraDelayTime = -1
		AuraCooldownEndTime = -1
	else
		AuraDelayTime = AuraCooldowns[Title]["AuraDelaytime"] or -1
		AuraCooldownEndTime = AuraCooldowns[Title]["AuraCooltime"] or -1

		local currentTime = workspace:GetServerTimeNow()
		if AuraCooldownEndTime > currentTime then
			isAbilityActive = true
			canUseAbility = false
		else
			canUseAbility = true
		end
	end

	UpdateCooldownUI()
end

local function UseAbility()
	if LocalPlayer:GetAttribute("SkillDisabled") then
		return
	end

	if canUseAbility and (not isAbilityActive) then 
		UseSkillUI:SetAttribute("Disabled", false)

		AuraAbilityRemote:FireServer(Mouse.Hit, (LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart").CFrame)

		UpdateCooldownUI()
	end
end

local function HandleInputBegan(input, gameProcessedEvent)
	if not gameProcessedEvent and (input.KeyCode == Enum.KeyCode.X or input.KeyCode == Enum.KeyCode.ButtonX) then
		UseAbility()
	end
end

--[[local function HandleAbilityActivated(isActivated)
	if isAbilityActive and not isActivated then
		isAbilityActive = false
	end
end]]

table.insert(SelectionCorners, UseSkillUI:WaitForChild("TextLabel"))

ClientBasedFunctions.LoadButtonEffects(UseSkillUI)

LocalPlayer:GetAttributeChangedSignal("AuraCooldowns"):Connect(UpdateCooldownValues)

LocalPlayer:GetAttributeChangedSignal("Title"):Connect(function()
	UpdateCooldownValues()
end)

--AuraAbilityRemote.OnClientEvent:Connect(HandleAbilityActivated)

UseSkillUI.MouseButton1Down:Connect(UseAbility)

RunService.RenderStepped:Connect(UpdateCooldownValues)
UserInputService.InputBegan:Connect(HandleInputBegan)

LocalPlayer:GetAttributeChangedSignal("SkillIncluded"):Connect(function()
	UseSkillUI.Visible = LocalPlayer:GetAttribute("SkillIncluded")
end)

CooldownUI.BackgroundTransparency = 1

UseSkillUI.Visible = LocalPlayer:GetAttribute("SkillIncluded")