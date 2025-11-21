local TweenService = game:GetService("TweenService")
local val = script.Parent -- Assuming OvertureColor is a Color3Value
local tweenDuration = 5 -- Duration of the tween in seconds
local waitDuration = 2 -- Duration to wait before starting the reverse tween

-- Define the starting and ending colors
local targetColor = Color3.fromRGB(69, 133, 81) -- Green color
local mainColor = Color3.fromRGB(175, 181, 182) 


local tween0o = Tween0o.new(
	tweenDuration, 
	Enum.EasingStyle.Linear, 
	Enum.EasingDirection.InOut, 
	0, 
	false, 
	0
)


local function createTween(startColor, endColor)
	local tweenGoal = {Value = endColor}
	return TweenService:Create(val, tween0o, tweenGoal)
end


while true do
	local tweenToGreen = createTween(mainColor, targetColor)
	tweenToGreen:Play()
	tweenToGreen.Completed:Wait()
	wait(5)

	local tweenToWhite = createTween(targetColor, mainColor)
	tweenToWhite:Play()
	tweenToWhite.Completed:Wait()
	wait(waitDuration)
end
