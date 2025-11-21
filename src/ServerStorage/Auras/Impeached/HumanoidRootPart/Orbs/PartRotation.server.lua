local centerPart = script.Parent
local Orb1 = centerPart.Orb1
local Orb2 = centerPart.Orb2
local Orb3 = centerPart.Orb3
local rotationSpeed = math.rad(5)

local function rotateAttachment(attachment, height, angle)
	local offset = attachment.Position - centerPart.Position
	local rotationMatrix = CFrame.Angles(0, angle, 0)
	local rotatedOffset = rotationMatrix:VectorToWorldSpace(Vector3.new(offset.X, 0, offset.Z))
	attachment.Position = centerPart.Position + rotatedOffset + Vector3.new(0, height, 0)
end

while true do
	rotateAttachment(Orb1, 0, rotationSpeed)
	rotateAttachment(Orb2, 0, rotationSpeed)
	rotateAttachment(Orb3, 0, rotationSpeed)
	task.wait()
end