local module_upvr_2 = require(game:GetService("ReplicatedStorage"):WaitForChild("ReplicaController"))
local module_upvr = {}
local function _(arg1) -- Line 8
	local UID_2 = arg1:GetAttribute("UID")
	if not UID_2 then
		arg1:GetAttributeChangedSignal("UID"):Wait()
		UID_2 = arg1:GetAttribute("UID")
	end
	return UID_2
end
local function LoadReplica_upvr_upvr() -- Line 16, Named "LoadReplica_upvr"
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	if not module_upvr_2.InitialDataReceived then
		coroutine.yield()
		local current_thread_upvr_2 = coroutine.running()
		module_upvr_2.InitialDataReceivedSignal:Connect(function() -- Line 23
			--[[ Upvalues[1]:
				[1]: current_thread_upvr_2 (readonly)
			]]
			task.defer(current_thread_upvr_2)
		end):Disconnect()
	end
end
function module_upvr.GetReplica(arg1) -- Line 31
	--[[ Upvalues[2]:
		[1]: LoadReplica_upvr_upvr (readonly)
		[2]: module_upvr_2 (readonly)
	]]
	LoadReplica_upvr_upvr()
	return module_upvr_2.GetReplicaById(arg1)
end
function module_upvr.GetReplicasByClass(arg1) -- Line 39
	--[[ Upvalues[2]:
		[1]: LoadReplica_upvr_upvr (readonly)
		[2]: module_upvr_2 (readonly)
	]]
	LoadReplica_upvr_upvr()
	for _, v in pairs(module_upvr_2._replicas) do
		if v.Class == arg1 then
			table.insert({}, v)
		end
	end
	return {}
end
function module_upvr.FindFirstReplicaByClass(arg1) -- Line 54
	--[[ Upvalues[2]:
		[1]: LoadReplica_upvr_upvr (readonly)
		[2]: module_upvr_2 (readonly)
	]]
	LoadReplica_upvr_upvr()
	for _, v_2 in pairs(module_upvr_2._replicas) do
		if v_2.Class == arg1 then
			return v_2
		end
	end
	return nil
end
function module_upvr.WaitForReplicaByClass(arg1) -- Line 68
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_2 (readonly)
	]]
	local any_FindFirstReplicaByClass_result1 = module_upvr.FindFirstReplicaByClass(arg1)
	if not any_FindFirstReplicaByClass_result1 then
		any_FindFirstReplicaByClass_result1 = coroutine.yield()
		local current_thread_upvr_3 = coroutine.running()
		module_upvr_2.ReplicaOfClassCreated(arg1, function(arg1_2) -- Line 77
			--[[ Upvalues[1]:
				[1]: current_thread_upvr_3 (readonly)
			]]
			task.defer(current_thread_upvr_3, arg1_2)
		end):Disconnect()
	end
	return any_FindFirstReplicaByClass_result1
end
function module_upvr.WaitForReplica(arg1) -- Line 86
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_2 (readonly)
	]]
	local UID = arg1:GetAttribute("UID")
	if not UID then
		arg1:GetAttributeChangedSignal("UID"):Wait()
		UID = arg1:GetAttribute("UID")
	end
	local var20_upvw = UID
	if not var20_upvw then
		var20_upvw = arg1
	end
	local any_GetReplica_result1 = module_upvr.GetReplica(var20_upvw)
	if not any_GetReplica_result1 then
		any_GetReplica_result1 = coroutine.yield()
		local current_thread_upvr = coroutine.running()
		module_upvr_2.NewReplicaSignal:Connect(function(arg1_3) -- Line 110
			--[[ Upvalues[2]:
				[1]: var20_upvw (read and write)
				[2]: current_thread_upvr (readonly)
			]]
			if arg1_3.Id == var20_upvw then
				task.defer(current_thread_upvr, arg1_3)
			end
		end):Disconnect()
	end
	return any_GetReplica_result1
end
function module_upvr.GetServerReplica() -- Line 125
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return module_upvr.WaitForReplicaByClass("ServerInfo")
end
function module_upvr.GetMerchantReplica() -- Line 131
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return module_upvr.WaitForReplicaByClass("Merchant")
end
return module_upvr