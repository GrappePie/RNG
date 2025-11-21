local module = {}

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")

function module.Ability(plr)
	local character = plr.Character
	if not character then return end
	local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
	if not humanoidRootPart then return end
	local WatermelonSFX = Instance.new("Sound")
	WatermelonSFX.SoundId = "rbxassetid://124928477747504"
	WatermelonSFX.Name = "AbilitySFX"
	WatermelonSFX.Parent = humanoidRootPart
	WatermelonSFX:Play()
	task.delay(WatermelonSFX.TimeLength, function()
		WatermelonSFX:Destroy()
	end)
end

return module
