-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-14 07:39:59
-- Luau version 6, Types version 3
-- Time taken: 0.010080 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local Players_upvr = game:GetService("Players")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_3_upvr = {}
local any_IsServer_result1 = RunService:IsServer()
local Modules = ReplicatedStorage:WaitForChild("Modules")
local var7_upvr
if not any_IsServer_result1 then
end
local function INLINED() -- Internal function, doesn't exist in bytecode
	var7_upvr = Instance.new("RemoteFunction", script)
	return var7_upvr
end
if not any_IsServer_result1 or not INLINED() then
	var7_upvr = script:WaitForChild("RemoteFunction")
end
local tbl_3_upvr = {0, 0}
local tbl_2_upvr = {'K', 'M', 'B', 'T', "Qd", "Qn", "Sx", "Sp", 'O', 'N'}
module_3_upvr.IsStudio = RunService:IsStudio()
local var10 = true
if game.GameId ~= 6293042829 then
	if game.GameId ~= 5409827364 or game.GameId == game.GameId then
		var10 = false
	else
		var10 = true
	end
end
module_3_upvr.IsTestServer = var10
module_3_upvr.Replica = {}
module_3_upvr.msgpack = require(script:WaitForChild("msgpack"))
module_3_upvr.switch = require(Modules:WaitForChild("Switch"))
local function _(arg1) -- Line 42, Named "FormatTimeNumber"
	return string.format("%02i", arg1)
end
function module_3_upvr.GetUsernameById(arg1) -- Line 47
	--[[ Upvalues[1]:
		[1]: var7_upvr (readonly)
	]]
	if var7_upvr:FindFirstChild(arg1) then
		return var7_upvr:FindFirstChild(arg1).Value
	end
	return var7_upvr:InvokeServer(arg1)
end
function module_3_upvr.FormatNumber(arg1) -- Line 55
	local _, _, any_find_result3, any_find_result4, any_find_result5 = tostring(arg1):find("([-]?)(%d+)([.]?%d*)")
	if not any_find_result4 then
		return tostring(arg1)
	end
	return any_find_result3..any_find_result4:reverse():gsub("(%d%d%d)", "%1,"):reverse():gsub("^,", "")..any_find_result5
end
function module_3_upvr.DeepCopyTable(arg1) -- Line 62
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	local module_2 = {}
	for i, v in pairs(arg1) do
		local var24
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var24 = module_3_upvr.DeepCopyTable(v)
			return var24
		end
		if typeof(v) ~= "table" or not INLINED_2() then
			var24 = v
		end
		module_2[i] = var24
	end
	return module_2
end
function module_3_upvr.Format(arg1, arg2) -- Line 72
	local module = {}
	local any_find_result1, any_find_result2, any_find_result3_2 = arg1:find("{(.-)}")
	local var29
	while any_find_result3_2 do
		table.insert(module, var29:sub(1, any_find_result1 - 1))
		local var30 = arg2[any_find_result3_2]
		if not var30 then
			var30 = any_find_result3_2 -- `{{any_find_result3_2}}`
		end
		table.insert(module, var30)
		var29 = var29:sub(any_find_result2 + 1, #var29)
		local _, _, _ = var29:find("{(.-)}")
	end
	table.insert(module, var29)
	return table.concat(module)
end
function module_3_upvr.ToTimeString1(arg1, arg2) -- Line 89
	local module_4 = {}
	local var35 = (arg1 - arg1 % 60) / 60
	if 4 <= arg2 then
		local var36 = (var35 - var35 % 60) / 60
		local var37 = (var36 - var36 % 24) / 24
		table.insert(module_4, var37)
		table.insert(module_4, var36 - var37 * 24)
		table.insert(module_4, var35 - var36 * 60)
		table.insert(module_4, arg1 - var35 * 60)
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		local var38 = (arg1 - var35 * 60 - (arg1 - var35 * 60) % 60) / 60
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		local var39 = (var38 - var38 % 60) / 60
		table.insert(module_4, var39)
		table.insert(module_4, var38 - var39 * 60)
		table.insert(module_4, arg1 - var35 * 60 - var38 * 60)
	end
	return table.concat(module_4, ':')
end
function module_3_upvr.ToTimeString2(arg1, arg2) -- Line 118
	local clamped = math.clamp(arg2 or 2, 1, 4)
	local var41 = clamped -- local var41
	if 4 <= clamped then
		local var42 = (var41 - var41 % 60) / 60
		var41 -= var42 * 60
		local var43 = (var42 - var42 % 60) / 60
		local var44 = (var43 - var43 % 24) / 24
		return table.concat({var44, "d ", var43 - var44 * 24, "h ", var42 - var43 * 60, "m ", var41, 's'})
	end
	if clamped == 3 then
		local var46 = (var41 - var41 % 60) / 60
		var41 -= var46 * 60
		local var47 = (var46 - var46 % 60) / 60
		return table.concat({var47, "h ", var46 - var47 * 60, "m ", var41, 's'})
	end
	if clamped == 2 then
		local var49 = (var41 - var41 % 60) / 60
		var41 -= var49 * 60
		return table.concat({var49, "m ", var41, 's'})
	end
	return var41..'s'
end
function module_3_upvr.GetBuffStack(arg1, arg2) -- Line 147
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	local var53 = arg1
	if not var53 then
		var53 = tbl_3_upvr
	end
	if 0 < var53[1] then
		local var54
		if 0 < var54 then
			local function INLINED_4() -- Internal function, doesn't exist in bytecode
				var54 = math.min(var53[1], arg2)
				return var54
			end
			if not arg2 or not INLINED_4() then
				var54 = var53[1]
			end
			return var54
		end
	end
	return 0
end
function module_3_upvr.Shorten(arg1) -- Line 157
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 35 start (CF ANALYSIS FAILED)
	if arg1 >= 0 then
	else
	end
	local pairs_result1_3, pairs_result2, pairs_result3_3 = pairs(tbl_2_upvr)
	-- KONSTANTERROR: [0] 1. Error Block 35 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [77] 67. Error Block 17 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [77] 67. Error Block 17 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [18] 16. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [77.9]
	-- KONSTANTERROR: [18] 16. Error Block 6 end (CF ANALYSIS FAILED)
end
local TierList_upvr = ReplicatedStorage:WaitForChild("TierList")
function module_3_upvr.RarestRNG(arg1) -- Line 186
	--[[ Upvalues[3]:
		[1]: module_3_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: TierList_upvr (readonly)
	]]
	local Data = module_3_upvr.Replica.WaitForReplica(Players_upvr.LocalPlayer).Data
	local tbl = {2}
	local var77 = 0
	local var81
	for _, v_2 in ipairs(Data.DiscoveredAura) do
		local SOME = TierList_upvr:FindFirstChild(v_2)
		if SOME and SOME.Name ~= "Common" then
			table.insert(tbl, SOME.Value)
		end
	end
	for i_3, v_3 in pairs(Data.SkinsOwned) do
		for _, v_4 in ipairs(v_3) do
			local SOME_2 = TierList_upvr:FindFirstChild(i_3..'_'..v_4)
			if SOME_2 then
				table.insert(tbl, SOME_2.Value)
			end
		end
	end
	if #tbl ~= 0 then
		for _, v_5 in ipairs(tbl) do
			var77 += v_5
		end
	end
	return nil, var77
end
function module_3_upvr.GetSmartName(arg1) -- Line 234
	if arg1.DisplayName and arg1.DisplayName ~= arg1.Name then
		return `{arg1.DisplayName}(@{arg1.Name})`
	end
	return `@{arg1.Name}`
end
local var93_upvw
function module_3_upvr.Notify(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 242
	--[[ Upvalues[1]:
		[1]: var93_upvw (read and write)
	]]
	var93_upvw.Create(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
end
function module_3_upvr.TimeoutEvent(arg1, arg2) -- Line 246
	local var94_upvw
	local current_thread_upvr = coroutine.running()
	local task_defer_result1 = task.defer(function() -- Line 255
		--[[ Upvalues[3]:
			[1]: arg2 (readonly)
			[2]: var94_upvw (read and write)
			[3]: current_thread_upvr (readonly)
		]]
		task.wait(arg2)
		if not var94_upvw then
			task.defer(current_thread_upvr)
		end
	end)
	coroutine.yield()
	arg1:Connect(function(...) -- Line 250
		--[[ Upvalues[2]:
			[1]: var94_upvw (read and write)
			[2]: current_thread_upvr (readonly)
		]]
		var94_upvw = {...}
		task.defer(current_thread_upvr)
	end):Disconnect()
	if task_defer_result1 ~= coroutine.running() then
		task.cancel(task_defer_result1)
	end
	if var94_upvw then
		return true, table.unpack(var94_upvw)
	end
	return false
end
local Sounds_upvr = ReplicatedStorage:WaitForChild("Assets"):WaitForChild("Sounds")
local SoundService_upvr = game:GetService("SoundService")
function module_3_upvr.PlaySFX(arg1, arg2, arg3, arg4) -- Line 275
	--[[ Upvalues[2]:
		[1]: Sounds_upvr (readonly)
		[2]: SoundService_upvr (readonly)
	]]
	local clone_upvw = Sounds_upvr:WaitForChild(arg1):Clone()
	if not clone_upvw:GetAttribute("Volume") then
		clone_upvw:SetAttribute("Volume", clone_upvw.Volume)
	end
	local var103 = arg3
	if not var103 then
		var103 = clone_upvw.PlaybackSpeed
	end
	clone_upvw.PlaybackSpeed = var103
	clone_upvw.Volume = 0
	clone_upvw:AddTag(arg2 or "UISounds")
	clone_upvw.Name = math.random()
	clone_upvw.Parent = SoundService_upvr
	clone_upvw:Play()
	clone_upvw.Ended:Once(function() -- Line 288
		--[[ Upvalues[1]:
			[1]: clone_upvw (read and write)
		]]
		clone_upvw:Destroy()
		clone_upvw = nil
	end)
end
function module_3_upvr.GetTierByRarity(arg1) -- Line 294
	if not arg1 then
		return "Unobtainable"
	end
	if math.clamp(arg1, 1, 999) == arg1 then
		return "Basic"
	end
	if math.clamp(arg1, 1000, 9998) == arg1 then
		return "Epic"
	end
	if math.clamp(arg1, 9999, 99998) == arg1 then
		return "Unique"
	end
	if math.clamp(arg1, 99999, 999998) == arg1 then
		return "Legendary"
	end
	if math.clamp(arg1, 999999, 9999998) == arg1 then
		return "Mythic"
	end
	if math.clamp(arg1, 9999999, 99999998) == arg1 then
		return "Exalted"
	end
	if math.clamp(arg1, 99999999, 999999998) == arg1 then
		return "Glorious"
	end
	if math.clamp(arg1, 999999999, 7500000000) == arg1 then
		return "Transcendent"
	end
	if math.clamp(arg1, 7500000001, 12500000000) == arg1 then
		return "Dimensional"
	end
	if math.clamp(arg1, 12500000001, 50000000000) == arg1 then
		return "Sequential"
	end
	return "Basic"
end
function module_3_upvr.GetUpgradeCoin(arg1) -- Line 321
	return math.floor(400 * arg1 ^ 1.1)
end
local var105_upvw
function module_3_upvr.GetTextSize(arg1, arg2, arg3, arg4) -- Line 325
	--[[ Upvalues[1]:
		[1]: var105_upvw (read and write)
	]]
	local TextLabel = Instance.new("TextLabel")
	TextLabel.TextTransparency = 1
	TextLabel.BackgroundTransparency = 1
	TextLabel.Parent = var105_upvw
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left
	local var107 = arg4 or 1
	TextLabel.TextSize = var107
	if arg4 ~= nil then
		var107 = false
	else
		var107 = true
	end
	TextLabel.TextScaled = var107
	TextLabel.FontFace = arg2
	TextLabel.Size = arg1
	TextLabel.Text = arg3
	task.wait()
	task.delay(2, TextLabel.Destroy, TextLabel)
	return TextLabel.TextBounds
end
function module_3_upvr.VaildateNumber(arg1, arg2) -- Line 346
	local var109 = tonumber(arg1) or 0
	if #arg1:gsub("%D", "") <= 0 then
		return false
	end
	if var109 ~= var109 then
		return false
	end
	return true, math.clamp(math.floor(var109), 0, arg2 or math.huge)
end
if not any_IsServer_result1 then
	module_3_upvr.Replica = require(script:WaitForChild("Replica"))
	require(ReplicatedStorage:WaitForChild("ReplicaController")).RequestData()
	var93_upvw = require(Modules:WaitForChild("UI"):WaitForChild("Notification"))
	var105_upvw = Instance.new("ScreenGui")
	local var110 = var105_upvw
	var110.IgnoreGuiInset = true
	var110.Enabled = true
	var110.DisplayOrder = -999
	var110.ResetOnSpawn = false
	var110.Name = "GetTextSizeScreen"
	var110.Parent = Players_upvr.LocalPlayer:WaitForChild("PlayerGui")
end
return module_3_upvr