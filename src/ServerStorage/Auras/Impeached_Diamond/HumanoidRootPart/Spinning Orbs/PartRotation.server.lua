local part = script.Parent 
local rotationSpeed = 125 
local currentOrientation = part.Orientation
local function updateOrientation(deltaTime)
	local newOrientation = currentOrientation + Vector3.new(0, rotationSpeed * deltaTime, 0)
	part.Orientation = newOrientation
	currentOrientation = newOrientation
end
game:GetService("RunService").RenderStepped:Connect(updateOrientation)

