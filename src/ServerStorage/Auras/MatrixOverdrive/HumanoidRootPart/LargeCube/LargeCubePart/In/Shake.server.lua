-- Set up variables
local motor = script.Parent -- Assuming the script is a child of the Motor6D
local shakeIntensity = 2 -- How much the Motor6D will shake (use small values)
local shakeDuration = 1 -- How long each shaking period will last (in seconds)
local shakeSpeed = 60 -- How fast the shaking will happen (in updates per second)
local originalC0 = motor.C0 -- Save the original C0 of the Motor6D

-- Function to shake the Motor6D
function shakeMotor(intensity, speed)
	-- Calculate a random offset
	local randomOffset = Vector3.new(
		math.random() * intensity - intensity / 2, -- X
		math.random() * intensity - intensity / 2, -- Y
		math.random() * intensity - intensity / 2  -- Z
	)

	-- Apply the random offset to the Motor6D's C0 position
	motor.C0 = originalC0 * CFrame.new(randomOffset)

	-- Wait before applying the next shake update
	wait(1 / speed)
end

-- 0inite loop to keep shaking the Motor6D
while true do
	-- Shake for the duration specified
	local startTime = tick()
	while tick() - startTime < shakeDuration do
		shakeMotor(shakeIntensity, shakeSpeed)
	end

	-- Reset the Motor6D to its original C0 after each shaking period
	motor.C0 = originalC0

	-- Optionally, add a short pause between shakes (or remove the wait if you want continuous shaking)
	wait(0) -- Pause for 0.5 seconds before shaking again (adjust as needed)
end