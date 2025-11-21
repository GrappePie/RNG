if script:IsDescendantOf(workspace) then
	local RightArm = script.Parent

	local Handle = RightArm:WaitForChild("handle")

	local HandleWeld = RightArm:WaitForChild("handleweld")

	HandleWeld.Part0 = RightArm
	HandleWeld.Part1 = Handle

	HandleWeld.Name = "handle"

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