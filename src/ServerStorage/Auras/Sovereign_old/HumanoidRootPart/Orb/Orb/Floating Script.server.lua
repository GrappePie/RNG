local part = script.Parent
local startPos = part.Position

while true do
	wait()
	part.Position = startPos + Vector3.new(0,math.sin(tick()),0)
end