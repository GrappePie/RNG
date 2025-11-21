local hrp = script.Parent
if hrp == nil then
	return
end
local Root = hrp.Parent:WaitForChild("HumanoidRootPart")

Root.Main.Weld.Part1 = hrp
