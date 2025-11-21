-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved soon!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-01-02 16:15:35
-- Luau version 6, Types version 3
-- Time taken: 0.002425 seconds

local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
function tbl_upvr.new(arg1, arg2, arg3, arg4) -- Line 8
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, tbl_upvr)
	setmetatable_result1.k1 = (arg2) / (math.pi * arg1)
	setmetatable_result1.k2 = (1) / (((-math.pi*2) * arg1) * ((-math.pi*2) * arg1))
	setmetatable_result1.k3 = (arg3 * arg2) / ((-math.pi*2) * arg1)
	setmetatable_result1.xp = arg4
	setmetatable_result1.y = arg4
	setmetatable_result1.yd = Vector3.new(0, 0, 0)
	return setmetatable_result1
end
function tbl_upvr.Update(arg1, arg2, arg3, arg4) -- Line 19
	local var3 = arg4
	if not var3 then
		var3 = (arg3 - arg1.xp) / arg2
	end
	arg1.xp = arg3
	arg1.y += arg2 * arg1.yd
	arg1.yd += (arg2) * ((arg3 + arg1.k3 * var3 - arg1.y - arg1.k1 * arg1.yd) / arg1.k2)
	return arg1.y
end
local module_upvr = {}
local module_upvr_2 = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("EffectManager"):WaitForChild("Rotation"))
function module_upvr.setup(arg1) -- Line 35
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: module_upvr_2 (readonly)
	]]
	module_upvr.RootPart = arg1.HumanoidRootPart
	module_upvr.Torso = arg1.Torso
	module_upvr.Sky = module_upvr.RootPart:FindFirstChild("Sky")
	;(function() -- Line 43, Named "initializeComponents"
		--[[ Upvalues[3]:
			[1]: module_upvr (copied, readonly)
			[2]: tbl_upvr (copied, readonly)
			[3]: module_upvr_2 (copied, readonly)
		]]
		if module_upvr.Sky then
			module_upvr.Dynamic = tbl_upvr.new(1, 1, 1.5, module_upvr.RootPart.Position + Vector3.yAxis * 10)
			module_upvr.SpinStar = module_upvr.Sky:FindFirstChild("Spin")
			if module_upvr.SpinStar then
				module_upvr.rotation = module_upvr_2.new(15, module_upvr.SpinStar.CFrame, CFrame.Angles((math.pi/2), 0, 0), true)
			end
			module_upvr.Cloud = module_upvr.Sky:FindFirstChild("Cloude")
			if module_upvr.Cloud then
				module_upvr.Dynamic2 = tbl_upvr.new(1, 1, 1.2, module_upvr.Cloud.Position + Vector3.yAxis * 5)
			end
			module_upvr.Sky.ChildAdded:Connect(function(arg1_2) -- Line 60
				--[[ Upvalues[3]:
					[1]: module_upvr (copied, readonly)
					[2]: module_upvr_2 (copied, readonly)
					[3]: tbl_upvr (copied, readonly)
				]]
				if arg1_2.Name == "Spin" then
					module_upvr.SpinStar = arg1_2
					module_upvr.rotation = module_upvr_2.new(15, module_upvr.SpinStar.CFrame, CFrame.Angles((math.pi/2), 0, 0), true)
				elseif arg1_2.Name == "Cloude" then
					module_upvr.Cloud = arg1_2
					module_upvr.Dynamic2 = tbl_upvr.new(1, 1, 1.2, module_upvr.Cloud.Position + Vector3.yAxis * 5)
				end
			end)
		end
	end)()
end
function module_upvr.loop(arg1) -- Line 76
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if module_upvr.Dynamic then
		if module_upvr.SpinStar and module_upvr.rotation then
			module_upvr.SpinStar.CFrame = module_upvr.rotation:Update(arg1) + module_upvr.Dynamic:Update(arg1, module_upvr.RootPart.Position)
		end
		if module_upvr.Cloud and module_upvr.Dynamic2 then
			module_upvr.Cloud.CFrame = CFrame.new(module_upvr.Dynamic2:Update(arg1, module_upvr.Torso.Position + Vector3.yAxis * 0.65))
		end
	end
end
function module_upvr.cleanup() -- Line 91
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.SpinStar = nil
	module_upvr.Cloud = nil
	module_upvr.Dynamic = nil
	module_upvr.Dynamic2 = nil
	module_upvr.rotation = nil
	module_upvr.Sky = nil
end
return module_upvr