local hrp = script.Parent
if hrp == nil then
	return
end
local FloorWeld = hrp:WaitForChild("FloorWeld")
FloorWeld.Part0 = hrp
FloorWeld.Part1 = hrp:WaitForChild("Floor")
local HaloWeld
for _, Instance in hrp:GetChildren() do
	if Instance:IsA("Motor6D") then
		HaloWeld = Instance
	end
end
HaloWeld.Part0 = hrp
HaloWeld.Part1 = hrp:WaitForChild("Halo")
if script:IsAncestorOf(workspace) then
	script:Destroy()
end