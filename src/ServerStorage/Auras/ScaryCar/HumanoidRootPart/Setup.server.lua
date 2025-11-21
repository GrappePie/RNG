if script:IsDescendantOf(workspace) then
	local HumanoidRootPart = script.Parent

	local Torso = HumanoidRootPart.Parent:WaitForChild("Torso")

	local Theme = HumanoidRootPart:WaitForChild("Theme")

	local WindAppearing = HumanoidRootPart:WaitForChild("Wind Appearing")

	local WeldConstraint = WindAppearing:WaitForChild("WeldConstraint")

	local windScript = WindAppearing:WaitForChild("wind")

	local fsd_018 = Torso:WaitForChild("Miata"):WaitForChild("Body"):WaitForChild("fsd.018")

	WeldConstraint.Part0 = WindAppearing
	WeldConstraint.Part1 = fsd_018

	windScript.Enabled = true

	Theme:SetAttribute("Player", HumanoidRootPart.Parent.Name)

	Theme.Volume = Theme:GetAttribute("Volume")
	Theme:Play()

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