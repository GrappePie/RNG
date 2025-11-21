if script:IsDescendantOf(workspace) then
	local Head = script.Parent

	local HelmetBody = Head:WaitForChild("Helmet"):WaitForChild("Base")
	local HelmetGlass = Head:WaitForChild("Helmet"):WaitForChild("Glass")

	local HelmetBodyWeld = Head:WaitForChild("Meshes/untitled_body")
	local HelmetGlassWeld = Head:WaitForChild("Meshes/untitled_glass")

	HelmetBodyWeld.Part0 = Head
	HelmetBodyWeld.Part1 = HelmetBody
	HelmetGlassWeld.Part0 = Head
	HelmetGlassWeld.Part1 = HelmetGlass

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