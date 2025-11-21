local Speed = 230 -- degrees per second
game:GetService("RunService").Heartbeat:Connect(function(dt)
	script.Parent.C0 *= CFrame.Angles(0, math.rad(dt * Speed), 0) 
end)