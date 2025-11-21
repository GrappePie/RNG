--!strict
local angleOffset = 0

local targetValue = script:WaitForChild("Target").Value
local targetRootPart = targetValue:WaitForChild("HumanoidRootPart")
local spinningPart = targetRootPart:WaitForChild("Spinning")

local effectPart = game.ReplicatedStorage:WaitForChild("Assets"):WaitForChild("VFXS"):WaitForChild("Chromatic"):WaitForChild("EQPart")

local volumeScale = 0

local rootPartCFrame = targetRootPart.CFrame

local effectColor: Color3 = nil

local weldTable = {}
local effectPartTable = {}

local function lerp(startValue: number, endValue: number, alpha: number)
	if alpha == 1 then
		return endValue
	end

	if alpha == 0 then
		return startValue
	end

	return startValue + (endValue - startValue) * alpha
end

local function updateEffectPart(part: BasePart)
	local partHeight = part.Size.Y
	part.Size = Vector3.new(0.4, partHeight + ((5 * volumeScale) * (math.clamp(1 / (part.Position - rootPartCFrame.Position).Magnitude, 0.05, 3) * 2) - partHeight) * 0.5, 0.4)

	local colorIntensity = part.Size.Y / 5 * 255
	part.Color = Color3.fromRGB(math.clamp(effectColor.R * colorIntensity + 15, 0, 255), math.clamp(effectColor.G * colorIntensity + 15, 0, 255), math.clamp(effectColor.B * colorIntensity + 15, 0, 255))
end

local function updateRadius()
	for _, weld: Weld in ipairs(weldTable) do
		weld.C0 = weld.C0:Lerp(weld.C0.Rotation * CFrame.new(0, -3.1 + math.sin(angleOffset / 70) * 0.05, 7 + 1 * volumeScale * 2), 0.25)
	end
end

for i = 1, 75 do
	local clone = effectPart:Clone()
	clone.Parent = script
	clone.CanCollide = false
	clone.Massless = true
	clone.CanTouch = false
	clone.CanQuery = false
	clone.Material = Enum.Material.Neon
	clone.Color = Color3.new(0, 0, 0)
	clone.Name = "Effect"

	clone:SetAttribute("AuraInstance", true)

	local weld = Instance.new("Weld", clone)
	weld.Part0 = targetRootPart
	weld.Part1 = clone
	weld.C0 = CFrame.Angles(0, math.rad(4.8 * i), 0) * CFrame.new(0, -2.1, 8)

	table.insert(weldTable, weld)
	table.insert(effectPartTable, clone)
end

local destroyingConnection
local scriptDeletingConnection

destroyingConnection = game.DescendantRemoving:Connect(function(object)
	pcall(function()
		if object == script then
			for _, part in ipairs(effectPartTable) do
				part:Destroy()
			end

			destroyingConnection:Disconnect()
			scriptDeletingConnection:Disconnect()
		end
	end)
end)

scriptDeletingConnection = script:GetAttributeChangedSignal("Deleting"):Connect(function()
	destroyingConnection:Disconnect()
	scriptDeletingConnection:Disconnect()

	for _, part in ipairs(effectPartTable) do
		part:Destroy()
	end
end)

local backgroundMusic = targetRootPart:WaitForChild("BGM")

local chromaLight = script.Parent:WaitForChild("ChromaLight")

local effectTimer = 0

local title = targetValue:WaitForChild("Torso"):WaitForChild("Title"):WaitForChild("TitleUI"):WaitForChild("Title")

local spinningPart1 = spinningPart:WaitForChild("Spinning1")
local spinningPart2 = spinningPart:WaitForChild("Spinning2")

local effectColorHSV
local effectColorRGB

task.spawn(function()
	while game:GetService("RunService").Heartbeat:Wait() and script.Parent do
		if not backgroundMusic or not backgroundMusic.Parent then
			chromaLight:Destroy()

			for _, part in ipairs(effectPartTable) do
				part:Destroy()
			end

			return
		end

		effectTimer += 1

		if effectTimer == 50 then
			effectTimer = 0
		end

		volumeScale = math.clamp(backgroundMusic.PlaybackLoudness / 600, 0, 1)

		title.Parent.Size = UDim2.fromScale(6 + volumeScale, 3 + volumeScale / 2)

		angleOffset += volumeScale * 1.3

		local spinningPart = spinningPart
		spinningPart.CFrame *= CFrame.Angles(0, math.rad(5 * volumeScale), 0)
		spinningPart1.Position = Vector3.new(0, 0, 6 + math.cos(angleOffset / 30))
		spinningPart2.Position = Vector3.new(0, 0, -6 - math.cos(angleOffset / 30))

		effectColorHSV = Color3.fromHSV(effectTimer / 50, 1, 1)
		effectColorRGB = Color3.fromRGB(math.clamp(effectColorHSV.R * 225 + 125, 0, 255), math.clamp(effectColorHSV.G * 225 + 125, 0, 255), math.clamp(effectColorHSV.B * 225 + 125, 0, 255))

		effectColor = effectColorRGB

		local effectColorSequence = ColorSequence.new(effectColorRGB, effectColorHSV)
		rootPartCFrame = rootPartCFrame:Lerp((targetRootPart.CFrame) * (CFrame.Angles(0, math.rad(360 * volumeScale), 0) * CFrame.new(0, -3.1, 8)), 0.5)

		title:WaitForChild("UIStroke"):WaitForChild("UIGradient").Color = effectColorSequence
		title.Parent.Rarity:WaitForChild("UIStroke"):WaitForChild("UIGradient").Color = effectColorSequence

		chromaLight.Color = effectColorRGB
		chromaLight.Brightness = volumeScale * 1.5

		local tool = targetValue:FindFirstChildOfClass("Tool")
		for _, descendant in ipairs(targetValue:GetDescendants()) do
			if (not tool or not descendant:IsDescendantOf(tool)) and (descendant:IsA("ParticleEmitter") or descendant:IsA("Trail")) then
				if descendant.Color ~= ColorSequence.new(Color3.new()) then
					descendant.Color = effectColorSequence
				end

				if descendant:IsA("Trail") then
					descendant.WidthScale = NumberSequence.new(math.clamp(volumeScale * 1.3, 0, 1), 0)
				else
					descendant.TimeScale = math.clamp(volumeScale * 1.5, 0, 1)
				end
			end
		end

		for _, part in ipairs(effectPartTable) do
			updateEffectPart(part)
		end

		updateRadius()
	end
end)

script.Parent:WaitForChild("BGM"):Play()