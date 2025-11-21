-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-16 17:19:55
-- Luau version 6, Types version 3
-- Time taken: 0.002470 seconds

local Players_upvr = game:GetService("Players")
local LocalPlayer_upvr = Players_upvr.LocalPlayer
local UI = game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("UI")
local module_upvr_2 = require(UI:WaitForChild("CraftingUI"))
local Jake_upvr = workspace:WaitForChild("Map"):WaitForChild("SHOP"):WaitForChild("Jake")
local var8_upvw
local tbl = {
	Name = "Jake";
	ViewportData = {
		Model = workspace:WaitForChild("Map"):WaitForChild("SHOP"):WaitForChild("Jake");
	};
}
local tbl_2_upvr = {
	Contexts = {{
		Speaker = tbl;
		Text = "Welcome to my workshop! What do you need?";
		EndDelay = 0.2;
	}};
	Choices = {{
		ButtonText = "[ Open ]";
		ButtonColor3 = Color3.fromRGB(44, 255, 40);
		Result = "Open";
	}, {
			ButtonText = "Who are you?";
			Result = "Leave";
			NextDialog = {
				Contexts = {{
					Speaker = tbl;
					Text = "Just a normal shop keeper.";
					EndDelay = 0.2;
				}};
				Choices = {{
					ButtonText = "...";
					Result = "Leave";
				}};
			};
		}, {
			ButtonText = "[ Leave ]";
			ButtonColor3 = Color3.fromRGB(255, 67, 67);
			Result = "Leave";
		}};
}
local function OnCharacterMoved_upvr() -- Line 82, Named "OnCharacterMoved"
	--[[ Upvalues[4]:
		[1]: Jake_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: module_upvr_2 (readonly)
		[4]: var8_upvw (read and write)
	]]
	if 25 <= (Jake_upvr:GetPivot().Position - Players_upvr.LocalPlayer.Character:GetPivot().Position).Magnitude then
		module_upvr_2.Disappear()
		if var8_upvw then
			var8_upvw:Disconnect()
			var8_upvw = nil
		end
	end
end
local module_upvr = require(UI:WaitForChild("DialogUI"))
local module_upvr_3 = require(UI:WaitForChild("Notification"))
Jake_upvr:WaitForChild("ProximityPrompt").Triggered:Connect(function(arg1) -- Line 94
	--[[ Upvalues[9]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: tbl_2_upvr (readonly)
		[4]: Jake_upvr (readonly)
		[5]: Players_upvr (readonly)
		[6]: module_upvr_3 (readonly)
		[7]: module_upvr_2 (readonly)
		[8]: var8_upvw (read and write)
		[9]: OnCharacterMoved_upvr (readonly)
	]]
	if arg1 ~= LocalPlayer_upvr then
	else
		if module_upvr.DisplayDialog(tbl_2_upvr) == "Open" then
			if 25 <= (Jake_upvr:GetPivot().Position - Players_upvr.LocalPlayer.Character:GetPivot().Position).Magnitude then
				module_upvr_3.Create("You're too far away", "You need to be within 25 studs of Jake", 5, "Warn")
			else
				module_upvr_2.Show()
			end
		else
			return
		end
		var8_upvw = arg1.Character:FindFirstChild("Humanoid"):GetPropertyChangedSignal("MoveDirection"):Connect(OnCharacterMoved_upvr)
		arg1.CharacterRemoving:Once(function() -- Line 109
			--[[ Upvalues[1]:
				[1]: var8_upvw (copied, read and write)
			]]
			if var8_upvw then
				var8_upvw:Disconnect()
				var8_upvw = nil
			end
		end)
	end
end)