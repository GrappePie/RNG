local hrp = script.Parent
if hrp == nil then
	return
end
local Lightningweld = hrp.LightningWeld
Lightningweld.Part0 = hrp
Lightningweld.Part1 = hrp.Lightning
local rightarm = hrp.Parent:WaitForChild("Right Arm")
rightarm.Handle.Part0 = rightarm
rightarm.Handle.Part1 = rightarm["Lightning Bolt"].Handle