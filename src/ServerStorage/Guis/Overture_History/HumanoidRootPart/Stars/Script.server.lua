local RunService = game:GetService("RunService")

local initialSpeed = 275 -- Initial speed in degrees per second
local targetSpeed = 165 -- Target speed in degrees per second
local tweenTime = 3.2 -- Time in seconds to tween to the target speed
local holdInitialTime = 15 -- Time in seconds to hold the initial speed
local holdTargetTime = 3.2 -- Time in seconds to hold the target speed

local rotationSpeed = initialSpeed
local tweenStartTime = tick()
local isTweening = false -- Flag to check if we are tweening or holding
local holdingTime = holdInitialTime -- Duration for holding the speed

-- Function to update the rotation based on speed
local function updateRotation(dt, speed)
	script.Parent.CFrame = script.Parent.CFrame * CFrame.Angles(0, math.rad(dt * speed), 0)
end

-- Function to calculate the tweened speed
local function getTweenedSpeed(startSpeed, endSpeed, startTime, tweenTime)
	local elapsed = tick() - startTime
	local progress = math.clamp(elapsed / tweenTime, 0, 1)
	return startSpeed + (endSpeed - startSpeed) * progress
end

-- Main loop
RunService.Heartbeat:Connect(function(dt)
	local elapsedTime = tick() - tweenStartTime

	if isTweening then
		-- During tweening phase
		if elapsedTime < tweenTime then
			rotationSpeed = getTweenedSpeed(rotationSpeed, 
				(rotationSpeed == initialSpeed and targetSpeed or initialSpeed), 
				tweenStartTime, tweenTime)
		else
			-- After tweening, switch to holding phase
			tweenStartTime = tick()
			isTweening = false
			holdingTime = (rotationSpeed == targetSpeed and holdInitialTime or holdTargetTime)
			rotationSpeed = (rotationSpeed == targetSpeed and initialSpeed or targetSpeed)
		end
	else
		-- During holding phase
		if elapsedTime >= holdingTime then
			-- Switch to tweening
			tweenStartTime = tick()
			isTweening = true
		end
	end

	-- Update rotation based on the current speed
	updateRotation(dt, rotationSpeed)
end)
