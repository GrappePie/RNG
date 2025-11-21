local function getColorFromTime()
	local i = tick() % 6 -- Use a longer period for smoother transitions
	local t = (i % 1) -- Normalize the time to a value between 0 and 1

	-- Define a lighter hue range to ensure colors stay lighter
	local h = (t * 0.6) -- Hue value ranging from 0 to 0.6 (avoiding darker hues)
	local s = 0.99 -- Saturation (fully saturated)
	local v = 0.72 -- Brightness (fully bright)

	return Color3.fromHSV(h, s, v)

end

while true do
	local clr = getColorFromTime()
	script.Parent.Color = ColorSequence.new(clr)
	task.wait()
end