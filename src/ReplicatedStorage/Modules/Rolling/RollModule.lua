-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-14 08:04:52
-- Luau version 6, Types version 3
-- Time taken: 0.002118 seconds

local module = {}
local function CloneTable_upvr_upvr(arg1) -- Line 7, Named "CloneTable_upvr"
	--[[ Upvalues[1]:
		[1]: CloneTable_upvr_upvr (readonly)
	]]
	local module_2 = {}
	for i, v in arg1 do
		local var7
		if typeof(v) == "table" then
			var7 = CloneTable_upvr_upvr(v)
		else
			var7 = v
		end
		module_2[i] = var7
	end
	return module_2
end
local function ReformTable_upvr_upvr(arg1) -- Line 23, Named "ReformTable_upvr"
	--[[ Upvalues[1]:
		[1]: CloneTable_upvr_upvr (readonly)
	]]
	local var16 = 0
	local var17 = 0
	local CloneTable_upvr_result1 = CloneTable_upvr_upvr(arg1)
	for _, v_2 in ipairs(CloneTable_upvr_result1) do
		var16 = math.max(var16, v_2.Rarity or 1)
	end
	for _, v_3 in ipairs(CloneTable_upvr_result1) do
		v_3.Rarity = 1 / v_3.Rarity * var16
		var17 += v_3.Rarity
	end
	table.sort(CloneTable_upvr_result1, function(arg1_2, arg2) -- Line 37
		if arg1_2.Rarity <= arg2.Rarity then
			return false
		end
		return true
	end)
	return CloneTable_upvr_result1, var17
end
local random_state_upvr = Random.new()
function module.GetValue(arg1, arg2, arg3) -- Line 49
	--[[ Upvalues[1]:
		[1]: random_state_upvr (readonly)
	]]
	table.sort(arg1, function(arg1_3, arg2_2) -- Line 53
		if arg1_3.Rarity <= arg2_2.Rarity then
			return false
		end
		return true
	end)
	local var32
	if not var32 then
		var32 = {}
	end
	for i_4, v_4 in ipairs(arg1) do
		if random_state_upvr:NextInteger(1, v_4.Rarity / (arg2 or 1) / (var32[v_4.Value or ""] or 1)) == 1 or i_4 == #arg1 then
			return v_4
		end
	end
	return arg1[#arg1]
end
function module.GetItemByWeight(arg1) -- Line 73
	--[[ Upvalues[1]:
		[1]: ReformTable_upvr_upvr (readonly)
	]]
	local ReformTable_upvr_upvr_result1, _ = ReformTable_upvr_upvr(arg1)
	local _, _, _ = ipairs(ReformTable_upvr_upvr_result1)
	table.clear(ReformTable_upvr_upvr_result1)
end
return module