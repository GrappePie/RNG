local auracontroll = require(game.ReplicatedStorage.Modules.AuraControll)
local datastore = require(game:GetService("ServerStorage").ModuleScripts.DataStore)
local msgpack = require(game.ReplicatedStorage.Modules.msgpack)
local Inventory = require(game.ReplicatedStorage.Modules.Inventory)
game.ReplicatedStorage.Modules.RemoteFunction.BlackmarketClient.OnServerEvent:Connect(function(plr, thing, thin1, thin2)
	local entirething = game.ReplicatedStorage.ServerInfo:GetAttribute("Blackmarket")
	local entirethingdecoded = msgpack.decode(entirething)
	local decoded = msgpack.decode(thing)
	local getstore = datastore.GetStore(plr, true)
	local changestore = datastore.GetChangeStore(plr, true)
	for i, v in pairs(entirethingdecoded.Products) do
		if v.UID == decoded.ProductUID then
			local Price = v.Price
			local CurrencyType = v.CurrencyType
			local Item = v.ProductName
			local ProductType = v.ProductType
			local Quantity = v.Quantity
			local QuantityLeft = v.QuantityLeft
			local Amount = nil
			local result = nil
			if QuantityLeft == 0 then
				result = {
					
				}
			end
			if QuantityLeft < decoded.Amount then
				Amount = QuantityLeft
			else
				Amount = decoded.Amount
			end
			local PriceForItems = Price * Amount
			QuantityLeft -= Amount
			if CurrencyType == "Coin" then
				if getstore.Coins < PriceForItems then
					return
				end
				changestore:SetValue("Coins", getstore.Coins - PriceForItems)
				Inventory.GiveItems(plr, Item, Amount, Item)
				result = {
					[1] = true,
					[2] = {
						["Amount"] = Amount--1--thing.Amount
					},--"Erm what da sigma?",
					[3] = 402
				}
			elseif CurrencyType == "DarkCoin" then
				if getstore.DarkCoins < PriceForItems then
					return
				end
				changestore:SetValue("DarkCoins", getstore.DarkCoins - PriceForItems)
				Inventory.GiveItems(plr, Item, Amount, Item)
				result = {
					[1] = true,
					[2] = {
						["Amount"] = Amount--1--thing.Amount
					},--"Erm what da sigma?",
					[3] = 402
				}
			elseif CurrencyType == "Item" then
				local Item = v.Item
				if getstore.Inventory[Item] < PriceForItems then
					return
				end
				Inventory.StealItems(plr, Item, tonumber(PriceForItems), "BlackMarket")
				Inventory.GiveItems(plr, Item, Amount, Item)
			else
				warn("Not implemented")
				print(CurrencyType)
			end
			
			entirethingdecoded.Products[i].QuantityLeft = QuantityLeft
			
			local entirethingencoded = msgpack.encode(entirethingdecoded)
			game.ReplicatedStorage.ServerInfo:SetAttribute("Blackmarket", entirethingencoded)
			
			local resultencoded = msgpack.encode(result)
			game.ReplicatedStorage.Modules.RemoteFunction.BlackmarketClient:FireClient(plr, resultencoded)
			return true
		end
	end
end)