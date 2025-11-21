-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved soon!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-01-02 16:15:30
-- Luau version 6, Types version 3
-- Time taken: 0.001620 seconds

local Animation_upvr = script:WaitForChild("Animation")
local module_upvr = {}
function module_upvr.setup(arg1) -- Line 8
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: Animation_upvr (readonly)
	]]
	module_upvr.humanoid = arg1:FindFirstChildOfClass("Humanoid")
	local var3
	if not module_upvr.humanoid then
	else
		var3 = module_upvr.humanoid:LoadAnimation(Animation_upvr)
		module_upvr.AnimationTrack = var3
		var3 = module_upvr
		var3.AnimationTrack:Play()
		if module_upvr.AnimationTrack.Length == 0 then
			var3 = false
		else
			var3 = true
		end
		module_upvr.Loaded = var3
		var3 = os.time()
		module_upvr.StartTime = var3
	end
end
function module_upvr.loop(arg1) -- Line 19
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: Animation_upvr (readonly)
	]]
	if module_upvr.Loaded then
	else
		local var4
		if 1 < os.time() - module_upvr.StartTime then
			var4 = os.time()
			module_upvr.StartTime = var4
			var4 = module_upvr.humanoid:LoadAnimation(Animation_upvr)
			module_upvr.AnimationTrack = var4
			var4 = module_upvr
			var4.AnimationTrack:Play()
			if module_upvr.AnimationTrack.Length == 0 then
				var4 = false
			else
				var4 = true
			end
			module_upvr.Loaded = var4
		end
	end
end
function module_upvr.cleanup() -- Line 32
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if module_upvr.AnimationTrack and module_upvr.AnimationTrack:IsA("AnimationTrack") then
		module_upvr.AnimationTrack:Stop()
		module_upvr.AnimationTrack:Destroy()
		module_upvr.AnimationTrack = nil
	end
end
return module_upvr