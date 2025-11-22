-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-16 17:13:52
-- Luau version 6, Types version 3
-- Time taken: 0.006858 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module = require(Modules:WaitForChild("Utility"))
local UI = Modules:WaitForChild("UI")
local module_upvr_4 = require(UI:WaitForChild("Quad"))
local module_upvr_3 = require(UI:WaitForChild("HalloweenShopUI"))
local module_upvr = require(UI:WaitForChild("HalloweenExchangerUI"))
local Store_upvr = module_upvr_3.Store
local PurchaseButton_upvr_2 = module_upvr_3.PurchaseButton
local PurchaseButton_upvr = module_upvr.PurchaseButton
local module_upvr_6 = require(ReplicatedStorage:WaitForChild("Packets"):WaitForChild("Halloween2024"))
local any_WaitForReplicaByClass_result1_upvr = module.Replica.WaitForReplicaByClass("HalloweenShop")
local module_upvr_5 = require(script:WaitForChild("Dialogs"))
local module_2_upvr = require(ReplicatedStorage:WaitForChild("Storage"):WaitForChild("RarityDB"))
local any_WaitForReplica_result1_upvr = module.Replica.WaitForReplica(game:GetService("Players").LocalPlayer)
local module_upvr_7 = {}
local tbl_9_upvr = {}
local var22_upvw = 1
local var23_upvw = false
local function DisplayInfo_upvr_upvr(arg1)
	if var23_upvw then
	else
		var23_upvw = true
		var22_upvw = arg1.Index
		Store_upvr.ItemName = arg1.DisplayName
		Store_upvr.ItemColor3 = arg1.ItemColor3
		Store_upvr.Description = arg1.Description
		Store_upvr.Price = arg1.Price
		Store_upvr.Quantity = arg1.Quantity
		Store_upvr.Preview = arg1.Preview
		PurchaseButton_upvr_2.Disabled = false
		var23_upvw = false
	end
end
local function OnPurchaseResult_upvr_upvr(arg1)
	if arg1.Success then
	else
	end
	if not arg1.Success then
	end
end
local function CreateItem_upvr_upvr(arg1, arg2)
	local any_AddItem_result1_upvr = module_upvr_3:AddItem(arg2, DisplayInfo_upvr_upvr)
	tbl_9_upvr[arg1] = any_AddItem_result1_upvr
	local tbl_8 = {}
	tbl_8[1] = arg1
	tbl_8[2] = "Quantity"
	any_WaitForReplicaByClass_result1_upvr:ListenToChange(tbl_8, function(arg1_2)
		arg2.Quantity = arg1_2
		any_AddItem_result1_upvr.Quantity = arg1_2
		Store_upvr.Quantity = arg1_2
	end)
end
local function OnExchangeResult_upvr_upvr(arg1)
	if arg1.Success then
	else
	end
	if not arg1.Success then
	end
end
local function _(arg1)
	local any_GetValueName_result1_3 = module_2_upvr:GetValueName(arg1)
	if any_GetValueName_result1_3 then
		return any_GetValueName_result1_3:gsub('_', " : ")
	end
	return arg1:gsub('_', " : ")
end
for i, v in any_WaitForReplicaByClass_result1_upvr.Data do
	v.Index = i
	CreateItem_upvr_upvr(i, v)
end
any_WaitForReplicaByClass_result1_upvr:ListenToRaw(function(arg1, arg2, arg3)
	if arg1 == "SetValue" and type(arg2[1]) == "number" and not tbl_9_upvr[arg2[1]] then
		arg3.Index = arg2[1]
		CreateItem_upvr_upvr(arg2[1], arg3)
	end
end)
module_upvr_6.OpenUI.listen(function(arg1)
	module_upvr_5.Speaker.ViewportData.Model = arg1
	module_upvr_4.CloseAllWindows()
	module_upvr_3.Window.Visible = true
end)
module_upvr_6.OpenTrade.listen(function()
	module_upvr_4.CloseAllWindows()
	module_upvr.Window.Visible = true
end)
local var31_upvw = false
local var32_upvw = 0
local module_upvr_2 = require(UI:WaitForChild("DialogUI"))
local function Callback()
	if not var31_upvw then
		if Store_upvr.Amount <= 0 then return end
		var31_upvw = true
		PurchaseButton_upvr_2.Processing = true
		local Hallowin_essence = any_WaitForReplica_result1_upvr.Data.Inventory["Hallowin essence"]
		if Hallowin_essence and Store_upvr.Price * Store_upvr.Amount <= Hallowin_essence.Amount then
			module_upvr_6.Purchase.send({var22_upvw, Store_upvr.Amount})
			return
		end
		if 10 <= var32_upvw then
			var32_upvw = 0
			module_upvr_3.Window.Visible = false
			module_upvr_2.DisplayDialog(module_upvr_5.NoCurrencyRepeat)
			module_upvr_3.Window.Visible = true
		else
			var32_upvw += 1
			module_upvr_3.Window.Visible = false
			module_upvr_2.DisplayDialog(module_upvr_5.NoCurrency)
			module_upvr_3.Window.Visible = true
		end
		OnPurchaseResult_upvr_upvr({
			Success = false;
			Message = "You don't have enough Pump tokens.";
		})
	end
end
PurchaseButton_upvr_2.Callback = Callback
local var37_upvw = false
local Store_upvr_2 = module_upvr.Store
function PurchaseButton_upvr.Callback()
	local var47
	if not var37_upvw then
		if Store_upvr_2.ItemIsSelected then
			if Store_upvr_2.Amount <= 0 then
			else
				var37_upvw = true
				PurchaseButton_upvr.Processing = true
				local ItemName_2 = Store_upvr_2.ItemName
				local any_GetValueName_result1_2 = module_2_upvr:GetValueName(ItemName_2)
				if any_GetValueName_result1_2 then
					var47 = any_GetValueName_result1_2:gsub('_', " : ")
				else
					var47 = ItemName_2:gsub('_', " : ")
				end
				if not var47 then
					var47 = `{Store_upvr_2.Amount} {Store_upvr_2.DisplayName}(s)`
				end
				Store_upvr_2.WarningFrame.Description = `Exchange <b><i>"{var47}"</i></b> for <font color="#ff6600">{Store_upvr_2.Amount * Store_upvr_2.Price} Pump Token(s)</font>?`
				Store_upvr_2.WarningFrameVisible = true
				Store_upvr_2.WarningFrameVisible = false
				if Store_upvr_2.WarningFrame:GetResult() then
					if Store_upvr_2.IsAura then
						if Store_upvr_2.AuraIndex then
							var47 = any_WaitForReplica_result1_upvr
							var47 = Store_upvr_2
							if var47.Data.InventoryAuras[var47.AuraIndex] then
								local tbl = {
									IsAura = true;
								}
								local tbl_3 = {}
								var47 = Store_upvr_2.ItemName
								tbl_3.AuraName = var47
								var47 = Store_upvr_2.AuraIndex
								tbl_3.AuraIndex = var47
								tbl.AuraData = tbl_3
								module_upvr_6.Exchange.send(tbl)
								return
							end
						end
						var37_upvw = false
						PurchaseButton_upvr.Processing = false
					else
						var47 = any_WaitForReplica_result1_upvr
						var47 = Store_upvr_2
						if var47.Data.Inventory[var47.ItemName] then
							var47 = any_WaitForReplica_result1_upvr.Data
							var47 = Store_upvr_2.ItemName
							if Store_upvr_2.Amount <= var47.Inventory[var47].Amount then
								local tbl_7 = {
									IsAura = false;
								}
								local tbl_11 = {}
								var47 = Store_upvr_2.ItemName
								tbl_11.ItemName = var47
								var47 = Store_upvr_2.Amount
								tbl_11.Amount = var47
								tbl_7.ItemData = tbl_11
								module_upvr_6.Exchange.send(tbl_7)
								return
							end
						end
						OnExchangeResult_upvr_upvr({
							Success = false;
							Message = "You don't have enough items.";
						})
					end
				end
				var37_upvw = false
				PurchaseButton_upvr.Processing = false
			end
		end
	end
end
table.insert(module_upvr_7, OnPurchaseResult_upvr_upvr)
table.insert(module_upvr_7, OnExchangeResult_upvr_upvr)
module_upvr_6.Purchased.listen(OnPurchaseResult_upvr_upvr)
module_upvr_6.Exchanged.listen(OnExchangeResult_upvr_upvr)
script:GetPropertyChangedSignal("ClassName"):Connect(function()
	return module_upvr_7
end)