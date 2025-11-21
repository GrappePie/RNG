--!strict
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Player = Players.LocalPlayer

local RemotesFolder = script:FindFirstChild("Remotes")

local Assets = ReplicatedStorage:WaitForChild("Assets")
local Modules = ReplicatedStorage:WaitForChild("Modules")
local Packets = ReplicatedStorage:WaitForChild("Packets")

local Utility = Modules:WaitForChild("Utility")

local Sounds = Assets:WaitForChild("Sounds")
local SoundService = game:GetService("SoundService")

local function PlaySoundEffect(soundName, startTime)
	local sound = Sounds:FindFirstChild(soundName)
	if sound and sound:IsA("Sound") then
		local soundClone = sound:Clone()
		soundClone.TimePosition = startTime or 0
		soundClone:SetAttribute("Volume", soundClone.Volume)
		soundClone:AddTag("ServerMessageSounds")
		soundClone.Volume = 0
		soundClone.Name = math.random()
		soundClone.Parent = SoundService
		soundClone:Play()
		soundClone.Ended:Once(function()
			soundClone:Destroy()
		end)
	end
end

--local playerData = require(Utility).Replica.WaitForReplica(Player)

local translator = require(Modules:WaitForChild("Translator"))
local Global = require(Packets:WaitForChild("Global"))

local RBXGeneral = game:GetService("TextChatService"):WaitForChild("TextChannels"):WaitForChild("RBXGeneral")

Global.SendMessage.listen(function(Data)
	if Data.Type == "Rarity" and tonumber(Data.Rarity or "") then
		local rarityValue = tonumber(Data.Rarity) :: number

		if rarityValue < (Player:GetAttribute("ServerMessageIgnore") or -math.huge) then 
			return
		end

		if 99999999/10 <= rarityValue then
			PlaySoundEffect("HundredMillion1", 0)
			PlaySoundEffect("HundredMillion2", 0)
		elseif 9999999/10 <= rarityValue then
			PlaySoundEffect("ExoticRoll", 0.7)
			PlaySoundEffect("DeepImpact", 0)
		elseif 999999/10 <= rarityValue then
			PlaySoundEffect("ExoticRoll", 0.7)
			PlaySoundEffect("ExoticRoll2", 0)
		elseif 10000/10 <= rarityValue then
			PlaySoundEffect("EpicRoll", 0)
		elseif 1000/10 <= rarityValue then
			PlaySoundEffect("ServerSFX2", 0)
		end
	elseif Data.Type == "Default" then
		-- No action needed for "Default" type
	elseif Data.Type == "Global" and (not Player:GetAttribute("GlobalMessage") or false) then
		return
	end

	local message = Data.Message
	if Data.Translate then
		local translatedMessage = translator.translate(message)
		if translatedMessage then
			message = translatedMessage
		end
	end

	RBXGeneral:DisplaySystemMessage(message)
end)