local RunService = game:GetService("RunService")

local Lighting = game:GetService("Lighting")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local function updateTime()
	local currentTime = Lighting.ClockTime
	local timeInterval = 0.0015
	local newTime = currentTime + timeInterval

	if newTime >= 24 then
		newTime = newTime - 24
	end

	Lighting.ClockTime = newTime

	if Lighting.ClockTime >= 6 and Lighting.ClockTime < 18 then
		ReplicatedStorage.Server0o:SetAttribute("CurrentTime", "Day")
	else
		ReplicatedStorage.Server0o:SetAttribute("CurrentTime", "Night")
	end
end

RunService.Heartbeat:Connect(updateTime)