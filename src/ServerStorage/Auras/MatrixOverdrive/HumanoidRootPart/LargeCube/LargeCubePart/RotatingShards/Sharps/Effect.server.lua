game:GetService("RunService").Heartbeat:Connect(function(dt)
	local rot = 4
	script.Parent.CFrame *= CFrame.Angles(0, rot * dt, 0)
end)