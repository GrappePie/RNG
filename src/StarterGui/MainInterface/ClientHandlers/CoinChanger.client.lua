--!strict
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local ReplicaController = require(ReplicatedStorage:WaitForChild("ReplicaController"))

local LocalPlayer = game:GetService("Players").LocalPlayer

local ScreenGui = script:FindFirstAncestorOfClass("ScreenGui")

local NotificationCore = require(ScreenGui:WaitForChild("Notification"):WaitForChild("Core")) :: any

local CoinNotificationRemote = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("CoinNotification")
local SFXAssets = ReplicatedStorage:WaitForChild("Assets"):WaitForChild("SFXs")

ReplicaController.RequestData()

repeat
	task.wait()
until
	ReplicaController.InitialDataReceived

local PlayerReplica = ReplicaController.GetReplicaById(LocalPlayer:GetAttribute("UID"))

local function formatInt(value: number): string
	if value == math.huge or value ~= value then
		return "0"
	end

	local sign: any, integerPart: any, decimalPart = tostring(value):match("([-]?)(%d+)([.]?%d*)")

	return sign .. integerPart:reverse():gsub("(%d%d%d)", "%1,"):reverse():gsub("^,", "") .. decimalPart
end

local CoinLabel = script.Parent.Parent:WaitForChild("Coin"):WaitForChild("TextLabel")
local PointLabel = script.Parent.Parent:WaitForChild("Point"):WaitForChild("TextLabel")

local function updateCoinDisplay(newCoins: number)
	CoinLabel.Text = formatInt(newCoins)
end

local function updatePointDisplay(newPoints: number)
	PointLabel.Text = formatInt(newPoints)
end

updateCoinDisplay(PlayerReplica.Data.Coins)
updatePointDisplay(PlayerReplica.Data.DarkCoins)

PlayerReplica:ListenToChange("Coins", updateCoinDisplay)
PlayerReplica:ListenToChange("DarkCoins", updatePointDisplay)

CoinNotificationRemote.OnClientEvent:Connect(function(notificationType: string, amount: number)
	if PlayerReplica.Data.Settings.CoinNotification then
		if notificationType == "Excess" then
			NotificationCore.Create(
				("Your coins (%s) have been lost."):format(formatInt(amount)),
				("because you exceeded the coin limit (%s)."):format(formatInt(PlayerReplica.Data.MaximumCoinRetention)),
				10,
				"Warn"
			)

			SFXAssets.Error:Play()

			return
		end

		if notificationType == "Bank" then
			NotificationCore.Create(
				("The %s coin in the bank has been successfully deposited."):format(formatInt(amount)),
				"-",
				10,
				"Badge"
			)

			SFXAssets.Money:Play()

			return
		end

		if notificationType == "BankFailed" then
			NotificationCore.Create(
				"You failed to withdraw money from the bank.",
				("because you exceeded the coin limit (%s)."):format(formatInt(PlayerReplica.Data.MaximumCoinRetention)),
				10,
				"Warn"
			)

			SFXAssets.Error:Play()
		end
	end
end)