-- What the sigma?

local v_u_1 = game:GetService("RunService")
local function v_u_6(p2, p3)
	local v4 = p2:Clone()
	for _, v5 in ipairs(v4:GetChildren()) do
		v5:Destroy()
	end
	v4.Parent = p3
	return v4
end
local v_u_7 = game:GetService("TweenService")
local v_u_8 = game:GetService("Debris")
local v_u_9 = Tween0o.new(0.4, Enum.EasingStyle.Quart)
local v_u_10 = {
	["Size"] = UDim2.fromScale(1.2, 1.3),
	["TextTransparency"] = 1
}
return function(p_u_11)
	-- upvalues: (copy) v_u_1, (copy) v_u_6, (copy) v_u_7, (copy) v_u_9, (copy) v_u_10, (copy) v_u_8
	local v_u_12 = tick()
	p_u_11.Text = "[\226\151\134]" .. game.Players:GetPlayerByUserId(p_u_11:GetAttribute("UserId")).DisplayName
	p_u_11.Rotation = 0
	local v_u_14 = v_u_1.RenderStepped:Connect(function()
		-- upvalues: (ref) v_u_12, (ref) v_u_6, (copy) p_u_11, (ref) v_u_7, (ref) v_u_9, (ref) v_u_10, (ref) v_u_8
		if 0.05 <= tick() - v_u_12 then
			v_u_12 = tick()
			local v13 = v_u_6(p_u_11, p_u_11)
			v13.TextColor3 = Color3.fromRGB(201, 65, 255)
			v13.TextTransparency = 0.5
			v13.Position = UDim2.fromScale(0.5, 0.5)
			v13.AnchorPoint = Vector2.new(0.5, 0.5)
			v13.Size = UDim2.fromScale(1, 1)
			v_u_7:Create(v13, v_u_9, v_u_10):Play()
			v_u_8:AddItem(v13, 0.4)
		end
	end)
	return function()
		-- upvalues: (copy) v_u_14
		v_u_14:Disconnect()
	end
end