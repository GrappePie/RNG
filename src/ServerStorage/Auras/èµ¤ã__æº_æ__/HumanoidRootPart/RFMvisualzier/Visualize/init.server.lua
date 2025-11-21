script.Parent.Parent:WaitForChild("Song"):Stop()

task.wait(.325)

local VisualizerSettings = {
	Tween0o = Tween0o.new(0.1, Enum.EasingStyle.Quad);
	NumSurroundingBars = 5;
	PolynomialDegree = 2.5;
	OriginalSize = Vector3.new(0.295, 0.295, 0.296);
	MaxSize = Vector3.new(0.7, 0.7, 15);
	OriginalColor = Color3.fromRGB(0, 0, 0);
	MaxColor = Color3.fromRGB(185, 14, 17);
	Cooldown = 0.0125;
	RGB = false;
	ScaleLoudnessMax = 800;
}

local hrp
repeat wait() hrp = script.Parent.Parent until hrp
local VisualizationModule = require(script.VisualizeV2)
local Music = script.Parent.Parent:WaitForChild("Song")
local Visualize = script.Parent

Music:Play()

local New = VisualizationModule.Create(Visualize, Music, VisualizerSettings)
New:Start()