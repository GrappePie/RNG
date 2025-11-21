-- by sky 
local Speed = 125 
local ShakeMagnitude = 2 
local runService = game:GetService("RunService")

local originalPosition = script.Parent.Position 
local currentRotation = 0 

runService.Heartbeat:Connect(function(dt)
	currentRotation = currentRotation + dt * Speed
	local rotation = CFrame.Angles(0, math.rad(currentRotation), 0)
	local shakeX = (math.random() - 0.5) * 2 * ShakeMagnitude
	local shakeZ = (math.random() - 0.5) * 2 * ShakeMagnitude
	local shakeOffset = CFrame.new(shakeX, 0, shakeZ)
	script.Parent.CFrame = CFrame.new(originalPosition) * rotation * shakeOffset
end)