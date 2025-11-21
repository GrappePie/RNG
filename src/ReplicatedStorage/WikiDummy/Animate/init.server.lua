local humanoid = script.Parent:WaitForChild("Humanoid")
local animation = script:WaitForChild("idle"):WaitForChild("Animation1")
local idle = humanoid:LoadAnimation(animation)
idle:Play()
idle.Looped = true