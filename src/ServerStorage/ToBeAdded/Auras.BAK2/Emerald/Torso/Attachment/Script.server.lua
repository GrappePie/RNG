--[[Services]]--
local RunService = game:GetService("RunService")

--[[Variables]]--
local attachment = script.Parent -- Set it to your own thing, if you ever change it.
local rotationTime = 4 -- As you requested, it completes a full turn around 2 seconds.

local initialRotation = attachment.CFrame

--[[Precomputed Values]]--
local fullRotation = math.rad(360)
local rotationRate = fullRotation / rotationTime

--[[Function]]--
local function rotateAttachment()
	local startTime = tick()
	RunService.Heartbeat:Connect(function(deltaTime)
		local elapsedTime = tick() - startTime
		local rotatio0gle = (elapsedTime % rotationTime) * rotationRate
		attachment.CFrame = initialRotation * CFrame.Angles(0, rotatio0gle, 0)
	end)
end

--[[Function Start]]--
rotateAttachment()