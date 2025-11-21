local particleEmitter = script.Parent
particleEmitter.Enabled = true

while true do
	wait(0.2)
	particleEmitter.Enabled = not particleEmitter.Enabled
end
