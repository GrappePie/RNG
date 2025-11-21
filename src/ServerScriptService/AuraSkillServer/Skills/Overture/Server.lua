--!strict
local module = {}

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

local Packets = ReplicatedStorage:FindFirstChild("Packets")
local Assets = ReplicatedStorage:FindFirstChild("Assets")

local Global = require(Packets:FindFirstChild("Global"))

local VFXS = Assets:FindFirstChild("VFXS")

local Overture = VFXS:FindFirstChild("Overture")

local Freeze = Overture:WaitForChild("Freeze")

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

local function freezePlayersInEffect(origin: BasePart, excludePlayer: Player, DelayTime: number): ()
	local RBXScriptConnection: RBXScriptConnection

	local playerDBs = {}
	RBXScriptConnection = origin.Touched:Connect(function(otherPart: BasePart)
		local Character = otherPart.Parent

		local Player = Players:GetPlayerFromCharacter(Character) or nil

		if Player ~= nil then
			if playerDBs[Player] then return end

			playerDBs[Player] = true

			if Player ~= excludePlayer then
				if Character then
					local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart") :: BasePart
					local Humanoid = Character:FindFirstChild("Humanoid") :: Humanoid

					local OriginalWalkSpeed = Instance.new("NumberValue")
					local OriginalJumpHeight = Instance.new("NumberValue")
					OriginalWalkSpeed.Value = Humanoid.WalkSpeed
					OriginalJumpHeight.Value = Humanoid.JumpHeight
					OriginalWalkSpeed.Name = "OGWS"
					OriginalJumpHeight.Name = "OGJH"
					OriginalWalkSpeed.Parent = Character
					OriginalJumpHeight.Parent = Character

					local Animator = Humanoid:FindFirstChild("Animator") :: Animator

					if Humanoid then
						Global.ScreenEffect.sendTo({
							Name = "TimeStop",
							Function = "Emit",
							Args = {
								DelayTime
							}
						}, Player)

						if HumanoidRootPart then
							HumanoidRootPart.Anchored = true
						end

						for _, child in Character:GetChildren() do
							if child:IsA("BasePart") and child.Anchored == false then
								coroutine.wrap(
									function()
										child.Anchored = true

										task.wait(DelayTime)

										child.Anchored = false
									end
								)()
							end
						end

						coroutine.wrap(
							function()
								Humanoid.WalkSpeed = 0
								Humanoid.JumpHeight = 0

								task.wait(DelayTime)

								Humanoid.WalkSpeed = OriginalWalkSpeed.Value
								Humanoid.JumpHeight = OriginalJumpHeight.Value

								OriginalWalkSpeed:Destroy()
								OriginalJumpHeight:Destroy()

								HumanoidRootPart.Anchored = false
							end
						)()
					end
				end
			end
		end
	end)

	task.wait(0.25)

	origin.CanTouch = false

	task.wait(DelayTime + 1)

	RBXScriptConnection:Disconnect()
end

function module.Ability(plr: Player)
	coroutine.wrap(
		function()
			local character = plr.Character :: Model

			local humanoidRootPart = character:FindFirstChild("HumanoidRootPart") :: BasePart

			local TemporaryEffect = Freeze:Clone()

			local Script = TemporaryEffect:WaitForChild("Script")

			TemporaryEffect:PivotTo(humanoidRootPart:GetPivot())
			TemporaryEffect.Parent = character

			Script.Enabled = true

			freezePlayersInEffect(TemporaryEffect, plr, 3)

			task.delay(3, function()
				TemporaryEffect:Destroy()	
			end)
		end
	)()

	return true
end

return module