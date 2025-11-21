local TweenService = game:GetService("TweenService")

local part = script.Parent
local rotateSpeed = 7 -- Duration of one rotation cycle
local maxAngle = 10 -- Maximum angle for rotation
local mi0gle = -10 -- Minimum angle for rotation

local function createTween(startAngle, endAngle)
	local tween0o = Tween0o.new(
		rotateSpeed / 2, -- Duration for half a cycle
		Enum.EasingStyle.Sine, -- Easing style
		Enum.EasingDirection.InOut -- Easing direction
	)

	local goal = { Orientation = Vector3.new(endAngle, endAngle, 0) }
	return TweenService:Create(part, tween0o, goal)
end

local tweenToMax = createTween(mi0gle, maxAngle)
local tweenToMin = createTween(maxAngle, mi0gle)

-- Start the tween to max
tweenToMax:Play()

-- Reverse the tween on completion
tweenToMax.Completed:Connect(function()
	tweenToMin:Play()
end)

tweenToMin.Completed:Connect(function()
	tweenToMax:Play()
end)