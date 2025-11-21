local spinning = script.Parent
while true do
	local speed = -0.05
	spinning.CFrame *= CFrame.fromEulerAngles(0,speed,0)
	task.wait(0.00)
end