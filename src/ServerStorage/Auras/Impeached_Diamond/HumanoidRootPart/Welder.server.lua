local hrp = script.Parent
if hrp == nil then
	return
end
local NewAuraWeld = script.Parent["New Aura"]
NewAuraWeld.Part0 = hrp
NewAuraWeld.Part1 = script.Parent["NewAura"]