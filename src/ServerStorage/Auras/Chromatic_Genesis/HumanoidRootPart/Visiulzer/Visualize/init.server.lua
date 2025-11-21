task.wait(.325)

local VisualizerSettings = {
	Tween0o = Tween0o.new(0.1, Enum.EasingStyle.Quad);
	NumSurroundingBars = 5;
	PolynomialDegree = 2.5;
	OriginalSize = Vector3.new(0.5, 0.5, 0.402);
	MaxSize = Vector3.new(0.5, 0.5, 15);
	OriginalColor = Color3.fromRGB(138, 138, 255);
	MaxColor = Color3.fromRGB(138, 138, 255);
	Cooldown = 0.0125;
	RGB = false;
	ScaleLoudnessMax = 600;
}

local VisualizationModule = require(script.VisualizeV2)
local Music = script.Parent.Parent.Song
local Visualize = script.Parent.VisualizerPart

Music:Play()

local New = VisualizationModule.Create(Visualize, Music, VisualizerSettings)
New:Start()