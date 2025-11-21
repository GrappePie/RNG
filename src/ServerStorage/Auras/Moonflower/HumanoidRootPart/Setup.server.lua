if script:IsDescendantOf(workspace) then
	local HumanoidRootPart = script.Parent

	local Music = HumanoidRootPart:WaitForChild("Music")
	local Part = HumanoidRootPart:WaitForChild("Part")
	local PartWeld = HumanoidRootPart:WaitForChild("PartWeld")

	PartWeld.Part0 = HumanoidRootPart
	PartWeld.Part1 = Part

	PartWeld.Name = "Part"

	if not HumanoidRootPart:HasTag("AuraInstance") then
		HumanoidRootPart:AddTag("AuraInstance")
	end

	for _, descendant in HumanoidRootPart:GetDescendants() do
		if not descendant:HasTag("AuraInstance") then
			descendant:AddTag("AuraInstance")
		end
	end

	Music:SetAttribute("Player", HumanoidRootPart.Parent.Name)

	Music.Volume = Music:GetAttribute("Volume")
	Music:Play()

	task.wait()

	script:Destroy()
end