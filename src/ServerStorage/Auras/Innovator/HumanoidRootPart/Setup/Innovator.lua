--!strict
type ModuleBase = {
	setup: any,
	loop: any,
	cleanup: any,

	loaded: boolean,
	startTime: number,

	animator: Animator,
	animationTrack: AnimationTrack
}

local Animation = script:WaitForChild("CubeAnim")

local module = {} :: ModuleBase

function module.setup(animator)
	module.animator = animator :: Animator

	module.animationTrack = animator:LoadAnimation(Animation)

	module.animationTrack:Play()

	module.loaded = module.animationTrack.Length > 0
end

function module.loop()
	if not module.loaded then
		-- module.animationTrack.Looped = true
		if os.time() - module.startTime > 1 then
			module.startTime = os.time()

			module.setup(module.animator)
		end
	end
end

function module.cleanup()
	if module.animationTrack then
		module.animationTrack:Stop()
		module.animationTrack:Destroy()

		module.animationTrack = nil :: any
	end
end

return module