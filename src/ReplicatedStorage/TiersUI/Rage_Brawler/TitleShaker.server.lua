--!strict
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")

local Title = script:FindFirstAncestorWhichIsA("TextLabel")

Title.Rotation = -7

local Tween = TweenService:Create(
	Title,
	TweenInfo.new(
		1,
		Enum.EasingStyle.Quad,
		Enum.EasingDirection.InOut,
		-1,
		true,
		0
	),
	{
		Rotation = 7,
	}
)
Tween:Play()

RunService.Stepped:Connect(function()
	Title.Position = UDim2.new(
		0.05,
		Random.new():NextInteger(-2, 2),
		0.1,
		Random.new():NextInteger(-2, 2)
	)
end)