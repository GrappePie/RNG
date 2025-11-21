-- couldn't use constraint to get it spin a certain way, apologies if this is difficult to format

local part = script.Parent
local a = 0
local b = 0
repeat
	part.Rotation = Vector3.new(b, a, b)
	wait(.00001)
	a = a-1.5
	b = b-1.5
until pigs == 1