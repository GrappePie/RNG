local MarketPlaceService = game:GetService("MarketplaceService")
local LocalPlayer = game:GetService("Players").LocalPlayer

local Products = {
	["10"] = 1912654825,
	["50"] = 1912656377,
	["100"] = 1912656373,
	["500"] = 1912656375,
	["1000"] = 1912656371,
	["5000"] = 1912656374,
	["10000"] = 1912656370
}
local Donationboard = workspace:WaitForChild("Map"):WaitForChild("Leaderboards"):WaitForChild("Donationboard"):WaitForChild("Donationboard"):WaitForChild("SurfaceGui"):WaitForChild("Frame")

for _, v in Donationboard:GetChildren() do
	if v:IsA("TextButton") then
		v.MouseButton1Click:Connect(function()
			MarketPlaceService:PromptProductPurchase(LocalPlayer, Products[v.Name])
		end)
	end
end