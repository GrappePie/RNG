local textLabel = script.Parent
local shakeMagnitude = 10
local shakeSpeed = 0.05

local function shakeLabel()
	local originalPosition = textLabel.Position

	while true do
		local offsetX = math.random(-shakeMagnitude, shakeMagnitude)
		local offsetY = math.random(-shakeMagnitude, shakeMagnitude)

		textLabel.Position = originalPosition + UDim2.new(0, offsetX, 0, offsetY)

		wait(shakeSpeed)
	end
end

shakeLabel()