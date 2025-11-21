if script:IsDescendantOf(workspace) then
	local LeftLeg = script.Parent

	if not LeftLeg:HasTag("AuraInstance") then
		LeftLeg:AddTag("AuraInstance")
	end

	for _, descendant in LeftLeg:GetDescendants() do
		if not descendant:HasTag("AuraInstance") then
			descendant:AddTag("AuraInstance")
		end
	end

	task.wait()

	script:Destroy()
end