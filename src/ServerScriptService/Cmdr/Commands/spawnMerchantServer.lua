local MarketModule = require(game:GetService("ServerStorage").ModuleScripts.MarketModule)

local Ratelimited = false

task.spawn(function()
	local db = true
	while task.wait() do
		if db then
			if Ratelimited then
				db = false
				task.wait(10)
				Ratelimited = false
				db = true
			end
		end
	end
end)

return function (context, InputMerchant : string, Time : number, amountOfProducts : number)
	if Ratelimited then
		return "This command has been rate-limited. Please wait at least 10 seconds before trying again."
	end
	if not (InputMerchant and Time) then
		return "Please input all required parameters before running this command."
	end


	local Merchant: string
	local Shop: string
	local Type: string

	if InputMerchant:lower() == "mari" then
		Merchant = "Mari"
		Shop = "Mari's Shop"
		Type = "Normal"
	elseif InputMerchant:lower() == "jester" then
		Merchant = "Jester"
		Shop = "Jester's Shop"
		Type = "Special"
	else
		return "Invalid Merchant."
	end

	if amountOfProducts ~= nil and amountOfProducts > 14 then
		return "Amount of Products exceeds that maximum limit of 14."
	end

	Ratelimited = true

	MarketModule:spawnMerchant(
		"Mari",
		"Mari's Shop",
		"Normal",
		MarketModule:selectRandomProducts(MarketModule.MarketerProducts.MariProducts, amountOfProducts or 5),
		MarketModule.selectRandomSpawn(),
		Time,
		true
	)

	return true
end