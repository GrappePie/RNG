local textLabel = script.Parent
local originalText = "MATRIX OVERDRIVE"
local glitchDuration = 0.1 -- How long each glitch lasts
local glitchInterval = 0.05 -- Interval between glitches
local glitchChance = 0.3 -- Chance that a character glitches (0 to 1)

local function randomCharacter()
	local chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
	return string.sub(chars, math.random(1, #chars), math.random(1, #chars))
end

local function glitchText()
	while true do
		local newText = ""

		for i = 1, #originalText do
			if math.random() < glitchChance then
				newText = newText .. randomCharacter()
			else
				newText = newText .. string.sub(originalText, i, i)
			end
		end

		textLabel.Text = newText
		wait(glitchDuration)
		textLabel.Text = originalText
		wait(glitchInterval)
	end
end

glitchText()