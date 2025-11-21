-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-16 17:27:04
-- Luau version 6, Types version 3
-- Time taken: 0.003518 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr = require(Modules:WaitForChild("Utility"))
local UI = Modules:WaitForChild("UI")
local module_upvr_3 = require(UI:WaitForChild("RollUI"))
local module_upvr_4 = require(ReplicatedStorage:WaitForChild("Packets"):WaitForChild("Rolling"))
local var9_upvw
local var10_upvw
local var11_upvw = false
local var12_upvw = true
local workspace_GetServerTimeNow_result1_upvw = workspace:GetServerTimeNow()
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local any_WaitForReplica_result1_upvr = module_upvr.Replica.WaitForReplica(LocalPlayer_upvr)
if not LocalPlayer_upvr:GetAttribute("PlayBegin") then
	LocalPlayer_upvr:GetAttributeChangedSignal("PlayBegin"):Wait()
end
local function _() -- Line 51, Named "CheckAllAurasLocked"
	--[[ Upvalues[1]:
		[1]: any_WaitForReplica_result1_upvr (readonly)
	]]
	for _, v in any_WaitForReplica_result1_upvr.Data.InventoryAuras do
		if not v.Locked then
			return false
		end
	end
	return true
end
local module_upvr_5 = require(Modules:WaitForChild("Rolling"):WaitForChild("RollData"))
module_upvr_3.Buttons.Equip.Callback = function() -- Line 85, Named "OnEquipButtonPressed"
	--[[ Upvalues[8]:
		[1]: var11_upvw (read and write)
		[2]: var10_upvw (read and write)
		[3]: module_upvr (readonly)
		[4]: any_WaitForReplica_result1_upvr (readonly)
		[5]: module_upvr_5 (readonly)
		[6]: LocalPlayer_upvr (readonly)
		[7]: module_upvr_3 (readonly)
		[8]: module_upvr_4 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 25 start (CF ANALYSIS FAILED)
	if not var11_upvw or not var10_upvw then return end
	module_upvr.PlaySFX("Click", "UISounds")
	var11_upvw = false
	-- KONSTANTERROR: [0] 1. Error Block 25 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 18. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 18. Error Block 6 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [77] 59. Error Block 27 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [77] 59. Error Block 27 end (CF ANALYSIS FAILED)
end
module_upvr_3.Buttons.Skip.Callback = function() -- Line 61, Named "OnSkipButtonPressed"
	--[[ Upvalues[6]:
		[1]: var11_upvw (read and write)
		[2]: var10_upvw (read and write)
		[3]: module_upvr (readonly)
		[4]: any_WaitForReplica_result1_upvr (readonly)
		[5]: module_upvr_3 (readonly)
		[6]: module_upvr_4 (readonly)
	]]
	if not var11_upvw or not var10_upvw then
	else
		module_upvr.PlaySFX("Click", "UISounds")
		var11_upvw = false
		if any_WaitForReplica_result1_upvr.Data.Settings.SkipWarningEnabled and any_WaitForReplica_result1_upvr.Data.Settings.SkipWarningRarity <= var10_upvw.Rarity then
			if not module_upvr_3:DisplayWarning({
				HeaderText = "[ Warning ]";
				Description = "Are you sure to SKIP this aura?";
				YesButtonText = "Skip";
				YesButtonColor3 = Color3.fromRGB(255, 53, 53);
				NoButtonText = "Cancel";
				NoButtonColor3 = Color3.fromRGB(106, 173, 255);
				}) then
				var11_upvw = true
				return
			end
		end
		module_upvr_4.SendResponse.send(2)
	end
end
local MarketplaceService_upvr = game:GetService("MarketplaceService")
local QuickRoll_upvr = require(ReplicatedStorage:WaitForChild("Storage"):WaitForChild("Gamepasses")).Container.QuickRoll
module_upvr_3.Buttons.QuickRoll.MouseButton1Click:Connect(function() -- Line 140
	--[[ Upvalues[4]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: MarketplaceService_upvr (readonly)
		[4]: QuickRoll_upvr (readonly)
	]]
	if not LocalPlayer_upvr:GetAttribute("HasQuickRoll") then
		module_upvr.PlaySFX("Click", "UISounds")
		MarketplaceService_upvr:PromptGamePassPurchase(LocalPlayer_upvr, QuickRoll_upvr.PassId)
	end
end)
module_upvr_3.Buttons.Roll.MouseButton1Click:Connect(function() -- Line 147
	--[[ Upvalues[5]:
		[1]: workspace_GetServerTimeNow_result1_upvw (read and write)
		[2]: var12_upvw (read and write)
		[3]: module_upvr (readonly)
		[4]: var9_upvw (read and write)
		[5]: module_upvr_3 (readonly)
	]]
	if workspace:GetServerTimeNow() <= workspace_GetServerTimeNow_result1_upvw or not var12_upvw then
	else
		module_upvr.PlaySFX("Click", "UISounds")
		var12_upvw = false
		var9_upvw = module_upvr_3:PlayRollEffect()
	end
end)
module_upvr_4.SendResult.listen(function(arg1) -- Line 154
	--[[ Upvalues[4]:
		[1]: var10_upvw (read and write)
		[2]: var9_upvw (read and write)
		[3]: module_upvr_3 (readonly)
		[4]: var11_upvw (read and write)
	]]
	arg1.Rarity = tonumber(arg1.Rarity)
	var10_upvw = arg1
	if not var9_upvw or coroutine.status(var9_upvw) == "dead" then
		module_upvr_3:AppearBackground()
	end
	if var9_upvw then
		task.cancel(var9_upvw)
	end
	module_upvr_3:ClearBackground()
	var11_upvw = true
	module_upvr_3:ShowResponse(arg1)
end)
local module_upvr_2 = require(UI:WaitForChild("SceneUI"))
module_upvr_4.PlayScene.listen(function(arg1) -- Line 164
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	local tonumber_result1 = tonumber(arg1.Rarity)
	if tonumber_result1 then
		module_upvr_2.PlayRollEffect(arg1.Value, tonumber_result1)
	end
end)
local var30_upvw = 1
module_upvr_4.ResetDelay.listen(function(arg1) -- Line 171
	--[[ Upvalues[5]:
		[1]: workspace_GetServerTimeNow_result1_upvw (read and write)
		[2]: var30_upvw (read and write)
		[3]: module_upvr_3 (readonly)
		[4]: var12_upvw (read and write)
		[5]: var9_upvw (read and write)
	]]
	workspace_GetServerTimeNow_result1_upvw = arg1.NextRollable
	var30_upvw = arg1.RollDelay
	module_upvr_3:UpdateValues(arg1.NextRollable, arg1.RollDelay)
	var12_upvw = true
	if var9_upvw then
		task.cancel(var9_upvw)
	end
	module_upvr_3:ClearBackground()
	module_upvr_3:DisappearBackground()
end)
module_upvr_4.RollEffect.listen(function() -- Line 181
	--[[ Upvalues[2]:
		[1]: var9_upvw (read and write)
		[2]: module_upvr_3 (readonly)
	]]
	if var9_upvw then
		task.cancel(var9_upvw)
	end
	module_upvr_3:ClearBackground()
	var9_upvw = module_upvr_3:PlayRollEffect(true)
end)
module_upvr_4.ClientLoaded.send()