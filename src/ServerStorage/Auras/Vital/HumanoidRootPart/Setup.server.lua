--!strict
if script:IsDescendantOf(workspace) then
	local HumanoidRootPart = script.Parent

	local Music = HumanoidRootPart:WaitForChild("Music")
	local CustomObjects = HumanoidRootPart:WaitForChild("CustomObjects")

	local TV = CustomObjects:WaitForChild("TV")
	local Floor = CustomObjects:WaitForChild("Floor")

	local Mesh = TV:WaitForChild("Meshes/XCPcC (1)")

	local FloorWeld = HumanoidRootPart:WaitForChild("Floor")
	local MeshWeld = HumanoidRootPart:WaitForChild("Meshes/XCPcC (1)")
	FloorWeld.Part0 = HumanoidRootPart
	FloorWeld.Part1 = Floor
	MeshWeld.Part0 = HumanoidRootPart
	MeshWeld.Part1 = Mesh

	if not HumanoidRootPart:HasTag("AuraInstance") then
		HumanoidRootPart:AddTag("AuraInstance")
	end

	for _, descendant in HumanoidRootPart:GetDescendants() do
		if not descendant:HasTag("AuraInstance") then
			descendant:AddTag("AuraInstance")
		end
	end

	Music:SetAttribute("Player", HumanoidRootPart.Parent.Name)

	Music.Volume = Music:GetAttribute("Volume") or 0.7
	Music:Play()

	task.wait()

	script:Destroy()
end