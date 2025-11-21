while true do
	local thing = script.Parent

	while task.wait() do
		local t = 3; 
		local hue = tick() % t / t
		local colorrr = Color3.fromHSV(hue, 1, 1)
		thing.TextColor3 = colorrr
	end
	task.wait()
end