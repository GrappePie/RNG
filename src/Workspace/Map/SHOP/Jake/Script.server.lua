--!strict
local Character: any = script.Parent

assert(
	Character,
	("Parent instance is nil"):format()
)

local humanoid: Humanoid = Character:WaitForChild("Humanoid") :: Humanoid
local animator: Animator = humanoid:WaitForChild("Animator") :: Animator

local animation: Animation = script:WaitForChild("Animation") :: Animation

local loadedAnimation: AnimationTrack = animator:LoadAnimation(animation)

task.wait()

local animationLength: number = loadedAnimation.Length
local playbackSpeed: number = 0

--[[
	while currentFrame <= animationLength do
	    -- Loop logic
	end
]]

--loadedAnimation:AdjustSpeed(playbackSpeed)
loadedAnimation:Play()