if script:IsDescendantOf(workspace) then
	local LeftArm = script.Parent

	local LeftGlove = LeftArm:WaitForChild("Left Glove")
	local LeftGloveWeld = LeftArm:WaitForChild("LeftGlove")
	LeftGloveWeld.Part0 = LeftArm
	LeftGloveWeld.Part1 = LeftGlove

	LeftGloveWeld.Name = "Left Glove"

	if not LeftArm:HasTag("AuraInstance") then
		LeftArm:AddTag("AuraInstance")
	end

	for _, descendant in LeftArm:GetDescendants() do
		if not descendant:HasTag("AuraInstance") then
			descendant:AddTag("AuraInstance")
		end
	end

	task.wait()

	script:Destroy()
end