-- What the sigma?

local v1 = game:GetService("TweenService")
local v2 = Tween0o.new(0.7, Enum.EasingStyle.Quart, Enum.EasingDirection.Out, 0, true, 0)
v1:Create(script.Parent:WaitForChild("Up"), v2, {
	["Position"] = UDim2.fromScale(0, 0)
}):Play()
v1:Create(script.Parent:WaitForChild("Down"), v2, {
	["Position"] = UDim2.fromScale(0, 0.9)
}):Play()
task.wait(1)
script.Parent.Enabled = false