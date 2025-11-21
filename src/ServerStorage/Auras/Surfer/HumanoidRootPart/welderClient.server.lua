local hrp = script.Parent

if hrp == nil then
	return
end

script.Parent.Ground.GroundWeld.Part0 = hrp
script.Parent.Cube.SurfWeld.Part0 = hrp