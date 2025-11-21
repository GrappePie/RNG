local hrp = script.Parent
if hrp == nil then
	return
end

local weld = hrp.WatermelonWeld

weld.Part0 = hrp
weld.Part1 = hrp.Watermelon
