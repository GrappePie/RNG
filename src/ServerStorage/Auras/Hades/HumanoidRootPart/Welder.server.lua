local hrp = script.Parent
if hrp == nil then
	return
end
local head = script.Parent.Parent:WaitForChild("Head")
local rightarm = script.Parent.Parent:WaitForChild("Right Arm")
local torso = script.Parent.Parent:WaitForChild("Torso")
head.Crown.Weld.Part0 = head
hrp.Floor.Weld.Part0 = hrp
rightarm.Handle.Weld.Part0 = rightarm
torso.Staff.Weld.Part0 = torso