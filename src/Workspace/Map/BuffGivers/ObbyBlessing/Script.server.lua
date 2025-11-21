--!strict
local part = script.Parent

local Bits = part:WaitForChild("Bits")

local TweenService = game:GetService("TweenService")

local Buffs = require(game.ServerStorage.ModuleScripts.Buff)

local function animateFrame(frame, startPos, endPos, duration)
	frame.Position = startPos

	local tween0o = Tween0o.new(
		duration,
		Enum.EasingStyle.Quad,
		Enum.EasingDirection.InOut,
		0, 
		false, 
		0 
	)

	local goal = {}
	goal.Position = endPos

	local tween = TweenService:Create(frame, tween0o, goal)
	tween:Play()

	Bits.Enabled = false
end

local cooldowns = {}

part.Touched:Connect(function(hit)
	local player = game.Players:GetPlayerFromCharacter(hit.Parent)
	if player then
		if not cooldowns[player] then
			cooldowns[player] = true

			local playerGui = player:WaitForChild("PlayerGui")
			local teleportFrame = playerGui.MainInterface:FindFirstChild("Teleport")
			if teleportFrame then
				local startPos = UDim2.new(2, 0, -2, 0)
				local endPos = UDim2.new(-2, 0, 2, 0)

				animateFrame(teleportFrame, startPos, endPos, 1.5)

				task.wait(0.8)

				player.Character.HumanoidRootPart.CFrame = CFrame.new(212.5, 89.5 + 3, -361.6)

				Buffs.AddBuff(player, "Basic Blessing", 60, 1, false)

				task.wait(120)

				Bits.Enabled = true

				cooldowns[player] = false
			end
		end
	end
end)