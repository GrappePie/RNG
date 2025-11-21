local MarketplaceService = game:GetService("MarketplaceService")
local DataStoreService = game:GetService("DataStoreService")
local Players = game:GetService("Players")
local ServerStorage = game.ServerStorage

local purchaseHistoryStore = DataStoreService:GetDataStore("PurchaseHistory_MODDED")

local BuffHandler = require(ServerStorage.ModuleScripts.Buff)

local productFunctions = {}

local function _add_1M_Buff(_receipt, player)
	BuffHandler.AddBuff(player, "1M LUCK", math.huge, 1_000_000/1_000_000, true, false)
	return true
end
local function _add_10M_Buff(_receipt, player)
	BuffHandler.AddBuff(player, "10M LUCK", math.huge, 10_000_000/10_000_000, true, false)
	return true
end
local function _add_100M_Buff(_receipt, player)
	BuffHandler.AddBuff(player, "100M LUCK", math.huge, 100_000_000/100_000_000, true, false)
	return true
end
local function _add_1B_Buff(_receipt, player)
	BuffHandler.AddBuff(player, "1B LUCK", math.huge, 1_000_000_000/1_000_000_000, true, false)
	return true
end

productFunctions[1] = _add_1M_Buff -- LOCAL
productFunctions[2] = _add_1M_Buff -- GLOBAL
productFunctions[3] = _add_10M_Buff -- LOCAL
productFunctions[4] = _add_10M_Buff -- GLOBAL
productFunctions[5] = _add_100M_Buff -- LOCAL
productFunctions[6] = _add_100M_Buff -- GLOBAL
productFunctions[7] = _add_1B_Buff -- LOCAL
productFunctions[8] = _add_1B_Buff -- GLOBAL

local function processReceipt(receipt0o)
	local playerProductKey = receipt0o.PlayerId .. "_" .. receipt0o.PurchaseId
	local purchased = false
	local success, result, errorMessage

	success, errorMessage = pcall(function()
		purchased = purchaseHistoryStore:GetAsync(playerProductKey)
	end)
	if success and purchased then
		return Enum.ProductPurchaseDecision.PurchaseGranted
	elseif not success then
		error("Data store error:" .. errorMessage)
	end

	local playerProductKey = receipt0o.PlayerId .. "_" .. receipt0o.PurchaseId

	local success, isPurchaseRecorded = pcall(function()
		return purchaseHistoryStore:UpdateAsync(playerProductKey, function(alreadyPurchased)
			if alreadyPurchased then
				return true
			end

			local player = Players:GetPlayerByUserId(receipt0o.PlayerId)
			if not player then
				return nil
			end

			local handler = productFunctions[receipt0o.ProductId]

			local success, result = pcall(handler, receipt0o, player)
			if not success or not result then
				error("Failed to process a product purchase for ProductId: " .. tostring(receipt0o.ProductId) .. " Player: " .. tostring(player) .. " Error: " .. tostring(result))
				return nil
			end

			return true
		end)
	end)

	if not success then
		error("Failed to process receipt due to data store error.")
		return Enum.ProductPurchaseDecision.NotProcessedYet
	elseif isPurchaseRecorded == nil then
		return Enum.ProductPurchaseDecision.NotProcessedYet
	else	
		return Enum.ProductPurchaseDecision.PurchaseGranted
	end
end

MarketplaceService.ProcessReceipt = processReceipt