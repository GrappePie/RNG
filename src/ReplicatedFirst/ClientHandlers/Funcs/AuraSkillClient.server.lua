-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-16 17:22:11
-- Luau version 6, Types version 3
-- Time taken: 0.003941 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ContextActionService_upvr = game:GetService("ContextActionService")
local tbl_upvr = {}
local var4_upvw
local tbl_upvr_3 = {}
local tbl_upvr_2 = {}
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local module_upvr_2 = require(ReplicatedStorage:WaitForChild("Packets"):WaitForChild("Aura"))
local module_upvr = require(ReplicatedStorage:WaitForChild("Modules"):WaitForChild("UI"):WaitForChild("SkillUI"))
local var11_upvw
local mouse_upvr = LocalPlayer_upvr:GetMouse()
local function BindAction_upvr(arg1, arg2, arg3) -- Line 38, Named "BindAction"
	--[[ Upvalues[7]:
		[1]: tbl_upvr_2 (readonly)
		[2]: var11_upvw (read and write)
		[3]: module_upvr (readonly)
		[4]: var4_upvw (read and write)
		[5]: LocalPlayer_upvr (readonly)
		[6]: module_upvr_2 (readonly)
		[7]: mouse_upvr (readonly)
	]]
	if arg2 ~= Enum.UserInputState.Begin then
	else
		local var17 = tbl_upvr_2[`{var11_upvw}_{arg1}`]
		if module_upvr:GetDisabled(arg1) or var17 and workspace:GetServerTimeNow() <= var17.End then return end
		for i_3, _ in var4_upvw do
			if not module_upvr:GetDisabled(i_3) then
				module_upvr:SetDisabled(i_3)
			end
		end
		local Character_3 = LocalPlayer_upvr.Character
		if not Character_3 then
			Character_3 = LocalPlayer_upvr.CharacterAdded:Wait()
		end
		local tbl = {
			LookVector = Character_3:WaitForChild("HumanoidRootPart").CFrame.LookVector;
			MouseHit = mouse_upvr.Hit;
		}
		tbl.SkillName = arg1
		module_upvr_2.UseSkill.send(tbl)
	end
end
local function RemoveLastAsset_upvr() -- Line 59, Named "RemoveLastAsset"
	--[[ Upvalues[5]:
		[1]: var4_upvw (read and write)
		[2]: module_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: ContextActionService_upvr (readonly)
		[5]: tbl_upvr_3 (readonly)
	]]
	var4_upvw = nil
	module_upvr:ClearItems()
	for _, v in pairs(tbl_upvr) do
		ContextActionService_upvr:UnbindAction(v)
	end
	table.clear(tbl_upvr)
	table.clear(tbl_upvr_3)
end
local TouchEnabled_upvr = game:GetService("UserInputService").TouchEnabled
local function LoadSkill_upvr(arg1) -- Line 71, Named "LoadSkill"
	--[[ Upvalues[8]:
		[1]: var11_upvw (read and write)
		[2]: var4_upvw (read and write)
		[3]: tbl_upvr (readonly)
		[4]: ContextActionService_upvr (readonly)
		[5]: BindAction_upvr (readonly)
		[6]: TouchEnabled_upvr (readonly)
		[7]: tbl_upvr_2 (readonly)
		[8]: module_upvr (readonly)
	]]
	var11_upvw = arg1:GetAttribute("Name")
	arg1:SetAttribute("Name", nil)
	if not arg1:IsDescendantOf(game) then
	else
		var4_upvw = require(arg1)
		for i_4, v_4 in var4_upvw do
			tbl_upvr[v_4.KeyCode] = i_4
			ContextActionService_upvr:BindAction(i_4, BindAction_upvr, TouchEnabled_upvr, v_4.KeyCode)
			if not tbl_upvr_2[`{var11_upvw}_{i_4}`] then
				local tbl_2 = {
					Time = 0;
					End = 0;
				}
			end
			module_upvr:AddItem(v_4.KeyCode, i_4, tbl_2.End, tbl_2.Time)
		end
	end
end
module_upvr_2.UseSkill.listen(function(arg1) -- Line 91
	--[[ Upvalues[3]:
		[1]: var4_upvw (read and write)
		[2]: LocalPlayer_upvr (readonly)
		[3]: tbl_upvr_3 (readonly)
	]]
	if var4_upvw[arg1.SkillName] then
		local Character_2 = LocalPlayer_upvr.Character
		if not Character_2 then
			Character_2 = LocalPlayer_upvr.CharacterAdded:Wait()
		end
		tbl_upvr_3[arg1.SkillName] = task.defer(var4_upvw[arg1.SkillName].Activate, LocalPlayer_upvr, Character_2, arg1.LookVector, arg1.MouseHit)
	end
end)
module_upvr_2.CancelSkill.listen(function(arg1) -- Line 99
	--[[ Upvalues[3]:
		[1]: tbl_upvr_3 (readonly)
		[2]: var4_upvw (read and write)
		[3]: LocalPlayer_upvr (readonly)
	]]
	if tbl_upvr_3[arg1] then
		task.cancel(tbl_upvr_3[arg1])
		if var4_upvw[arg1] then
			local Character = LocalPlayer_upvr.Character
			if not Character then
				Character = LocalPlayer_upvr.CharacterAdded:Wait()
			end
			var4_upvw[arg1].Cancel(LocalPlayer_upvr, Character)
		end
	end
end)
module_upvr_2.SetSkill.listen(function(arg1) -- Line 111
	--[[ Upvalues[4]:
		[1]: tbl_upvr_2 (readonly)
		[2]: module_upvr (readonly)
		[3]: var11_upvw (read and write)
		[4]: var4_upvw (read and write)
	]]
	arg1.End = tonumber(arg1.End)
	tbl_upvr_2[`{arg1.AuraName}_{arg1.SkillName}`] = arg1
	module_upvr:UpdateItem(arg1.SkillName, arg1.End, arg1.Time)
	if arg1.AuraName == var11_upvw then
		for i_2, v_2 in var4_upvw do
			local var37 = tbl_upvr_2[`{v_2.AuraName}_{v_2.SkillName}`]
			if v_2.SkillName ~= i_2 and (var37.End <= workspace:GetServerTimeNow()) then
				module_upvr:SetEnabled(i_2)
			end
		end
	end
end)
LocalPlayer_upvr.ChildAdded:Connect(function(arg1) -- Line 129
	--[[ Upvalues[2]:
		[1]: RemoveLastAsset_upvr (readonly)
		[2]: LoadSkill_upvr (readonly)
	]]
	if arg1:IsA("ModuleScript") and arg1.Name:match("AuraSkillClient") then
		RemoveLastAsset_upvr()
		LoadSkill_upvr(arg1)
	end
end)