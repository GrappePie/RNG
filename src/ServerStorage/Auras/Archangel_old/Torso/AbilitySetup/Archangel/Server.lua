local module = {}

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")

local function createPortal(cframe)
	local ArcanePortal = {}

	for _, v in pairs(ReplicatedStorage.Assets.VFXS.Archangel.ArchangelAbility.Ground:GetChildren()) do
		if v:IsA("BasePart") then
			local new = v:Clone()
			table.insert(ArcanePortal, new)
		end
	end

	for _, v in pairs(ArcanePortal) do
		if v.Name == "2_ground_4" then
			v.CFrame = cframe
			v.Parent = Workspace

			local concreteBreak = v:FindFirstChild("Concrete break")
			local explosionSound = v:FindFirstChild("Explosion Sound")
			if concreteBreak then
				concreteBreak:Play()
			end
			if explosionSound then
				explosionSound:Play()
			end

			for _, child in pairs(v:GetChildren()) do
				if child:IsA("ParticleEmitter") then
					child:Emit(100)
				end
			end

			task.wait(4)

			v:Destroy()
		end
	end
end

local function damagePlayersInRange(origin, range, maxDamagePercentage, excludePlayer)
	for _, player in pairs(Players:GetPlayers()) do
		if player ~= excludePlayer and player.Character and player.Character:FindFirstChild("Humanoid") then
			local humanoid = player.Character.Humanoid
			local rootPart = player.Character:FindFirstChild("HumanoidRootPart")
			if rootPart and (rootPart.Position - origin).Magnitude <= range then
				local damage = 1
				humanoid:TakeDamage(damage)
			end
		end
	end
end

local function PlayAnimation(plr, anim)
	plr.Character.Humanoid:LoadAnimation(anim):Play()
end

local function getLookAtPosition(character, distance)
	local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
	if not humanoidRootPart then
		warn("HumanoidRootPart not found")
		return nil
	end

	local lookVector = humanoidRootPart.CFrame.LookVector
	local origin = humanoidRootPart.Position

	local ray = Ray.new(origin, lookVector * distance)

	local hit, position = workspace:FindPartOnRay(ray, character)

	return hit and position or origin + lookVector * distance
end

function module.Ability(plr)
	PlayAnimation(plr, script.Active)
	local character = plr.Character
	if not character then return end

	local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
	if not humanoidRootPart then return end
	local oldCFrame = humanoidRootPart.CFrame

	local oldPosition = oldCFrame.Position
	task.wait(0.5)
	local lookVector = oldCFrame.LookVector

	-- Calculate the portal position in front of the player
	local portalPosition = oldPosition + lookVector * 10
	local portalCFrame = CFrame.new(portalPosition, portalPosition + lookVector)

	createPortal(portalCFrame)

	-- Uncomment if needed
	-- damagePlayersInRange(oldPosition, 45, 0.75, plr)
	-- damagePlayersInRange(newPosition, 45, 0.75, plr)
end

return module
