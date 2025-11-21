local animation = script:WaitForChild("Animation")
local humanoid = script.Parent:WaitForChild("Humanoid")
local idle = humanoid:LoadAnimation(animation)
idle:Play()
idle.Looped = true