-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-16 17:26:36
-- Luau version 6, Types version 3
-- Time taken: 0.001223 seconds

local Players_upvr = game:GetService("Players")
local LocalPlayer_upvr = Players_upvr.LocalPlayer
local module_upvr = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("UI"):WaitForChild("PotionCraftingUI"))
local Cauldron_upvr = workspace:WaitForChild("Cauldron")
local var7_upvw
local function OnCharacterMoved_upvr() -- Line 27, Named "OnCharacterMoved"
	--[[ Upvalues[4]:
		[1]: Cauldron_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: module_upvr (readonly)
		[4]: var7_upvw (read and write)
	]]
	if 25 <= (Cauldron_upvr:GetPivot().Position - Players_upvr.LocalPlayer.Character:GetPivot().Position).Magnitude then
		module_upvr.Disappear()
		if var7_upvw then
			var7_upvw:Disconnect()
			var7_upvw = nil
		end
	end
end
Cauldron_upvr:WaitForChild("Liquid"):WaitForChild("Attachment"):WaitForChild("ProximityPrompt").Triggered:Connect(function(arg1) -- Line 40
	--[[ Upvalues[4]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: var7_upvw (read and write)
		[4]: OnCharacterMoved_upvr (readonly)
	]]
	if arg1 ~= LocalPlayer_upvr then
	else
		module_upvr.Show()
		var7_upvw = arg1.Character:FindFirstChild("Humanoid"):GetPropertyChangedSignal("MoveDirection"):Connect(OnCharacterMoved_upvr)
		arg1.CharacterRemoving:Once(function() -- Line 47
			--[[ Upvalues[1]:
				[1]: var7_upvw (copied, read and write)
			]]
			if var7_upvw then
				var7_upvw:Disconnect()
				var7_upvw = nil
			end
		end)
	end
end)