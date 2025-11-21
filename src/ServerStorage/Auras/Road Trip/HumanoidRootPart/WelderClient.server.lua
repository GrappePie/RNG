local hrp = script.Parent
if hrp == nil then
	return
end
local head = script.Parent.Parent:WaitForChild("Head")
local rightarm = script.Parent.Parent:WaitForChild("Right Arm")
local torso = script.Parent.Parent:WaitForChild("Torso")
hrp.Kar.Body.Weld.Part0 = hrp
hrp.Kar.Weld.Part0 = hrp.Kar.Body
