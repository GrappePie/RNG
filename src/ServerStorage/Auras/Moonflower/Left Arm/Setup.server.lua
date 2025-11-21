if script:IsDescendantOf(workspace) then
	local LeftArm = script.Parent

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