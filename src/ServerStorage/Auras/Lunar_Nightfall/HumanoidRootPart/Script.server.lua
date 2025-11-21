--!strict
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")

local Moon = script.Parent:WaitForChild("Moon")
local Rotating = script.Parent:WaitForChild("Rotating")

local Orb1 = Rotating:WaitForChild("Orb1")
local Orb2 = Rotating:WaitForChild("Orb2")

local Tween0o = Tween0o.new(5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true)

local function registerSpinner(object: any, rotationSpeed: Vector3)
	local connection
	connection = RunService.Heartbeat:Connect(function(deltaTime)
		if not object.Parent then
			connection:Disconnect()
		else
			local rotation = rotationSpeed * 33.333333333333336 * deltaTime
			object.CFrame *= CFrame.Angles(rotation.X, rotation.Y, rotation.Z)
		end
	end)
end

registerSpinner(
	Moon,
	Vector3.yAxis * 0.0165
)
registerSpinner(
	Moon:WaitForChild("MoonAttach"),
	Vector3.xAxis * 0.0165
)

registerSpinner(
	Rotating,
	Vector3.yAxis * 0.005
)

registerSpinner(
	Orb1,
	Vector3.yAxis * 0.015
)

local orb1Tween = TweenService:Create(Orb1, Tween0o, {Position = Orb1.Position + Vector3.yAxis * 0.75})
orb1Tween:Play()

local orb2Tween = TweenService:Create(Orb2, Tween0o, {Position = Orb2.Position + Vector3.yAxis * 0.75})
orb2Tween:Play()