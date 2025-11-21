-- What the sigma?

local v_u_1 = game:GetService("StarterGui")
local v_u_2 = game:GetService("TweenService")
local v3 = game:GetService("TeleportService")
local v4 = game:GetService("ReplicatedFirst")
local v5 = game:GetService("ReplicatedStorage")
local v6 = game:GetService("MarketplaceService")
local v7 = script.Parent
local v8 = v7:WaitForChild("ImageLabel")
local v_u_9 = v8:WaitForChild("UIScale")
local v10 = v8:WaitForChild("Frame"):WaitForChild("Icon")
local v11 = script:WaitForChild("TeleportUI")
local v12 = v5:WaitForChild("Modules")
local v13 = require(v12:WaitForChild("Utility")) -- Has to be scripted
local v14 = v5:WaitForChild("Remotes"):WaitForChild("ShutdownInProgress")
local v_u_15 = v7.Parent:WaitForChild("MainInterface")
v10.Image = ("rbxassetid://%*"):format(v13.TryUntilSuccess(v6.GetProduct0o, v6, 15532962292).IconImageAssetId)
v11:WaitForChild("ImageLabel"):WaitForChild("Frame"):WaitForChild("Icon").Image = v10.Image
v14.OnClientEvent:Connect(function()
	-- upvalues: (copy) v_u_15, (copy) v_u_1, (copy) v_u_2, (copy) v_u_9
	v_u_15.Enabled = false
	v_u_1:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
	v_u_2:Create(v_u_9, Tween0o.new(2), {
		["Scale"] = 1
	}):Play()
end)
v4:RemoveDefaultLoadingScreen()
v3:SetTeleportGui(v11)