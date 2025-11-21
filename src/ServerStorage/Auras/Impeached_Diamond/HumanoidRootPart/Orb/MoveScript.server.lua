-- Place this script inside the part you want to move

local part = script.Parent
local amplitude = 4 -- Adjust the size of the figure-eight
local speed = 0.6 -- Adjust the speed of the motion
local offset = part.Position

-- Function to calculate the 0inity symbol path
local function getPosition(t)
	local x = amplitude * math.sin(t)
	local y = amplitude * math.sin(t) * math.cos(t)
	local z = 0
	return Vector3.new(x, y, z) + offset
end

-- 0inite loop to move the part
while true do
	local currentTime = tick() * speed
	part.Position = getPosition(currentTime)
	wait() -- Adjust the wait time for smoother motion
end