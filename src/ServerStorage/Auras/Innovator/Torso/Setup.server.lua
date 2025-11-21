if script:IsDescendantOf(workspace) then
	local Torso = script.Parent
	local HumanoidRootPart = Torso.Parent:WaitForChild("HumanoidRootPart")

	local Model = HumanoidRootPart:WaitForChild("Model")

	local RightBig1 = Model:WaitForChild("Right Big 1")
	local LeftBig1 = Model:WaitForChild("Left Big 1")
	local RightSmall1 = Model:WaitForChild("Right Small 1")
	local LeftSmall1 = Model:WaitForChild("Left Small 1")

	local _1 = Torso:WaitForChild("1")
	local _2 = Torso:WaitForChild("2")
	local _3 = Torso:WaitForChild("3")
	local _4 = Torso:WaitForChild("4")

	_1.Part0 = Torso
	_1.Part1 = RightBig1
	_2.Part0 = Torso
	_2.Part1 = LeftBig1
	_3.Part0 = Torso
	_3.Part1 = RightSmall1
	_4.Part0 = Torso
	_4.Part1 = LeftSmall1

	if not Torso:HasTag("AuraInstance") then
		Torso:AddTag("AuraInstance")
	end

	for _, descendant in Torso:GetDescendants() do
		if not descendant:HasTag("AuraInstance") then
			descendant:AddTag("AuraInstance")
		end
	end

	task.wait()

	script:Destroy()
end