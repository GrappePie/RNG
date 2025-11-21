local minRotation = math.rad(140)
local maxRotation = math.rad(180)

-- Function to get a random angle and direction for an axis
local function getRandomRotation()
	local randomAngle = math.random(minRotation, maxRotation) -- Get a random angle between 140 and 180 degrees
	local randomDirection = math.random(1, 2) == 1 and -1 or 1 -- Randomly choose -1 or 1 for direction
	return randomAngle * randomDirection
end

-- Connect to the Heartbeat event to continuously apply random rotations
game:GetService("RunService").Heartbeat:Connect(function(dt)
	-- Get random rotations for each axis
	local rotationX = getRandomRotation()
	local rotationY = getRandomRotation()
	local rotationZ = getRandomRotation()

	-- Apply the random rotations to C1
	script.Parent.C1 *= CFrame.Angles(rotationX * dt, rotationY * dt, rotationZ * dt)
end)