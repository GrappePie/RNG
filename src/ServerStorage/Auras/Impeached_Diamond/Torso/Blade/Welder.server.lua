local torso = script.Parent.Parent
if torso == nil then
	return
end
local BladeWeld = script.Parent["Weldd"]
BladeWeld.Part0 = torso
BladeWeld.Part1 = script.Parent