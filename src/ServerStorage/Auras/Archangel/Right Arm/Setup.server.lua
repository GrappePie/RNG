--!strict
if script:IsDescendantOf(workspace) then
	local RightArm = script.Parent

	local Sword = RightArm:WaitForChild("Sword")

	local SwordHandle = Sword:WaitForChild("Handle")

	local HandleWeld = RightArm:WaitForChild("Handle")

	HandleWeld.Part0 = RightArm
	HandleWeld.Part1 = SwordHandle

	task.wait()

	script:Destroy()
end