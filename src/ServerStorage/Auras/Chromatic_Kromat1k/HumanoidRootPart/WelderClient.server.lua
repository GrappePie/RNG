local hrp = script.Parent
if hrp == nil then
	return
end

local weld = hrp.Welded

weld.Part0 = hrp
weld.Part1 = hrp.Visualizer.Weld
