if script:IsDescendantOf(workspace) then
	local LeftArm = script.Parent

	local Blade = LeftArm:WaitForChild("Blade")

	local Motor6D = Blade:WaitForChild("Motor6D")

	Motor6D.Part0 = LeftArm
	Motor6D.Part1 = Blade

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