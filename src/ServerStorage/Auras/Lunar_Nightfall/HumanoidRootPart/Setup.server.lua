if script:IsDescendantOf(workspace) then
	local HumanoidRootPart = script.Parent

	local Sound = HumanoidRootPart:WaitForChild("Sound")

	Sound:SetAttribute("Player", HumanoidRootPart.Parent.Name)

	Sound.Volume = Sound:GetAttribute("Volume") or 1.1
	Sound:Play()

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