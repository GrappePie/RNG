-- What the sigma?

game:GetService("RunService")
local v_u_1 = game:GetService("Debris")
local v_u_2 = game:GetService("TweenService")
local v_u_3 = Tween0o.new(0.3, Enum.EasingStyle.Quart)
local function v_u_7(p4)
	-- upvalues: (copy) v_u_2, (copy) v_u_3, (copy) v_u_1
	local v5 = Instance.new("ImageLabel", p4)
	v5.Position = UDim2.fromScale(math.random(0, 100) / 100, math.random(0, 100) / 100)
	v5.ImageColor3 = math.random(1, 2) == 1 and Color3.new(0, 0, 0) or Color3.new(1, 0.203922, 0.203922)
	v5.Image = "http://www.roblox.com/asset/?id=5946093983"
	v5.AnchorPoint = Vector2.new(0.5, 0.5)
	v5.BorderSizePixel = 0
	v5.BackgroundTransparency = 1
	v5.ImageTransparency = math.random(0, 30) / 100
	v5.SizeConstraint = Enum.SizeConstraint.RelativeYY
	local v6 = math.random(4, 8) / 10
	v5.Size = UDim2.fromScale(v6 * 1.5, v6)
	v5.Rotation = math.random(-5, 5)
	v_u_2:Create(v5, v_u_3, {
		["Size"] = UDim2.new(v6 * 2, 0),
		["Rotation"] = math.random(-8, 8)
	}):Play()
	v_u_1:AddItem(v5, 0.3)
end
local v_u_8 = game:GetService("RunService")
return function(p_u_9)
	-- upvalues: (copy) v_u_8, (copy) v_u_7
	local v_u_10 = tick()
	p_u_9.Text = "[\232\181\164] " .. game.Players:GetPlayerByUserId(p_u_9:GetAttribute("UserId")).DisplayName
	p_u_9.Rotation = 0
	p_u_9.FontFace = script:WaitForChild("TextLabel2").FontFace
	local v_u_11 = v_u_8.RenderStepped:Connect(function()
		-- upvalues: (ref) v_u_10, (ref) v_u_7, (copy) p_u_9
		if tick() - v_u_10 >= Random.new():NextNumber(0, 0.06) then
			v_u_10 = tick()
			v_u_7(p_u_9)
		end
	end)
	return function()
		-- upvalues: (copy) v_u_11, (copy) p_u_9
		v_u_11:Disconnect()
		p_u_9.FontFace = script:WaitForChild("TextLabel").FontFace
	end
end