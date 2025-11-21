-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-16 17:26:00
-- Luau version 6, Types version 3
-- Time taken: 0.001173 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr = require(Modules:WaitForChild("UI"):WaitForChild("InventoryUI"))
game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false)
require(ReplicatedStorage:WaitForChild("Packets"):WaitForChild("Inventory")).UpdateItem.listen(function(arg1) -- Line 40
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.UpdateItemFrame(arg1.itemName, arg1.amount)
end)
if not LocalPlayer:GetAttribute("PlayBegin") then
	LocalPlayer:GetAttributeChangedSignal("PlayBegin"):Wait()
end
for i, v in require(Modules:WaitForChild("Utility")).Replica.WaitForReplica(LocalPlayer).Data.Inventory do
	module_upvr.UpdateItemFrame(i, v.Amount)
end