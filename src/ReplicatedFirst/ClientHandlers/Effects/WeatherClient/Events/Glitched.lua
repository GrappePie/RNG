--!strict
local tbl_upvr = {}
local children_upvr = script:WaitForChild("Effects"):GetChildren()
local function ChildAdded_upvr(arg1)
	if arg1:IsA("BasePart") then
		for _, v in ipairs(children_upvr) do
			local clone = v:Clone()
			clone.Parent = arg1
			table.insert(tbl_upvr, clone)
		end
	end
end
local CollectionService_upvr = game:GetService("CollectionService")
return function()
	for _, v_2 in ipairs(CollectionService_upvr:GetTagged("Leaves")) do
		task.defer(ChildAdded_upvr, v_2)
	end
	local any_Connect_result1_upvw = CollectionService_upvr:GetInstanceAddedSignal("Leaves"):Connect(ChildAdded_upvr)
	return function()
		any_Connect_result1_upvw:Disconnect()
		any_Connect_result1_upvw = nil
		for _, v_3 in ipairs(tbl_upvr) do
			v_3.Enabled = false
			v_3:Destroy()
		end
		table.clear(tbl_upvr)
	end
end