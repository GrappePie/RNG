--!strict
print("activated...?")
local module = {}

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")

local VFXS = ReplicatedStorage.Assets.VFXS
local ArchAngelAbility = VFXS.Archangel:FindFirstChild("ArchangelAbility")

local function damagePlayersInRange(origin, range, maxDamagePercentage, excludePlayer)
	for _, player in Players:GetPlayers() do
		if player:GetAttribute("PVP") then
			if player ~= excludePlayer and player.Character and player.Character:FindFirstChild("Humanoid") then
				local humanoid = player.Character.Humanoid
				local rootPart = player.Character:FindFirstChild("HumanoidRootPart")
				if rootPart and (rootPart.Position - origin).Magnitude <= range then
					humanoid:TakeDamage(maxDamagePercentage)
				end
			end
		end
	end
end

function module.Ability(plr)
	task.delay(1.25, function()
		local character = plr.Character

		local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

		local oldCFrame = humanoidRootPart.CFrame

		local oldPosition: Vector3 = oldCFrame.Position
		local lookVector: Vector3 = oldCFrame.LookVector

		local portalPosition = oldPosition + lookVector * 10
		local portalCFrame = CFrame.new(portalPosition, portalPosition + lookVector)

		local TemporaryEffect = ArchAngelAbility:Clone() :: Model
		TemporaryEffect:PivotTo(portalCFrame)
		TemporaryEffect.Parent = character :: any

		damagePlayersInRange(portalCFrame, 45, 10, plr)
		task.wait(0.3)
		damagePlayersInRange(portalCFrame, 45, 10, plr)
		task.wait(0.3)
		damagePlayersInRange(portalCFrame, 45, 10, plr)
		task.wait(0.5)
		damagePlayersInRange(portalCFrame, 45, 12, plr)

		task.delay(11.1, function()
			TemporaryEffect:Destroy()	
		end)
	end)

	return true
end

return module