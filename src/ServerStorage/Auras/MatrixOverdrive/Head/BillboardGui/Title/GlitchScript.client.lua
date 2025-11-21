local textLabel = script.Parent
local originalText = "MATRIX OVERDRIVE"
local glitchChance = 0.3
local glitchDuration = 0.1
local glitchInterval = 0.05

local customChars = "a%B3c4,./1(2#213"

local function randomCharacter()
	return customChars:sub(math.random(1, #customChars), math.random(1, #customChars))
end

local function glitchText()
	while true do
		local newText = ""
		for i = 1, #originalText do
			newText = newText .. (math.random() < glitchChance and randomCharacter() or originalText:sub(i, i))
		end
		textLabel.Text = newText
		wait(glitchDuration)
		textLabel.Text = originalText
		wait(glitchInterval)
	end
end

glitchText()
