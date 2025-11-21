local part = script.Parent
local minRotationSpeed = -13 -- Minimum rotation speed in degrees per frame
local maxRotationSpeed = -1 -- Maximum rotation speed in degrees per frame

while wait() do
	-- Generate random rotation speeds for each axis
	local rotationX = math.random(minRotationSpeed, maxRotationSpeed)
	local rotationY = math.random(minRotationSpeed, maxRotationSpeed)
	local rotationZ = math.random(minRotationSpeed, maxRotationSpeed)

	-- Apply the rotation to the part
	part.CFrame = part.CFrame * CFrame.Angles(math.rad(rotationX), math.rad(rotationY), math.rad(rotationZ))
end
