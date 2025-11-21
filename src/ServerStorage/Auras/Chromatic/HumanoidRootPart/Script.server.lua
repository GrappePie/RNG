local hrp = script.Parent
if hrp == nil then
	return
end
local FloorParticles = hrp:WaitForChild("FloorParticles")
local FloorParticlesWeld = hrp:WaitForChild("FloorParticlesWeld")
FloorParticlesWeld.Part0 = hrp
FloorParticlesWeld.Part1 = FloorParticles
local Setter = hrp:WaitForChild("Setter")
local Target = Setter:WaitForChild("Target")
Target.Value = hrp.Parent
local BGM = hrp:WaitForChild("BGM")
BGM:SetAttribute("Player", hrp.Parent.Name)