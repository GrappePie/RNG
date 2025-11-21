--!strict
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Modules = ReplicatedStorage:WaitForChild("Modules")

local CameraShaker = require(Modules.CameraShaker)

local CurrentCamera = game.Workspace.CurrentCamera

local RenderPriority = Enum.RenderPriority.Camera

local Shake = CameraShaker.new(
	RenderPriority.Value,
	function(heh)
		CurrentCamera.CFrame *= heh
	end
)

Shake:Start()

Shake:ShakeOnce(
	math.clamp(
		10 - (
			CurrentCamera.CFrame.Position - script.Parent.Position
		).Magnitude / 25,
		0,
		6
	),
	12,
	0.25,
	0.25
)