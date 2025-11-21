local torso = script.Parent
if torso == nil then
	return
end
local LeftWingWeld = script.Parent.LeftWingWeld
LeftWingWeld.Part0 = script.Parent
LeftWingWeld.Part1 = script.Parent.LeftWing
LeftWingWeld.Enabled = true
local RightWingWeld = script.Parent.RightWingWeld
RightWingWeld.Part0 = script.Parent
RightWingWeld.Part1 = script.Parent.RightWing
RightWingWeld.Enabled = true
local TailWeld = script.Parent.TailWeld
TailWeld.Part0 = script.Parent
TailWeld.Part1 = script.Parent.Tail
TailWeld.Enabled = true