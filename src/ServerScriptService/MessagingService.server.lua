--!strict
local MessagingService = game:GetService("MessagingService")
local HttpService = game:GetService("HttpService")

local ReplicatedStorage = game.ReplicatedStorage

local Packets = ReplicatedStorage:WaitForChild("Packets")

local Global = require(Packets:WaitForChild("Global"))

MessagingService:SubscribeAsync("Global_Message", function(data): ()
	local data = HttpService:JSONDecode(data.Data) or {}

	local Type = data.Type or "Rarity" :: string
	local Message = data.Message or "" :: string
	local Rarity = data.Rarity or "0" :: string
	local Translate = data.Translate or false :: boolean

	Global.SendMessage.sendToAll({
		Type = Type,
		Message = Message,
		Rarity = Rarity,
		Translate = Translate
	})
end)