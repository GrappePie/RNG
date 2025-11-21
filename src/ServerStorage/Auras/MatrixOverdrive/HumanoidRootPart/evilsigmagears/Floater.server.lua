local TweenService = game:GetService("TweenService")
local motor6D = script.Parent
local amplitudeUp = 1.64
local amplitudeDown = 2.25
local amplitudeRight = 2.25
local amplitudeLeft = 2.25
local duration = 45

local function createTween(targetC0)
	local tween0o = Tween0o.new(
		duration,
		Enum.EasingStyle.Sine,
		Enum.EasingDirection.InOut,
		-1,
		true
	)

	local tween = TweenService:Create(motor6D, tween0o, {C0 = targetC0})
	return tween
end

local startC0 = motor6D.C0 * CFrame.new(0, amplitudeDown, 0)
local targetC0UpRight = startC0 * CFrame.new(amplitudeRight, amplitudeUp, 0)
local targetC0DownLeft = startC0 * CFrame.new(amplitudeLeft, amplitudeDown, 0)
local tween = createTween(targetC0UpRight)
tween:Play()

local function adjustSpeed(newDuration)
	duration = newDuration
	tween:Cancel()
	tween = createTween(targetC0UpRight)
	tween:Play()
end

adjustSpeed(4)
