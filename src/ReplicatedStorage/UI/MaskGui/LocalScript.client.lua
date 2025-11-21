-- What the sigma?

local v_u_1 = script.Parent:WaitForChild("TargetCharacterValue").Value
for _, v2 in v_u_1:GetDescendants() do
	if v2:GetAttribute("AuraInstance") then
		v2.Destroying:Connect(function()
			script.Parent:Destroy()
		end)
		break
	end
end
v_u_1.AncestryChanged:Connect(function()
	-- upvalues: (copy) v_u_1
	if not v_u_1.Parent then
		script.Parent:Destroy()
	end
end)