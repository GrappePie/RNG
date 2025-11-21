local hrp = script.Parent
if hrp == nil then
	return
end
local electr = hrp:WaitForChild("electr")
local floor = hrp:WaitForChild("floor")
electr.Motor6D.Part0 = hrp
floor.Motor6D.Part0 = hrp