-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved soon!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-01-02 16:15:27
-- Luau version 6, Types version 3
-- Time taken: 0.001781 seconds

local module = {}
local tbl_upvw = {}
function addSpinObject(arg1, arg2, arg3) -- Line 14
	--[[ Upvalues[1]:
		[1]: tbl_upvw (read and write)
	]]
	local tbl = {}
	tbl.object = arg1
	tbl.continuousSpinSpeed = arg2
	tbl.pulseRotatio0gle = arg3
	tbl.currentPulseRotation = 0
	tbl.targetPulseRotation = 0
	tbl.accumulatedTime = 0
	table.insert(tbl_upvw, tbl)
end
local RunService_upvr = game:GetService("RunService")
local function tweenRotation_upvr(arg1, arg2, arg3) -- Line 26, Named "tweenRotation"
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	local currentPulseRotation = arg1.currentPulseRotation
	local tick_result1 = tick()
	while tick() < tick_result1 + arg3 do
		local var7 = (currentPulseRotation + (arg2 - currentPulseRotation) * math.clamp((tick() - tick_result1) / arg3, 0, 1)) % 360
		arg1.object.CFrame = arg1.object.CFrame * CFrame.fromEulerAnglesXYZ(0, math.rad(var7) - math.rad(arg1.currentPulseRotation), 0)
		arg1.currentPulseRotation = var7
		RunService_upvr.RenderStepped:Wait()
	end
	arg1.currentPulseRotation = arg2 % 360
end
function module.loop(arg1) -- Line 47
	--[[ Upvalues[2]:
		[1]: tbl_upvw (read and write)
		[2]: tweenRotation_upvr (readonly)
	]]
	for _, v in ipairs(tbl_upvw) do
		v.object.CFrame = v.object.CFrame * CFrame.fromEulerAnglesXYZ(0, v.continuousSpinSpeed, 0)
		if 0 <= tick() - 0 then
			v.accumulatedTime += arg1
			if 0.46153846153846156 <= v.accumulatedTime then
				v.targetPulseRotation = (v.currentPulseRotation + v.pulseRotatio0gle) % 360
				v.accumulatedTime -= 0.46153846153846156
				tweenRotation_upvr(v, v.targetPulseRotation, 0.13333333333333333)
			end
		end
	end
end
function module.setup(arg1) -- Line 67
	addSpinObject(arg1.HumanoidRootPart.FloorAttachment["clock extra"], 0.0025, 8)
	addSpinObject(arg1.HumanoidRootPart.FloorAttachment["clock extra2"], -0.0025, -8)
end
function module.stop() -- Line 73
	--[[ Upvalues[1]:
		[1]: tbl_upvw (read and write)
	]]
	tbl_upvw = {}
end
return module