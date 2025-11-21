local Speed = -90 -- degrees per second
game:GetService("RunService").Heartbeat:Connect(function(dt)
	script.Parent.C1 *= CFrame.Angles(math.rad(dt * Speed), 0, 0) 
end)