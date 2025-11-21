local thing = script.Parent

while true do
	local t = 3
	local hue = tick() % t / t
	local brightness = 1.5  -- Adjust this value to make colors brighter
	local colorrr = Color3.fromHSV(hue, 1, brightness)
	thing.Color = colorrr
	task.wait()
end
