local textLabel = script.Parent
local originaltext = textLabel.Text
while true do
	textLabel.Text = originaltext
	for i = 0, 4, 1 do
		textLabel.Text = "AbOMi n!t% o N"
		wait(0.03)
		textLabel.Text = "ABOMiN!t%o#"
		wait(0.03)
		textLabel.Text = "abOmINit%0#n"
		wait(0.03)
	end
	textLabel.Text = originaltext
	wait(0.04)
end
	