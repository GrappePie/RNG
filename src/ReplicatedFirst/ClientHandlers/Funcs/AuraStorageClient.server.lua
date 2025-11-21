-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-16 17:21:27
-- Luau version 6, Types version 3
-- Time taken: 0.013309 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_2_upvr = require(Modules:WaitForChild("Utility"))
local module = require(Modules:WaitForChild("GoodSignal"))
local module_upvr_4 = require(ReplicatedStorage:WaitForChild("Storage"):WaitForChild("RarityDB"))
local module_upvr = require(ReplicatedStorage:WaitForChild("Packets"):WaitForChild("Storage"))
local UI = Modules:WaitForChild("UI")
local module_upvr_5 = require(UI:WaitForChild("Quad"))
local module_upvr_2 = require(UI:WaitForChild("AuraStorageUI"))
local Item_upvr = module_upvr_2.Item
local Store_upvr = module_upvr_2.Store
local any_WaitForReplica_result1_upvr = module_2_upvr.Replica.WaitForReplica(game:GetService("Players").LocalPlayer)
local any_new_result1_2_upvr = module.new()
local any_new_result1_upvr = module.new()
local tbl_upvr = {}
local var20_upvw = true
local var21_upvw = true
local var22_upvw = true
local function LoadAura0o_upvr(arg1) -- Line 52, Named "LoadAura0o"
	--[[ Upvalues[3]:
		[1]: var20_upvw (read and write)
		[2]: Store_upvr (readonly)
		[3]: any_WaitForReplica_result1_upvr (readonly)
	]]
	local var25
	if not var20_upvw then
	else
		var20_upvw = false
		local _AuraData_2 = arg1._AuraData
		var25 = arg1.IsSpecial
		Store_upvr.IsSpecialAura = var25
		Store_upvr.CurrentItem = arg1
		var25 = arg1.AuraIndex
		Store_upvr.SelectedIndex = var25
		var25 = false
		if any_WaitForReplica_result1_upvr.Data.Title ~= "" then
			var25 = false
			if arg1.AuraIndex == any_WaitForReplica_result1_upvr.Data.EquippedAuraIndex then
				if Store_upvr.IsRegularPage == any_WaitForReplica_result1_upvr.Data.IsEquippingSpecial then
					var25 = false
				else
					var25 = true
				end
			end
		end
		Store_upvr.IsEquipped = var25
		if _AuraData_2.Locked ~= true then
		else
		end
		Store_upvr.IsLocked = true
		Store_upvr.SelectedName = _AuraData_2.Name
		Store_upvr.Rolls = _AuraData_2.RollCount
		Store_upvr.Luck = _AuraData_2.LuckValue
		Store_upvr.DiscoverTime = _AuraData_2.DiscoveryTime
		var20_upvw = true
	end
end
local function _(arg1) -- Line 71, Named "GetTier"
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local TierOverride = arg1.TierOverride
	if not TierOverride then
		if arg1.Unobtainable then
			TierOverride = "Unobtainable"
			return TierOverride
		end
		if arg1.Requirement:find("Required") ~= nil then
			TierOverride = "Challenged"
			return TierOverride
		end
		if arg1.LimitedTimestamp then
			TierOverride = "Event"
			return TierOverride
		end
		TierOverride = module_2_upvr.GetTierByRarity(arg1.GeneralRarity)
	end
	return TierOverride
end
local function _(arg1) -- Line 79, Named "GetPriority"
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	local table_find_result1_2 = table.find(module_upvr_2.TierPriorities, arg1)
	if not table_find_result1_2 then
		table_find_result1_2 = #module_upvr_2.TierPriorities + 1
	end
	return table_find_result1_2
end
local function SortFunction_upvr(arg1, arg2) -- Line 83, Named "SortFunction"
	--[[ Upvalues[2]:
		[1]: module_2_upvr (readonly)
		[2]: module_upvr_2 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local _Aura0o = arg1._Aura0o
	local var30
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 8. Error Block 60 start (CF ANALYSIS FAILED)
	if _Aura0o.Requirement:find("Required") ~= nil then
		var30 = "Challenged"
	elseif _Aura0o.LimitedTimestamp then
		var30 = "Event"
	else
		var30 = module_2_upvr.GetTierByRarity(_Aura0o.GeneralRarity)
	end
	-- KONSTANTERROR: [10] 8. Error Block 60 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [32] 24. Error Block 66 start (CF ANALYSIS FAILED)
	local table_find_result1 = table.find(module_upvr_2.TierPriorities, var30)
	if not table_find_result1 then
		table_find_result1 = #module_upvr_2.TierPriorities + 1
	end
	local _Aura0o_2 = arg2._Aura0o
	var30 = _Aura0o_2.TierOverride
	if not var30 then
		if _Aura0o_2.Unobtainable then
			var30 = "Unobtainable"
		elseif _Aura0o_2.Requirement:find("Required") ~= nil then
			var30 = "Challenged"
		elseif _Aura0o_2.LimitedTimestamp then
			var30 = "Event"
		else
			var30 = module_2_upvr.GetTierByRarity(_Aura0o_2.GeneralRarity)
		end
	end
	local table_find_result1_3 = table.find(module_upvr_2.TierPriorities, var30)
	if not table_find_result1_3 then
		table_find_result1_3 = #module_upvr_2.TierPriorities + 1
	end
	local GeneralRarity = arg2._Aura0o.GeneralRarity
	local var35 = GeneralRarity or math.huge
	if table_find_result1 == table_find_result1_3 then
		if (arg1._Aura0o.GeneralRarity or math.huge) == var35 then
			if arg2.AuraIndex >= arg1.AuraIndex then
				GeneralRarity = false
			else
				GeneralRarity = true
			end
			return GeneralRarity
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if var35 >= (arg1._Aura0o.GeneralRarity or math.huge) then
			GeneralRarity = false
		else
			GeneralRarity = true
		end
		return GeneralRarity
	end
	if table_find_result1_3 >= table_find_result1 then
		GeneralRarity = false
	else
		GeneralRarity = true
	end
	do
		return GeneralRarity
	end
	-- KONSTANTERROR: [32] 24. Error Block 66 end (CF ANALYSIS FAILED)
end
local function SortAuras_upvr() -- Line 98, Named "SortAuras"
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: SortFunction_upvr (readonly)
	]]
	local tbl_3 = {}
	for i, _ in tbl_upvr do
		table.insert(tbl_3, i)
	end
	table.sort(tbl_3, SortFunction_upvr)
	for i_2, v_2 in tbl_3 do
		v_2.SortIndex = i_2
	end
end
local function CreateSpecialSlot_upvr(arg1, arg2) -- Line 112, Named "CreateSpecialSlot"
	--[[ Upvalues[8]:
		[1]: module_upvr_4 (readonly)
		[2]: Item_upvr (readonly)
		[3]: module_2_upvr (readonly)
		[4]: LoadAura0o_upvr (readonly)
		[5]: any_WaitForReplica_result1_upvr (readonly)
		[6]: tbl_upvr (readonly)
		[7]: module_upvr_5 (readonly)
		[8]: Store_upvr (readonly)
	]]
	local any_GetValue_result1 = module_upvr_4:GetValue(arg1.Name)
	if any_GetValue_result1 == "None" then
	else
		local tbl = {
			AuraName = arg1.Name;
			AuraIndex = arg1.Name;
			Locked = false;
		}
		local TierOverride_2 = any_GetValue_result1.TierOverride
		if not TierOverride_2 then
			if any_GetValue_result1.Unobtainable then
				TierOverride_2 = "Unobtainable"
			elseif any_GetValue_result1.Requirement:find("Required") ~= nil then
				TierOverride_2 = "Challenged"
			elseif any_GetValue_result1.LimitedTimestamp then
				TierOverride_2 = "Event"
			else
				TierOverride_2 = module_2_upvr.GetTierByRarity(any_GetValue_result1.GeneralRarity)
			end
		end
		tbl.AuraTier = TierOverride_2
		tbl.IsSpecial = true
		tbl.Callback = LoadAura0o_upvr
		tbl.Amount = arg1.Stack
		local var14_result1_upvr = Item_upvr(tbl)
		var14_result1_upvr._AuraData = arg1
		var14_result1_upvr._Aura0o = any_GetValue_result1
		local any_ListenToChange_result1_upvr = any_WaitForReplica_result1_upvr:ListenToChange({"SpecialInvnetoryAuras", arg1.Name}, function(arg1_2) -- Line 127
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: var14_result1_upvr (readonly)
			]]
			if arg1.Stack <= 0 then
				var14_result1_upvr:Destroy()
			else
				var14_result1_upvr.Amount = arg1.Stack
			end
		end)
		var14_result1_upvr.__object.Destroying:Once(function() -- Line 137
			--[[ Upvalues[3]:
				[1]: any_ListenToChange_result1_upvr (readonly)
				[2]: tbl_upvr (copied, readonly)
				[3]: var14_result1_upvr (readonly)
			]]
			any_ListenToChange_result1_upvr:Disconnect()
			tbl_upvr[var14_result1_upvr] = nil
		end)
		module_upvr_5.Mount(Store_upvr.SpecialList, var14_result1_upvr)
	end
end
local function CreateNormalSlot_upvr(arg1, arg2, arg3) -- Line 146, Named "CreateNormalSlot"
	--[[ Upvalues[11]:
		[1]: module_upvr_4 (readonly)
		[2]: Item_upvr (readonly)
		[3]: module_2_upvr (readonly)
		[4]: LoadAura0o_upvr (readonly)
		[5]: any_new_result1_2_upvr (readonly)
		[6]: tbl_upvr (readonly)
		[7]: any_WaitForReplica_result1_upvr (readonly)
		[8]: Store_upvr (readonly)
		[9]: any_new_result1_upvr (readonly)
		[10]: SortAuras_upvr (readonly)
		[11]: module_upvr_5 (readonly)
	]]
	local any_GetValue_result1_upvw = module_upvr_4:GetValue(arg1.Name)
	local var54
	if any_GetValue_result1_upvw == "None" then
	else
		local tbl_4 = {}
		var54 = arg1.Name
		tbl_4.AuraName = var54
		tbl_4.AuraIndex = arg2
		if arg1.Locked ~= true then
			var54 = false
		else
			var54 = true
		end
		tbl_4.Locked = var54
		local var56 = any_GetValue_result1_upvw
		if not var56.TierOverride then
			if var56.Unobtainable then
			elseif var56.Requirement:find("Required") ~= nil then
			elseif var56.LimitedTimestamp then
			else
			end
		end
		tbl_4.AuraTier = module_2_upvr.GetTierByRarity(var56.GeneralRarity)
		tbl_4.Callback = LoadAura0o_upvr
		local Item_upvr_result1_upvr = Item_upvr(tbl_4)
		Item_upvr_result1_upvr._AuraData = arg1
		Item_upvr_result1_upvr._Aura0o = any_GetValue_result1_upvw
		local any_Connect_result1_upvr = any_new_result1_upvr:Connect(function(arg1_4) -- Line 184
			--[[ Upvalues[2]:
				[1]: arg2 (read and write)
				[2]: Item_upvr_result1_upvr (readonly)
			]]
			if arg1_4 == arg2 then
				Item_upvr_result1_upvr:Destroy()
			elseif arg1_4 < arg2 then
				arg2 -= 1
				Item_upvr_result1_upvr.AuraIndex = arg2
			end
		end)
		local any_Connect_result1_upvr_2 = any_new_result1_2_upvr:Connect(function(arg1_3, arg2_2) -- Line 159
			--[[ Upvalues[10]:
				[1]: arg2 (read and write)
				[2]: arg1 (read and write)
				[3]: tbl_upvr (copied, readonly)
				[4]: Item_upvr_result1_upvr (readonly)
				[5]: any_GetValue_result1_upvw (read and write)
				[6]: module_upvr_4 (copied, readonly)
				[7]: any_WaitForReplica_result1_upvr (copied, readonly)
				[8]: module_2_upvr (copied, readonly)
				[9]: Store_upvr (copied, readonly)
				[10]: LoadAura0o_upvr (copied, readonly)
			]]
			local var59
			if arg1_3 == arg2 then
				arg1 = arg2_2
				var59 = Item_upvr_result1_upvr
				tbl_upvr[var59] = arg1
				any_GetValue_result1_upvw = module_upvr_4:GetValue(arg2_2.Name)
				if any_GetValue_result1_upvw == "None" then
					var59 = Item_upvr_result1_upvr
					var59 = false
					var59.__object.Visible = var59
					return
				end
				var59 = any_WaitForReplica_result1_upvr.Data
				var59 = arg2
				var59.InventoryAuras[var59] = arg2_2
				var59 = Item_upvr_result1_upvr
				var59 = true
				var59.__object.Visible = var59
				var59 = arg1.Name
				Item_upvr_result1_upvr.AuraName = var59
				var59 = arg2
				Item_upvr_result1_upvr.AuraIndex = var59
				if arg1.Locked ~= true then
					var59 = false
				else
					var59 = true
				end
				Item_upvr_result1_upvr.Locked = var59
				local var60 = any_GetValue_result1_upvw
				if not var60.TierOverride then
					if var60.Unobtainable then
					elseif var60.Requirement:find("Required") ~= nil then
					elseif var60.LimitedTimestamp then
					else
					end
				end
				Item_upvr_result1_upvr.AuraTier = module_2_upvr.GetTierByRarity(var60.GeneralRarity)
				Item_upvr_result1_upvr._AuraData = arg2_2
				Item_upvr_result1_upvr._Aura0o = any_GetValue_result1_upvw
				if Store_upvr.SelectedIndex == arg2 then
					LoadAura0o_upvr(Item_upvr_result1_upvr)
				end
			end
		end)
		Item_upvr_result1_upvr.__object.Destroying:Once(function() -- Line 198
			--[[ Upvalues[4]:
				[1]: any_Connect_result1_upvr (readonly)
				[2]: any_Connect_result1_upvr_2 (readonly)
				[3]: tbl_upvr (copied, readonly)
				[4]: Item_upvr_result1_upvr (readonly)
			]]
			any_Connect_result1_upvr:Disconnect()
			any_Connect_result1_upvr_2:Disconnect()
			tbl_upvr[Item_upvr_result1_upvr] = nil
		end)
		tbl_upvr[Item_upvr_result1_upvr] = arg1
		if arg3 then
			SortAuras_upvr()
		end
		module_upvr_5.Mount(Store_upvr.RegularList, Item_upvr_result1_upvr)
	end
end
local function ClearAll_upvr(arg1) -- Line 214, Named "ClearAll"
	--[[ Upvalues[1]:
		[1]: Store_upvr (readonly)
	]]
	if not arg1 or not Store_upvr.SpecialList then
	end
	for _, v_3 in Store_upvr.RegularList:GetChildren() do
		if v_3:IsA("GuiButton") then
			v_3:Destroy()
		end
	end
end
local module_upvr_3 = require(Modules:WaitForChild("Queue"))
local var75_upvw
local function RenewNormalItems() -- Line 230
	--[[ Upvalues[7]:
		[1]: ClearAll_upvr (readonly)
		[2]: module_upvr_3 (readonly)
		[3]: any_WaitForReplica_result1_upvr (readonly)
		[4]: CreateNormalSlot_upvr (readonly)
		[5]: var75_upvw (read and write)
		[6]: Store_upvr (readonly)
		[7]: SortAuras_upvr (readonly)
	]]
	ClearAll_upvr()
	local any_new_result1 = module_upvr_3.Waitter.new()
	for i_5, v_5 in any_WaitForReplica_result1_upvr.Data.InventoryAuras do
		any_new_result1:insert(module_upvr_3.Process.new(CreateNormalSlot_upvr, v_5, i_5):execute())
	end
	any_new_result1:await():destroy()
	if var75_upvw then
		task.defer(var75_upvw)
		var75_upvw = nil
	end
	Store_upvr.Auras = #any_WaitForReplica_result1_upvr.Data.InventoryAuras
	SortAuras_upvr()
end
Store_upvr.SelectedIndex = nil
RenewNormalItems()
ClearAll_upvr(true)
for _, v_6 in any_WaitForReplica_result1_upvr.Data.SpecialInventoryAuras do
	CreateSpecialSlot_upvr(v_6)
end
any_WaitForReplica_result1_upvr:ListenToChange("InventoryAuras", RenewNormalItems)
any_WaitForReplica_result1_upvr:ListenToChange("SpecialInventoryAuras", function() -- Line 222, Named "RenewSpecialItems"
	--[[ Upvalues[3]:
		[1]: ClearAll_upvr (readonly)
		[2]: any_WaitForReplica_result1_upvr (readonly)
		[3]: CreateSpecialSlot_upvr (readonly)
	]]
	ClearAll_upvr(true)
	for _, v_4 in any_WaitForReplica_result1_upvr.Data.SpecialInventoryAuras do
		CreateSpecialSlot_upvr(v_4)
	end
end)
Store_upvr.UpgradeButton.Text = `{module_2_upvr.FormatNumber(module_2_upvr.GetUpgradeCoin(any_WaitForReplica_result1_upvr.Data.StorageExpandUpgrade))}$`
Store_upvr.Auras = #any_WaitForReplica_result1_upvr.Data.InventoryAuras
Store_upvr.MaxCapacity = any_WaitForReplica_result1_upvr.Data.MaxStorableAuras
Store_upvr.LockButton.Callback = function() -- Line 262, Named "TryLock"
	--[[ Upvalues[5]:
		[1]: var21_upvw (read and write)
		[2]: Store_upvr (readonly)
		[3]: module_2_upvr (readonly)
		[4]: var20_upvw (read and write)
		[5]: module_upvr (readonly)
	]]
	if var21_upvw and Store_upvr.SelectedIndex then
		module_2_upvr.PlaySFX("Click", "UISounds")
		var21_upvw = false
		var20_upvw = false
		Store_upvr.LockButton.Processing = true
		module_upvr.Lock.send(Store_upvr.SelectedIndex)
	end
end
Store_upvr.EquipButton.Callback = function() -- Line 247, Named "TryEquip"
	--[[ Upvalues[5]:
		[1]: var21_upvw (read and write)
		[2]: Store_upvr (readonly)
		[3]: module_2_upvr (readonly)
		[4]: var20_upvw (read and write)
		[5]: module_upvr (readonly)
	]]
	if var21_upvw and Store_upvr.SelectedIndex then
		module_2_upvr.PlaySFX("Click", "UISounds")
		var21_upvw = false
		var20_upvw = false
		Store_upvr.EquipButton.Processing = true
		if Store_upvr.IsSpecialAura then
			module_upvr.EquipSpecial.send(Store_upvr.SelectedIndex)
			return
		end
		module_upvr.Equip.send({
			i = Store_upvr.SelectedIndex;
			s = false;
		})
	end
end
Store_upvr.RemoveButton.Callback = function() -- Line 273, Named "TryRemove"
	--[[ Upvalues[5]:
		[1]: var21_upvw (read and write)
		[2]: Store_upvr (readonly)
		[3]: module_2_upvr (readonly)
		[4]: var20_upvw (read and write)
		[5]: module_upvr (readonly)
	]]
	if var21_upvw and Store_upvr.SelectedIndex then
		module_2_upvr.PlaySFX("Click", "UISounds")
		var21_upvw = false
		var20_upvw = false
		Store_upvr.RemoveButton.Processing = true
		Store_upvr.WarningFrameVisible = true
		if Store_upvr.WarningFrame:GetResult() then
			module_upvr.Remove.send(Store_upvr.SelectedIndex)
		else
			var21_upvw = true
			var20_upvw = true
			Store_upvr.RemoveButton.Processing = false
		end
		Store_upvr.WarningFrameVisible = false
	end
end
Store_upvr.UpgradeButton.Callback = function() -- Line 293, Named "UpgradeStorage"
	--[[ Upvalues[5]:
		[1]: var22_upvw (read and write)
		[2]: any_WaitForReplica_result1_upvr (readonly)
		[3]: module_2_upvr (readonly)
		[4]: Store_upvr (readonly)
		[5]: module_upvr (readonly)
	]]
	if var22_upvw and module_2_upvr.GetUpgradeCoin(any_WaitForReplica_result1_upvr.Data.StorageExpandUpgrade) <= any_WaitForReplica_result1_upvr.Data.Coins then
		module_2_upvr.PlaySFX("Click", "UISounds")
		var22_upvw = false
		Store_upvr.UpgradeButton.Processing = true
		module_upvr.Upgrade.send()
		var22_upvw = true
	end
end
any_WaitForReplica_result1_upvr:ListenToChange("MaxStorableAuras", function(arg1) -- Line 321
	--[[ Upvalues[1]:
		[1]: Store_upvr (readonly)
	]]
	Store_upvr.MaxCapacity = arg1
end)
any_WaitForReplica_result1_upvr:ListenToChange("StorageExpandUpgrade", function(arg1) -- Line 325
	--[[ Upvalues[2]:
		[1]: Store_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	Store_upvr.UpgradeButton.Text = `{module_2_upvr.FormatNumber(module_2_upvr.GetUpgradeCoin(arg1))}$`
end)
any_WaitForReplica_result1_upvr:ListenToChange("EquippedAuraIndex", function() -- Line 329
	--[[ Upvalues[2]:
		[1]: Store_upvr (readonly)
		[2]: LoadAura0o_upvr (readonly)
	]]
	if Store_upvr.CurrentItem then
		LoadAura0o_upvr(Store_upvr.CurrentItem)
	end
end)
any_WaitForReplica_result1_upvr:ListenToChange("IsEquippingSpecial", function() -- Line 335
	--[[ Upvalues[2]:
		[1]: Store_upvr (readonly)
		[2]: LoadAura0o_upvr (readonly)
	]]
	if Store_upvr.CurrentItem then
		LoadAura0o_upvr(Store_upvr.CurrentItem)
	end
end)
module_upvr.AddAura.listen(function(arg1) -- Line 341
	--[[ Upvalues[3]:
		[1]: any_WaitForReplica_result1_upvr (readonly)
		[2]: Store_upvr (readonly)
		[3]: CreateNormalSlot_upvr (readonly)
	]]
	table.insert(any_WaitForReplica_result1_upvr.Data.InventoryAuras, arg1)
	Store_upvr.Auras = #any_WaitForReplica_result1_upvr.Data.InventoryAuras
	local len = #any_WaitForReplica_result1_upvr.Data.InventoryAuras
	CreateNormalSlot_upvr(arg1, len, true)
	Store_upvr.AuraAdded:Fire(arg1, len)
end)
module_upvr.ChangeAura.listen(function(arg1) -- Line 349
	--[[ Upvalues[1]:
		[1]: any_new_result1_2_upvr (readonly)
	]]
	any_new_result1_2_upvr:Fire(arg1.i, arg1.d)
end)
module_upvr.EquipResult.listen(function(arg1) -- Line 353
	--[[ Upvalues[4]:
		[1]: module_2_upvr (readonly)
		[2]: Store_upvr (readonly)
		[3]: var20_upvw (read and write)
		[4]: var21_upvw (read and write)
	]]
	if not arg1.s then
		module_2_upvr.Notify("Aura Equip/Unequip Failed", arg1.m, 10, "Warn")
	else
		Store_upvr.IsEquipped = arg1.e
	end
	var20_upvw = true
	var21_upvw = true
	Store_upvr.EquipButton.Processing = false
end)
module_upvr.LockResult.listen(function(arg1) -- Line 365
	--[[ Upvalues[4]:
		[1]: Store_upvr (readonly)
		[2]: module_2_upvr (readonly)
		[3]: var20_upvw (read and write)
		[4]: var21_upvw (read and write)
	]]
	if arg1.s then
		Store_upvr.CurrentItem.Locked = not Store_upvr.CurrentItem.Locked
		Store_upvr.IsLocked = Store_upvr.CurrentItem.Locked
	else
		module_2_upvr.Notify("Aura Lock/Unlock Failed", arg1.m, 10, "Warn")
	end
	var20_upvw = true
	var21_upvw = true
	Store_upvr.LockButton.Processing = false
end)
module_upvr.RemoveResult.listen(function(arg1) -- Line 378
	--[[ Upvalues[7]:
		[1]: any_WaitForReplica_result1_upvr (readonly)
		[2]: Store_upvr (readonly)
		[3]: any_new_result1_upvr (readonly)
		[4]: SortAuras_upvr (readonly)
		[5]: module_2_upvr (readonly)
		[6]: var20_upvw (read and write)
		[7]: var21_upvw (read and write)
	]]
	if arg1.s then
		table.remove(any_WaitForReplica_result1_upvr.Data.InventoryAuras, arg1.i)
		Store_upvr.SelectedIndex = nil
		any_new_result1_upvr:Fire(arg1.i)
		Store_upvr.Auras = #any_WaitForReplica_result1_upvr.Data.InventoryAuras
		SortAuras_upvr()
	else
		module_2_upvr.Notify("Aura Remove Failed", arg1.m, 10, "Warn")
	end
	Store_upvr.Auras = #any_WaitForReplica_result1_upvr.Data.InventoryAuras
	var20_upvw = true
	var21_upvw = true
	Store_upvr.RemoveButton.Processing = false
end)
module_upvr.UpgradeResult.listen(function(arg1) -- Line 399
	--[[ Upvalues[3]:
		[1]: module_2_upvr (readonly)
		[2]: var22_upvw (read and write)
		[3]: Store_upvr (readonly)
	]]
	if not arg1.s then
		module_2_upvr.Notify("Storage Upgrade Failed", arg1.m, 10, "Warn")
	end
	var22_upvw = true
	Store_upvr.UpgradeButton.Processing = false
end)
local tbl_2 = {
	UsageText = "Aura Storage";
	Icon = "http://www.roblox.com/asset/?id=6022668909";
	LayoutOrder = -1;
}
local Window_upvr = module_upvr_2.Window
function tbl_2.Callback() -- Line 412
	--[[ Upvalues[2]:
		[1]: Window_upvr (readonly)
		[2]: module_upvr_5 (readonly)
	]]
	if not Window_upvr.Visible then
		module_upvr_5.CloseAllWindows()
		Window_upvr.Visible = true
	else
		Window_upvr.Visible = false
	end
end
module_upvr_5.Class(UI:WaitForChild("Components"):WaitForChild("SidebarButton"))(tbl_2)