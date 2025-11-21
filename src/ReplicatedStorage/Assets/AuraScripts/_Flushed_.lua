-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved soon!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-01-02 16:15:31
-- Luau version 6, Types version 3
-- Time taken: 0.000843 seconds

local module_upvr = {}
local module_upvr_2 = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("EffectManager"):WaitForChild("Rotation"))
function module_upvr.setup(arg1) -- Line 7
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_2 (readonly)
	]]
	module_upvr.Attachment = arg1.Torso.Flushed2
	module_upvr.rotation = module_upvr_2.new(250, module_upvr.Attachment.CFrame, CFrame.Angles((math.pi/2), 0, 0), false)
end
function module_upvr.loop(arg1) -- Line 12
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.Attachment.CFrame = module_upvr.rotation:Update(arg1)
end
function module_upvr.cleanup() -- Line 16
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.Attachment = nil
	module_upvr.rotation = nil
end
return module_upvr