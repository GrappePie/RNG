-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-14 08:03:17
-- Luau version 6, Types version 3
-- Time taken: 0.004789 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr_2 = require(ReplicatedStorage:WaitForChild("Packets"):WaitForChild("Replication"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_3_upvr = require(Modules:WaitForChild("Serializer"))
local module = require(Modules:WaitForChild("GoodSignal"))
local module_upvr = {
	ListUpdated = module.new();
	ListCreated = module.new();
}
local module_2_upvr = {}
local tbl_2_upvr = {}
local var9_upvw
local var10_upvw
local function select_upvr(arg1, ...) -- Line 69, Named "select"
	return ({...})[arg1]
end
local any_WaitForReplica_result1_upvr = require(Modules:WaitForChild("Utility"):WaitForChild("Replica")).WaitForReplica(game:GetService("Players").LocalPlayer)
local function CheckPlayerHasAura_upvr(arg1) -- Line 73, Named "CheckPlayerHasAura"
	--[[ Upvalues[1]:
		[1]: any_WaitForReplica_result1_upvr (readonly)
	]]
	if arg1 == "Common" then
		return true
	end
	local Data = any_WaitForReplica_result1_upvr.Data
	local unpacked_value_1, unpacked_value_2_2 = table.unpack(arg1:split('_'))
	local var16
	if Data then
		var16 = Data.HiddenAuraFound[arg1]
		if var16 then
			var16 = true
			return var16
		end
		if unpacked_value_2_2 then
			var16 = Data.SkinsOwned[unpacked_value_1]
			if var16 then
				if table.find(Data.SkinsOwned[unpacked_value_1], unpacked_value_2_2) == nil then
					var16 = false
				else
					var16 = true
				end
			end
			return var16
		end
		if table.find(Data.DiscoveredAura, unpacked_value_1) == nil then
		else
		end
		return true
	end
	return false
end
function module_upvr.GetValue(arg1, arg2) -- Line 176
	--[[ Upvalues[3]:
		[1]: module_2_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: module_upvr_2 (readonly)
	]]
	if module_2_upvr[arg2] then
		return module_2_upvr[arg2]
	end
	if tbl_2_upvr[arg2] then
		table.insert(tbl_2_upvr[arg2], coroutine.running())
		return coroutine.yield()
	end
	local var36 = tbl_2_upvr[arg2]
	if not var36 then
		var36 = {}
	end
	tbl_2_upvr[arg2] = var36
	table.insert(tbl_2_upvr[arg2], coroutine.running())
	local tbl = {
		RayId = "";
		Scope = "RarityDB";
	}
	tbl.Value = arg2
	module_upvr_2.RequestData.send(tbl)
	return coroutine.yield()
end
function module_upvr.GetValueSafe(arg1, arg2) -- Line 192
	--[[ Upvalues[1]:
		[1]: CheckPlayerHasAura_upvr (readonly)
	]]
	if CheckPlayerHasAura_upvr(arg2) then
		return arg1:GetValue(arg2)
	end
	return nil
end
local TierList_upvr = ReplicatedStorage:WaitForChild("TierList")
function module_upvr.GetValueName(arg1, arg2) -- Line 200
	--[[ Upvalues[2]:
		[1]: TierList_upvr (readonly)
		[2]: select_upvr (readonly)
	]]
	if TierList_upvr:FindFirstChild(arg2) then
		return select_upvr(1, TierList_upvr:FindFirstChild(arg2):GetAttribute("Value"):gsub('_', " : "))
	end
	return select_upvr(1, arg2:gsub('_', " : "))
end
local HttpService_upvr = game:GetService("HttpService")
function module_upvr.GetList(arg1) -- Line 208
	--[[ Upvalues[5]:
		[1]: var10_upvw (read and write)
		[2]: var9_upvw (read and write)
		[3]: HttpService_upvr (readonly)
		[4]: module_upvr_2 (readonly)
		[5]: module_upvr (readonly)
	]]
	if not var10_upvw and not var9_upvw then
		local any_GenerateGUID_result1 = HttpService_upvr:GenerateGUID(false)
		var9_upvw = {any_GenerateGUID_result1, coroutine.running()}
		module_upvr_2.RequestData.send({
			RayId = any_GenerateGUID_result1;
			Scope = "RarityDB";
			Value = "List";
		})
		var10_upvw = coroutine.yield()
		module_upvr.ListCreated:Fire(var10_upvw)
		var9_upvw = nil
	end
	local any_GenerateGUID_result1 = var10_upvw
	local var43 = any_GenerateGUID_result1
	if not var43 then
		var43 = module_upvr.ListCreated:Wait()
	end
	return var43
end
module_upvr_2.UpdateListValue.listen(function(arg1) -- Line 93, Named "ListenClient"
	--[[ Upvalues[5]:
		[1]: module_3_upvr (readonly)
		[2]: module_2_upvr (readonly)
		[3]: var10_upvw (read and write)
		[4]: module_upvr (readonly)
		[5]: tbl_2_upvr (readonly)
	]]
	if arg1.Scope == script.Name then
		for i, v in pairs(module_3_upvr.Decode(arg1.ValuesToAdd)) do
			module_2_upvr[i] = v
			if var10_upvw and v ~= "None" then
				local unpacked_value_1_2, unpacked_value_2_3 = table.unpack(v.Value:split('_'))
				if unpacked_value_2_3 then
					local var26 = var10_upvw[v.Index]
					if var26.Locked then
						var26.Locked = nil
						var26.Value = unpacked_value_1_2
						module_upvr.ListUpdated:Fire(v.Index)
					end
					if var26.Skins then
						var26.Skins[v.SkinCode] = {
							Value = v.Value;
						}
					end
					module_upvr.ListUpdated:Fire(v.SkinCode, unpacked_value_1_2)
				elseif var10_upvw[v.Index].Locked then
					var10_upvw[v.Index].Locked = nil
					var10_upvw[v.Index].Value = v.Value
					module_upvr.ListUpdated:Fire(v.Index)
				end
			end
			if tbl_2_upvr[i] then
				for _, v_2 in ipairs(tbl_2_upvr[i]) do
					if coroutine.status(v_2) ~= "suspended" then
						print(debug.info(v_2, 1, 's'))
					end
					task.defer(v_2, v)
				end
				table.clear(tbl_2_upvr[i])
				tbl_2_upvr[i] = nil
			end
		end
	end
end)
module_upvr_2.RequestData.listen(function(arg1) -- Line 169, Named "ListenRequestClient"
	--[[ Upvalues[2]:
		[1]: var9_upvw (read and write)
		[2]: module_3_upvr (readonly)
	]]
	if var9_upvw and var9_upvw[1] == arg1.RayId and arg1.Scope == "RarityDB" then
		table.clear(var9_upvw)
		task.defer(var9_upvw[2], module_3_upvr.Decode(arg1.Value))
	end
end)
module_upvr_2.UpdateList.listen(function(arg1) -- Line 138, Named "ListenListUpdate"
	--[[ Upvalues[3]:
		[1]: var10_upvw (read and write)
		[2]: module_3_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	if arg1.Scope == script.Name and var10_upvw then
		local any_Decode_result1 = module_3_upvr.Decode(arg1.Value)
		local unpacked_value_1_3, unpacked_value_2 = table.unpack(any_Decode_result1.Value:split('_'))
		if unpacked_value_2 then
			local var34 = var10_upvw[any_Decode_result1.Index]
			if var34.Locked then
				var34.Locked = nil
				var34.Value = unpacked_value_1_3
				module_upvr.ListUpdated:Fire(any_Decode_result1.Index)
			end
			if var34.Skins then
				var34.Skins[any_Decode_result1.SkinCode] = {
					Value = any_Decode_result1.Value;
				}
			end
			module_upvr.ListUpdated:Fire(any_Decode_result1.SkinCode, unpacked_value_1_3)
			return
		end
		if var10_upvw[any_Decode_result1.Index].Locked then
			var10_upvw[any_Decode_result1.Index].Locked = nil
			var10_upvw[any_Decode_result1.Index].Value = any_Decode_result1.Value
			module_upvr.ListUpdated:Fire(any_Decode_result1.Index)
		end
	end
end)
return module_upvr