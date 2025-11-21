local attachments = {
	script.Parent.Spinning1,
	script.Parent.Spinning2,
	script.Parent.Spinning3
}

while wait() do
	local radius = 3.5
	local speed = 0.5

	local angleOffset = math.pi / 2
	local time = tick() * speed

	for i, attachment in ipairs(attachments) do
		local angle = time + angleOffset + (i - 1) * (2 * math.pi / 3)
		local x = math.cos(angle) * radius
		local y = 0.1
		local z = math.sin(angle) * radius
		attachment.Position = Vector3.new(-x, y, -z)
	end
end
