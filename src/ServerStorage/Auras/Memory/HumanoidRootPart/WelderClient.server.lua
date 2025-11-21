local hrp = script.Parent
if hrp == nil then
	return
end
local SwordWeld = hrp.SwordWeld
SwordWeld.Part0 = hrp.Parent:WaitForChild("Left Arm")
SwordWeld.Part1 = hrp.Sword
local VisorWeld = hrp.VisorWeld
VisorWeld.Part0 = hrp.Parent:WaitForChild("Head")
VisorWeld.Part1 = hrp.Visor