-- What the sigma?

local v_u_1 = game:GetService("RunService")
local function v_u_6(p2, p3)
	local v4 = p2:Clone()
	for _, v5 in ipairs(v4:GetChildren()) do
		v5:Destroy()
	end
	v4.Parent = p3
	v4.Size = UDim2.fromScale(1, 1)
	v4.AnchorPoint = Vector2.new(0.5, 0.5)
	v4.Position = UDim2.fromScale(0.5, 0.5)
	return v4
end
return function(p7)
	-- upvalues: (copy) v_u_6, (copy) v_u_1
	p7.Text = "[\226\138\153] " .. game.Players:GetPlayerByUserId(p7:GetAttribute("UserId")).DisplayName
	p7.Rotation = 0
	local v_u_8 = v_u_6(p7, p7)
	local v_u_9 = v_u_6(p7, p7)
	v_u_8.TextTransparency = 0.6
	v_u_9.TextTransparency = 0.6
	v_u_8.TextColor3 = Color3.new(0.384314, 0.6, 1)
	v_u_9.TextColor3 = Color3.new(0.384314, 0.6, 1)
	local v_u_10 = { math.random(20, 30), math.random(20, 30), math.random(20, 30) }
	local v_u_11 = { math.random(20, 30), math.random(20, 30), math.random(20, 30) }
	local v_u_29 = v_u_1.RenderStepped:Connect(function()
		-- upvalues: (copy) v_u_8, (copy) v_u_10, (copy) v_u_9, (copy) v_u_11
		local v12 = time() * 50
		local v13 = v_u_8
		local v14 = UDim2.fromScale(0.5, 0.5)
		local v15 = UDim2.fromScale
		local v16 = v12 / v_u_10[1]
		local v17 = 0.06 * math.sin(v16)
		local v18 = v12 / v_u_10[2]
		v13.Position = v14 + v15(v17, 0.15 * math.sin(v18))
		local v19 = v_u_8
		local v20 = v12 / v_u_10[3]
		v19.Rotation = 3 * math.sin(v20)
		local v21 = v_u_9
		local v22 = UDim2.fromScale(0.5, 0.5)
		local v23 = UDim2.fromScale
		local v24 = v12 / v_u_11[1]
		local v25 = 0.06 * math.sin(v24)
		local v26 = v12 / v_u_11[2]
		v21.Position = v22 + v23(v25, 0.15 * math.sin(v26))
		local v27 = v_u_9
		local v28 = v12 / v_u_11[3]
		v27.Rotation = 3 * math.sin(v28)
	end)
	return function()
		-- upvalues: (copy) v_u_29, (copy) v_u_8, (copy) v_u_9
		v_u_29:Disconnect()
		v_u_8:Destroy()
		v_u_9:Destroy()
	end
end