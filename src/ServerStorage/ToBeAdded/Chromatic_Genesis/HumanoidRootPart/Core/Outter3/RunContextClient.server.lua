local particleEmitter = script.Parent
local sound = script.Parent.Parent.Parent.Song

if not particleEmitter or not sound then
	warn("ParticleEmitter or Sound not found in the parent part")
	return
end

local minSize = 2
local maxSize = 25.5
local smoothingFactor = 0.3 -- Adjust this value to control the smoothness

local function lerp(a, b, t)
	return a + (b - a) * t
end

local function updateParticleSize()
	local loudness = sound.PlaybackLoudness
	local targetSize = math.max(minSize, loudness / 10.65556)
	targetSize = math.clamp(targetSize, minSize, maxSize)

	local currentSizeValue = particleEmitter.Size.Keypoints[1].Value
	local newSizeValue = lerp(currentSizeValue, targetSize, smoothingFactor)
	particleEmitter.Size = NumberSequence.new(newSizeValue)
end

game:GetService("RunService").RenderStepped:Connect(updateParticleSize)
