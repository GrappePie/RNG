local hrp = script.Parent
if hrp == nil then
	return
end
hrp.Part.Motor6D.Part0 = hrp
hrp.rocks.Union.Motor6D.Part0 = hrp.Part
hrp.rocks.Union.Motor6D.Part1 = hrp.rocks.Union