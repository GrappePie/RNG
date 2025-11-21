for i, v in pairs(script.Parent:GetDescendants()) do
	if v:IsA("WeldConstraint") then
		v.Part0 = v.Parent
		v.Part1 = script.Parent
	end
end