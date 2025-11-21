local attachments = {
	script.Parent.a,
	script.Parent.a1,
}

while wait() do
	local radius = 16
	local speed = 0.8

	local angleOffset = math.pi / 2
	local time = tick() * speed

	for i, attachment in ipairs(attachments) do
		local angle = time + angleOffset + (i - 1) * (2 * math.pi / 3)
		local x = math.cos(angle) * radius
		local y = 6
		local z = math.sin(angle) * radius
		attachment.Position = Vector3.new(-x, y, -z)
	end
end
