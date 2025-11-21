if script:IsDescendantOf(workspace) then
	local RightArm = script.Parent

	local RightGlove = RightArm:WaitForChild("Right Glove")
	local RightGloveWeld = RightArm:WaitForChild("RightGlove")
	RightGloveWeld.Part0 = RightArm
	RightGloveWeld.Part1 = RightGlove

	RightGloveWeld.Name = "Right Glove"

	if not RightArm:HasTag("AuraInstance") then
		RightArm:AddTag("AuraInstance")
	end

	for _, descendant in RightArm:GetDescendants() do
		if not descendant:HasTag("AuraInstance") then
			descendant:AddTag("AuraInstance")
		end
	end

	task.wait()

	script:Destroy()
end