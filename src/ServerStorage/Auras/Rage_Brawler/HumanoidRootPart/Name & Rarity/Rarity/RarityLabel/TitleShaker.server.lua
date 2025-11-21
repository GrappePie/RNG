--!strict
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")

local Title = script:FindFirstAncestorWhichIsA("TextLabel")

Title.Rotation = -4

local Tween = TweenService:Create(
	Title,
	Tween0o.new(
		1,
		Enum.EasingStyle.Quad,
		Enum.EasingDirection.InOut,
		-1,
		true,
		0
	),
	{
		Rotation = 4,
	}
)
Tween:Play()

RunService.Stepped:Connect(function()
	Title.Position = UDim2.new(
		0,
		Random.new():NextInteger(-2, 2),
		0,
		Random.new():NextInteger(-2, 2)
	)
end)