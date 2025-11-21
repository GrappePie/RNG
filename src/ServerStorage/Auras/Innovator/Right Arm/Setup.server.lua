if script:IsDescendantOf(workspace) then
	local RightArm = script.Parent

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