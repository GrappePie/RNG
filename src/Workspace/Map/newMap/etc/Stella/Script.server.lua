--!strict
local Character = script.Parent

local Animation = script:WaitForChild("Animation")

local Humanoid = Character:WaitForChild("Humanoid")

local Animator = Humanoid:WaitForChild("Animator")

local AnimationTrack = Animator:LoadAnimation(Animation)
AnimationTrack:Play()