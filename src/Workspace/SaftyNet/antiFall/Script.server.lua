local part = script.Parent
local TweenService = game:GetService("TweenService")

local function animateFrame(frame, startPos, endPos, duration)
	-- Set the initial position
	frame.Position = startPos

	-- Create the tween 0o
	local tween0o = Tween0o.new(
		duration, -- Duration
		Enum.EasingStyle.Quad, -- Easing style
		Enum.EasingDirection.InOut, -- Easing direction
		0, -- Repeat count (0 means no repeat)
		false, -- Reverses (true means the tween will reverse back after playing)
		0 -- Delay time
	)

	-- Create the tween goal
	local goal = {}
	goal.Position = endPos

	-- Create and play the tween
	local tween = TweenService:Create(frame, tween0o, goal)
	tween:Play()

	-- Wait for the tween to complete
	--tween.Completed:Wait()
end

local cooldowns = {}

part.Touched:Connect(function(hit)
	local player = game.Players:GetPlayerFromCharacter(hit.Parent)
	if player then
		-- Check if the player is currently on cooldown
		if not cooldowns[player] then
			-- Set the cooldown status for the player
			cooldowns[player] = true

			-- Get the 'Teleport' frame
			local playerGui = player:WaitForChild("PlayerGui")
			local teleportFrame = playerGui.MainInterface:FindFirstChild("Teleport")

			if teleportFrame then
				-- Animate the frame to cover the screen
				local startPos = UDim2.new(2, 0, -2, 0)
				local endPos = UDim2.new(-2, 0, 2, 0)
				animateFrame(teleportFrame, startPos, endPos, 1.5)

				wait(0.8)

				-- Load the character while the screen is covered
				player.Character.HumanoidRootPart.CFrame = CFrame.new(212.5, 89.5 + 3, -361.6)

				--animateFrame(teleportFrame, endPos, startPos, 0.75)

				-- Remove the cooldown after teleportation
				wait(1.5)

				cooldowns[player] = false
			end
		end
	end
end)