--!strict
local RunService = game:GetService("RunService")

local rotationSpeed = 85

local lastTick = tick()

local isWaiting = false

local waitTime = 3

local part = script.Parent

local s = nil

local rotatePart = function(angle: number, speed: number)
	local currentCFrame = part.CFrame
	local rotationCFrame = CFrame.Angles(0, math.rad(angle * speed), 0)
	part.CFrame = currentCFrame * rotationCFrame
end

local lerp = function(a: number, b: number, t: number)
	t = math.clamp(t, 0, 1)
	return a + (b - a) * t
end

local heartbeatConnection = RunService.Heartbeat

local onHeartbeat = function(deltaTime)
	if not part.Parent then
		heartbeatConnection:Disconnect()
		return
	end

	local timeElapsed = tick() - lastTick

	if isWaiting then
		if timeElapsed < 5 then
			local targetSpeed = rotationSpeed
			if targetSpeed == 85 then
				targetSpeed = 70
			else
				targetSpeed = 85
			end
			rotationSpeed = lerp(rotationSpeed, targetSpeed, timeElapsed / 5)
		else
			lastTick = tick()
			isWaiting = false
			waitTime = 3
			local currentSpeed = rotationSpeed
			if currentSpeed == 70 then
				rotationSpeed = 85
			else
				rotationSpeed = 70
			end
		end
	else
		if timeElapsed >= waitTime then
			lastTick = tick()
			isWaiting = true
		end
	end

	rotatePart(deltaTime, rotationSpeed)
end

heartbeatConnection = heartbeatConnection:Connect(onHeartbeat)
s = heartbeatConnection