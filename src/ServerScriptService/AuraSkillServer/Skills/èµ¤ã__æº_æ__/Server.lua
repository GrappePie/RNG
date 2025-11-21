local module = {}

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")

local function createPortal(cframe, char)
	local ArcanePortal = ReplicatedStorage.Assets.VFXS.Bloody.SkillExplode:Clone()
	ArcanePortal.Script.Enabled = true
	ArcanePortal.CFrame = cframe
	ArcanePortal.Parent = char
	ArcanePortal.Crack1.EX.Playing = true
	ArcanePortal.Crack1.EX3.Playing = true
	ArcanePortal.Crack1.Ex2.Playing = true
	ArcanePortal.Crack1.church_bell.Playing = true
	for _, v in pairs(ArcanePortal:GetChildren()) do
		if v:IsA("ParticleEmitter") then
			v.Enabled = false
		end
	end
	ArcanePortal:Destroy()
end

local function damagePlayersInRange(origin, range: number, maxDamagePercentage, excludePlayer)
	for _, player in pairs(Players:GetPlayers()) do
		if player:GetAttribute("PVP") then
			if player ~= excludePlayer and player.Character and player.Character:FindFirstChild("Humanoid") then
				local humanoid = player.Character.Humanoid
				local rootPart = player.Character:FindFirstChild("HumanoidRootPart")
				if rootPart and (rootPart.Position - origin).Magnitude <= range then
					humanoid:TakeDamage(maxDamagePercentage + 1)
				end
			end
		end
	end
end

function module.Ability(plr)
	local character = plr.Character
	if not character then return end

	local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
	if not humanoidRootPart then return end

	humanoidRootPart.Anchored = true

	local oldCFrame = humanoidRootPart.CFrame
	local oldPosition = oldCFrame.Position

	task.wait(0.5)

	local lookVector = oldCFrame.LookVector
	local newPosition = oldPosition

	local ray = Ray.new(oldPosition, lookVector)
	local hit, position = Workspace:FindPartOnRay(ray, character)

	if hit then
		newPosition = position - (lookVector * 2)
	end

	local groundRay = Ray.new(newPosition, Vector3.new(0, -100, 0))
	local groundHit, groundPosition = Workspace:FindPartOnRay(groundRay, character)

	if groundHit then
		newPosition = Vector3.new(newPosition.X, groundPosition.Y + 3, newPosition.Z)
	end

	local rotation = CFrame.Angles(0, 0, math.rad(math.random(-90, 90)))

	--createPortal(oldCFrame - Vector3.new(0, 2.7, 0))

	damagePlayersInRange(oldPosition, 45, 0.75, plr)
	damagePlayersInRange(newPosition, 45, 0.75, plr)

	humanoidRootPart.CFrame = CFrame.new(newPosition, newPosition + lookVector)
	humanoidRootPart.Anchored = false
end

return module