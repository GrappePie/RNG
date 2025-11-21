local AvatarEditorService = game:GetService("AvatarEditorService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

LocalPlayer.CharacterAdded:Once(function(char)
	AvatarEditorService:PromptSetFavorite(game.PlaceId, Enum.AvatarItemType.Asset, true)
	task.wait()
	script:Destroy()
end)