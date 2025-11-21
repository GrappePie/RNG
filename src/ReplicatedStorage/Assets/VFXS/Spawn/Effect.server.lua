--!strict
local SpawnMain = script.Parent

if string.find(SpawnMain:GetFullName(), "Workspace") then
	local Sound = SpawnMain.Sound

	Sound:Play()

	local _EnableParticles = function(boolean: boolean)
		for iteration: number, value: ParticleEmitter in SpawnMain:GetDescendants() do
			if value:IsA("ParticleEmitter") then
				value.Enabled = boolean
			end
		end
	end

	_EnableParticles(true)

	Sound.Ended:Wait()

	_EnableParticles(false)

	task.wait(10)

	SpawnMain:Destroy()
end