local rarm = script.Parent
if rarm == nil then
	return
end
local Grip = rarm:WaitForChild("Grip")
Grip.Part0 = rarm
Grip.Part1 = rarm:WaitForChild("Sword"):WaitForChild("Grip")
if script:IsAncestorOf(workspace) then
	script:Destroy()
end