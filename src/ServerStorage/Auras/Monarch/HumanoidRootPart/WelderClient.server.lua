local hrp = script.Parent
if hrp == nil then
	return
end
local rightarm = hrp.Parent:WaitForChild("Right Arm")
local torso = hrp.Parent:WaitForChild("HumanoidRootPart")
torso.OrbCrown.Weld.Part0 = hrp
torso.NewAura.Weld.Part0 = hrp
torso.BaseT.Weld.Part0 = hrp