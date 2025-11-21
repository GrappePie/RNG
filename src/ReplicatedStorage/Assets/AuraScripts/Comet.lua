-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved soon!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-01-02 16:15:34
-- Luau version 6, Types version 3
-- Time taken: 0.001480 seconds

local module_upvr = {}
local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
function tbl_upvr.new(arg1, arg2, arg3, arg4) -- Line 7
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, tbl_upvr)
	setmetatable_result1.k1 = (arg2) / (math.pi * arg1)
	setmetatable_result1.k2 = (1) / (((-math.pi*2) * arg1) * ((-math.pi*2) * arg1))
	setmetatable_result1.k3 = (arg3 * arg2) / ((-math.pi*2) * arg1)
	setmetatable_result1.prevPos = arg4
	setmetatable_result1.pos = arg4
	setmetatable_result1.vel = Vector3.new(0, 0, 0)
	return setmetatable_result1
end
function tbl_upvr.Update(arg1, arg2, arg3, arg4) -- Line 18
	local var4 = arg4
	if not var4 then
		var4 = (arg3 - arg1.prevPos) / arg2
	end
	arg1.prevPos = arg3
	arg1.pos += arg2 * arg1.vel
	arg1.vel += (arg2) * ((arg3 + arg1.k3 * var4 - arg1.pos - arg1.k1 * arg1.vel) / math.max(arg1.k2, 1.1 * (arg2 * arg2 / 4 + arg2 * arg1.k1 / 2)))
	return arg1.pos
end
function module_upvr.setup(arg1) -- Line 29
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	module_upvr.Rotated = 0
	module_upvr.Root = arg1.HumanoidRootPart
	module_upvr.Comet = arg1.HumanoidRootPart.Comet
	module_upvr.dynamic = tbl_upvr.new(0.2, 1, 0.9, arg1.HumanoidRootPart.Position)
end
function module_upvr.loop(arg1) -- Line 36
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var5 = module_upvr
	var5.Rotated += 1 * arg1 % (-math.pi*2)
	local var6 = module_upvr.Root.CFrame * CFrame.Angles(0, module_upvr.Rotated, 0) * CFrame.new(0, 0, -6.2) * CFrame.Angles(0, (math.pi/2), 0)
	module_upvr.Comet:PivotTo(var6.Rotation + module_upvr.dynamic:Update(arg1, var6.Position))
end
function module_upvr.cleanup() -- Line 43
end
return module_upvr