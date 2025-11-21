local player = script.Parent.Parent.Parent.Parent
local msgpack = require(game.ReplicatedStorage.Modules.msgpack)
local ExchangeList = require(game.ReplicatedStorage.Modules.DB.ExchangeList)
local Inventory = require(game.ReplicatedStorage.Modules.Inventory)
local datastore = require(game.ServerStorage.ModuleScripts.DataStore)
local ExchangeItems = {
	["Icicle"] = 1,
	["Wind Essence"] = 1,
	["Rainy Bottle"] = 1,
	["Eternal Flame"] = 13,
	["Piece of Star"] = 15,
	["Corruptaine"] = 18,
	["NULL?"] = 27,
	["Void Coin"] = 100,
}

script.Parent.Parent.RemoteFunction.ExchangeRemoteClient.OnServerEvent:Connect(function(plr, thing)
	print(plr)
	if player.Name ~= plr.Name then
		return
	end
	local Data = datastore.GetStore(plr, true)
	local changedata = datastore.GetChangeStore(plr, true)
	local decodedtable = msgpack.decode(thing)
	if decodedtable.Type == "Exchange" then
		local Amount = decodedtable.Amount
		
		local Item = decodedtable.Item
		if not Data.Inventory[Item] then
			return
		end
		if Amount > Data.Inventory[Item].amount then
			Amount = Data.Inventory[Item].amount
			local AmountOfDarkCoins = 0
			for i, v in pairs(ExchangeList) do
				if v.ItemName == Item then
					AmountOfDarkCoins = v.EarningPoints * Amount
				end
			end
			Inventory.StealItems(player, Item, tonumber(Amount), "Exchanged")
			changedata:SetValue("DarkCoins", Data.DarkCoins + AmountOfDarkCoins)
			local result = {
				[1] = true,
				[2] = {
					"Idk" --1--thing.Amount
				},--"Erm what da sigma?",
				[3] = 402
			}
			script.Parent.Parent.RemoteFunction.ExchangeRemoteClient:FireClient(plr, msgpack.encode(result))
		elseif Amount <= Data.Inventory[Item].amount then
			local AmountOfDarkCoins = 0
			for i, v in pairs(ExchangeList) do
				if v.ItemName == Item then
					AmountOfDarkCoins = v.EarningPoints * Amount
				end
			end
			Inventory.StealItems(player, Item, tonumber(Amount), "Exchanged")
			changedata:SetValue("DarkCoins", Data.DarkCoins + AmountOfDarkCoins)
			local result = {
				[1] = true,
				[2] = {
					"Idk" --1--thing.Amount
				},--"Erm what da sigma?",
				[3] = 402
			}
			script.Parent.Parent.RemoteFunction.ExchangeRemoteClient:FireClient(plr, msgpack.encode(result))
		else
			local result = nil
			script.Parent.Parent.RemoteFunction.ExchangeRemoteClient:FireClient(plr, result)
			return
		end
	else
		local result = nil
		script.Parent.Parent.RemoteFunction.ExchangeRemoteClient:FireClient(plr, result)
		return
	end
end)