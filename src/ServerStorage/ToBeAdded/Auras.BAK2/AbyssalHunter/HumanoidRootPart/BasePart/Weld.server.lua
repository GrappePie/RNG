local floor = script.Parent.FloorPart
local SeaSnow = script.Parent.SeaSnow

SeaSnow.WeldConstraint.Part0 = SeaSnow
SeaSnow.WeldConstraint.Part1 = script.Parent
floor.WeldConstraint.Part0 = floor
floor.WeldConstraint.Part1 = script.Parent