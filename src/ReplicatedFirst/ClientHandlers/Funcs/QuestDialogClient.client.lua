-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-16 17:27:49
-- Luau version 6, Types version 3
-- Time taken: 0.002999 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr = require(ReplicatedStorage:WaitForChild("Modules"):WaitForChild("UI"):WaitForChild("Notification"))
local module_upvr_2 = require(ReplicatedStorage:WaitForChild("Packets"):WaitForChild("Quest"))
local var6_upvw
local var7_upvw
local function _(arg1) -- Line 199, Named "RequestDialog"
	--[[ Upvalues[3]:
		[1]: var6_upvw (read and write)
		[2]: var7_upvw (read and write)
		[3]: module_upvr_2 (readonly)
	]]
	if not var6_upvw then
		var6_upvw = true
		var7_upvw = coroutine.running()
		module_upvr_2.DialogRequest.send(arg1)
		var6_upvw = false
		return coroutine.yield()
	end
	return "Gaejook : )"
end
module_upvr_2.DialogResult.listen(function(arg1) -- Line 216
	--[[ Upvalues[1]:
		[1]: var7_upvw (read and write)
	]]
	if var7_upvw then
		task.defer(var7_upvw, arg1)
		var7_upvw = nil
	end
end)
local tbl_upvr = {}
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
module_upvr_2.RegisterNPC.listen(function(arg1) -- Line 223
	--[[ Upvalues[6]:
		[1]: tbl_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
		[3]: var6_upvw (read and write)
		[4]: var7_upvw (read and write)
		[5]: module_upvr_2 (readonly)
		[6]: module_upvr (readonly)
	]]
	if not arg1.NPC then
	else
		tbl_upvr[arg1.StartQuestName] = arg1.NPC:FindFirstChildWhichIsA("ProximityPrompt", true).Triggered:Connect(function(arg1_2) -- Line 227
			--[[ Upvalues[6]:
				[1]: LocalPlayer_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: var6_upvw (copied, read and write)
				[4]: var7_upvw (copied, read and write)
				[5]: module_upvr_2 (copied, readonly)
				[6]: module_upvr (copied, readonly)
			]]
			local var15
			if arg1_2 ~= var15 then
			else
				if not var6_upvw then
					var6_upvw = true
					var7_upvw = coroutine.running()
					module_upvr_2.DialogRequest.send(arg1.StartQuestName)
					var6_upvw = false
					var15 = coroutine.yield()
				else
					var15 = "Gaejook : )"
				end
				if var15.Result == "Accept" then
					local DisplayName_2 = var15.DisplayName
					if not DisplayName_2 then
						DisplayName_2 = var15.QuestName
						if not DisplayName_2 then
							DisplayName_2 = ""
						end
					end
					module_upvr.Create("Quest Accepted", `You have accepted the {DisplayName_2} quest`, 5, "Normal")
				end
			end
		end)
	end
end)
module_upvr_2.ClientLoaded.send("QuestDialogClient")
game:GetService("ReplicatedFirst"):FindFirstChildWhichIsA("Actor", true):BindToMessage("DialogRequest", function(arg1) -- Line 240
	--[[ Upvalues[4]:
		[1]: var6_upvw (read and write)
		[2]: var7_upvw (read and write)
		[3]: module_upvr_2 (readonly)
		[4]: module_upvr (readonly)
	]]
	local var20
	if not var6_upvw then
		var6_upvw = true
		var7_upvw = coroutine.running()
		module_upvr_2.DialogRequest.send(arg1)
		var6_upvw = false
		var20 = coroutine.yield()
	else
		var20 = "Gaejook : )"
	end
	if var20.Result == "Accept" then
		local DisplayName = var20.DisplayName
		if not DisplayName then
			DisplayName = var20.QuestName
			if not DisplayName then
				DisplayName = ""
			end
		end
		module_upvr.Create("Quest Accepted", `You have accepted the {DisplayName} quest`, 5, "Normal")
	end
end)
