-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved soon!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-01-02 16:15:28
-- Luau version 6, Types version 3
-- Time taken: 0.002415 seconds

local module_upvr = {}
function module_upvr.setup(arg1) -- Line 3
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.elapsedTime = 0
	module_upvr.reappearElapsedTime = 0
	module_upvr.isHidden = false
	module_upvr.randomWaitTime = math.random(3, 5) / 10
	module_upvr.reappearTime = 0.2
	module_upvr.CharacterParts = {}
	module_upvr.character = arg1
	for _, v in pairs(arg1:GetDescendants()) do
		if v and v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
			table.insert(module_upvr.CharacterParts, v)
		end
	end
end
function module_upvr.loop(arg1) -- Line 19
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.CharacterParts = {}
	for i_2, v_2 in pairs(module_upvr.character:GetChildren()) do
		if v_2 and v_2:IsA("BasePart") and v_2.Name ~= "HumanoidRootPart" then
			table.insert(module_upvr.CharacterParts, v_2)
		end
	end
	i_2 = module_upvr
	module_upvr.elapsedTime = i_2.elapsedTime + arg1
	if not module_upvr.isHidden and module_upvr.randomWaitTime <= module_upvr.elapsedTime then
		i_2 = 1
		v_2 = #module_upvr.CharacterParts
		module_upvr.CharacterParts[math.random(i_2, v_2)].Transparency = 1
		module_upvr.isHidden = true
		module_upvr.reappearElapsedTime = 0
		module_upvr.elapsedTime = 0
	elseif module_upvr.isHidden then
		i_2 = module_upvr
		module_upvr.reappearElapsedTime = i_2.reappearElapsedTime + arg1
		if module_upvr.reappearTime <= module_upvr.reappearElapsedTime then
			i_2 = module_upvr
			for _, v_4 in ipairs(i_2.CharacterParts) do
				v_4.Transparency = 0
			end
			module_upvr.isHidden = false
			module_upvr.randomWaitTime = math.random(3, 5) / 10
		end
	end
end
function module_upvr.cleanup() -- Line 53
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	for _, v_3 in ipairs(module_upvr.CharacterParts) do
		if v_3:IsA("BasePart") and v_3.Name ~= "HumanoidRootPart" then
			v_3.Transparency = 0
		end
	end
end
return module_upvr