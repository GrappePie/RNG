-- What the sigma?

game:GetService("RunService")
local v_u_1 = game:GetService("Debris")
local v_u_2 = game:GetService("TweenService")
local v_u_3 = TweenInfo.new(0.3, Enum.EasingStyle.Quart)
local function v_u_8(p4, p5)
	-- upvalues: (copy) v_u_2, (copy) v_u_3, (copy) v_u_1
	local v6 = Instance.new("ImageLabel", p4)
	v6.Position = UDim2.fromScale(math.random(0, 100) / 100, math.random(0, 100) / 100)
	if p5 then
		p5:Clone().Parent = v6
	end
	v6.Image = "rbxassetid://12386386944"
	v6.AnchorPoint = Vector2.new(0.5, 0.5)
	v6.BorderSizePixel = 0
	v6.BackgroundTransparency = 1
	v6.ImageTransparency = math.random(0, 30) / 100
	v6.SizeConstraint = Enum.SizeConstraint.RelativeYY
	v6.Rotation = 90
	local v7 = math.random(8, 12) / 10
	v6.Size = UDim2.fromScale(v7 * 1.5, v7)
	v_u_2:Create(v6, v_u_3, {
		["Size"] = UDim2.fromScale(0, v7 * 1.5),
		["ImageColor3"] = math.random(1, 2) == 1 and Color3.new(0.619608, 0.188235, 1) or Color3.new(0.470588, 0.00392157, 1)
	}):Play()
	v_u_1:AddItem(v6, 0.3)
end
local v_u_9 = game:GetService("RunService")
return function(p_u_10)
	-- upvalues: (copy) v_u_2, (copy) v_u_9, (copy) v_u_8
	local v_u_11 = script:WaitForChild("Glow"):Clone()
	v_u_11.Parent = p_u_10
	local v_u_12 = script:WaitForChild("Shock"):Clone()
	v_u_12.Parent = p_u_10
	local v_u_13 = tick()
	p_u_10.Text = game.Players:GetPlayerByUserId(p_u_10:GetAttribute("UserId")).DisplayName
	p_u_10.Rotation = 0
	p_u_10.FontFace = Font.new("rbxassetid://12187365104")
	v_u_2:Create(v_u_12, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out, -1, false, 0), {
		["Size"] = UDim2.fromScale(2, 2),
		["ImageTransparency"] = 1
	}):Play()
	local v_u_15 = v_u_9.RenderStepped:Connect(function(_)
		-- upvalues: (ref) v_u_13, (copy) p_u_10, (copy) v_u_11, (copy) v_u_12, (ref) v_u_8
		if tick() - v_u_13 >= Random.new():NextNumber(0, 0.06) then
			v_u_13 = tick()
			local v14 = p_u_10:FindFirstChildOfClass("UIGradient")
			if v14 then
				v_u_11:FindFirstChildOfClass("UIGradient").Color = v14.Color
				v_u_12:FindFirstChild("UIGradient").Color = v14.Color
			end
			v_u_8(p_u_10, v14)
		end
	end)
	return function()
		-- upvalues: (copy) v_u_15, (copy) p_u_10, (copy) v_u_12, (copy) v_u_11
		v_u_15:Disconnect()
		p_u_10.FontFace = script:WaitForChild("TextLabel").FontFace
		v_u_12:Destroy()
		v_u_11:Destroy()
	end
end