-- What the sigma?

local v_u_1 = UDim2.new
local v_u_2 = game:GetService("UserInputService")
local v_u_3 = {}
v_u_3.__index = v_u_3
function v_u_3.new(p4)
	-- upvalues: (copy) v_u_3
	local v5 = {
		["Object"] = p4,
		["DragStarted"] = nil,
		["DragEnded"] = nil,
		["Dragged"] = nil,
		["Dragging"] = false
	}
	local v6 = v_u_3
	setmetatable(v5, v6)
	return v5
end
function v_u_3.Enable(p_u_7)
	-- upvalues: (copy) v_u_1, (copy) v_u_2
	local v_u_8 = p_u_7.Object
	local v_u_9 = nil
	local v_u_10 = nil
	local v_u_11 = nil
	local v_u_12 = false
	local v_u_13 = v_u_8:FindFirstAncestorOfClass("Frame")
	p_u_7.InputBegan = v_u_8.InputBegan:Connect(function(p_u_14)
		-- upvalues: (ref) v_u_12, (copy) p_u_7
		if p_u_14.UserInputType == Enum.UserInputType.MouseButton1 or p_u_14.UserInputType == Enum.UserInputType.Touch then
			v_u_12 = true
			local v_u_15 = nil
			v_u_15 = p_u_14.Changed:Connect(function()
				-- upvalues: (copy) p_u_14, (ref) p_u_7, (ref) v_u_12, (ref) v_u_15
				if p_u_14.UserInputState == Enum.UserInputState.End and (p_u_7.Dragging or v_u_12) then
					p_u_7.Dragging = false
					v_u_15:Disconnect()
					if p_u_7.DragEnded and not v_u_12 then
						p_u_7.DragEnded()
					end
					v_u_12 = false
				end
			end)
		end
	end)
	p_u_7.InputChanged = v_u_8.InputChanged:Connect(function(p16)
		-- upvalues: (ref) v_u_9
		if p16.UserInputType == Enum.UserInputType.MouseMovement or p16.UserInputType == Enum.UserInputType.Touch then
			v_u_9 = p16
		end
	end)
	p_u_7.InputChanged2 = v_u_2.InputChanged:Connect(function(p17)
		-- upvalues: (copy) v_u_8, (copy) v_u_13, (copy) p_u_7, (ref) v_u_12, (ref) v_u_10, (ref) v_u_11, (ref) v_u_9, (ref) v_u_1
		if v_u_8 == nil or v_u_13 == nil then
			p_u_7:Disable()
		else
			if v_u_12 then
				v_u_12 = false
				if p_u_7.DragStarted then
					p_u_7.DragStarted()
				end
				p_u_7.Dragging = true
				v_u_10 = p17.Position
				v_u_11 = v_u_13.Position
			end
			if p17 == v_u_9 and p_u_7.Dragging then
				local v18 = p17.Position - v_u_10
				local v19 = v_u_1(v_u_11.X.Scale, v_u_11.X.Offset + v18.X, v_u_11.Y.Scale, v_u_11.Y.Offset + v18.Y)
				v_u_13.Position = v19
				if p_u_7.Dragged then
					p_u_7.Dragged(v19)
				end
			end
		end
	end)
end
function v_u_3.Disable(p20)
	p20.InputBegan:Disconnect()
	p20.InputChanged:Disconnect()
	p20.InputChanged2:Disconnect()
	if p20.Dragging then
		p20.Dragging = false
		if p20.DragEnded then
			p20.DragEnded()
		end
	end
end
return v_u_3