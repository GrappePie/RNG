local hrp = script.Parent
if hrp == nil then
	return
end
local SwordWeld = hrp.SwordWeld
SwordWeld.Part0 = hrp.Parent:WaitForChild("Left Arm")
SwordWeld.Part1 = hrp.Sword
local HornWeld = hrp.HornWeld
HornWeld.Part0 = hrp.Parent:WaitForChild("Head")
HornWeld.Part1 = hrp.Horn
local ShadowWeld = hrp.ShadowWeld
ShadowWeld.Part0 = hrp.Parent:WaitForChild("Head")
ShadowWeld.Part1 = hrp.Shadow