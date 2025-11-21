local hrp = script.Parent
if hrp == nil then
	return
end
local head = script.Parent.Parent:WaitForChild("Head")
local rightarm = script.Parent.Parent:WaitForChild("Right Arm")
local torso = script.Parent.Parent:WaitForChild("Torso")
hrp.Constellation.Weld.Part0 = hrp
hrp.comet.Weld.Part0 = hrp
hrp.effect.Weld.Part0 = hrp
hrp.sky.Weld.Part0 = hrp