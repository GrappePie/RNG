--!strict
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local VFXS = ReplicatedStorage:WaitForChild("Assets"):WaitForChild("VFXS")
local SpawnVFX = VFXS:WaitForChild("Spawn")

local HumanoidRootPart = script.Parent:WaitForChild("HumanoidRootPart")

local function updateParticleColors(descendants, color)
	for _, descendant in ipairs(descendants:GetDescendants()) do
		if descendant:IsA("ParticleEmitter") then
			if descendant.Color ~= ColorSequence.new(Color3.new()) then
				descendant.Color = ColorSequence.new(color)
			end
		end
	end
end

local clonedEffect = SpawnVFX:Clone()

updateParticleColors(clonedEffect, Color3.new(1, 0.4, 0))

clonedEffect.Effect.Enabled = true

clonedEffect:PivotTo(HumanoidRootPart:GetPivot())

clonedEffect.Name = tostring(math.random())
clonedEffect.Parent = HumanoidRootPart