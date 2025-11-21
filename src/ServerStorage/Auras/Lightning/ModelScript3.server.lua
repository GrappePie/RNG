-- Edit Body Properties under the script
-- Change what to follow here
local RunService = game:GetService("RunService")

task.wait(0.5)
local MainPart, ToFollow = script.Parent.Cloud3, script.Parent.CloudHold3
local NewPosition, NewGyro = script.BodyPosition:Clone(), script.BodyGyro:Clone()

NewPosition.Parent, NewGyro.Parent = MainPart, MainPart
RunService.Heartbeat:Connect(function()
	NewPosition.Position, NewGyro.CFrame = ToFollow.Position, ToFollow.CFrame
end)