--[[
-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local CollectionService = game:GetService("CollectionService")
local tbl_upvr = {"BackgroundMusic", "OthersAuraSounds", "UISounds", "ServerMessageSounds"}
local module = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("UI"):WaitForChild("Quad"))
local any_GetStore_result1_upvr_2 = module.Store.GetStore("MasterVolumes")
for _, v in tbl_upvr do
	any_GetStore_result1_upvr_2[v] = 100
end
local function GetSoundTag_upvr(arg1) -- Line 31, Named "GetSoundTag"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	for _, v_2 in ipairs(arg1:GetTags()) do
		if table.find(tbl_upvr, v_2) then
			return v_2
		end
	end
end
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local any_GetStore_result1_upvr = module.Store.GetStore("PlayerSettings")
local function ApplySound(arg1) -- Line 39
	--[[ Upvalues[4]:
		[1]: GetSoundTag_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
		[3]: any_GetStore_result1_upvr_2 (readonly)
		[4]: any_GetStore_result1_upvr (readonly)
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if arg1:IsA("Sound") then
		local GetSoundTag_result1_upvr = GetSoundTag_upvr(arg1)
		local var48_upvr
		if GetSoundTag_result1_upvr then
			var48_upvr = arg1:GetAttribute("Volume")
			if not var48_upvr then
				var48_upvr = arg1:SetAttribute
				var48_upvr("Volume", arg1.Volume)
			end
			if GetSoundTag_result1_upvr == "OthersAuraSounds" then
				if arg1:GetAttribute("Player") ~= LocalPlayer_upvr.Name then
					var48_upvr = false
				else
					var48_upvr = true
				end
			else
				var48_upvr = false
			end
			local function _(arg1_5, arg2) -- Line 60
				--[[ Upvalues[5]:
					[1]: GetSoundTag_result1_upvr (readonly)
					[2]: arg1 (readonly)
					[3]: any_GetStore_result1_upvr_2 (copied, readonly)
					[4]: var48_upvr (readonly)
					[5]: any_GetStore_result1_upvr (copied, readonly)
				local var53
				if arg1_5 == GetSoundTag_result1_upvr then
					var53 = arg1:GetAttribute("Volume")
					if not var53 then
						var53 = arg1.Volume
					end
					if var48_upvr then
					else
					end
					arg1.Volume = ((var53) * ((any_GetStore_result1_upvr_2[GetSoundTag_result1_upvr] or 100) / 100)) * (any_GetStore_result1_upvr[GetSoundTag_result1_upvr] / 100)
				end
			end
			if not any_GetStore_result1_upvr[GetSoundTag_result1_upvr] then
				repeat
					task.wait()
				until any_GetStore_result1_upvr[GetSoundTag_result1_upvr]
			end
			if not arg1:GetAttribute("Volume") then
			end
			if var48_upvr then
			else
			end
			arg1.Volume = ((arg1.Volume) * ((any_GetStore_result1_upvr_2[GetSoundTag_result1_upvr] or 100) / 100)) * (any_GetStore_result1_upvr[GetSoundTag_result1_upvr] / 100)
			local any_Connect_result1_upvw_4 = any_GetStore_result1_upvr.__change:Connect(function(arg1_4, arg2) -- Line 54
				--[[ Upvalues[5]:
					[1]: GetSoundTag_result1_upvr (readonly)
					[2]: arg1 (readonly)
					[3]: any_GetStore_result1_upvr_2 (copied, readonly)
					[4]: var48_upvr (readonly)
					[5]: any_GetStore_result1_upvr (copied, readonly)
				-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [3] 3. Error Block 21 start (CF ANALYSIS FAILED)
				local var51
				if GetSoundTag_result1_upvr == "OthersAuraSounds" then
					if arg1_4 == "MyAuraSounds" then
						-- KONSTANTERROR: [8] 6. Error Block 18 start (CF ANALYSIS FAILED)
						var51 = arg1:GetAttribute("Volume")
						if not var51 then
							var51 = arg1.Volume
						end
						if var48_upvr then
							var51 = any_GetStore_result1_upvr.MyAuraSounds / 100
						else
							var51 = any_GetStore_result1_upvr[GetSoundTag_result1_upvr] / 100
						end
						arg1.Volume = (var51) * ((any_GetStore_result1_upvr_2[GetSoundTag_result1_upvr] or 100) / 100) * var51
						-- KONSTANTERROR: [8] 6. Error Block 18 end (CF ANALYSIS FAILED)
					end
				end
				-- KONSTANTERROR: [3] 3. Error Block 21 end (CF ANALYSIS FAILED)
			end)
			local any_Connect_result1_upvw_3 = arg1:GetAttributeChangedSignal("Volume"):Connect(function() -- Line 50, Named "UpdateVolume"
				--[[ Upvalues[5]:
					[1]: arg1 (readonly)
					[2]: any_GetStore_result1_upvr_2 (copied, readonly)
					[3]: GetSoundTag_result1_upvr (readonly)
					[4]: var48_upvr (readonly)
					[5]: any_GetStore_result1_upvr (copied, readonly)
				local var49
				if not var49 then
					var49 = arg1.Volume
				end
				if var48_upvr then
					var49 = any_GetStore_result1_upvr.MyAuraSounds / 100
				else
					var49 = any_GetStore_result1_upvr[GetSoundTag_result1_upvr] / 100
				end
				arg1.Volume = (var49) * ((any_GetStore_result1_upvr_2[GetSoundTag_result1_upvr] or 100) / 100) * var49
			end)
			arg1.Destroying:Once(function() -- Line 72
				--[[ Upvalues[2]:
					[1]: any_Connect_result1_upvw_4 (read and write)
					[2]: any_Connect_result1_upvw_3 (read and write)
				any_Connect_result1_upvw_4:Disconnect()
				any_Connect_result1_upvw_4 = nil
				any_Connect_result1_upvw_3:Disconnect()
				any_Connect_result1_upvw_3 = nil
			end)
		end
	end
end
for _, v_3 in ipairs(tbl_upvr) do
	CollectionService:GetInstanceAddedSignal(v_3):Connect(ApplySound)
	for _, v_4 in ipairs(CollectionService:GetTagged(v_3)) do
		task.defer(ApplySound, v_4)
		local _
	end
end]]