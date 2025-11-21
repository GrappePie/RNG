local speed = 1

local progress = 0

local hoverscale = 2

local normalpos = script.Parent.Position

game:GetService("RunService").Heartbeat:Connect(function(dt)
	progress += dt * speed
	progress%=(math.pi*2)

	script.Parent.Position = normalpos + Vector3.new(0,hoverscale,0)*math.sin(progress)
end)
