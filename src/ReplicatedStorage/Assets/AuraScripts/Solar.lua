-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved soon!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-01-02 16:15:32
-- Luau version 6, Types version 3
-- Time taken: 0.000991 seconds

local EffectManager = game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("EffectManager")
local module_upvr_3 = {}
local module_upvr_2 = require(EffectManager:WaitForChild("SecondOrderDynamics"))
local module_upvr = require(EffectManager:WaitForChild("Rotation"))
function module_upvr_3.setup(arg1) -- Line 8
	--[[ Upvalues[3]:
		[1]: module_upvr_3 (readonly)
		[2]: module_upvr_2 (readonly)
		[3]: module_upvr (readonly)
	]]
	module_upvr_3.RootPart = arg1.HumanoidRootPart
	module_upvr_3.Dynamic = module_upvr_2.new(1, 2, 1, module_upvr_3.RootPart.Position + Vector3.yAxis * 5)
	module_upvr_3.Attachment = arg1.HumanoidRootPart:FindFirstChild("spin")
	module_upvr_3.rotation = module_upvr.new(-45, module_upvr_3.Attachment.CFrame, CFrame.Angles((math.pi/2), 0, 0), true)
	module_upvr_3.Part = arg1.HumanoidRootPart.Constellation
end
function module_upvr_3.loop(arg1) -- Line 16
	--[[ Upvalues[1]:
		[1]: module_upvr_3 (readonly)
	]]
	module_upvr_3.Part.WorldCFrame = module_upvr_3.rotation:Update(arg1).Rotation + module_upvr_3.Dynamic:Update(arg1, module_upvr_3.RootPart.Position)
end
function module_upvr_3.cleanup() -- Line 22
end
return module_upvr_3