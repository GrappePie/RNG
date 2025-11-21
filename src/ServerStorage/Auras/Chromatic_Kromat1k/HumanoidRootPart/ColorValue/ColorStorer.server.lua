local thing = script.Parent

while true do
	local t = 3
	local hue = tick() % t / t
	local colorrr = Color3.fromHSV(hue, 1, 1)
	thing.Value = colorrr
	task.wait()
end
