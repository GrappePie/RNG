local torso = script.Parent
if torso == nil then
	return
end
local HornWeld = script.Parent.HornWeld
HornWeld.Part0 = script.Parent
HornWeld.Part1 = script.Parent.Horn
HornWeld.Enabled = true