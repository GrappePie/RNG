--!strict
local RunService = game:GetService("RunService")

local scriptParent = script.Parent

local imageLabel: ImageLabel = scriptParent.ImageLabel

local elapsedTime: number = 0

local function updateImageLabel(deltaTime: number): ()
	elapsedTime += deltaTime

	imageLabel.Rotation += 0.1

	local amplitude: number = 0.005

	local xOffset: number = amplitude * math.cos(elapsedTime)
	local yOffset: number = amplitude * math.sin(elapsedTime)

	imageLabel.Position = UDim2.new(0.1 + xOffset, -5, 0.55 + yOffset, 0)
end

RunService.RenderStepped:Connect(updateImageLabel)