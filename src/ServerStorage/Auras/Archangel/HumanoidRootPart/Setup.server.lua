--!strict
if script:IsDescendantOf(workspace) then
	local HumanoidRootPart = script.Parent

	local Debris = HumanoidRootPart:WaitForChild("Debris")
	local Flames = HumanoidRootPart:WaitForChild("Flames")
	local Fog = HumanoidRootPart:WaitForChild("Fog")
	local Swordfall = HumanoidRootPart:WaitForChild("Swordfall")

	local DebrisMotor6D = HumanoidRootPart:WaitForChild("DebrisMotor6D")
	local FlamesMotor6D = HumanoidRootPart:WaitForChild("FlamesMotor6D")
	local FogMotor6D = HumanoidRootPart:WaitForChild("FogMotor6D")
	local SwordfallMotor6D = HumanoidRootPart:WaitForChild("SwordfallMotor6D")

	DebrisMotor6D.Part0 = HumanoidRootPart
	DebrisMotor6D.Part1 = Debris
	FlamesMotor6D.Part0 = HumanoidRootPart
	FlamesMotor6D.Part1 = Flames
	FogMotor6D.Part0 = HumanoidRootPart
	FogMotor6D.Part1 = Fog
	SwordfallMotor6D.Part0 = HumanoidRootPart
	SwordfallMotor6D.Part1 = Swordfall

	DebrisMotor6D.Name = "Debris"
	FlamesMotor6D.Name = "Flames"
	FogMotor6D.Name = "Fog"
	SwordfallMotor6D.Name = "Swordfall"

	task.wait()

	script:Destroy()
end