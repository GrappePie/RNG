--!strict
local PlayerService = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local PortalEntrance = script.Parent

local Portals = game.Workspace.Map.Miscs:GetChildren()
local currentPortal = PortalEntrance.Parent

_G.portalCooldowns = {}

PortalEntrance.Touched:Connect(function(touch) 
	local Character = touch:FindFirstAncestorOfClass("Model")
	local Player = PlayerService:GetPlayerFromCharacter(Character)
	if Player ~= nil then
		if not _G.portalCooldowns[Player] then
			for i, v in Portals do
				if v ~= currentPortal then
					for index, instance: BasePart in v:GetChildren() do
						if instance:IsA("BasePart") and instance:FindFirstChildWhichIsA("Script") then
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
							end

							_G.portalCooldowns[Player] = true
							coroutine.wrap(function()
								task.wait(5)
								_G.portalCooldowns[Player] = false
								return
							end)()

							local playerGui = Player:WaitForChild("PlayerGui")
							local teleportFrame = playerGui.MainInterface:FindFirstChild("Teleport")
							if teleportFrame ~= nil then
								local startPos = UDim2.new(2, 0, -2, 0)
								local endPos = UDim2.new(-2, 0, 2, 0)
								animateFrame(teleportFrame, startPos, endPos, 1.5)

								task.wait(0.8)

								Character:PivotTo(instance:GetPivot())
							end
						end
					end
				end
			end
		end
	end
end)