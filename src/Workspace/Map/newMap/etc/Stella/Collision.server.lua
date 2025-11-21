local thing = script.Parent

if thing ~= nil then
	for _, descendant:BasePart in thing:GetDescendants() do
		if descendant:IsA("BasePart") then
			if descendant.CollisionGroup ~= "Player" then
				descendant.CollisionGroup = "Player"
			end
		end
	end
end