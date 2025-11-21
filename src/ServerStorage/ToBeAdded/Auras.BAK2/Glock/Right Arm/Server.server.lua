local hrp = script.Parent
if hrp == nil then
	return
end
local rightarm = hrp.Parent:WaitForChild("Right Arm")
rightarm.HandleWeld.Part0 = rightarm
rightarm.HandleWeld.Part1 = rightarm.Glock.Handle