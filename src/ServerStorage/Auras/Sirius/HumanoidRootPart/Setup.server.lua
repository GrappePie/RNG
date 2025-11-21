if script:IsDescendantOf(workspace) then
	local HumanoidRootPart = script.Parent

	local AttHolders = HumanoidRootPart:WaitForChild("AttHolders")
	local FloorSmoke = HumanoidRootPart:WaitForChild("FloorSmoke")
	local GroupingHRP = HumanoidRootPart:WaitForChild("GroupingHRP")

	local AttHoldersWeld = HumanoidRootPart:WaitForChild("AttHoldersWeld")
	local FloorSmokeWeld = HumanoidRootPart:WaitForChild("FloorSmokeWeld")
	local GroupingHRPWeld = HumanoidRootPart:WaitForChild("GroupingHRPWeld")

	AttHoldersWeld.Part0 = HumanoidRootPart
	AttHoldersWeld.Part1 = AttHolders
	FloorSmokeWeld.Part0 = HumanoidRootPart
	FloorSmokeWeld.Part1 = FloorSmoke
	GroupingHRPWeld.Part0 = HumanoidRootPart
	GroupingHRPWeld.Part1 = GroupingHRP

	local Music = GroupingHRP:WaitForChild("Music")

	Music:SetAttribute("Player", HumanoidRootPart.Parent.Name)

	Music.Volume = Music:GetAttribute("Volume")
	Music:Play()

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