--!strict
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local StarterPlayer = game:GetService("StarterPlayer")
local ServerStorage = game:GetService("ServerStorage")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Modules = ReplicatedStorage:WaitForChild("Modules")

local RemoteFunction = require(Modules:WaitForChild("RemoteFunction")).new("Aura")
local Utility = require(Modules:WaitForChild("Utility"))

local IsServer = RunService:IsServer()

local animationData = {
	waitlist = {
		["APOSTOLOS"] = true,
		["Innovator"] = true
	}
}

local function EquipAura(character, auraName, data)
	local Player = Players.LocalPlayer or nil

	if not IsServer and not Player then warn("player not found from character") end

	local animate = character:FindFirstChild("Animate")

	for _, descendant in ipairs(character:GetDescendants()) do
		if descendant:GetAttribute("AuraInstance") then
			descendant:Destroy()
		end
	end

	if animate then
		animate:SetAttribute("HasAnim", false)

		if animationData.waitlist[auraName] ~= nil then
			task.wait(1)
		end

		for _, animation in ipairs(animate:GetDescendants()) do
			if animation:IsA("Animation") then
				animation.AnimationId = animationData[animation.Name]
			end
		end
	end

	if auraName == "" then return end

	local auraInstance
	if IsServer then
		auraInstance = ServerStorage.Events.AuraInstance:Invoke(auraName, Players:GetPlayerFromCharacter(character), data):Clone()
	else
		local instanceId = game.ReplicatedStorage.Modules.RemoteFunction.AuraClientNew:InvokeServer(auraName)
		auraInstance = Player:WaitForChild("AuraInstances"):WaitForChild(instanceId)
	end

	local auraChildren = auraInstance:GetChildren()
	local animations = auraInstance:FindFirstChild("Animations")

	local humanoid = character:FindFirstChildOfClass("Humanoid")

	local auraData = Utility.FindAuraData(auraName)

	auraInstance.Parent = nil

	for _, child in ipairs(auraChildren) do
		if child.Name ~= "Animations" then
			for _, part in ipairs(child:GetChildren()) do
				local clonedPart = part:Clone()
				clonedPart:SetAttribute("AuraInstance", true)
				clonedPart.Parent = character:WaitForChild(child.Name)

				if clonedPart:IsA("Sound") or clonedPart:IsA("AudioFader") then
					clonedPart:SetAttribute("Original", clonedPart.Volume)
					clonedPart:SetAttribute("AuraInstance", true)

					clonedPart:AddTag("AuraSound")
				end
			end
		end
	end

	for _, descendant in ipairs(character:GetDescendants()) do
		if descendant:GetAttribute("OriginalTransparency") then
			descendant.Transparency = descendant:GetAttribute("OriginalTransparency")

			descendant:SetAttribute("OriginalTransparency", nil)
		elseif descendant.Name == "TitleUI" then
			descendant.Enabled = true
		end
	end

	humanoid.HipHeight = auraData and auraData.HipHeight or 0

	if IsServer and Players:GetPlayerFromCharacter(character) then
		Players:GetPlayerFromCharacter(character):SetAttribute("CameraOffset", auraData and auraData.CameraOffset or Vector3.zero)
	end
print("SKIB")
	if animations then
		animate:SetAttribute("HasAnim", true)

		for _, animation in ipairs(animations:GetChildren()) do
			if animation:IsA("Animation") then
				animate:FindFirstChild(animation.Name, true).AnimationId = animation.AnimationId
			end
		end
	end

	if auraName ~= "AbyssalHunter" then
		humanoid.WalkSpeed = humanoid:GetAttribute("OriginWalkspeed") or humanoid.WalkSpeed
	end

	--[[				Trigger aura equip event (commented out for now)
		if Players:GetPlayerFromCharacter(character) and v13.AuraEquip[auraName] then
			v13.AuraEquip[auraName](Players:GetPlayerFromCharacter(character))
		end
	]]

	if Player ~= nil then
		Player:SetAttribute("Title", auraName)
	else
		Player = Players:GetPlayerFromCharacter(character)
		Player:SetAttribute("Title", auraName)
	end

	animate:SetAttribute("Reboot", Random.new():NextNumber() :: any)

	auraInstance:Destroy()
end

local function ChangeAuraSkin(auraName, skinName, data)
	if IsServer and data then
		return ServerStorage.Events.AuraSkin:Invoke(auraName, skinName, data)
	elseif not IsServer then
		return RemoteFunction:Fire(auraName, skinName)
	end
end

for _, animation in ipairs(StarterPlayer.StarterCharacterScripts.Animate:GetDescendants()) do
	if animation:IsA("Animation") then
		animationData[animation.Name] = animation.AnimationId
	end
end

return {
	EquipAura = EquipAura,
	ChangeAuraSkin = ChangeAuraSkin
}