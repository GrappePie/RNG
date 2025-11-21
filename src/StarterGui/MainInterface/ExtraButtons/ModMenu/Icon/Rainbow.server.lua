local speed = 0.025
local part = script.Parent

function zz(X) return math.acos(math.cos(X*math.pi))/math.pi end

count = 0

while game:GetService("RunService").Heartbeat:Wait() do
	part.ImageColor3 = Color3.fromHSV(zz(count),1,1)
	count = count + 0.01
	task.wait(speed)
end