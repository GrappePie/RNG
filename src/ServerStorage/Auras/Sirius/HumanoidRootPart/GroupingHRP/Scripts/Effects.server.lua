--!strict
local RunService = game:GetService("RunService")

local HumanoidRootPart = script.Parent.Parent.Parent.Parent:WaitForChild("HumanoidRootPart")

local AttHolders = HumanoidRootPart:WaitForChild("AttHolders")

local Att = HumanoidRootPart.FloorSmoke.Att

local AttHoldersWeld = HumanoidRootPart:WaitForChild("AttHoldersWeld")

local Orientation = AttHolders.Orientation

local Base = AttHolders.Base
local Base2 = AttHolders.Base2
local Base3 = AttHolders.Base3

local Emitted = Att.Emitted

local Music = HumanoidRootPart.GroupingHRP.Music

--[[local Top = HumanoidRootPart.Star.Attachment:WaitForChild("Top")
local Particle3 = HumanoidRootPart.Star.Attachment:WaitForChild("Particle3")
local Chromatic = HumanoidRootPart.Star.Attachment:WaitForChild("Chromatic")
local Regular = HumanoidRootPart.Star.Attachment:WaitForChild("Regular")
local Star = HumanoidRootPart.Star.Attachment:WaitForChild("Star")]]

local PointLight = HumanoidRootPart.GroupingHRP.SurfaceLightAtt:WaitForChild("PointLight")

local function updateBaseCFrames(deltaTime: number)
	Base.Position = Vector3.new(0, -4, 0)
	Base.CFrame *= CFrame.Angles(0, 0.023, 0.003)

	Base2.CFrame *= CFrame.Angles(0, 0.017, 0.003)

	Base3.CFrame *= CFrame.Angles(0, 0.01, -0.002)

	AttHoldersWeld.C0 *= CFrame.Angles(0, math.rad(deltaTime * 5), 0)

	Att.WorldCFrame = CFrame.lookAt(Att.WorldPosition, Orientation + Vector3.new(10000, 0, 0))
end

RunService.Heartbeat:Connect(updateBaseCFrames)

task.spawn(function()
	while task.wait(3) do
		Emitted:Emit(5)
	end
end)

task.spawn(function()
	while wait() do
		if 20 < Music.PlaybackLoudness then
			local clamped_2 = math.clamp(Music.PlaybackLoudness / 100, 0, 1.5)
			local clamped = math.clamp(Music.PlaybackLoudness / 45, 5, 14)

			--[[Top.Size = NumberSequence.new(clamped - 1)
			Top.Squash = NumberSequence.new(clamped_2)

			Particle3.Size = NumberSequence.new(clamped + 2)
			Particle3.Squash = NumberSequence.new(clamped_2)

			Chromatic.Size = NumberSequence.new(math.clamp(Music.PlaybackLoudness / 30, 8, 9.2))

			Regular.Size = NumberSequence.new(math.clamp(Music.PlaybackLoudness / 30, 5.5, 7))

			Star.Size = NumberSequence.new(math.clamp(Music.PlaybackLoudness / 20, 11, 12))]]

			PointLight.Brightness = math.clamp(Music.PlaybackLoudness / 50, 0, 0.5)
			PointLight.Range = math.clamp(Music.PlaybackLoudness / 14, 0, 35)
		end
	end
end)