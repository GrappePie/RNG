--!strict
local children_upvr = script:WaitForChild("Effects"):GetChildren()
return function()
	local tbl_upvw = {}
	for _, v_upvr in ipairs(workspace.Map:GetDescendants()) do
		task.defer(function()
			if v_upvr:IsA("BasePart") and (v_upvr.Parent.Name == "Leaves" or v_upvr.Parent.Name == "gra") then
				for _, v_2 in ipairs(children_upvr) do
					local clone = v_2:Clone()
					clone.Parent = v_upvr
					table.insert(tbl_upvw, clone)
				end
				return
			end
		end)
	end
	return function()
		for _, v_3 in ipairs(tbl_upvw) do
			v_3.Enabled = false
			v_3:Destroy()
		end
		table.clear(tbl_upvw)
		tbl_upvw = nil :: any
	end
end