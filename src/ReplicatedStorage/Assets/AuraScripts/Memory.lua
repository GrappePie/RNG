-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved soon!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-01-02 16:15:26
-- Luau version 6, Types version 3
-- Time taken: 0.001620 seconds

local module_upvr = {}
function module_upvr.setup(arg1) -- Line 14
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.RootPart = arg1:WaitForChild("HumanoidRootPart")
	module_upvr.LeftArm = arg1:FindFirstChild("Left Arm")
	module_upvr.Enabled = true
end
local var2_upvw = 0
local cframe_upvr_2 = CFrame.new(-0.00048828125, 9.78979492, 9.87197876, 1, 0, 0, 0, 0.4510445, -0.892504156, 0, 0.892504156, 0.4510445)
local cframe_upvr = CFrame.new(-0.000732421875, 9.66294861, 9.62136841, -1, -1.90153045e-07, 1.94266754e-08, 6.71068392e-08, -0.444429278, -0.895816684, 1.78976052e-07, -0.895816684, 0.444429278)
function module_upvr.loop(arg1) -- Line 20
	--[[ Upvalues[4]:
		[1]: module_upvr (readonly)
		[2]: var2_upvw (read and write)
		[3]: cframe_upvr_2 (readonly)
		[4]: cframe_upvr (readonly)
	]]
	if not module_upvr.Enabled then
	else
		var2_upvw += 50 * arg1
		module_upvr.InnerRing = module_upvr.RootPart.Rings:FindFirstChild("InnerRing")
		module_upvr.OuterRing = module_upvr.RootPart.Rings:FindFirstChild("OutterRing")
		module_upvr.Orb = module_upvr.LeftArm.Orb:FindFirstChild("Orb")
		if module_upvr.InnerRing then
			module_upvr.InnerRing.CFrame = module_upvr.InnerRing.CFrame:Lerp(module_upvr.RootPart.CFrame * cframe_upvr_2 * CFrame.new(0, math.sin(var2_upvw / 60) / 3, 0) * CFrame.Angles(0, math.rad(var2_upvw / 2), 0), 0.2)
		end
		if module_upvr.InnerRing then
			module_upvr.OuterRing.CFrame = module_upvr.OuterRing.CFrame:Lerp(module_upvr.RootPart.CFrame * cframe_upvr * CFrame.new(0, math.sin(var2_upvw / 60) / 3, 0) * CFrame.Angles(0, math.rad(var2_upvw / 1.5), 0), 0.2)
		end
		if module_upvr.Orb then
			module_upvr.Orb = module_upvr.Orb.CFrame:Lerp(CFrame.new((module_upvr.LeftArm.CFrame * CFrame.new(0, -1, 0)).Position + Vector3.new(math.sin(var2_upvw / 62) * 0.2, 1.3 + math.sin(var2_upvw / 66) * 0.15, math.sin(var2_upvw / 71) * 0.2)), 0.2)
		end
	end
end
function module_upvr.cleanup() -- Line 38
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.Enabled = false
end
return module_upvr