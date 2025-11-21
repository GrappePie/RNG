local textLabel = script.Parent
local originalText = "MUTATED"
local glitchDuration = 0.1
local glitchInterval = 0.05
local glitchChance = 0.3
local numOfGlitches = 10

local customChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_+-=<>?"

local function randomCharacter()
	return string.sub(customChars, math.random(1, #customChars), math.random(1, #customChars))
end

local function generateGlitchText()
	local glitchText = ""

	for i = 1, #originalText do
		if math.random() < glitchChance then
			glitchText = glitchText .. randomCharacter()
		else
			glitchText = glitchText .. string.sub(originalText, i, i)
		end
	end

	return glitchText
end

local function glitchText()
	local glitchCounter = 0

	while true do
		if glitchCounter < numOfGlitches then
			textLabel.Text = generateGlitchText()
			wait(glitchDuration)
			glitchCounter = glitchCounter + 1
		else
			textLabel.Text = originalText
			wait(glitchInterval)
			glitchCounter = 0
		end
	end
end

glitchText()
