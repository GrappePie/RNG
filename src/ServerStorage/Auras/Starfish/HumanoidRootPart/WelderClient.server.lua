local hrp = script.Parent
if hrp == nil then
	return
end
local StarWeld = hrp.StarWeld
StarWeld.Part0 = hrp
StarWeld.Part1 = hrp.Star