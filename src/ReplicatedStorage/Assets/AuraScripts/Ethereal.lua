-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved soon!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-01-02 16:15:33
-- Luau version 6, Types version 3
-- Time taken: 0.001967 seconds

local module_upvr = {}
function module_upvr.setup(arg1) -- Line 3
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.Torso = arg1:WaitForChild("Torso")
	module_upvr.HumanoidRootPart = arg1:WaitForChild("HumanoidRootPart")
	module_upvr.Sound = module_upvr.Torso:WaitForChild("Singularity")
	module_upvr.Animator = module_upvr.HumanoidRootPart.Parent:WaitForChild("Humanoid"):WaitForChild("Animator")
	module_upvr.ExplodeVFXs = module_upvr.HumanoidRootPart:WaitForChild("explode")
	module_upvr.appearVFXs = module_upvr.ExplodeVFXs:WaitForChild("appear")
	module_upvr.x = 1
	module_upvr.Sound:Play()
	module_upvr.Sound.TimePosition = 18
	module_upvr.triggered = false
end
function explode() -- Line 19
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.ExplodeVFXs.fall.fallingstar:Emit(1)
	task.wait(1.5)
	if not module_upvr.ExplodeVFXs then
	else
		module_upvr.ExplodeVFXs.slash:Emit(25)
		module_upvr.ExplodeVFXs.slashblack:Emit(25)
		module_upvr.ExplodeVFXs.stars:Emit(35)
		module_upvr.ExplodeVFXs.starsblack:Emit(35)
		module_upvr.ExplodeVFXs.blocks:Emit(20)
		module_upvr.ExplodeVFXs.wave:Emit(1)
		module_upvr.ExplodeVFXs.wavefloor:Emit(1)
		module_upvr.ExplodeVFXs.wavefloor2:Emit(5)
		module_upvr.ExplodeVFXs.fire:Emit(2)
		for _, v in ipairs(module_upvr.appearVFXs:GetDescendants()) do
			if v:IsA("ParticleEmitter") or v:IsA("Trail") or v:IsA("Beam") then
				v.Enabled = true
			end
		end
		module_upvr.anim = module_upvr.Animator:LoadAnimation(script:WaitForChild("Ethereal_fly"))
		module_upvr.anim.Looped = true
		module_upvr.anim.Priority = Enum.AnimationPriority.Action
		module_upvr.anim:Play()
	end
end
function module_upvr.loop(arg1) -- Line 48
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if not module_upvr.Torso:FindFirstChild("spin1") or not module_upvr.Torso:FindFirstChild("spin2") or not module_upvr.Torso:FindFirstChild("spin3") then
	else
		local var7 = module_upvr
		var7.x += arg1
		module_upvr.Torso.spin1.CFrame = CFrame.Angles(0, math.rad(module_upvr.x * 90), 0)
		module_upvr.Torso.spin2.CFrame = CFrame.Angles(0, math.rad(module_upvr.x * 120), 0)
		module_upvr.Torso.spin3.CFrame = CFrame.Angles(0, math.rad(module_upvr.x * -72), 0)
		if module_upvr.triggered == true then
			module_upvr.appearVFXs.balls.CFrame = CFrame.Angles(0, math.rad(module_upvr.x * 120), math.sin(module_upvr.x) / 20)
		end
		if 55.2 <= module_upvr.Sound.TimePosition and module_upvr.triggered == false then
			module_upvr.triggered = true
			explode()
		end
	end
end
function module_upvr.cleanup() -- Line 67
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.anim:Stop()
end
return module_upvr