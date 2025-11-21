local textLabel = script.Parent:WaitForChild("TextLabel")
local text = script.Parent.Text
textLabel.Text = text

script.Parent:GetPropertyChangedSignal("Text"):Connect(function()
	textLabel.Text = script.Parent.Text
end)