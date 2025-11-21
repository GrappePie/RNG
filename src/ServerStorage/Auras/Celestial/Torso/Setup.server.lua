local BGM = script.Parent:WaitForChild("BGM")
BGM.Volume = BGM:GetAttribute("Volume") or 0.75
task.wait()
if script:IsDescendantOf(workspace) then
	BGM:SetAttribute("Player", script.Parent.Parent.Name)
end