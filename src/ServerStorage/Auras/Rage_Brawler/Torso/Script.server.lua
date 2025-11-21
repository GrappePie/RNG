if script:IsDescendantOf(workspace) then
	local Torso = script.Parent

	local BGM = Torso:WaitForChild("BGM")

	BGM.Volume = BGM:GetAttribute("Volume")

	BGM:SetAttribute("Player", Torso.Parent.Name)

	BGM:Play()

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