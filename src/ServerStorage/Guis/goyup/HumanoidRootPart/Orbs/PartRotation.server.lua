local RunService = game:GetService("RunService")
local Heartbeat = RunService.Heartbeat

function SmoothWait(Number) --Function written by: Stellabotrus
	Number = Number or 0
	repeat
		Number = Number - Heartbeat:Wait()
	until Number <= 0
end

while true do
	script.Parent.CFrame = script.Parent.CFrame * CFrame.fromEulerAnglesXYZ(0,-0.025,0)-- Change 6 to change speed
	SmoothWait(0.01)
end
