local hrp = script.Parent
if hrp == nil then
	return
end
local rightarm = hrp.Parent:WaitForChild("Right Arm")
rightarm["Handle"].ArmWeld.Part0 = rightarm
local torso = hrp.Parent:WaitForChild("HumanoidRootPart")
torso.IcoSphere1.Weld.Part0 = hrp
torso.sphere.Weld.Part0 = hrp
torso.IcoSphere0.Weld.Part0 = hrp
torso.Part.Weld.Part0 = hrp
torso.ball.Weld.Part0 = hrp
torso.ballpart.Weld.Part0 = hrp
torso.bottompart.Weld.Part0 = hrp