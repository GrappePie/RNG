--!strict
local isDescendantOfWorkspace = script:IsDescendantOf(workspace)
if not isDescendantOfWorkspace then
	return
end

pcall(function()
	local Modules = game.ReplicatedStorage:WaitForChild("Modules")
	local CameraShaker = require(Modules.CameraShaker)

	local cameraShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCFrame)
		game.Workspace.CurrentCamera.CFrame = game.Workspace.CurrentCamera.CFrame * shakeCFrame
	end)

	cameraShake:Start()

	local function emitParticlesAndPlaySounds(parent)
		for _, descendant in ipairs(parent:GetDescendants()) do
			if descendant:IsA("ParticleEmitter") then
				descendant:Emit(descendant:GetAttribute("EmitCount"))
			elseif descendant:IsA("Sound") then
				descendant:Play()
			end
		end
	end

	emitParticlesAndPlaySounds(script.Parent.Slash)
	emitParticlesAndPlaySounds(script.Parent.Ground["2_ground_1"])

	local function shakeCamera(ground, shakeMagnitude: any)
		local magnitude = shakeMagnitude and math.clamp(game.Workspace.CurrentCamera.CFrame - math.clamp, 0, 6) or math.clamp(--[[shakeMagnitude]]0, 0, 6)
		cameraShake:ShakeOnce(magnitude, 24, 0.05, shakeMagnitude and 0.9 or 0.3)
	end

	shakeCamera(script.Parent.Ground["2_ground_1"])
	task.wait(0.3)
	emitParticlesAndPlaySounds(script.Parent.Ground["2_ground_2"])
	shakeCamera(script.Parent.Ground["2_ground_2"])
	task.wait(0.3)
	emitParticlesAndPlaySounds(script.Parent.Ground["2_ground_3"])
	shakeCamera(script.Parent.Ground["2_ground_3"])
	task.wait(0.5)
	emitParticlesAndPlaySounds(script.Parent.Ground["2_ground_4"])
	shakeCamera(script.Parent.Ground["2_ground_4"], true)
end)