-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-16 17:20:24
-- Luau version 6, Types version 3
-- Time taken: 0.001809 seconds

local Players_upvr = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer_upvr = Players_upvr.LocalPlayer
local module_upvr = require(ReplicatedStorage:WaitForChild("Modules"):WaitForChild("UI"):WaitForChild("BankUI"))
local Bank_upvr = workspace:WaitForChild("Map"):WaitForChild("SHOP"):WaitForChild("Bank")
local var7_upvw
local function OnCharacterMoved_upvr() -- Line 37, Named "OnCharacterMoved"
	--[[ Upvalues[4]:
		[1]: Bank_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: module_upvr (readonly)
		[4]: var7_upvw (read and write)
	]]
	if 25 <= (Bank_upvr:GetPivot().Position - Players_upvr.LocalPlayer.Character:GetPivot().Position).Magnitude then
		module_upvr.Disappear()
		if var7_upvw then
			var7_upvw:Disconnect()
			var7_upvw = nil
		end
	end
end
Bank_upvr:WaitForChild("RootPart"):WaitForChild("ProximityPrompt").Triggered:Connect(function(arg1) -- Line 49
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
		arg1.CharacterRemoving:Once(function() -- Line 57
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
require(ReplicatedStorage:WaitForChild("Packets"):WaitForChild("Bank")).ShowBank.listen(function() -- Line 27, Named "ShowBank"
	--[[ Upvalues[1]:
		[1]: Bank_upvr (readonly)
	]]
	for _, v in Bank_upvr:GetDescendants() do
		if v:IsA("BasePart") or v:IsA("UnionOperation") or v:IsA("MeshPart") then
			v.Transparency = 0
		end
	end
	Bank_upvr:WaitForChild("RootPart"):WaitForChild("ProximityPrompt").Enabled = true
end)