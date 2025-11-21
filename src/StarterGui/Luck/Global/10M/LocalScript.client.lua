local MarketplaceService = game:GetService("MarketplaceService")

local Button = script.Parent

local productId = 2678288611
Button.MouseButton1Click:Connect(function()
	local Player = game.Players.LocalPlayer
	MarketplaceService:PromptProductPurchase(Player, productId)
end)