--!strict
type marketer = {string | number | nil}

local function generateUID()
	return game:GetService("HttpService"):GenerateGUID(false)
end

local market = {
	Mari = script.Mari,
	Jester = script.Jester,
	SpawnVFX = game.ReplicatedStorage.Assets.VFXS.Spawn,
	MarketerProducts = {
		MariProducts = {
			[1] = {
				QuantityLeft = 25,
				Quantity = 25,
				ProductType = "Item",
				ProductName = "Lucky Potion",
				Price = 1000,
				ProductTier = "Common",
				CurrencyType = "Coin",
				UID = generateUID(),
			},
			[2] = {
				QuantityLeft = 2,
				Quantity = 2,
				ProductType = "Item",
				ProductName = "Lucky Potion L",
				Price = 2000,
				ProductTier = "Common",
				CurrencyType = "Coin",
				UID = generateUID(),
			},
			[3] = {
				QuantityLeft = 1,
				Quantity = 1,
				ProductType = "Item",
				ProductName = "Lucky Potion XL",
				Price = 4000,
				ProductTier = "Rare",
				CurrencyType = "Coin",
				UID = generateUID(),
			},
			[4] = {
				QuantityLeft = 25,
				Quantity = 25,
				ProductType = "Item",
				ProductName = "Speed Potion",
				Price = 2000,
				ProductTier = "Common",
				CurrencyType = "Coin",
				UID = generateUID(),
			},
			[5] = {
				QuantityLeft = 25,
				Quantity = 25,
				ProductType = "Item",
				ProductName = "Speed Potion L",
				Price = 4000,
				ProductTier = "Common",
				CurrencyType = "Coin",
				UID = generateUID(),
			},
			[6] = {
				QuantityLeft = 25,
				Quantity = 25,
				ProductType = "Item",
				ProductName = "Speed Potion XL",
				Price = 8000,
				ProductTier = "Rare",
				CurrencyType = "Coin",
				UID = generateUID(),
			},
			[7] = {
				QuantityLeft = 15,
				Quantity = 15,
				ProductType = "Item",
				ProductName = "Mixed Potion",
				Price = 3000,
				ProductTier = "Common",
				CurrencyType = "Coin",
				UID = generateUID(),
			},
			[8] = {
				QuantityLeft = 25,
				Quantity = 25,
				ProductType = "Item",
				ProductName = "Fortune Spoid I",
				Price = 4000,
				ProductTier = "Rare",
				CurrencyType = "Coin",
				UID = generateUID(),
			},
			[9] = {
				QuantityLeft = 25,
				Quantity = 25,
				ProductType = "Item",
				ProductName = "Fortune Spoid II",
				Price = 6000,
				ProductTier = "Epic",
				CurrencyType = "Coin",
				UID = generateUID(),
			},
			[10] = {
				QuantityLeft = 25,
				Quantity = 25,
				ProductType = "Item",
				ProductName = "Fortune Spoid III",
				Price = 2000,
				ProductTier = "Legendary",
				CurrencyType = "Coin",
				UID = generateUID(),
			},
			[11] = {
				QuantityLeft = 1,
				Quantity = 1,
				ProductType = "Item",
				ProductName = "Gear A",
				Price = 10000,
				ProductTier = "Legendary",
				CurrencyType = "Coin",
				UID = generateUID(),
			},
			[12] = {
				QuantityLeft = 1,
				Quantity = 1,
				ProductType = "Item",
				ProductName = "Gear B",
				Price = 10000,
				ProductTier = "Legendary",
				CurrencyType = "Coin",
				UID = generateUID(),
			},
			[13] = {
				QuantityLeft = 1,
				Quantity = 1,
				ProductType = "Item",
				ProductName = "Lucky Penny",
				Price = 77777,
				ProductTier = "Legendary",
				CurrencyType = "Coin",
				UID = generateUID(),
			},
			[14] = {
				QuantityLeft = 1,
				Quantity = 1,
				ProductType = "Item",
				ProductName = "Void Coin",
				Price = 500000,
				ProductTier = "Legendary",
				CurrencyType = "Coin",
				UID = generateUID(),
			}
		};
		JesterProducts = {
			[1] = {
				QuantityLeft = 30,
				Quantity = 30,
				ProductType = "Item",
				ProductName = "Lucky Potion",
				Price = 1,
				ProductTier = "Uncommon",
				CurrencyType = "DarkCoin",
				UID = generateUID(),
			},
			[2] = {
				QuantityLeft = 40,
				Quantity = 40,
				ProductType = "Item",
				ProductName = "Speed Potion",
				Price = 2,
				ProductTier = "Uncommon",
				CurrencyType = "DarkCoin",
				UID = generateUID(),
			},
			[3] = {
				QuantityLeft = 10,
				Quantity = 10,
				ProductType = "Item",
				ProductName = "Random Potion Sack",
				Price = 10,
				ProductTier = "Epic",
				CurrencyType = "DarkCoin",
				UID = generateUID(),
			},
			[4] = {
				QuantityLeft = 1,
				Quantity = 1,
				ProductType = "Item",
				ProductName = "Stella's Star",
				Price = 5,
				ProductTier = "Uncommon",
				CurrencyType = "DarkCoin",
				UID = generateUID(),
			},
			[5] = {
				QuantityLeft = 1,
				Quantity = 1,
				ProductType = "Item",
				ProductName = "Heavenly Potion I",
				Price = 500,
				ProductTier = "Legendary",
				CurrencyType = "DarkCoin",
				UID = generateUID(),
			},
			[6] = {
				QuantityLeft = 1,
				Quantity = 1,
				ProductType = "Item",
				ProductName = "Heavenly Potion II",
				Price = 1000,
				ProductTier = "Legendary",
				CurrencyType = "DarkCoin",
				UID = generateUID(),
			},
			[7] = {
				QuantityLeft = 1,
				Quantity = 1,
				ProductType = "Item",
				ProductName = "Rune of Wind",
				Price = 50,
				ProductTier = "Uncommon",
				CurrencyType = "DarkCoin",
				UID = generateUID(),
			},
			[8] = {
				QuantityLeft = 1,
				Quantity = 1,
				ProductType = "Item",
				ProductName = "Rune of Frost",
				Price = 50,
				ProductTier = "Uncommon",
				CurrencyType = "DarkCoin",
				UID = generateUID(),
			},
			[9] = {
				QuantityLeft = 1,
				Quantity = 1,
				ProductType = "Item",
				ProductName = "Rune of Rainstorm",
				Price = 50,
				ProductTier = "Uncommon",
				CurrencyType = "DarkCoin",
				UID = generateUID(),
			},
			[10] = {
				QuantityLeft = 1,
				Quantity = 1,
				ProductType = "Item",
				ProductName = "Rune of Hell",
				Price = 300,
				ProductTier = "Uncommon",
				CurrencyType = "DarkCoin",
				UID = generateUID(),
			},
			[11] = {
				QuantityLeft = 1,
				Quantity = 1,
				ProductType = "Item",
				ProductName = "Rune of Galaxy",
				Price = 300,
				ProductTier = "Uncommon",
				CurrencyType = "DarkCoin",
				UID = generateUID(),
			},
			[12] = {
				QuantityLeft = 1,
				Quantity = 1,
				ProductType = "Item",
				ProductName = "Rune of Corruption",
				Price = 300,
				ProductTier = "Epic",
				CurrencyType = "DarkCoin",
				UID = generateUID(),
			},
			[13] = {
				QuantityLeft = 1,
				Quantity = 1,
				ProductType = "Item",
				ProductName = "Rune of Nothing",
				Price = 650,
				ProductTier = "Epic",
				CurrencyType = "DarkCoin",
				UID = generateUID(),
			},
			[14] = {
				QuantityLeft = 1,
				Quantity = 1,
				ProductType = "Item",
				ProductName = "Rune of Everything",
				Price = 3000,
				ProductTier = "Legendary",
				CurrencyType = "DarkCoin",
				UID = generateUID(),
			},
			[15] = {
				QuantityLeft = 15,
				Quantity = 15,
				ProductType = "Item",
				ProductName = "Strange Potion I",
				Price = 15,
				ProductTier = "Uncommon",
				CurrencyType = "DarkCoin",
				UID = generateUID(),
			},
			[16] = {
				QuantityLeft = 25,
				Quantity = 25,
				ProductType = "Item",
				ProductName = "Strange Potion II",
				Price = 25,
				ProductTier = "Epic",
				CurrencyType = "DarkCoin",
				UID = generateUID(),
			},
			[17] = {
				QuantityLeft = 3,
				Quantity = 3,
				ProductType = "Item",
				ProductName = "Stella's Candle",
				Price = 50,
				ProductTier = "Rare",
				CurrencyType = "DarkCoin",
				UID = generateUID(),
			},
			[18] = {
				QuantityLeft = 1,
				Quantity = 1,
				ProductType = "Item",
				ProductName = "Oblivion Potion",
				Item = "Void Coin",
				Price = 5,
				ProductTier = "Legendary",
				CurrencyType = "Item",
				UID = generateUID(),
			},
		};
	},
	SpawnPositions = {
		[1] = {
			325.1000061035156,
			507.04998841845703,
			-69.90000915527344,
			-0.5000014305114746,
			0,
			0.8660280704498291,
			0,
			1,
			0,
			-0.8660278916358948,
			0,
			-0.5000015497207642,
		}
	},
	data = {
		Products = {},
		DespawnTime = game.Workspace:GetServerTimeNow() + 180,
		ShopName = "",
		SpawnLocation = {

		},
		Type = "",
	},
	currentThread = nil :: any,
	threadDebounce = true
}

function market:despawnTimeHandler(despawnTime: number, Merchant)
	local despawnTime = game.Workspace:GetServerTimeNow() + despawnTime or nil
	task.spawn(function()
		local data = market.data
		repeat
			task.wait()
			if market.currentThread == nil then return end
			if not Merchant then return end
			despawnTime = despawnTime or data.DespawnTime
		until
			despawnTime < game.Workspace:GetServerTimeNow()
		game.ReplicatedStorage.Server0o:SetAttribute("Blackmarket", nil)
		if Merchant then
			Merchant:Destroy()
		else
			warn("what")
		end
		if market.currentThread == "TEMP" then
			market.currentThread = nil
			market:startLoop()
		end
		market.threadDebounce = true
	end)
end

function market.selectRandomSpawn()
	local rng = 1
	return market.SpawnPositions[rng]
end

function market:selectRandomProducts(productTable, numProducts)
	local selectedProducts = {}
	local indices = {}
	while #selectedProducts < numProducts do
		local index = math.random(1, #productTable)
		if not indices[index] then
			indices[index] = true
			table.insert(selectedProducts, productTable[index])
		end
		task.wait()
	end
	return selectedProducts
end

function market:spawnMerchant(Merchant: string, ShopName: string, Type: string, Products: { }, SpawnLocation: { }, despawnTime: number, Override: boolean): (boolean)
	if game.Workspace:FindFirstChild("Mari") then
		game.Workspace:FindFirstChild("Mari"):Destroy()
	elseif game.Workspace:FindFirstChild("Jester") then
		game.Workspace:FindFirstChild("Jester"):Destroy()
	end
	if Override then
		if market.currentThread and type(market.currentThread) == "thread" then
			coroutine.close(market.currentThread)
			market.currentThread = "TEMP"
		end
	end
	local data = market.data
	data.ShopName = ShopName
	data.Type = Type
	data.Products = Products
	data.SpawnLocation = SpawnLocation
	local Merchant = market[Merchant]:Clone()
	Merchant:PivotTo(CFrame.new(table.unpack(SpawnLocation)))
	local SpawnVFX = market.SpawnVFX:Clone()
	SpawnVFX:PivotTo(Merchant:GetPivot())
	SpawnVFX.Parent = game.Workspace
	SpawnVFX.Effect.Enabled = true
	Merchant.Parent = game.Workspace
	local msgpack = require(game.ReplicatedStorage.Modules.msgpack)
	local str = msgpack.encode(market.data)
	game.ReplicatedStorage.Server0o:SetAttribute("Blackmarket", str)
	market:despawnTimeHandler(despawnTime, Merchant)
	return true
end

function market:startLoop(): ()
	if market.currentThread and type(market.currentThread) == "thread" then return end
	market.currentThread = coroutine.create(function()
		while task.wait(Random.new():NextInteger(900, 2700)) do
			local marketerProducts = market.MarketerProducts
			local function RNG(): (any)
				local randomNum = Random.new():NextNumber() 
				if randomNum >= 0.04 and randomNum <= 1 then
					market.threadDebounce = false
					market.data.ShopName = "Mari's Shop"
					market.data.Type = "Normal"
					market.data.Products = market:selectRandomProducts(marketerProducts.MariProducts, 5)
					market.data.SpawnLocation = market.selectRandomSpawn()
					market:spawnMerchant(
						"Mari",
						market.data.ShopName,
						market.data.Type,
						market.data.Products,
						market.data.SpawnLocation,
						market.data.DespawnTime,
						false
					)
					return {"Mari", randomNum} :: marketer
				elseif randomNum >= 0.00 and randomNum < 0.04 then
					market.threadDebounce = false
					market.data.ShopName = "Jester's Shop"
					market.data.Type = "Special"
					market.data.Products = market:selectRandomProducts(marketerProducts.JesterProducts, 5)
					market.data.SpawnLocation = market.selectRandomSpawn()
					market:spawnMerchant(
						"Jester",
						market.data.ShopName,
						market.data.Type,
						market.data.Products,
						market.data.SpawnLocation,
						market.data.DespawnTime,
						false
					)
					return {"Jester", randomNum} :: marketer
				end
				return {nil, randomNum} :: marketer
			end
			if market.threadDebounce then
				local RNG = RNG()
				local chosenMarketer = RNG[1]
				local randomNumber = RNG[2]
				if chosenMarketer == "Mari" then
					print(
						{
							["Status"] = "Mari was successfully hit by the RNG, retrying once the the marketer despawns";
							["Random Number"] = randomNumber;
							["Chosen Marketer"] = chosenMarketer;
						}
					)
				elseif chosenMarketer == "Jester" then
					print(
						{
							["Status"] =  "Jester was successfully hit by the RNG, retrying once the the marketer despawns";
							["Random Number"] = randomNumber;
							["Chosen Marketer"] = chosenMarketer;
						}
					)
				else
					print(
						{
							["Status"] = "No blackmarketer was successfully hit by the RNG, retrying between 15 - 45 minutes...";
							["Random Number"] = randomNumber;
							["Chosen Marketer"] = chosenMarketer;
						}
					)
				end
			end
		end
	end)
	coroutine.resume(market.currentThread)
end

return market
