-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-14 21:38:20
-- Luau version 6, Types version 3
-- Time taken: 0.001338 seconds

local tbl_3_upvr = {}
local module_upvr = {}
local tbl_2_upvr = {}
local module_upvr_2 = require(game:GetService("ReplicatedStorage"):WaitForChild("Packets"):WaitForChild("Replication"))
function module_upvr.Exists(arg1, arg2) -- Line 11
	if script:FindFirstChild(arg2) == nil then
		return false
	end
	return true
end
local tbl_4_upvr = {}
local HttpService_upvr = game:GetService("HttpService")
function module_upvr.GetValue(arg1, arg2) -- Line 21
	--[[ Upvalues[6]:
		[1]: module_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: tbl_4_upvr (readonly)
		[4]: HttpService_upvr (readonly)
		[5]: tbl_2_upvr (readonly)
		[6]: module_upvr_2 (readonly)
	]]
	if module_upvr:Exists(arg2) then
		if tbl_3_upvr[arg2] then
			return tbl_3_upvr[arg2]
		end
		if tbl_4_upvr[arg2] then
			table.insert(tbl_4_upvr[arg2], coroutine.running())
			return coroutine.yield()
		end
		tbl_4_upvr[arg2] = {}
		local any_GenerateGUID_result1 = HttpService_upvr:GenerateGUID(false)
		tbl_2_upvr[any_GenerateGUID_result1] = arg2
		table.insert(tbl_4_upvr[arg2], coroutine.running())
		local tbl = {
			RayId = any_GenerateGUID_result1;
			Scope = script.Name;
		}
		tbl.Value = arg2
		module_upvr_2.RequestData.send(tbl)
		return coroutine.yield()
	end
	return nil
end
module_upvr_2.RequestData.listen(function(arg1) -- Line 52
	--[[ Upvalues[2]:
		[1]: tbl_2_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
	]]
	local var10 = tbl_2_upvr
	local var11 = var10[arg1.RayId]
	tbl_3_upvr[var11] = require(var10:Clone():GetChildren()[1]:GetChildren()[1])
	warn("Aura Cutscene not found :", var11)
end)
return module_upvr