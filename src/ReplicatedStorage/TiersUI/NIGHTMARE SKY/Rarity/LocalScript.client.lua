--!strict
local TextLabel = script.Parent

if TextLabel:IsA("TextLabel") then
	local Shadow_upvr = TextLabel:WaitForChild("Shadow")
	local Visual_upvr = TextLabel:WaitForChild("Visual")

	Shadow_upvr.Text = TextLabel.Text
	Visual_upvr.Text = TextLabel.Text

	TextLabel:GetPropertyChangedSignal("Text"):Connect(function()
		Shadow_upvr.Text = TextLabel.Text
		Visual_upvr.Text = TextLabel.Text
	end)
end