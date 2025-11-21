local textLabel = script.Parent
textLabel.Text = "[ 1 in 560,000,000 ]"
local text = textLabel.Text

local function randomizeColorsAndCase()
	local newText = ""
	for i = 1, #text do
		local char = text:sub(i, i)

		if char:match("%a") then

			if math.random(1, 2) == 1 then
				char = char:upper()
			else
				char = char:lower()
			end
		end

		if char:match("%a") or char:match("%d") then -- Check if the character is a letter or number
			-- Randomly change the color of the character
			local color = math.random(1, 2) == 1 and "rgb(255,255,255)" or "rgb(0,0,0)"
			newText = newText .. string.format('<font color="%s">%s</font>', color, char)
		else
			newText = newText .. char
		end
	end
	textLabel.Text = newText
end

while true do
	randomizeColorsAndCase()
	wait(0.02)
end
