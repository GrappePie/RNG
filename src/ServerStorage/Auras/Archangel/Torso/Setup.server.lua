--!strict
if script:IsDescendantOf(workspace) then
	local Torso = script.Parent

	local BGM = Torso:WaitForChild("BGM")

	local Wing = Torso:WaitForChild("Wing")
	local BackHalo = Torso:WaitForChild("Back Halo")

	local AnimationController = Wing:WaitForChild("AnimationController")

	local Animator = AnimationController:WaitForChild("Animator")

	local Cube_003 = Wing:WaitForChild("Cube.003")

	local CubeWeld = Torso:WaitForChild("Cube.003")

	local BackHaloTorsoMotor6D = BackHalo:WaitForChild("Torso")

	local Animation = Instance.new("Animation")
	Animation.AnimationId = "rbxassetid://76977661264646"

	local AnimationTrack = Animator:LoadAnimation(Animation)
	AnimationTrack.Looped = true
	AnimationTrack:AdjustSpeed(1)
	AnimationTrack:Play()

	CubeWeld.Part0 = Torso
	CubeWeld.Part1 = Cube_003
	BackHaloTorsoMotor6D.Part0 = BackHalo
	BackHaloTorsoMotor6D.Part1 = Torso

	BGM.Volume = BGM:GetAttribute("Volume") or 1
	BGM:Play()

	BGM:SetAttribute("Player", Torso.Parent.Name)

	task.wait()

	script:Destroy()
end