-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-20 18:24:50
-- Luau version 6, Types version 3
-- Time taken: 0.002430 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module = {}
local module_5_upvr = {}
local tbl_upvr = {}
local module_2_upvr = require(ReplicatedStorage:WaitForChild("Packets"):WaitForChild("Replication"))
local ItemList_upvr = ReplicatedStorage:WaitForChild("ItemList")
local module_6_upvr = require(ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Serializer"))
function module.GetValue(arg1, arg2) -- Line 78
	--[[ Upvalues[3]:
		[1]: module_5_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: module_2_upvr (readonly)
	]]
	if arg2 == "" then
		print(debug.info(2, "sl"))
	end
	if module_5_upvr[arg2] then
		return module_5_upvr[arg2]
	end
	if tbl_upvr[arg2] then
		table.insert(tbl_upvr[arg2], coroutine.running())
		return coroutine.yield()
	end
	local var15 = tbl_upvr[arg2]
	if not var15 then
		var15 = {}
	end
	tbl_upvr[arg2] = var15
	table.insert(tbl_upvr[arg2], coroutine.running())
	local tbl = {
		RayId = "";
		Scope = "ItemDB";
	}
	tbl.Value = arg2
	module_2_upvr.RequestData.send(tbl)
	return coroutine.yield()
end
local var17_upvw = true
function module.GetValueUnsafe(arg1, arg2) -- Line 95
	--[[ Upvalues[3]:
		[1]: module_5_upvr (readonly)
		[2]: ItemList_upvr (readonly)
		[3]: var17_upvw (read and write)
	]]
	if module_5_upvr[arg2] then
		return module_5_upvr[arg2]
	end
	if ItemList_upvr:FindFirstChild(arg2) then
		if var17_upvw then
			repeat
				task.wait()
			until not var17_upvw
		end
		local SOME = ItemList_upvr:FindFirstChild(arg2)
		local module_3 = {
			DisplayName = SOME:GetAttribute("DisplayName");
		}
		local Color = SOME:GetAttribute("Color")
		if not Color then
			Color = Color3.new(1, 1, 1)
		end
		module_3.ItemNameColor3 = Color
		module_3.ItemName = arg2
		return module_3
	end
	local module_4 = {}
	module_4.ItemName = arg2
	return module_4
end
function module.IsGear(arg1, arg2) -- Line 115
	if arg1:GetValue(arg2).GearConfig then
		return true
	end
	return false
end
repeat
	task.wait()
until ItemList_upvr:GetAttribute("Children") <= #ItemList_upvr:GetChildren()
var17_upvw = false
module_2_upvr.UpdateListValue.listen(function(arg1) -- Line 60, Named "ListenClient"
	--[[ Upvalues[3]:
		[1]: module_6_upvr (readonly)
		[2]: module_5_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	if arg1.Scope == script.Name then
		for i, v in module_6_upvr.Decode(arg1.ValuesToAdd) do
			module_5_upvr[i] = v
			if tbl_upvr[i] then
				for _, v_2 in tbl_upvr[i] do
					task.defer(v_2, v)
				end
				table.clear(tbl_upvr[i])
				tbl_upvr[i] = nil
			end
		end
	end
end)
return module