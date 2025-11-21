-- What the sigma?

local v_u_1 = game:GetService("RunService")
local function v_u_6(p2, p3)
	local v4 = p2:Clone()
	for _, v5 in ipairs(v4:GetChildren()) do
		v5:Destroy()
	end
	v4.Parent = p3
	v4.Size = UDim2.fromScale(1, 1)
	v4.AnchorPoint = Vector2.new(0, 0)
	v4.Position = UDim2.fromScale(0, 0)
	return v4
end
return function(p7)
	-- upvalues: (copy) v_u_6, (copy) v_u_1
	local v_u_8 = tick()
	p7.Text = game.Players:GetPlayerByUserId(p7:GetAttribute("UserId")).DisplayName
	p7.Rotation = 0
	local v_u_9 = v_u_6(p7, p7)
	local v_u_10 = v_u_6(p7, p7)
	local v_u_11 = v_u_6(p7, p7)
	v_u_10.TextColor3 = Color3.new(0, 0, 1)
	v_u_11.TextColor3 = Color3.new(1, 0, 0)
	v_u_10.ZIndex = 1
	v_u_11.ZIndex = 2
	v_u_9.ZIndex = 3
	local v_u_12 = v_u_1.RenderStepped:Connect(function()
		-- upvalues: (ref) v_u_8, (copy) v_u_10, (copy) v_u_11
		if 0.02 <= tick() - v_u_8 then
			v_u_8 = tick()
			v_u_10.Position = UDim2.fromScale(math.random(-8, -2) / 100, 0)
			v_u_11.Position = UDim2.fromScale(math.random(2, 8) / 100, 0)
		end
	end)
	return function()
		-- upvalues: (copy) v_u_12, (copy) v_u_9, (copy) v_u_10, (copy) v_u_11
		v_u_12:Disconnect()
		v_u_9:Destroy()
		v_u_10:Destroy()
		v_u_11:Destroy()
	end
end