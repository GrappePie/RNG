local Speed = 100 -- angles per second
game:GetService("RunService").Heartbeat:Connect(function(dt)
	script.Parent.CFrame *= CFrame.Angles(0, math.rad(dt * Speed), 0) 
end)