local module = {}

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")

local function createPortal(position)
	local ArcanePortal = ReplicatedStorage.Assets.VFXS.Arcane.ArcanePortal:Clone()
	ArcanePortal.CFrame = CFrame.new(position)
	ArcanePortal.Parent = Workspace
	task.delay(3.5, function()
		for i,v in ArcanePortal:GetChildren() do
			v.Enabled = false
		end
		task.wait(3)
		ArcanePortal:Destroy()
	end)
end

function module.Ability(plr)
	local character = plr.Character
	if not character then return end
	local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
	if not humanoidRootPart then return end
	humanoidRootPart.Anchored = true
	local oldPosition = humanoidRootPart.Position
	task.wait(0.4)

	local lookVector = humanoidRootPart.CFrame.LookVector
	local newPosition = oldPosition + (lookVector * 28)

	local ray = Ray.new(oldPosition, lookVector * 28)
	local hit, position = Workspace:FindPartOnRay(ray, character)

	if hit then
		newPosition = position - (lookVector * 2) 
	end
	local groundRay = Ray.new(newPosition, Vector3.new(0, -100, 0))
	local groundHit, groundPosition = Workspace:FindPartOnRay(groundRay, character)
	if groundHit then
		newPosition = Vector3.new(newPosition.X, groundPosition.Y + 3, newPosition.Z) 
	end
	createPortal(oldPosition)
	createPortal(newPosition)
	local tpfxPart = Instance.new("Part")
	tpfxPart.Anchored = true
	tpfxPart.CanCollide = false
	tpfxPart.Transparency = 1
	tpfxPart.CFrame = CFrame.new(oldPosition)
	tpfxPart.Parent = Workspace

	local tpfx = ReplicatedStorage.Assets.VFXS.Arcane.TPFX.Star:Clone()
	tpfx.Parent = tpfxPart
	tpfx.Enabled = true
	humanoidRootPart.CFrame = CFrame.new(newPosition)
	humanoidRootPart.Anchored = false
	task.delay(1.5, function()
		tpfxPart:Destroy()
	end)
end

return module
