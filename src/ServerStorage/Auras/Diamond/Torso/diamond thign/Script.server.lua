local RunService = game:GetService'RunService'
local rad = math.rad
local clock = os.clock
local sin = math.sin
local cos = math.cos
local Heartbeat = RunService.Heartbeat
local Angle = 90
local diamdn = script.Parent

while true do
	local t = clock()
	local sine = sin(t) * Angle
	local cosine = cos(t) * Angle
	diamdn.CFrame = CFrame.new(diamdn.Position) * CFrame.Angles(rad(sine), -0, rad(cosine))
	Heartbeat:Wait()
end
