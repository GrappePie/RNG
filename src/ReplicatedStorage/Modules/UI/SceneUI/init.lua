-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-14 07:10:03
-- Luau version 6, Types version 3
-- Time taken: 0.004780 seconds

local StarterGui_upvr = game:GetService("StarterGui")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr = require(script:WaitForChild("Assets"))
local UI = ReplicatedStorage:WaitForChild("Modules"):WaitForChild("UI")
local any_GetStore_result1_upvr = require(UI:WaitForChild("Quad")).Store.GetStore("MasterVolumes")
local tbl_4_upvr = {}
local tbl_3_upvr = {}
local module = {}
local var10_upvw
local tbl_2_upvr = {"BackgroundMusic", "OthersAuraSounds", "UISounds", "ServerMessageSounds"}
local any_IsStudio_result1_upvr = game:GetService("RunService"):IsStudio()
local print_2_upvr = print
local function print_upvr(...) -- Line 47, Named "print"
	--[[ Upvalues[2]:
		[1]: any_IsStudio_result1_upvr (readonly)
		[2]: print_2_upvr (readonly)
	]]
	if any_IsStudio_result1_upvr then
		print_2_upvr(...)
	end
end
local function _() -- Line 53, Named "HideCore"
	--[[ Upvalues[4]:
		[1]: StarterGui_upvr (readonly)
		[2]: var10_upvw (read and write)
		[3]: any_GetStore_result1_upvr (readonly)
		[4]: tbl_2_upvr (readonly)
	]]
	StarterGui_upvr:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
	var10_upvw = any_GetStore_result1_upvr.BackgroundMusic
	for _, v in tbl_2_upvr do
		any_GetStore_result1_upvr[v] = 0
	end
end
local function ShowCore_upvr() -- Line 62, Named "ShowCore"
	--[[ Upvalues[4]:
		[1]: StarterGui_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: any_GetStore_result1_upvr (readonly)
		[4]: var10_upvw (read and write)
	]]
	StarterGui_upvr:SetCoreGuiEnabled(Enum.CoreGuiType.All, true)
	StarterGui_upvr:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false)
	StarterGui_upvr:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
	for _, v_2 in tbl_2_upvr do
		local var20
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var20 = var10_upvw
			return var20
		end
		if v_2 ~= "BackgroundMusic" or not INLINED() then
			var20 = 100
		end
		any_GetStore_result1_upvr[v_2] = var20
	end
end
local function ResetAssets_upvr() -- Line 73, Named "ResetAssets"
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	for _, v_3 in module_upvr do
		if typeof(v_3) == "Instance" and v_3:IsA("Tween") then
			v_3:Cancel()
		end
	end
	module_upvr.Colorboard:ClearAllChildren()
	module_upvr.Star:ClearAllChildren()
	module_upvr.Star2:ClearAllChildren()
	module_upvr.GradientBoard:ClearAllChildren()
	module_upvr.Colorboard.ImageColor3 = Color3.new(1, 1, 1)
	module_upvr.GradientBoard.ImageColor3 = Color3.new(1, 1, 1)
	module_upvr.Star.ImageColor3 = Color3.new(1, 1, 1)
	module_upvr.Star2.ImageColor3 = Color3.new(1, 1, 1)
	module_upvr.Star2.Image = "rbxassetid://17068400400"
	module_upvr.Star.Visible = false
	module_upvr.Star2.Visible = false
	module_upvr.Colorboard.ImageTransparency = 1
	module_upvr.GradientBoard.ImageTransparency = 1
	module_upvr.BlackBoard:ClearAllChildren()
end
local module_upvr_2 = require(UI:WaitForChild("RollUI"))
local var24_upvw
local CollectionService_upvr = game:GetService("CollectionService")
local module_upvr_3 = require(ReplicatedStorage:WaitForChild("Storage"):WaitForChild("Cutscenes"))
local HttpService_upvr = game:GetService("HttpService")
function module.PlayRollEffect(arg1, arg2, arg3) -- Line 100
	--[[ Upvalues[15]:
		[1]: module_upvr_2 (readonly)
		[2]: var24_upvw (read and write)
		[3]: CollectionService_upvr (readonly)
		[4]: module_upvr_3 (readonly)
		[5]: print_upvr (readonly)
		[6]: StarterGui_upvr (readonly)
		[7]: var10_upvw (read and write)
		[8]: any_GetStore_result1_upvr (readonly)
		[9]: tbl_2_upvr (readonly)
		[10]: ResetAssets_upvr (readonly)
		[11]: HttpService_upvr (readonly)
		[12]: module_upvr (readonly)
		[13]: ShowCore_upvr (readonly)
		[14]: tbl_4_upvr (readonly)
		[15]: tbl_3_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [135] 107. Error Block 16 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [135] 107. Error Block 16 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 41 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [135.4]
	if nil then
		if arg3 then
		end
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [135.5]
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [135.6]
		for _, _ in nil do
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if nil then
		for i_5, _ in nil do
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x3)
		end
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [135.4294575470]
		if i_5 == nil then
		end
	end
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [135.9]
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if nil <= arg2 then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		-- KONSTANTWARNING: GOTO [131] #104
	end
	-- KONSTANTERROR: [0] 1. Error Block 41 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [138] 109. Error Block 42 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if nil then
		StarterGui_upvr:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
		var10_upvw = any_GetStore_result1_upvr.BackgroundMusic
		for _, v_6 in tbl_2_upvr do
			any_GetStore_result1_upvr[v_6] = 0
		end
		ResetAssets_upvr()
		local any_GenerateGUID_result1_upvr = HttpService_upvr:GenerateGUID(false)
		local current_thread_upvr = coroutine.running()
		local tbl = {
			yield = current_thread_upvr;
			session = any_GenerateGUID_result1_upvr;
		}
		local var56_upvw
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [176.3]
		local var57_upvr
		tbl.thread = task.defer(function() -- Line 164
			--[[ Upvalues[7]:
				[1]: tbl_3_upvr (copied, readonly)
				[2]: var56_upvw (read and write)
				[3]: var57_upvr (readonly)
				[4]: module_upvr (copied, readonly)
				[5]: arg1 (readonly)
				[6]: current_thread_upvr (readonly)
				[7]: any_GenerateGUID_result1_upvr (readonly)
			]]
			tbl_3_upvr[var56_upvw](var57_upvr, module_upvr, arg1)
			task.defer(current_thread_upvr, any_GenerateGUID_result1_upvr)
		end)
		tbl.isCollection = arg3
		var24_upvw = tbl
		if coroutine.yield() == any_GenerateGUID_result1_upvr then
			var24_upvw = nil
		end
		ShowCore_upvr()
	end
	-- KONSTANTERROR: [138] 109. Error Block 42 end (CF ANALYSIS FAILED)
end
task.defer(function() -- Line 180
	--[[ Upvalues[2]:
		[1]: tbl_3_upvr (readonly)
		[2]: tbl_4_upvr (readonly)
	]]
	repeat
		task.wait()
	until game:IsLoaded()
	for _, v_7 in script:WaitForChild("Default"):GetChildren() do
		local tonumber_result1 = tonumber(v_7.Name)
		tbl_3_upvr[tonumber_result1] = require(v_7)
		table.insert(tbl_4_upvr, tonumber_result1)
	end
	table.sort(tbl_4_upvr, function(arg1, arg2) -- Line 189
		if arg1 >= arg2 then
		else
		end
		return true
	end)
end)
return module