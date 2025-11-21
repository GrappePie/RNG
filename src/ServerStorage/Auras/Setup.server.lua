--!strict
if script:IsDescendantOf(workspace) then
	local Folder = script.Parent

	for _, descendant in Folder:GetDescendants() do
		if not descendant:HasTag("AuraInstance") then
			descendant:AddTag("AuraInstance")
		end
	end

	task.wait()

	script:Destroy()
end