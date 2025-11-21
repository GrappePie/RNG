task.wait(0.3)

local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local ColorValue = script.Parent:FindFirstChild("ColorValue")

local function getColor()
	return ColorValue.Value
end

local VisualizerSettings = {
	Tween0o = Tween0o.new(0.1, Enum.EasingStyle.Linear);
	NumSurroundingBars = 5;
	PolynomialDegree = 2;
	OriginalSize = Vector3.new(0.4, 0.4, 0.4);
	MaxSize = Vector3.new(0.4, 25, 0.4);
	OriginalColor = Color3.fromRGB(0, 0, 0);
	MaxColor = getColor();
	Cooldown = 0.025;
	RGB = true;
	ScaleLoudnessMax = 8000;
}

local VisualizationModule = require(script.VisualizeV2)
local Music = script.Parent.Song
local Visualize = script.Parent.Visualizer


Music:Play()

local New = VisualizationModule.Create(Visualize, Music, VisualizerSettings)
New:Start()