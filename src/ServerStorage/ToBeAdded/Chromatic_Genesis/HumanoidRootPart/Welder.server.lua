local humanoidrootpart = script.Parent
local basepart = script.Parent.BasePart
local back = script.Parent.Back.WeldConstraint
back.Part1 = humanoidrootpart
basepart.Motor6D.Part1 = humanoidrootpart
script.Parent.Words.Motor6D.Part1 = humanoidrootpart
script.Parent.Back.Motor6D.Part1 = humanoidrootpart