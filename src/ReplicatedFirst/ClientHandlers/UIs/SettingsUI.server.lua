--[[local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr = require(ReplicatedStorage:WaitForChild("Packets"):WaitForChild("Global"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module = require(Modules:WaitForChild("Utility"))
local any_WaitForReplica_result1 = module.Replica.WaitForReplica(game:GetService("Players").LocalPlayer)
local module_2 = require(Modules:WaitForChild("UI"):WaitForChild("Quad"))
local any_GetStore_result1_upvr = module_2.Store.GetStore("PlayerSettingsPre")
if not ReplicatedStorage:GetAttribute("Key") then
	ReplicatedStorage:GetAttributeChangedSignal("Key"):Wait()
end
local any_decode_result1_upvr = module.msgpack.decode(require(Modules:WaitForChild("Serializer")).Compress.decompress(ReplicatedStorage:GetAttribute("Key")))
local function _(arg1) -- Line 28, Named "CreateKeyLisner"
	--[[ Upvalues[2]:
		[1]: any_GetStore_result1_upvr (readonly)
		[2]: module_upvr (readonly)
	any_GetStore_result1_upvr(arg1):Observe(function(arg1_2) -- Line 29
		--[[ Upvalues[2]:
			[1]: module_upvr (copied, readonly)
			[2]: arg1 (readonly)
		local tbl_2 = {}
		tbl_2.Key = arg1
		tbl_2.Value = arg1_2
		module_upvr.ModifySetting.send(tbl_2)
	end)
end
local function _(arg1) -- Line 34, Named "CreateKeyLisner2"
	--[[ Upvalues[2]:
		[1]: any_GetStore_result1_upvr (readonly)
		[2]: module_upvr (readonly)
	local var15_upvw
	any_GetStore_result1_upvr(arg1):Observe(function(arg1_3) -- Line 37
		--[[ Upvalues[3]:
			[1]: var15_upvw (read and write)
			[2]: module_upvr (copied, readonly)
			[3]: arg1 (readonly)
		if var15_upvw then
			task.cancel(var15_upvw)
		end
		var15_upvw = task.delay(1, function() -- Line 39
			--[[ Upvalues[4]:
				[1]: module_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: arg1_3 (readonly)
				[4]: var15_upvw (copied, read and write)
			local tbl_4 = {}
			tbl_4.Key = arg1
			tbl_4.Value = arg1_3
			module_upvr.ModifySetting.send(tbl_4)
			var15_upvw = nil
		end)
	end)
end
for i_upvr, _ in any_WaitForReplica_result1.Data.Settings do
	if table.find(any_decode_result1_upvr, i_upvr) then
		local var19_upvw
		any_GetStore_result1_upvr(i_upvr):Observe(function(arg1) -- Line 37
			--[[ Upvalues[3]:
				[1]: var19_upvw (read and write)
				[2]: module_upvr (readonly)
				[3]: i_upvr (readonly)
			if var19_upvw then
				task.cancel(var19_upvw)
			end
			var19_upvw = task.delay(1, function() -- Line 39
				--[[ Upvalues[4]:
					[1]: module_upvr (copied, readonly)
					[2]: i_upvr (copied, readonly)
					[3]: arg1 (readonly)
					[4]: var19_upvw (copied, read and write)
				local tbl_3 = {
					Key = i_upvr;
				}
				tbl_3.Value = arg1
				module_upvr.ModifySetting.send(tbl_3)
				var19_upvw = nil
			end)
		end)
	else
		any_GetStore_result1_upvr(i_upvr):Observe(function(arg1) -- Line 29
			--[[ Upvalues[2]:
				[1]: module_upvr (readonly)
				[2]: i_upvr (readonly)
			local tbl = {
				Key = i_upvr;
			}
			tbl.Value = arg1
			module_upvr.ModifySetting.send(tbl)
		end)
	end
end
local any_GetStore_result1_upvr_2 = module_2.Store.GetStore("PlayerSettings")
any_WaitForReplica_result1:ListenToChange("Settings", function(arg1) -- Line 55
	--[[ Upvalues[2]:
		[1]: any_decode_result1_upvr (readonly)
		[2]: any_GetStore_result1_upvr_2 (readonly)
	for i_2, v_2 in arg1 do
		if not table.find(any_decode_result1_upvr, i_2) then
			any_GetStore_result1_upvr_2[i_2] = v_2
		end
	end
end)]]