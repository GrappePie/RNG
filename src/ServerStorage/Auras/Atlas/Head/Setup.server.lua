--!strict
if script:IsDescendantOf(workspace) then
	local Head = script.Parent

	for _, child in Head:GetChildren() do
		if child:IsA("Weld") then
			child.Part0 = Head
		end
	end

	task.wait()

	script:Destroy()
end