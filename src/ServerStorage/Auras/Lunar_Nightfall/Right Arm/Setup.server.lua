if script:IsDescendantOf(workspace) then
	local RightArm = script.Parent

	local VFXPart = RightArm:WaitForChild("Model"):WaitForChild("VFXPart")

	local Motor6D = VFXPart:WaitForChild("Motor6D")

	Motor6D.Part0 = RightArm
	Motor6D.Part1 = VFXPart

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