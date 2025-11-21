if script:IsDescendantOf(workspace) then
	local Pumpkin = script.Parent:WaitForChild("Pumpkin with light"):WaitForChild("Pumpkin")
	local PumpkinWeld = script.Parent:WaitForChild("PumpkinWeld")
	PumpkinWeld.Part0 = script.Parent
	PumpkinWeld.Part1 = Pumpkin
	task.wait()
	script:Destroy()
end