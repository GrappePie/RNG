-- Get the TweenService
local TweenService = game:GetService("TweenService")

-- Function to smoothly change transparency
local function smoothVisibility(part, startTransparency, endTransparency, duration)
	local tween0o = Tween0o.new(duration, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
	local transparencyTween = TweenService:Create(part, tween0o, {
		Transparency = endTransparency
	})
	transparencyTween:Play()
end

-- Function to control the animation loop
local function animateVisibility(part)
	while true do
		-- Smoothly become invisible
		smoothVisibility(part, 0, 1, 2) -- From fully visible (0) to fully invisible (1) in 2 seconds

		wait(10) -- Wait for 3 seconds

		-- Slowly appear
		smoothVisibility(part, 1, 0, 5) -- From fully invisible (1) to fully visible (0) in 5 seconds
	end
end

-- Example usage: replace with your actual part in the game
local examplePart = script.Parent

-- Start the animation loop
animateVisibility(examplePart)

