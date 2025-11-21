--!strict
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Modules = ReplicatedStorage:WaitForChild("Modules")

local DebrisCreator = require(Modules.DebrisCreater)
local CameraShaker = require(Modules.CameraShaker)

local Value = script:WaitForChild("Value").Value

DebrisCreator.DebrisCreate(
	Value,
	30,
	30,
	Vector3.new(
		5.5,
		5.5,
		5.5
	),
	0.5,
	true,
	3,
	nil
)

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
			CurrentCamera.CFrame.Position - Value
		).Magnitude / 25,
		0,
		6
	),
	12,
	0.25,
	0.25
)