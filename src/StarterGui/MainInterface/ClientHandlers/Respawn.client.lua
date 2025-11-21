local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalizationService = game:GetService("LocalizationService")

local RespawnCharacter = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("RespawnCharacter")
local ServerMessage = ReplicatedStorage:WaitForChild("Events"):WaitForChild("ServerMessage")
local ResetButtonCallbackEvent = Instance.new("BindableEvent")

local respawnCooldown = 0
local canRespawn = false
local localPlayer = Players.LocalPlayer
local translator = LocalizationService:GetTranslatorForPlayerAsync(localPlayer)

local function setRespawnCooldown(newCooldown)
	canRespawn = false
	respawnCooldown = newCooldown + 5
end

local function handleRespawnRequest()
	if canRespawn then
		ServerMessage:Fire("Default", string.format("<font color=\"rgb(255, 145, 55)\">%s</font>", translator:Translate(game, "You can't respawn right now.")))
		return
	elseif respawnCooldown > workspace:GetServerTimeNow() then
		local timeRemaining = math.ceil(respawnCooldown - workspace:GetServerTimeNow())
		ServerMessage:Fire("Default", string.format("<font color=\"rgb(255, 145, 55)\">%s</font>", translator:Translate(game, "You can respawn in %ss."):format(timeRemaining)))
	else
		canRespawn = true
		RespawnCharacter:FireServer()
	end
end
task.defer(function()
	while true do
		local success, result = pcall(LocalizationService.GetTranslatorForPlayerAsync, LocalizationService, localPlayer)
		if success then
			translator = result
			break
		else
			warn("Failed to get translator:", result)
		end
		task.wait()
	end
end)

task.defer(function()
	while true do
		local success = pcall(StarterGui.SetCore, StarterGui, "ResetButtonCallback", ResetButtonCallbackEvent)
		if success then
			break
		else
			warn("Failed to set reset button callback.")
		end
		task.wait()
	end
end)

ResetButtonCallbackEvent.Event:Connect(handleRespawnRequest)
RespawnCharacter.OnClientEvent:Connect(setRespawnCooldown)
