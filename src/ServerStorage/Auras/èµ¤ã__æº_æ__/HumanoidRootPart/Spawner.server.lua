--mt, 54.axis
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")

local humanoidRootPart = script.Parent

--[[humanoidRootPart.Destroying:Connect(function()
	
end)]]

local head = script.Parent.Parent.Head
local character = humanoidRootPart.Parent
local humanoid = character:FindFirstChild("Humanoid")
if humanoid then
	humanoid.WalkSpeed = 0
end

local function createParts(radius, partSize)
	local playerPosition = character.PrimaryPart.Position
	local numParts = math.floor(2 * math.pi * radius / partSize.X)
	local floorColor = workspace:FindPartOnRayWithIgnoreList(Ray.new(playerPosition, Vector3.new(0, -10, 0)), {character}).Color

	for i = 0, numParts - 1 do
		local angle = (i / numParts) * 2 * math.pi
		local offset = Vector3.new(math.cos(angle) * radius, 0, math.sin(angle) * radius)
		local partPosition = playerPosition + offset

		local part = Instance.new("Part")
		part.Size = partSize
		part.CanCollide = false
		part.Position = partPosition - Vector3.new(0, partSize.Y / 2 + 0.75, 0)
		part.Rotation = Vector3.new(math.random(-180, 180), math.random(-180, 180), math.random(-180, 180))
		part.Anchored = true
		part.BrickColor = BrickColor.new(floorColor)
		part.Parent = character

		coroutine.wrap(function()
			task.wait(3)
			for t = 0, 1, 0.05 do
				part.Transparency = t
				task.wait()
			end
			part:Destroy()
		end)()
	end
end

for _, descendant in ipairs(character:GetDescendants()) do
	if descendant:IsA("Part") or descendant:IsA("MeshPart") or descendant:IsA("BasePart") then
		descendant.Transparency = 1
	elseif descendant:IsA("Beam") or descendant:IsA("ParticleEmitter") then
		descendant.Enabled = false
	elseif descendant:IsA("Decal") or descendant:IsA("Texture") then
		descendant.Transparency = 1
	elseif descendant:IsA("BillboardGui") then
		descendant.Enabled = false
	end
end

local explode = ReplicatedStorage.Assets.VFXS.Bloody.Explode:Clone()
local summon = ReplicatedStorage.Assets.VFXS.Bloody.Summon:Clone()
local charge = ReplicatedStorage.Assets.VFXS.Bloody.Summon.Charge1
local explosion4 = script.EX4
local tween0o = Tween0o.new(
	2,
	Enum.EasingStyle.Quad,
	Enum.EasingDirection.InOut,
	0,
	false,
	0
)

for _, v in pairs(summon:GetChildren()) do
	if v.Name ~= "Charge1" and v.Name ~= "Star" or v.Name ~= "StarDark" and v:IsA("ParticleEmitter") then
		v.Enabled = false
	end
end

summon.CFrame = CFrame.new(head.Position + Vector3.new(0, 20, 0), summon.CFrame.Position)
summon.Parent = character

local tween = TweenService:Create(summon, tween0o, {CFrame = humanoidRootPart.CFrame})

explode.CFrame = humanoidRootPart.CFrame
explode.Parent = character

tween:Play()

task.wait(1)

charge:Play()

wait(0.05)

local particles = {}
for _, descendant in ipairs(summon:GetDescendants()) do
	if descendant:IsA("ParticleEmitter") then
		descendant.Enabled = true
		table.insert(particles, descendant)
	end
end

task.wait(1)
for _, particle in ipairs(particles) do
	particle.Enabled = false
end

for _, descendant in ipairs(explode:GetDescendants()) do
	if descendant:IsA("ParticleEmitter") then
		descendant:Emit(18)
	end
end

script.ShitFullMoon.Parent = game.Players:GetPlayerFromCharacter(character).PlayerGui

createParts(45, Vector3.new(3, 3, 3))
createParts(40.5, Vector3.new(3.5, 3.5, 3.5))

explosion4:Play()

task.wait(0.75)

if humanoid then
	humanoid.WalkSpeed = 16
end

for _, descendant in ipairs(character:GetDescendants()) do
	if descendant:IsA("Part") or descendant:IsA("MeshPart") or descendant:IsA("BasePart") then
		if descendant.Name ~= "HumanoidRootPart" and descendant.Name ~= "Crown" and descendant.Name ~= "Part" then
			descendant.Transparency = 0
		end
	elseif descendant:IsA("Beam") or descendant:IsA("ParticleEmitter") then
		descendant.Enabled = true
	elseif descendant:IsA("Decal") or descendant:IsA("Texture") then
		descendant.Transparency = 0
	elseif descendant:IsA("BillboardGui") then
		descendant.Enabled = true
	end
end

task.wait(1.5)

summon:Destroy()
explode:Destroy()

game.Players:GetPlayerFromCharacter(character).PlayerGui:WaitForChild("ShitFullMoon"):Destroy()