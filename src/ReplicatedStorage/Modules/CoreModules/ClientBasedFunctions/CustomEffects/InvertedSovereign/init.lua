-- What the sigma?

local Invert = require(script:WaitForChild("Inverter"))

local v_u_1 = game:GetService("StarterGui")
local v_u_2 = game:GetService("TweenService")
local v_u_3 = Tween0o.new(0.5, Enum.EasingStyle.Quart)
local v_u_4 = Tween0o.new(0.3, Enum.EasingStyle.Quart)
local v_u_5 = Tween0o.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
local v_u_6 = Tween0o.new(1, Enum.EasingStyle.Quart)
local v_u_7 = Tween0o.new(2, Enum.EasingStyle.Quart)
local v_u_8 = Tween0o.new(6, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
local v9 = game:GetService("ReplicatedStorage")
local v_u_10 = game:GetService("RunService")
local v_u_11 = v9.Assets.SFXs
local v_u_12 = workspace.CurrentCamera
local v_u_13 = {
	["BackgroundTransparency"] = 0.6
}
local v_u_14 = {
	["BackgroundTransparency"] = 1
}
local v_u_15 = {
	["BackgroundTransparency"] = 0
}
local v_u_16 = game:GetService("Debris")
local v_u_17 = Invert(Color3.fromHex("1770ff"))
local v_u_18 = Invert(Color3.fromHex("ffeb50"))
local function v_u_23(p_u_19)
	-- upvalues: (copy) v_u_12, (copy) v_u_17, (copy) v_u_18
	local v20 = v_u_12.ViewportSize.Magnitude
	p_u_19.ImageColor3 = v_u_17:Lerp(v_u_18, p_u_19.AbsolutePosition.Magnitude / v20)
	local v_u_22 = p_u_19:GetPropertyChangedSignal("Position"):Connect(function()
		-- upvalues: (ref) v_u_12, (copy) p_u_19, (ref) v_u_17, (ref) v_u_18
		local v21 = v_u_12.ViewportSize.Magnitude
		p_u_19.ImageColor3 = v_u_17:Lerp(v_u_18, p_u_19.AbsolutePosition.Magnitude / v21)
	end)
	p_u_19.Destroying:Once(function()
		-- upvalues: (copy) v_u_22
		v_u_22:Disconnect()
	end)
end
local function v_u_29(p24, p25, p26)
	-- upvalues: (copy) v_u_23, (copy) v_u_2, (copy) v_u_4, (copy) v_u_16
	local v27 = Instance.new("ImageLabel", p24)
	v27.Position = UDim2.fromScale(math.random(0, 100) / 100, math.random(0, 100) / 100)
	v27.Image = p26
	v27.ImageColor3 = p25
	v27.SizeConstraint = Enum.SizeConstraint.RelativeXX
	v27.BackgroundTransparency = 1
	v27.ImageTransparency = 0.8
	v27.Rotation = math.random(0, 360)
	v_u_23(v27)
	local v28 = math.random(2, 6) / 20
	v27.AnchorPoint = Vector2.new(0.5, 0.5)
	v27.Size = UDim2.fromScale(v28, v28)
	v_u_2:Create(v27, v_u_4, {
		["Size"] = UDim2.fromScale()
	}):Play()
	v_u_16:AddItem(v27, 0.3)
end
local function v_u_39(p30, p31)
	-- upvalues: (copy) v_u_23, (copy) v_u_2, (copy) v_u_3, (copy) v_u_5, (copy) v_u_16, (copy) v_u_10
	local v_u_32 = Instance.new("ImageLabel", p30)
	v_u_32.Size = UDim2.fromScale(1, 1)
	v_u_32.Image = "rbxassetid://1946917526"
	v_u_32.ImageColor3 = p31
	v_u_32.SizeConstraint = Enum.SizeConstraint.RelativeXX
	v_u_32.BackgroundTransparency = 1
	v_u_32.ImageTransparency = 1
	v_u_32.Rotation = math.random(-3, 3)
	v_u_32.AnchorPoint = Vector2.new(0.5, 0.5)
	v_u_23(v_u_32)
	v_u_2:Create(v_u_32, v_u_3, {
		["ImageTransparency"] = 0.7
	}):Play()
	local v_u_33 = UDim2.fromScale(math.random(0, 100) / 100, math.random(0, 100) / 100)
	local v_u_34 = math.random(2, 5) / 1400 * (math.random(1, 2) == 1 and -1 or 1)
	local v_u_35 = math.random(2, 5) / 1400 * (math.random(1, 2) == 1 and -1 or 1)
	coroutine.wrap(function()
		-- upvalues: (copy) v_u_32, (ref) v_u_2, (ref) v_u_5, (ref) v_u_16, (copy) v_u_33, (copy) v_u_34, (copy) v_u_35, (ref) v_u_10
		local v36 = time()
		local v37 = v36 + math.random(15, 20) / 10
		while v_u_32 and v_u_32.Parent do
			if time() >= v37 - 0.5 and not v_u_32:GetAttribute("Removing") then
				v_u_32:SetAttribute("Removing", true)
				v_u_2:Create(v_u_32, v_u_5, {
					["ImageTransparency"] = 1
				}):Play()
				v_u_16:AddItem(v_u_32, 0.5)
			end
			local v38 = (time() - v36) * 50
			v_u_32.Position = v_u_33 + UDim2.fromScale(v38 * -v_u_34, v38 * -v_u_35)
			v_u_10.Heartbeat:Wait()
		end
	end)()
end
local function v_u_45(p40, p41, p42, p43)
	-- upvalues: (copy) v_u_2, (copy) v_u_7, (copy) v_u_16
	script:WaitForChild("Whoosh").Volume = 1 - p42 + 0.3
	script:WaitForChild("Whoosh"):Play()
	local v44 = Instance.new("ImageLabel", p40)
	v44.Size = UDim2.fromScale(0.8, 0.8)
	v44.Image = p43
	v44.ImageColor3 = p41
	v44.SizeConstraint = Enum.SizeConstraint.RelativeYY
	v44.BackgroundTransparency = 1
	v44.ImageTransparency = p42
	v44.AnchorPoint = Vector2.new(0.5, 0.5)
	v44.Position = UDim2.fromScale(0.5, 0.5)
	v_u_2:Create(v44, v_u_7, {
		["Size"] = UDim2.fromScale(0.7, 0.7),
		["ImageTransparency"] = 1
	}):Play()
	v_u_16:AddItem(v44, 2)
end
local function v_u_50(p46)
	-- upvalues: (copy) v_u_2, (copy) v_u_16
	local v47 = Instance.new("ImageLabel", p46)
	v47.Size = UDim2.fromScale(0.8, 0.8)
	v47.Image = "rbxassetid://16685503908"
	v47.ImageColor3 = Invert(Color3.fromRGB(255, 250, 117))
	v47.SizeConstraint = Enum.SizeConstraint.RelativeYY
	v47.BackgroundTransparency = 1
	v47.ImageTransparency = 0.2
	v47.ZIndex = 20
	v47.AnchorPoint = Vector2.new(0.5, 0.5)
	v47.Position = UDim2.fromScale(0.5, 0.5)
	local v48 = script:WaitForChild("Crown"):Clone()
	v48.Parent = v47
	local v49 = script:WaitForChild("Start"):Clone()
	v49.Parent = v47
	v_u_2:Create(v48, Tween0o.new(3.75, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
		["Offset"] = Vector2.new(2, 0)
	}):Play()
	v_u_2:Create(v47, Tween0o.new(3.75, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
		["Size"] = UDim2.fromScale(1.3, 1.3)
	}):Play()
	v49:Play()
	v_u_16:AddItem(v47, 4)
end
return function(_, p51, p52, p53, _)
	-- upvalues: (copy) v_u_2, (copy) v_u_13, (copy) v_u_14, (copy) v_u_3, (copy) v_u_15, (copy) v_u_1, (copy) v_u_11, (copy) v_u_50, (copy) v_u_10, (copy) v_u_29, (copy) v_u_39, (copy) v_u_7, (copy) v_u_8, (copy) v_u_45, (copy) v_u_6
	script:WaitForChild("Ambient"):Play()
	local v_u_54 = p51.Blackboard
	local v55 = p51.Colorboard
	local v56 = p51.Background
	local _ = p51.EquipButton
	local _ = p51.SkipButton
	local v57 = p51.Star
	local _ = p51.Break1
	local _ = p51.Break2
	local v58 = p52:WaitForChild("ShakeAmount")
	local v59 = p52:WaitForChild("StarSpinSpeed")
	v_u_54.BackgroundColor3 = Color3.new(1, 1, 1)
	v_u_2:Create(v56, Tween0o.new(1, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), v_u_13)
	v_u_2:Create(v56, Tween0o.new(1, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), v_u_14)
	local v60 = v_u_2:Create(v55, Tween0o.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
		["ImageTransparency"] = 0
	})
	local v61 = v_u_2:Create(v55, Tween0o.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
		["ImageTransparency"] = 1
	})
	local v62 = v_u_2:Create(v_u_54, v_u_3, v_u_15)
	local v_u_63 = true
	v_u_1:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
	p53.Visible = false
	v62:Play()
	v55.Image = "http://www.roblox.com/asset/?id=12353440665"
	v55.ImageTransparency = 1
	v55.ImageColor3 = Color3.new(1, 1, 1)
	v55:ClearAllChildren()
	v57:ClearAllChildren()
	v57.ImageColor3 = Color3.new(1, 1, 1)
	script:WaitForChild("UIGradient"):Clone().Parent = v55
	script:WaitForChild("StarGradient"):Clone().Parent = v57
	v_u_11:WaitForChild("OneMilPlus"):Play()
	v57.Size = UDim2.fromScale(1.5, 1.5)
	v57.Image = "rbxassetid://17068400400"
	v57.Visible = true
	task.delay(1.2, v_u_50, p51)
	coroutine.wrap(function()
		-- upvalues: (ref) v_u_10, (ref) v_u_63, (ref) v_u_29, (copy) v_u_54
		while v_u_10.Stepped:Wait() and v_u_63 do
			v_u_29(v_u_54, Invert(Color3.fromRGB(42, 81, 255)), "rbxassetid://17692000754")
		end
	end)()
	coroutine.wrap(function()
		-- upvalues: (ref) v_u_63, (ref) v_u_39, (copy) v_u_54
		while task.wait(0.2) and v_u_63 do
			v_u_39(v_u_54, Invert(Color3.fromRGB(42, 81, 255)))
		end
	end)()
	v_u_2:Create(v57, v_u_7, {
		["Size"] = UDim2.fromScale(0.6, 0.6)
	}):Play()
	v59.Value = 5
	v_u_2:Create(v59, v_u_7, {
		["Value"] = 1
	}):Play()
	task.wait(3.23)
	v_u_2:Create(v59, v_u_8, {
		["Value"] = 4
	}):Play()
	v_u_2:Create(v57, v_u_8, {
		["Size"] = UDim2.fromScale(1.5, 1.5)
	}):Play()
	task.wait(4)
	p53.Visible = true
	v60:Play()
	v_u_45(v_u_54, Invert(Color3.fromRGB(255, 250, 106)), 0.6, "rbxassetid://17692043862")
	task.wait(1)
	v_u_45(v_u_54, Invert(Color3.fromRGB(255, 250, 106)), 0.3, "rbxassetid://17692043862")
	task.wait(1)
	script:WaitForChild("Ambient"):Stop()
	script:WaitForChild("Omg"):Play()
	v_u_63 = false
	v57.Visible = false
	v55.Image = "http://www.roblox.com/asset/?id=1195495135"
	v55.ImageColor3 = Invert(Color3.new(1, 1, 1))
	if v55:FindFirstChildOfClass("UIGradient") then
		v55:FindFirstChildOfClass("UIGradient"):Destroy()
	end
	v61:Play()
	v58.Value = 0.02
	v_u_2:Create(v58, v_u_7, {
		["Value"] = 0
	}):Play()
	p53.Position = UDim2.fromScale(0.5, 0.5)
	p53.Size = UDim2.fromScale(0.6, 0.2)
	v_u_2:Create(p53, v_u_6, {
		["Size"] = UDim2.fromScale(0.4, 0.1)
	}):Play()
	v_u_54.BackgroundTransparency = 1
	task.delay(3, function()
		v_u_54.BackgroundColor3 = Color3.new(0, 0, 0)
	end)
end