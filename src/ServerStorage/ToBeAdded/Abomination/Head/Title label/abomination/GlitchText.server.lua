local textLabel = script.Parent
local originaltext = textLabel.Text
while true do
	textLabel.Text = originaltext
	for i = 0, 4, 1 do
		textLabel.Text = "AB0M%N@AT1ON"
		wait(0.03)
		textLabel.Text = "aB0m1NAT1()N"
		wait(0.03)
		textLabel.Text = "@BoM|N@TioN"
		wait(0.03)
		textLabel.Text = "A30M%N@T1ON"
		wait(0.03)
	end
	textLabel.Text = originaltext
	wait(0.04)
end
	