return {
	["Client"] = function()
		if not game:GetService("RunService"):IsServer() then
			local char = game.Players.LocalPlayer.Character

			local v1 = char:FindFirstChildOfClass("Humanoid")
			v1:LoadAnimation(script:WaitForChild("Active")):Play()
			task.wait(0.8)

			local screenshakeDuration = 0.6
			local screenshakeMagnitude = 2.75
			coroutine.wrap(function()
				local endTime = tick() + screenshakeDuration
				while tick() < endTime do
					v1.CameraOffset = Vector3.new(
						(math.random() - 0.5) * screenshakeMagnitude,
						( math.random() - 0.5) * screenshakeMagnitude,
						(math.random() - 0.5) * screenshakeMagnitude
					)
					task.wait(0.05)
				end
				v1.CameraOffset = Vector3.new()
			end)()

			local function createParts(radius, partSize)
				local playerPosition = char.PrimaryPart.Position
				local numParts = math.floor(2 * math.pi * radius / partSize.X)
				local floorColor = workspace:FindPartOnRayWithIgnoreList(Ray.new(playerPosition, Vector3.new(0, -10, 0)), {char}).Color

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
					part.Parent = char

					coroutine.wrap(function()
						task.wait(4.8)
						for t = 0, 1, 0.05 do
							part.Transparency = t
							part.Position = part.Position:Lerp(playerPosition, t * 0.5)
							task.wait()
						end
						part:Destroy()
					end)()
				end
			end

			local explosionTemplate = game.ReplicatedStorage.Assets.VFXS.Bloody.SkillExplode
			local explosionClone = explosionTemplate:Clone()
			explosionClone.Parent = char
			explosionClone.Position = char.HumanoidRootPart.Position - Vector3.new(0, 2.7, 0)
			for _, particleEmitter in pairs(explosionClone:GetDescendants()) do
				if particleEmitter:IsA("ParticleEmitter") then
					particleEmitter:Emit(9)
				end
			end

			createParts(45, Vector3.new(5, 5, 5))
			createParts(40.5, Vector3.new(3.5, 3.5, 3.5))

			task.delay(7.5, function() 
				explosionClone:Destroy()
			end)
		end
	end
}