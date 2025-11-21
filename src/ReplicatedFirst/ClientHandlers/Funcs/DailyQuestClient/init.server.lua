-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-16 17:18:28
-- Luau version 6, Types version 3
-- Time taken: 0.007961 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_4_upvr = require(ReplicatedStorage:WaitForChild("Packets"):WaitForChild("DailyQuest"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr = require(Modules:WaitForChild("Utility"))
local UI = Modules:WaitForChild("UI")
local module_2 = require(UI:WaitForChild("Quad"))
local module_5_upvr = require(UI:WaitForChild("QuestsUI"))
local Store = module_2.Store
local Mount_upvr = module_2.Mount
local any_WaitForReplica_result1_upvr = module_upvr.Replica.WaitForReplica(game:GetService("Players").LocalPlayer)
local var11_upvw
local any_new_result1_upvr = require(Modules:WaitForChild("GoodSignal")).new()
local Button_upvr = module_5_upvr.Button
local any_GetStore_result1_upvr = Store.GetStore("Global")
local var15_upvw = false
local var16_upvw
local any_Class_result1_upvr = module_2.Class(script:WaitForChild("DailyQuest"))
local tbl_2_upvr = {
	Coin = 5000;
	Items = {{
		ItemName = "Huge Fortune Potion I";
		Amount = 1;
	}, {
			ItemName = "Pumpkin";
			Amount = 150;
		}};
}
local var17_result1_upvr = any_Class_result1_upvr({
	IsFinalQuest = true;
	Goal = 3;
	Progress = 0;
	Callback = function() -- Line 57, Named "Callback"
		--[[ Upvalues[4]:
			[1]: var16_upvw (read and write)
			[2]: any_GetStore_result1_upvr (readonly)
			[3]: module_5_upvr (readonly)
			[4]: tbl_2_upvr (readonly)
		]]
		var16_upvw = nil
		any_GetStore_result1_upvr.QuestClaimButtonVisible = false
		any_GetStore_result1_upvr.RerollButtonVisible = false
		module_5_upvr.Title.Text = "Good job today"
		module_5_upvr.FillRewardFrame(tbl_2_upvr)
	end;
})
local tbl_4_upvr = {}
local function _() -- Line 69, Named "GetCompleted"
	--[[ Upvalues[1]:
		[1]: tbl_4_upvr (readonly)
	]]
	local var32
	for _, v in pairs(tbl_4_upvr) do
		if v then
			var32 += 1
		end
	end
	return var32
end
local module_upvr_2 = require(ReplicatedStorage:WaitForChild("Storage"):WaitForChild("Buffs"))
local function ToRewardData_upvr(arg1) -- Line 73, Named "ToRewardData"
	--[[ Upvalues[2]:
		[1]: module_upvr_2 (readonly)
		[2]: module_upvr (readonly)
	]]
	local module = {}
	for _, v_2 in ipairs(arg1) do
		if v_2.Type == "Item" then
			local Items = module.Items
			if not Items then
				Items = {}
			end
			module.Items = Items
			table.insert(module.Items, {
				ItemName = v_2.Name;
				Amount = v_2.Amount;
			})
		elseif v_2.Type == "Coin" then
			module.Coin = v_2.Amount
		elseif v_2.Type == "Point" then
			local Custom_2 = module.Custom
			if not Custom_2 then
				Custom_2 = {}
			end
			module.Custom = Custom_2
			table.insert(module.Custom, {
				Content = `x{v_2.Amount} Point`;
				ContentColor3 = Color3.fromRGB(152, 78, 255);
			})
		else
			local var46
			if v_2.Type == "Buff" then
				local Custom = module.Custom
				if not Custom then
					Custom = {}
				end
				module.Custom = Custom
				local any_GetValueData_result1 = module_upvr_2:GetValueData(v_2.Name)
				local tbl = {}
				local function INLINED() -- Internal function, doesn't exist in bytecode
					var46 = `[x{v_2.Stack}]`
					return var46
				end
				if 1 >= (v_2.Stack or 1) or not INLINED() then
					var46 = ""
				end
				tbl.Content = `{any_GetValueData_result1.Name} {var46}[{module_upvr.ToTimeString2(v_2.Duration, 3)}]`
				tbl.ContentColor3 = any_GetValueData_result1.Color
				table.insert(module.Custom, tbl)
			end
		end
	end
	return module
end
local var50_upvw
local function CreateQuestFrame(arg1) -- Line 95
	--[[ Upvalues[14]:
		[1]: var11_upvw (read and write)
		[2]: any_new_result1_upvr (readonly)
		[3]: var50_upvw (read and write)
		[4]: any_Class_result1_upvr (readonly)
		[5]: any_WaitForReplica_result1_upvr (readonly)
		[6]: tbl_4_upvr (readonly)
		[7]: var17_result1_upvr (readonly)
		[8]: var15_upvw (read and write)
		[9]: var16_upvw (read and write)
		[10]: any_GetStore_result1_upvr (readonly)
		[11]: Button_upvr (readonly)
		[12]: module_5_upvr (readonly)
		[13]: ToRewardData_upvr (readonly)
		[14]: Mount_upvr (readonly)
	]]
	local ApplyData
	if not var11_upvw then
		any_new_result1_upvr:Wait()
	end
	if not var50_upvw then
		repeat
			task.wait()
		until var50_upvw
	end
	if not var11_upvw[arg1] then
		any_new_result1_upvr:Wait()
	end
	local tbl_3 = {}
	tbl_3.Index = arg1
	local any_Class_result1_upvr_result1_upvr = any_Class_result1_upvr(tbl_3)
	function any_Class_result1_upvr_result1_upvr.Callback() -- Line 116
		--[[ Upvalues[9]:
			[1]: var15_upvw (copied, read and write)
			[2]: var16_upvw (copied, read and write)
			[3]: arg1 (readonly)
			[4]: any_GetStore_result1_upvr (copied, readonly)
			[5]: Button_upvr (copied, readonly)
			[6]: any_WaitForReplica_result1_upvr (copied, readonly)
			[7]: var11_upvw (copied, read and write)
			[8]: module_5_upvr (copied, readonly)
			[9]: ToRewardData_upvr (copied, readonly)
		]]
		local var67
		if var15_upvw then
		else
			var16_upvw = arg1
			var67 = true
			any_GetStore_result1_upvr.QuestClaimButtonVisible = var67
			var67 = any_WaitForReplica_result1_upvr.Data.ClaimedQuests[arg1]
			if not var67 then
				if any_WaitForReplica_result1_upvr.Data.QuestProgress[arg1] >= var11_upvw[arg1].Goal then
					var67 = false
				else
					var67 = true
				end
			end
			Button_upvr.Disabled = var67
			if any_WaitForReplica_result1_upvr.Data.QuestProgress[arg1] < var11_upvw[arg1].Goal then
			end
			any_GetStore_result1_upvr.RerollButtonVisible = not any_WaitForReplica_result1_upvr.Data.ClaimedQuests[arg1]
			if any_WaitForReplica_result1_upvr.Data.ClaimedQuests[arg1] then
			else
			end
			Button_upvr.Text = "Claim Rewards"
			module_5_upvr.Title.Text = var11_upvw[arg1].DisplayName
			module_5_upvr.FillRewardFrame(ToRewardData_upvr(var11_upvw[arg1].Rewards))
		end
	end
	ApplyData = var11_upvw
	any_Class_result1_upvr_result1_upvr.Name = ApplyData[arg1].DisplayName
	ApplyData = var11_upvw
	any_Class_result1_upvr_result1_upvr.Goal = ApplyData[arg1].Goal
	ApplyData = any_WaitForReplica_result1_upvr.Data
	any_Class_result1_upvr_result1_upvr.Progress = ApplyData.QuestProgress[arg1]
	ApplyData = any_WaitForReplica_result1_upvr.Data
	local ClaimedQuests_2 = ApplyData.ClaimedQuests
	any_Class_result1_upvr_result1_upvr.IsClaimed = ClaimedQuests_2[arg1]
	ApplyData = any_WaitForReplica_result1_upvr.Data.QuestProgress[arg1]
	if ApplyData ~= var11_upvw[arg1].Goal then
		ClaimedQuests_2 = false
	else
		ClaimedQuests_2 = true
	end
	tbl_4_upvr[arg1] = ClaimedQuests_2
	ApplyData = 0
	for _, v_4 in pairs(tbl_4_upvr) do
		if v_4 then
			ApplyData += 1
		end
	end
	var17_result1_upvr.Progress = ApplyData
	function ApplyData() -- Line 102
		--[[ Upvalues[6]:
			[1]: any_Class_result1_upvr_result1_upvr (readonly)
			[2]: var11_upvw (copied, read and write)
			[3]: arg1 (readonly)
			[4]: any_WaitForReplica_result1_upvr (copied, readonly)
			[5]: tbl_4_upvr (copied, readonly)
			[6]: var17_result1_upvr (copied, readonly)
		]]
		any_Class_result1_upvr_result1_upvr.Name = var11_upvw[arg1].DisplayName
		any_Class_result1_upvr_result1_upvr.Goal = var11_upvw[arg1].Goal
		any_Class_result1_upvr_result1_upvr.Progress = any_WaitForReplica_result1_upvr.Data.QuestProgress[arg1]
		local ClaimedQuests = any_WaitForReplica_result1_upvr.Data.ClaimedQuests
		any_Class_result1_upvr_result1_upvr.IsClaimed = ClaimedQuests[arg1]
		if any_WaitForReplica_result1_upvr.Data.QuestProgress[arg1] ~= var11_upvw[arg1].Goal then
			ClaimedQuests = false
		else
			ClaimedQuests = true
		end
		tbl_4_upvr[arg1] = ClaimedQuests
		ClaimedQuests = 0
		for _, v_3 in pairs(tbl_4_upvr) do
			if v_3 then
				ClaimedQuests += 1
			end
		end
		var17_result1_upvr.Progress = ClaimedQuests
	end
	any_new_result1_upvr:Connect(ApplyData)
	ApplyData = {}
	ApplyData[1] = "QuestProgress"
	ApplyData[2] = arg1
	any_WaitForReplica_result1_upvr:ListenToChange(ApplyData, function(arg1_2) -- Line 130
		--[[ Upvalues[9]:
			[1]: any_Class_result1_upvr_result1_upvr (readonly)
			[2]: tbl_4_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: var11_upvw (copied, read and write)
			[5]: var16_upvw (copied, read and write)
			[6]: Button_upvr (copied, readonly)
			[7]: any_WaitForReplica_result1_upvr (copied, readonly)
			[8]: any_GetStore_result1_upvr (copied, readonly)
			[9]: var17_result1_upvr (copied, readonly)
		]]
		any_Class_result1_upvr_result1_upvr.Progress = arg1_2
		local var77
		if arg1_2 ~= var11_upvw[arg1].Goal then
			var77 = false
		else
			var77 = true
		end
		tbl_4_upvr[arg1] = var77
		if arg1 == var16_upvw then
			var77 = any_WaitForReplica_result1_upvr.Data.ClaimedQuests
			local var78 = var77[arg1]
			if not var78 then
				var77 = any_WaitForReplica_result1_upvr.Data.QuestProgress[arg1]
				if var77 >= var11_upvw[arg1].Goal then
					var78 = false
				else
					var78 = true
				end
			end
			Button_upvr.Disabled = var78
			var78 = false
			local var79 = var78
			var77 = any_WaitForReplica_result1_upvr.Data.QuestProgress[arg1]
			if var77 < var11_upvw[arg1].Goal then
				var77 = any_WaitForReplica_result1_upvr.Data.ClaimedQuests[arg1]
				var79 = not var77
			end
			any_GetStore_result1_upvr.RerollButtonVisible = var79
		end
		var77 = 0
		for _, v_5 in pairs(tbl_4_upvr) do
			if v_5 then
				var77 += 1
			end
		end
		var17_result1_upvr.Progress = var77
	end)
	ApplyData = {}
	ApplyData[1] = "ClaimedQuests"
	ApplyData[2] = arg1
	any_WaitForReplica_result1_upvr:ListenToChange(ApplyData, function(arg1_3) -- Line 143
		--[[ Upvalues[8]:
			[1]: any_Class_result1_upvr_result1_upvr (readonly)
			[2]: var15_upvw (copied, read and write)
			[3]: arg1 (readonly)
			[4]: var16_upvw (copied, read and write)
			[5]: Button_upvr (copied, readonly)
			[6]: any_GetStore_result1_upvr (copied, readonly)
			[7]: any_WaitForReplica_result1_upvr (copied, readonly)
			[8]: var11_upvw (copied, read and write)
		]]
		any_Class_result1_upvr_result1_upvr.IsClaimed = arg1_3
		var15_upvw = false
		if arg1 == var16_upvw then
			Button_upvr.Disabled = arg1_3
			local var84 = false
			if any_WaitForReplica_result1_upvr.Data.QuestProgress[arg1] < var11_upvw[arg1].Goal then
				var84 = not any_WaitForReplica_result1_upvr.Data.ClaimedQuests[arg1]
			end
			any_GetStore_result1_upvr.RerollButtonVisible = var84
			var84 = false
			local var85 = var84
			Button_upvr.Processing = var85
			if arg1_3 then
				var85 = "Claimed"
			else
				var85 = "Claim Rewards"
			end
			Button_upvr.Text = var85
		end
	end)
	ApplyData = any_Class_result1_upvr_result1_upvr
	Mount_upvr(var50_upvw, ApplyData)
end
task.defer(CreateQuestFrame, 1)
task.defer(CreateQuestFrame, 2)
task.defer(CreateQuestFrame, 3)
local module_3_upvr = require(Modules:WaitForChild("Serializer"))
module_4_upvr.Update.listen(function(arg1) -- Line 174
	--[[ Upvalues[3]:
		[1]: module_3_upvr (readonly)
		[2]: var11_upvw (read and write)
		[3]: any_new_result1_upvr (readonly)
	]]
	local any_Decode_result1 = module_3_upvr.Decode(arg1)
	var11_upvw = any_Decode_result1
	any_new_result1_upvr:Fire(any_Decode_result1)
end)
function Button_upvr.Callback() -- Line 158, Named "OnClaimButtonPressed"
	--[[ Upvalues[5]:
		[1]: var15_upvw (read and write)
		[2]: var16_upvw (read and write)
		[3]: module_upvr (readonly)
		[4]: Button_upvr (readonly)
		[5]: module_4_upvr (readonly)
	]]
	if var15_upvw or not var16_upvw then
	else
		module_upvr.PlaySFX("Click", "UISounds")
		var15_upvw = true
		Button_upvr.Processing = true
		module_4_upvr.Claim.send(var16_upvw)
	end
end
module_5_upvr.Reroll.Callback = function() -- Line 182
	--[[ Upvalues[2]:
		[1]: var16_upvw (read and write)
		[2]: module_4_upvr (readonly)
	]]
	if var16_upvw then
		module_4_upvr.Reroll.send(var16_upvw)
	end
end
any_WaitForReplica_result1_upvr:ListenToChange("DailyQuestReroll", function(arg1) -- Line 183
	--[[ Upvalues[1]:
		[1]: any_GetStore_result1_upvr (readonly)
	]]
	any_GetStore_result1_upvr.RerollLeft = arg1
end)
any_GetStore_result1_upvr.RerollLeft = any_WaitForReplica_result1_upvr.Data.DailyQuestReroll
local var91
repeat
	var91 = Store.GetObject("DailyQuestFrame")
	task.wait()
until var91
Mount_upvr(var91, var17_result1_upvr)
module_4_upvr.Request.send()