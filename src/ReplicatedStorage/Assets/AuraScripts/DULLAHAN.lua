-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved soon!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-01-02 16:15:29
-- Luau version 6, Types version 3
-- Time taken: 0.002720 seconds

local IdleAnim_upvr = script:WaitForChild("IdleAnim")
local Ru0im_upvr = script:WaitForChild("Ru0im")
local module_upvr = {}
function module_upvr.setup(arg1) -- Line 9
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: Ru0im_upvr (readonly)
		[3]: IdleAnim_upvr (readonly)
	]]
	module_upvr.humanoid = arg1:FindFirstChildOfClass("Humanoid")
	module_upvr.HumanoidRootPart = arg1:FindFirstChild("HumanoidRootPart")
	local var4
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var4 = module_upvr
		return var4.HumanoidRootPart
	end
	if not module_upvr.humanoid or not INLINED() then
		var4 = "Humanoid or HumanoidRootPart not found!"
		warn(var4)
	else
		var4 = module_upvr.HumanoidRootPart.Horse.AnimationController:LoadAnimation(Ru0im_upvr)
		module_upvr.HorseFlyingAnimationTrack = var4
		var4 = module_upvr
		if not var4.HorseFlyingAnimationTrack then
			var4 = "Failed to load HorseFlying animation!"
			warn(var4)
			return
		end
		var4 = module_upvr
		var4 = true
		var4.HorseFlyingAnimationTrack.Looped = var4
		var4 = module_upvr
		var4 = Enum.AnimationPriority.Movement
		var4.HorseFlyingAnimationTrack.Priority = var4
		if 0 >= module_upvr.HorseFlyingAnimationTrack.Length then
			var4 = false
		else
			var4 = true
		end
		module_upvr.HorseFlyingLoaded = var4
		module_upvr.HorseFlyingStartTime = os.time()
		module_upvr.HorseIdleAnimationTrack = module_upvr.HumanoidRootPart.Horse.AnimationController:LoadAnimation(IdleAnim_upvr)
		if not module_upvr.HorseIdleAnimationTrack then
			warn("Failed to load HorseIdle animation!")
			return
		end
		module_upvr.HorseIdleAnimationTrack.Priority = Enum.AnimationPriority.Idle
		module_upvr.HorseIdleAnimationTrack:Play()
		if 0 >= module_upvr.HorseIdleAnimationTrack.Length then
		else
		end
		module_upvr.HorseIdleLoaded = true
		module_upvr.HorseIdleStartTime = os.time()
		print("Setup complete. Animations loaded successfully.")
	end
end
function module_upvr.loop(arg1) -- Line 44
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: Ru0im_upvr (readonly)
		[3]: IdleAnim_upvr (readonly)
	]]
	if not module_upvr.humanoid then
	else
		if 0 < module_upvr.humanoid.MoveDirection.Magnitude then
			if not module_upvr.HorseFlyingAnimationTrack.IsPlaying then
				module_upvr.HorseFlyingAnimationTrack:Play()
				-- KONSTANTWARNING: GOTO [40] #28
			end
		elseif module_upvr.HorseFlyingAnimationTrack.IsPlaying then
			module_upvr.HorseFlyingAnimationTrack:Stop()
		end
		if not module_upvr.HorseFlyingLoaded then
			if 1 < os.time() - module_upvr.HorseFlyingStartTime then
				module_upvr.HorseFlyingStartTime = os.time()
				local any_LoadAnimation_result1 = module_upvr.humanoid:LoadAnimation(Ru0im_upvr)
				if 0 < any_LoadAnimation_result1.Length then
					module_upvr.HorseFlyingAnimationTrack = any_LoadAnimation_result1
					module_upvr.HorseFlyingLoaded = true
				end
			end
		end
		if not module_upvr.HorseIdleLoaded then
			if 1 < os.time() - module_upvr.HorseIdleStartTime then
				module_upvr.HorseIdleStartTime = os.time()
				local any_LoadAnimation_result1_2 = module_upvr.HumanoidRootPart.Horse.AnimationController:LoadAnimation(IdleAnim_upvr)
				if 0 < any_LoadAnimation_result1_2.Length then
					module_upvr.HorseIdleAnimationTrack = any_LoadAnimation_result1_2
					module_upvr.HorseIdleAnimationTrack:Play()
					module_upvr.HorseIdleLoaded = true
				end
			end
		end
	end
end
function module_upvr.cleanup() -- Line 81
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if module_upvr.HorseFlyingAnimationTrack then
		module_upvr.HorseFlyingAnimationTrack:Stop()
		module_upvr.HorseFlyingAnimationTrack:Destroy()
		module_upvr.HorseFlyingAnimationTrack = nil
	end
	if module_upvr.HorseIdleAnimationTrack then
		module_upvr.HorseIdleAnimationTrack:Stop()
		module_upvr.HorseIdleAnimationTrack:Destroy()
		module_upvr.HorseIdleAnimationTrack = nil
	end
end
return module_upvr