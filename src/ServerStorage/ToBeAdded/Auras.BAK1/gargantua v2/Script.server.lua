local humanoid = script.Parent:WaitForChild("Humanoid")
local loaded = humanoid:LoadAnimation(script.Animation)
loaded.Looped = true
loaded:Play()