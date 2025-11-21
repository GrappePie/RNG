-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-14 07:55:34
-- Luau version 6, Types version 3
-- Time taken: 0.007172 seconds

local ServerStorage_upvr = game:GetService("ServerStorage")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr = {}
local tbl_upvr = {}
local any_IsServer_result1_upvr = game:GetService("RunService"):IsServer()
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local var7_upvw
if any_IsServer_result1_upvr then
	var7_upvw = "Modules"
	var7_upvw = "DataStore"
end
local module_2_upvr = require(ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Utility"))
if not any_IsServer_result1_upvr or not (function() -- Line 20, Named "INLINED"
	--[[ Upvalues[2]:
		[1]: var7_upvw (read and write)
		[2]: ServerStorage_upvr (readonly)
	]]
		var7_upvw = ServerStorage_upvr
		return var7_upvw
	end)() then
	var7_upvw = ReplicatedStorage
end
var7_upvw = var7_upvw:WaitForChild("Storage"):WaitForChild("Buffs")
local var7_2_upvr = require(var7_upvw)
var7_upvw = ReplicatedStorage:WaitForChild("TierList")
local _ = {0, 0}
local function _(arg1) -- Line 31
	--[[ Upvalues[3]:
		[1]: any_IsServer_result1_upvr (readonly)
		[2]: module_2_upvr (readonly)
		[3]: LocalPlayer_upvr (readonly)
	]]
	if any_IsServer_result1_upvr then
		return module_2_upvr.GetStore(arg1, true)
	end
	return module_2_upvr.Replica.GetReplica(LocalPlayer_upvr:GetAttribute("UID")).Data
end
function tbl_upvr.__index(arg1, arg2) -- Line 43
	rawset(arg1, arg2, {})
	return rawget(arg1, arg2)
end

module_upvr.GetLuck = module_2_upvr.GetLuck
--[[function module_upvr.GetLuck(arg1, arg2) -- Line 47
	--[[ Upvalues[5]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: any_IsServer_result1_upvr (readonly)
		[3]: module_2_upvr (readonly)
		[4]: tbl_upvr (readonly)
		[5]: var7_2_upvr (readonly)
	
	-- KONSTANTERROR: [0] 1. Error Block 82 start (CF ANALYSIS FAILED)
	local var11
	if not var11 then
		var11 = LocalPlayer_upvr
	end
	local var12
	if any_IsServer_result1_upvr then
		var12 = module_2_upvr.GetStore(var11, true)
	else
		var12 = module_2_upvr.Replica.GetReplica(LocalPlayer_upvr:GetAttribute("UID")).Data
	end
	local var13 = var12
	if not var13.Settings.BuffEnabled then
		return 1
	end
	local pairs_result1, pairs_result2_4, pairs_result3_4 = pairs(var13.Buffs)
	-- KONSTANTERROR: [0] 1. Error Block 82 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [160] 124. Error Block 37 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [160] 124. Error Block 37 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [56] 42. Error Block 90 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [160.12]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [160.13]
	if nil < nil and nil < nil then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if not nil then
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if nil then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if nil then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if nil then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
					if not nil or nil then
					end
				else
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
					if nil and not nil then
						-- KONSTANTWARNING: GOTO [160] #124
					end
				end
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if nil then
					-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [160.14]
					if nil then
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
						if not nil or nil then
						end
					else
						-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [160.15]
						local function INLINED_2() -- Internal function, doesn't exist in bytecode
							-- KONSTANTERROR: Expression was reused, decompilation is incorrect
							return nil
						end
						if not nil or not INLINED_2() then
						end
					end
				end
			end
		end
	end
	-- KONSTANTERROR: [56] 42. Error Block 90 end (CF ANALYSIS FAILED)
end]]
function module_upvr.GetCooldown(arg1) -- Line 138
	--[[ Upvalues[5]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: any_IsServer_result1_upvr (readonly)
		[3]: module_2_upvr (readonly)
		[4]: tbl_upvr (readonly)
		[5]: var7_2_upvr (readonly)
	]]
	local var47
	if not var47 then
		var47 = LocalPlayer_upvr
	end
	local var48
	if any_IsServer_result1_upvr then
		var48 = module_2_upvr.GetStore(var47, true)
	else
		var48 = module_2_upvr.Replica.GetReplica(LocalPlayer_upvr:GetAttribute("UID")).Data
	end
	local var49 = var48
	if not var49.Settings.BuffEnabled then
		return 1
	end
	local setmetatable_result1_3 = setmetatable({}, tbl_upvr)
	local setmetatable_result1 = setmetatable({}, tbl_upvr)
	local pairs_result1_2, pairs_result2_2, pairs_result3 = pairs(var49.Buffs)
	for i_2, v_2_upvr in pairs_result1_2, pairs_result2_2, pairs_result3 do
		local var55
		if not var55 then
			var55 = var7_2_upvr:GetValue(i_2)
		end
		if var55 and 0 < v_2_upvr[2] and var55.Speed then
			if var55.Group then
				if not var55.CanNotBeStacked or math.clamp(v_2_upvr[1], 0, 1) then
				end
				local var56_upvw = var55.Speed * v_2_upvr[1]
				table.insert(setmetatable_result1_3[var56_upvw], var56_upvw)
			elseif not var55.CanNotBeStacked or not (function() -- Line 178, Named "INLINED_4"
				--[[ Upvalues[2]:
					[1]: var56_upvw (read and write)
					[2]: v_2_upvr (readonly)
				]]
					local var56_upvw = math.clamp(v_2_upvr[1], 0, 1)
					return var56_upvw
				end)() then
				local var56_upvw = v_2_upvr[1]
			end
		end
	end
	pairs_result1_2 = nil
	local var57 = pairs_result1_2
	if 0 < module_2_upvr.GetBuffStack(var49.Buffs["Reso0ce of Elements"]) then
		if var49.Buffs["Reso0ce of Elements"][3] then
			local v_4 = var49.Buffs -- Setting global
			local i_4 = v_4["Reso0ce of Elements"] -- Setting global
			var57 += i_4[3].Speed or 0
		end
	end
	for _, v_3 in pairs(setmetatable_result1_3) do
		local var118 = math.max(table.unpack(v_3)) -- Setting global
		var57 += var118
	end
	setmetatable(setmetatable_result1_3, nil)
	setmetatable(setmetatable_result1, nil)
	table.clear(setmetatable_result1_3)
	table.clear(setmetatable_result1)
	if var57 < 0 then
	end
	if 0 >= module_2_upvr.GetBuffStack(var49.Buffs.Skip) then
	end
	return var47:GetAttribute("FCD") or 0
end
function module_upvr.GetRollEffectTime(arg1) -- Line 209
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var63 = 0
	local var64 = module_upvr.GetCooldown(arg1) / 1
	for i_5 = 0.1, 0.3, 0.025 do
		var63 += i_5 * var64
	end
	return var63
end
function module_upvr.GetRollEffectData() -- Line 220
	return {0.1, 0.3, 0.025, 1}
end
function module_upvr.GetRollTable() -- Line 223
	--[[ Upvalues[1]:
		[1]: var7_upvw (read and write)
	]]
	local module = {}
	for _, v_5 in ipairs(var7_upvw:GetChildren()) do
		table.insert(module, {
			Value = v_5.Name;
			Rarity = v_5.Value;
		})
	end
	return module
end
function module_upvr.GetRarity(arg1) -- Line 236
	--[[ Upvalues[1]:
		[1]: var7_upvw (read and write)
	]]
	for _, v_6 in ipairs(var7_upvw:GetChildren()) do
		if v_6.Name == arg1 then
			return v_6.Value
		end
	end
	return 0
end
return module_upvr