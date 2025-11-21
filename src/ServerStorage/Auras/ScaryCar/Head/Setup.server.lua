if script:IsDescendantOf(workspace) then
	local Head = script.Parent

	local lentescoolV2 = Head:WaitForChild("lentescoolV2")

	local WeldConstraint = lentescoolV2:WaitForChild("WeldConstraint")

	WeldConstraint.Part0 = Head
	WeldConstraint.Part1 = Head

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