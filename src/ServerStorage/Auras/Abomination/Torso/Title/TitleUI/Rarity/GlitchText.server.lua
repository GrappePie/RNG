local textLabel = script.Parent
local originaltext = textLabel.Text
while true do
	textLabel.Text = originaltext
	for i = 0, 4, 1 do
		textLabel.Text = "DeV - eXcLuSive"
		wait(0.03)
		textLabel.Text = "d3V - exc1uS1v3"
		wait(0.03)
		textLabel.Text = "DEV - 3𝑥ClUsiｖe"
		wait(0.03)
	end
	textLabel.Text = originaltext
	wait(0.04)
end
	