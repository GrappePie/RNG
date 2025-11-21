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
local InnerRingWeld = hrp.InnerRingWeld
InnerRingWeld.Part0 = hrp
InnerRingWeld.Part1 = hrp.InnerRing
local OuterRingWeld = hrp.OuterRingWeld
OuterRingWeld.Part0 = hrp
OuterRingWeld.Part1 = hrp.OuterRing