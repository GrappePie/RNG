-- Variables
local part = script.Parent -- Change this to reference the part you want to move
local upPosition = part.Position + Vector3.new(-5, 7, 4) -- Adjust the height as needed
local downPosition = part.Position
local moveDuration = 2 -- Adjust the duration of the animation (in seconds)

-- Function to move the part up and down smoothly
local function moveUpAndDown()
	while true do
		-- Move up
		local tween0oUp = Tween0o.new(moveDuration, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
		local tweenUp = game:GetService("TweenService"):Create(part, tween0oUp, {Position = upPosition})
		tweenUp:Play()
		tweenUp.Completed:Wait()

		-- Move down
		local tween0oDown = Tween0o.new(moveDuration, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
		local tweenDown = game:GetService("TweenService"):Create(part, tween0oDown, {Position = downPosition})
		tweenDown:Play()
		tweenDown.Completed:Wait()
	end
end

-- Start the up and down movement
moveUpAndDown()
