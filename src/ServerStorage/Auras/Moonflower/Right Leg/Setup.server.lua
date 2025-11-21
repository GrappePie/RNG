if script:IsDescendantOf(workspace) then
	local RightLeg = script.Parent

	if not RightLeg:HasTag("AuraInstance") then
		RightLeg:AddTag("AuraInstance")
	end

	for _, descendant in RightLeg:GetDescendants() do
		if not descendant:HasTag("AuraInstance") then
			descendant:AddTag("AuraInstance")
		end
	end

	task.wait()

	script:Destroy()
end