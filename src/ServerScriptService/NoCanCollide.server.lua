game.Players.PlayerAdded:Connect(function(Player)

	Player.CharacterAdded:Connect(function(Character)

		while task.wait() do

			local Humanoid: Humanoid = Character:WaitForChild("Humanoid")
			local RootPart = Character:WaitForChild("HumanoidRootPart")
			local Head = Character:WaitForChild("Head")

			if Humanoid.Health <= 0 then break end

			if Humanoid.RigType == Enum.HumanoidRigType.R6 then

				local Torso = Character:WaitForChild("Torso")

				RootPart.CanCollide = true
				RootPart.CanQuery = false
				RootPart.CanTouch = true
				Head.CanCollide = false
				Torso.CanCollide = false

			elseif Humanoid.RigType == Enum.HumanoidRigType.R15 then

				local UpperTorso, LowerTorso = Character:WaitForChild("UpperTorso"), Character:WaitForChild("LowerTorso")

				RootPart.CanCollide = true
				RootPart.CanQuery = false
				RootPart.CanTouch = true
				Head.CanCollide = false
				UpperTorso.CanCollide = false
				LowerTorso.CanCollide = false

			end

		end

	end)

end)