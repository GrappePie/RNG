--!strict
while task.wait() do
	script.Parent.CFrame = script.Parent.CFrame * CFrame.Angles(0, math.rad(0.2), 0)
end