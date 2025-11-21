--!strict
if script:IsDescendantOf(workspace) then
	if script.Parent:GetAttribute("Run") then
		return
	end
end

return