local textLabel = script.Parent
textLabel.Text = "[ o p p r e s s i o n ]"
local text = textLabel.Text

local function randomizeColorsAndCase()
	local newText = ""
	for i = 1, #text do
		local char = text:sub(i, i)

		if math.random(1, 2) == 1 then
			char = char:upper()
		else
			char = char:lower()
		end

		local color = math.random(1, 2) == 1 and "rgb(255, 255, 255)" or "rgb(0, 0, 0)"
		newText = newText .. string.format('<font color="%s">%s</font>', color, char)
	end
	textLabel.Text = newText
end

while true do
	randomizeColorsAndCase()
	wait(0.02)
end
