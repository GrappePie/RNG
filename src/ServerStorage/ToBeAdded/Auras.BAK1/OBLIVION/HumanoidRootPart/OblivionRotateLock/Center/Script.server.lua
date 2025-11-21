local Speed = 330 -- degrees per second
game:GetService("RunService").Heartbeat:Connect(function(dt)
	script.Parent.C1 *= CFrame.Angles(0, math.rad(dt * Speed), 0) 
end)