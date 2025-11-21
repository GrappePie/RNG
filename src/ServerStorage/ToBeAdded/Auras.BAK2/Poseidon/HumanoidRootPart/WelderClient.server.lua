local hrp = script.Parent
if hrp == nil then
	return
end
local rightarm = hrp.Parent:WaitForChild("Right Arm")
rightarm["Trident Handle"].ArmWeld.Part0 = rightarm
local torso = hrp.Parent:WaitForChild("Torso")
torso.Ground.Weld.Part1 = hrp
torso.Ground2.Weld.Part1 = hrp