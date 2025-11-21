if script:IsDescendantOf(workspace) then
	local Head = script.Parent

	if not Head:HasTag("AuraInstance") then
		Head:AddTag("AuraInstance")
	end

	for _, descendant in Head:GetDescendants() do
		if not descendant:HasTag("AuraInstance") then
			descendant:AddTag("AuraInstance")
		end
	end

	task.wait()

	script:Destroy()
end