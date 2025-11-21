if script:IsDescendantOf(workspace) then
	local HumanoidRootPart = script.Parent

	local ost = HumanoidRootPart:WaitForChild("Base"):WaitForChild("Propellor1"):WaitForChild("ost")

	local Bebris = HumanoidRootPart:WaitForChild("Bebris")

	local Stuff1 = HumanoidRootPart:WaitForChild("Stuff1")
	local Stuff2 = HumanoidRootPart:WaitForChild("Stuff2")

	local BebrisWeld = HumanoidRootPart:WaitForChild("Bebrisweld")

	local Stuff1weld = HumanoidRootPart:WaitForChild("Stuff1weld")
	local Stuff2weld = HumanoidRootPart:WaitForChild("Stuff2weld")

	local Motor6D = HumanoidRootPart:WaitForChild("PlaneController"):WaitForChild("Motor6D")

	BebrisWeld.Part0 = HumanoidRootPart
	BebrisWeld.Part1 = Bebris

	Stuff1weld.Part0 = HumanoidRootPart
	Stuff1weld.Part1 = Stuff2
	Stuff2weld.Part0 = HumanoidRootPart
	Stuff2weld.Part1 = Stuff1

	Motor6D.Part0 = HumanoidRootPart
	Motor6D.Part1 = Motor6D.Parent

	ost.Parent.Name = "Propellor"

	ost:SetAttribute("Player", HumanoidRootPart.Parent.Name)

	ost.Volume = ost:GetAttribute("Volume")
	ost:Play()

	Stuff1.Name = "Stuff"
	Stuff2.Name = "Stuff"

	BebrisWeld.Name = "Bebris"

	Stuff1weld.Name = "Stuff"
	Stuff2weld.Name = "Stuff"

	if not HumanoidRootPart:HasTag("AuraInstance") then
		HumanoidRootPart:AddTag("AuraInstance")
	end

	for _, descendant in HumanoidRootPart:GetDescendants() do
		if not descendant:HasTag("AuraInstance") then
			descendant:AddTag("AuraInstance")
		end
	end

	task.wait()

	script:Destroy()
end