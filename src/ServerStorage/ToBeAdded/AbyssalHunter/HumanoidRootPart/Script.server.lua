local humanoidRootPart = script.Parent
-- Configuration
local fishCount = 5
local orbitRadius = 5
local orbitSpeed = 1

-- Create Fish
for i = 1, fishCount do
	local fish = game.ServerStorage.AbyssalHunter.HumanoidRootPart.BubbleContainer.Fish1:Clone()
	fish.Anchored = false
	fish.CanCollide = false
	fish.Parent = humanoidRootPart

	-- Add attachments
	local fishAttachment = Instance.new("Attachment", fish)
	local rootAttachment = Instance.new("Attachment", humanoidRootPart)

	-- Align Position
	local alignPosition = Instance.new("AlignPosition")
	alignPosition.Attachment0 = fishAttachment
	alignPosition.Attachment1 = rootAttachment
	alignPosition.RigidityEnabled = true
	alignPosition.ReactionForceEnabled = false
	alignPosition.Parent = fish

	-- Align Orientation
	local alignOrientation = Instance.new("AlignOrientation")
	alignOrientation.Attachment0 = fishAttachment
	alignOrientation.Attachment1 = rootAttachment
	alignOrientation.RigidityEnabled = true
	alignOrientation.Parent = fish

	-- Orbit calculation
	local angle = (i / fishCount) * math.pi * 2

	game:GetService("RunService").Heartbeat:Connect(function(deltaTime)
		angle = angle + deltaTime * orbitSpeed
		local x = math.cos(angle) * orbitRadius
		local z = math.sin(angle) * orbitRadius
		local newPosition = humanoidRootPart.Position + Vector3.new(x, 0, z)
		local lookVector = (newPosition - fish.Position).Unit
		fish.CFrame = CFrame.lookAt(fish.Position, fish.Position + lookVector)
		rootAttachment.Position = Vector3.new(x, 0, z)
	end)
end
