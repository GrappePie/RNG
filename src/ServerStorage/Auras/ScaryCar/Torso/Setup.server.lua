if script:IsDescendantOf(workspace) then
	local Torso = script.Parent
	local HumanoidRootPart = Torso.Parent:WaitForChild("HumanoidRootPart")

	local BoomBoxBeating = Torso:WaitForChild("BoomBoxBeating")
	local Miata = Torso:WaitForChild("Miata")
	local Wheels = Torso:WaitForChild("Wheels")

	local Miatawheels1 = Wheels:WaitForChild("Miatawheels1")
	local Miatawheels2 = Wheels:WaitForChild("Miatawheels2")

	local RootPart1 = Miatawheels1:WaitForChild("RootPart")
	local RootPart2 = Miatawheels2:WaitForChild("RootPart")

	local WeldConstraint1 = RootPart1:WaitForChild("WeldConstraint")
	local WeldConstraint2 = RootPart2:WaitForChild("WeldConstraint")

	WeldConstraint1.Part0 = RootPart1
	WeldConstraint1.Part1 = HumanoidRootPart
	WeldConstraint2.Part0 = RootPart2
	WeldConstraint2.Part1 = HumanoidRootPart

	for _, Instance in Miata:GetDescendants() do
		if Instance:IsA("WeldConstraint") then
			Instance.Part0 = Instance.Parent
			Instance.Part1 = HumanoidRootPart
		end
	end

	if not Torso:HasTag("AuraInstance") then
		Torso:AddTag("AuraInstance")
	end

	for _, descendant in Torso:GetDescendants() do
		if not descendant:HasTag("AuraInstance") then
			descendant:AddTag("AuraInstance")
		end
	end

	task.wait()

	script:Destroy()
end