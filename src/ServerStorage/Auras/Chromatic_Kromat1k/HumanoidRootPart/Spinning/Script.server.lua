local RunService = game:GetService("RunService")
part = script.Parent
local num = 10
local song = script.Parent.Parent.Song

RunService.Heartbeat:Connect(function(dt)
	local Speed = num * math.random(1, 100) + song.PlaybackLoudness
	
	if Speed > 500 then
		Speed = Speed - 499
	end

	local rotatio0gle = math.rad(Speed * dt)
	local currentCFrame = part.CFrame
	local newCFrame = currentCFrame * CFrame.Angles(0, rotatio0gle, 0)

	part.CFrame = newCFrame
end)