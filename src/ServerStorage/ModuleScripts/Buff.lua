local datastore = require(game:GetService("ServerStorage").ModuleScripts.DataStore)

local module = {} -- self

function module.AddBuff(player, buff, amount, number, infinite, limited)
	print(player, buff, amount, number, infinite, limited)

	local data = datastore.GetStore(player, true)
	local changedata = datastore.GetChangeStore(player, true)

	if infinite == true then
		data.Buffs[buff][2] = amount
		data.Buffs[buff][1] += number
		changedata:SetValue({"Buffs", buff}, data.Buffs[buff])
	elseif infinite == false then
		print(data.Buffs)
		print(player, buff, amount, number, infinite, limited)

		data.Buffs[buff][2] += amount
		data.Buffs[buff][1] = number
		changedata:SetValue({"Buffs", buff}, data.Buffs[buff])
	else
		return false
	end

	--[[pcall(function()
		if limited == true then
			module.RemoveBuff(player, buff)
		end
	end)]]

	return true
end

function module.RemoveBuff(player, buff) -- require(game.ServerStorage.ModuleScripts.Buff).RemoveBuff(game.Players.asiasrodent, "Oblivion")
	local data = datastore.GetStore(player, true)
	local changedata = datastore.GetChangeStore(player, true)
	if data.Buffs[buff][1] ~= 0 then
		data.Buffs[buff][1] -= 1
		if data.Buffs[buff][1] == 0 then
			data.Buffs[buff][2] = 0
		end
		print(buff, changedata)
		changedata:SetValue({"Buffs", buff}, {[1] = 0, [2] = 0})
		--changedata:SetValue({"Buffs", buff}, data.Buffs[buff])
	end
end

game.Players.PlayerAdded:Connect(function(plr)
	repeat wait() until plr:GetAttribute("PlayBegin")
	local data = datastore.GetStore(plr, true)
	local changedata = datastore.GetChangeStore(plr, true)

	while plr do
		for i, v in data.Buffs do
			if v[1] == 0 or v[2] == 0 or v[2] == nil then

			else
				v[2] -= 1
				if v[2] <= 0 then
					v[2] = 0
					v[1] = 0
				end
				changedata:SetValue({"Buffs", i}, data.Buffs[i])
			end
		end

		wait(1)
	end
end)

return module
