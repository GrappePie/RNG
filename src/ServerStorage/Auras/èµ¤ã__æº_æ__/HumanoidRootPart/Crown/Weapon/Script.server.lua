local humanoidRootPart = script.Parent.Parent
local rotatingPart = script.Parent

--motoooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooor
local motor = Instance.new("Motor6D")
motor.Part0 = humanoidRootPart
motor.Part1 = rotatingPart
motor.C0 = CFrame.new(0, 0,0) * CFrame.Angles(0, 3.1415, 3.1415)
motor.Parent = humanoidRootPart

local rotationSpeed = -.6

game:GetService("RunService").Stepped:Connect(function(deltaTime)
	local angle = rotationSpeed * deltaTime
	motor.C1 = motor.C1 * CFrame.Angles(angle, 0, 0)
end)