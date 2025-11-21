local module = {}
local itemdb = require(game.ReplicatedStorage.Modules.DB.ItemDB)
local datastore = require(game:GetService("ServerStorage").ModuleScripts.DataStore)
local buffs = require(game.ServerStorage.ModuleScripts.Buff)

function module.EquipGear(plr, gear)
	local whattype = nil
	if not itemdb[gear] then
		return false
	else
		whattype = itemdb[gear].GearType
	end
	local data = datastore.GetStore(plr, true)
	local changedata = datastore.GetChangeStore(plr, true)
	if not data.Inventory[gear] then
		return false
	end

	if whattype == "Right" then
		data.RightGear = tostring(gear)
		changedata:SetValue("RightGear", data.RightGear)
	elseif whattype == "Left" then
		data.LeftGear = tostring(gear)
		changedata:SetValue("LeftGear", data.LeftGear)
	end

	if gear == "Luck Glove" then
		buffs.AddBuff(plr, "Basic Luck", math.huge, 1, true, false)
	elseif gear == "Lunar Device" then
		buffs.AddBuff(plr, "Lunar Shift", math.huge, 1, true, false)
	elseif gear == "Solar Device" then
		buffs.AddBuff(plr, "Solar Ignite", math.huge, 1, true, false)
	elseif gear == "Eclipse Device" then
		buffs.AddBuff(plr, "Basic Luck", math.huge, 1, true, false)
	elseif gear == "Jackpot Gauntlet" then
		buffs.AddBuff(plr, "Jackpot", math.huge, 1, true, false)
	elseif gear == "Exo Gauntlet" then
		buffs.AddBuff(plr, "Exo Enhancement", math.huge, 1, true, false)
	elseif gear == "Galactic Device" then
		buffs.AddBuff(plr, "Cosmic Enhancement", math.huge, 1, true, false)
	elseif gear == "Subzero Device" then
		buffs.AddBuff(plr, "Subzero", math.huge, 1, true, false)
	elseif gear == "Gravitational Device" then
		buffs.AddBuff(plr, "Unstable Gravity", math.huge, 1, true, false)
	elseif gear == "Windstorm Device" then
		buffs.AddBuff(plr, "Galestorm", math.huge, 1, true, false)
	elseif gear == "Volcanic Device" then
		buffs.AddBuff(plr, "Volcanic", math.huge, 1, true, false)
	elseif gear == "Exoflex Device" then
		buffs.AddBuff(plr, "Exoflex Blessing", math.huge, 1, true, false)
	elseif gear == "Flesh Device" then
		buffs.AddBuff(plr, "Fierce Spirit", math.huge, 1, true, false)
	elseif gear == "Archangel Glove" then
		buffs.AddBuff(plr, "Exo Enhancement", math.huge, 1, true, false)
	elseif gear == "Pump Punch Gauntlet" then
		buffs.AddBuff(plr, "Pumpking's Curse", math.huge, 1, true, false)
		buffs.AddBuff(plr, "Pumpking's Blessing", math.huge, 1, true, false)
	end
	return true
end

function module.UnEquipGear(plr, gear)
	local data = datastore.GetStore(plr, true)
	local changedata = datastore.GetChangeStore(plr, true)
	if gear == "Right" then
		data.RightGear = ""
		changedata:SetValue("RightGear", data.RightGear)
		buffs.RemoveBuff(plr, "Basic Luck", math.huge, 1, true, false)
		buffs.RemoveBuff(plr, "Lunar Shift", math.huge, 1, true, false)
		buffs.RemoveBuff(plr, "Solar Ignite", math.huge, 1, true, false)
		buffs.RemoveBuff(plr, "Basic Luck", math.huge, 1, true, false)

		buffs.RemoveBuff(plr, "Exo Enhancement", math.huge, 1, true, false)
		buffs.RemoveBuff(plr, "Cosmic Enhancement", math.huge, 1, true, false)
		buffs.RemoveBuff(plr, "Subzero", math.huge, 1, true, false)

		buffs.RemoveBuff(plr, "Galestorm", math.huge, 1, true, false)
		buffs.RemoveBuff(plr, "Volcanic", math.huge, 1, true, false)
		buffs.RemoveBuff(plr, "Exoflex Blessing", math.huge, 1, true, false)

		buffs.RemoveBuff(plr, "Exo Enhancement", math.huge, 1, true, false)

		buffs.RemoveBuff(plr, "Pumpking's Curse", math.huge, 1, true, false)
		buffs.RemoveBuff(plr, "Pumpking's Blessing", math.huge, 1, true, false)
	elseif gear =="Left" then
		data.LeftGear = ""
		changedata:SetValue("LeftGear", data.LeftGear)
		buffs.RemoveBuff(plr, "Unstable Gravity", math.huge, 1, true, false)
		buffs.RemoveBuff(plr, "Jackpot", math.huge, 1, true, false)
		buffs.RemoveBuff(plr, "Fierce Spirit", math.huge, 1, true, false)
	end


	return true
end

return module
