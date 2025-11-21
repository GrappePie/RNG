-- What the sigma?

local v_u_1 = game:GetService("StarterGui")
local v_u_2 = game:GetService("TweenService")
local v_u_3 = Tween0o.new(0.5, Enum.EasingStyle.Quart)
local v_u_4 = Tween0o.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
local v_u_5 = Tween0o.new(1, Enum.EasingStyle.Quart)
local v_u_6 = Tween0o.new(2, Enum.EasingStyle.Quart)
local v_u_7 = Tween0o.new(6, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
local v8 = game:GetService("ReplicatedStorage")
local v_u_9 = game:GetService("RunService")
local v_u_10 = v8.Assets.SFXs
local v_u_11 = {
	["BackgroundTransparency"] = 0.6
}
local v_u_12 = {
	["BackgroundTransparency"] = 1
}
local v_u_13 = {
	["BackgroundTransparency"] = 0
}
local v_u_14 = game:GetService("Debris")
local function v_u_23(p15, p16)
	-- upvalues: (copy) v_u_2, (copy) v_u_3, (copy) v_u_4, (copy) v_u_14, (copy) v_u_9
	local v_u_17 = Instance.new("ImageLabel", p15)
	v_u_17.Size = UDim2.fromScale()
	v_u_17.Image = "http://www.roblox.com/asset/?id=6893847210"
	v_u_17.ImageColor3 = p16
	v_u_17.SizeConstraint = Enum.SizeConstraint.RelativeXX
	v_u_17.BackgroundTransparency = 1
	local v18 = math.random(2, 3) / 100
	local _ = math.random(5, 10) * (math.random(1, 2) == 1 and -1 or 1)
	v_u_17.Rotation = 180
	v_u_17.AnchorPoint = Vector2.new(0.5, 0.5)
	v_u_2:Create(v_u_17, v_u_3, {
		["Size"] = UDim2.fromScale(v18, v18)
	}):Play()
	local v_u_19 = UDim2.fromScale(math.random(0, 100) / 100, 0)
	local _ = math.random(50, 70) * (math.random(1, 2) == 1 and -1 or 1)
	local _ = math.random(2, 5) / -500
	coroutine.wrap(function()
		-- upvalues: (copy) v_u_17, (ref) v_u_2, (ref) v_u_4, (ref) v_u_14, (copy) v_u_19, (ref) v_u_9
		local v20 = time()
		local v21 = v20 + math.random(15, 20) / 10
		local v22 = 0
		while v_u_17 and v_u_17.Parent do
			if time() >= v21 - 0.5 and not v_u_17:GetAttribute("Removing") then
				v_u_17:SetAttribute("Removing", true)
				v_u_2:Create(v_u_17, v_u_4, {
					["Size"] = UDim2.fromScale(0, 0)
				}):Play()
				v_u_14:AddItem(v_u_17, 0.5)
			end
			local _ = (time() - v20) * 50
			v_u_17.Position = v_u_19 + UDim2.fromScale(0, 0.01 * v22 ^ 2)
			v22 = v22 + 0.2
			v_u_9.Heartbeat:Wait()
		end
	end)()
end
local function v_u_33(p24, p25)
	-- upvalues: (copy) v_u_2, (copy) v_u_3, (copy) v_u_4, (copy) v_u_14, (copy) v_u_9
	local v_u_26 = Instance.new("ImageLabel", p24)
	v_u_26.Size = UDim2.fromScale(1, 1)
	v_u_26.Image = "rbxassetid://7216855489"
	v_u_26.ImageColor3 = p25
	v_u_26.SizeConstraint = Enum.SizeConstraint.RelativeXX
	v_u_26.BackgroundTransparency = 1
	v_u_26.ImageTransparency = 1
	v_u_26.Rotation = math.random(0, 360)
	v_u_26.AnchorPoint = Vector2.new(0.5, 0.5)
	v_u_2:Create(v_u_26, v_u_3, {
		["ImageTransparency"] = 0.7
	}):Play()
	local v_u_27 = UDim2.fromScale(math.random(0, 100) / 100, math.random(0, 100) / 100)
	local v_u_28 = math.random(2, 5) / 1400 * (math.random(1, 2) == 1 and -1 or 1)
	local v_u_29 = math.random(2, 5) / 1400 * (math.random(1, 2) == 1 and -1 or 1)
	coroutine.wrap(function()
		-- upvalues: (copy) v_u_26, (ref) v_u_2, (ref) v_u_4, (ref) v_u_14, (copy) v_u_27, (copy) v_u_28, (copy) v_u_29, (ref) v_u_9
		local v30 = time()
		local v31 = v30 + math.random(15, 20) / 10
		while v_u_26 and v_u_26.Parent do
			if time() >= v31 - 0.5 and not v_u_26:GetAttribute("Removing") then
				v_u_26:SetAttribute("Removing", true)
				v_u_2:Create(v_u_26, v_u_4, {
					["ImageTransparency"] = 1
				}):Play()
				v_u_14:AddItem(v_u_26, 0.5)
			end
			local v32 = (time() - v30) * 50
			v_u_26.Position = v_u_27 + UDim2.fromScale(v32 * -v_u_28, v32 * -v_u_29)
			v_u_9.Heartbeat:Wait()
		end
	end)()
end
local function v_u_38(p34, p35, p36)
	-- upvalues: (copy) v_u_2, (copy) v_u_6, (copy) v_u_14
	script:WaitForChild("Whoosh").Volume = 1 - p36 + 0.3
	script:WaitForChild("Whoosh"):Play()
	local v37 = Instance.new("ImageLabel", p34)
	v37.Size = UDim2.fromScale(0.8, 0.8)
	v37.Image = "rbxassetid://12402888086"
	v37.ImageColor3 = p35
	v37.Rotation = math.random(0, 360)
	v37.SizeConstraint = Enum.SizeConstraint.RelativeYY
	v37.BackgroundTransparency = 1
	v37.ImageTransparency = p36
	v37.AnchorPoint = Vector2.new(0.5, 0.5)
	v37.Position = UDim2.fromScale(0.5, 0.5)
	v_u_2:Create(v37, v_u_6, {
		["Size"] = UDim2.fromScale(0.7, 0.7),
		["ImageTransparency"] = 1
	}):Play()
	v_u_14:AddItem(v37, 2)
end
return function(_, p39, p40, p41, _)
	-- upvalues: (copy) v_u_2, (copy) v_u_11, (copy) v_u_12, (copy) v_u_3, (copy) v_u_13, (copy) v_u_1, (copy) v_u_10, (copy) v_u_23, (copy) v_u_33, (copy) v_u_6, (copy) v_u_7, (copy) v_u_38, (copy) v_u_5
	script:WaitForChild("Ambient"):Play()
	local v_u_42 = p39.Blackboard
	local v_u_43 = p39.Colorboard
	local v44 = p39.Background
	local _ = p39.EquipButton
	local _ = p39.SkipButton
	local v45 = p39.Star
	local _ = p39.Break1
	local _ = p39.Break2
	local v46 = p40:WaitForChild("ShakeAmount")
	local v47 = p40:WaitForChild("StarSpinSpeed")
	v_u_2:Create(v44, Tween0o.new(1, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), v_u_11)
	v_u_2:Create(v44, Tween0o.new(1, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), v_u_12)
	local v48 = v_u_2:Create(v_u_43, Tween0o.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
		["ImageTransparency"] = 0
	})
	local v49 = v_u_2:Create(v_u_43, Tween0o.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
		["ImageTransparency"] = 1
	})
	local v50 = v_u_2:Create(v_u_42, v_u_3, v_u_13)
	local v_u_51 = true
	v_u_1:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
	p41.Visible = false
	v50:Play()
	v_u_43.Image = "http://www.roblox.com/asset/?id=12353440665"
	v_u_43.ImageTransparency = 1
	v_u_43.ImageColor3 = Color3.new(1, 1, 1)
	v45.ImageColor3 = Color3.new(1, 1, 1)
	if not p41:GetAttribute("IgnoreTextColor") then
		v_u_43.ImageColor3 = p41.TextColor3
		v45.ImageColor3 = v_u_43.ImageColor3
	end
	v_u_10:WaitForChild("OneMilPlus"):Play()
	v45.Size = UDim2.fromScale(1.5, 1.5)
	v45.Image = "rbxassetid://17068400400"
	v45.Visible = true
	coroutine.wrap(function()
		-- upvalues: (ref) v_u_51, (ref) v_u_23, (copy) v_u_42
		while task.wait(0.05) and v_u_51 do
			v_u_23(v_u_42, Color3.fromRGB(255, 19, 23))
		end
	end)()
	coroutine.wrap(function()
		-- upvalues: (ref) v_u_51, (ref) v_u_33, (copy) v_u_42
		while task.wait(0.2) and v_u_51 do
			v_u_33(v_u_42, Color3.fromRGB(98, 7, 10))
		end
	end)()
	v_u_2:Create(v45, v_u_6, {
		["Size"] = UDim2.fromScale(0.6, 0.6)
	}):Play()
	v47.Value = 5
	v_u_2:Create(v47, v_u_6, {
		["Value"] = 1
	}):Play()
	task.wait(3.23)
	v_u_2:Create(v47, v_u_7, {
		["Value"] = 4
	}):Play()
	v_u_2:Create(v45, v_u_7, {
		["Size"] = UDim2.fromScale(1.5, 1.5)
	}):Play()
	task.wait(4)
	p41.Visible = true
	v48:Play()
	v_u_38(v_u_42, Color3.fromRGB(255, 19, 23), 0.6)
	task.wait(1)
	v_u_38(v_u_42, Color3.fromRGB(255, 19, 23), 0.2)
	task.wait(1)
	script:WaitForChild("Ambient"):Stop()
	script:WaitForChild("Ouch"):Play()
	script:WaitForChild("Ouch2"):Play()
	v_u_51 = false
	v45.Visible = false
	v_u_43.Image = "http://www.roblox.com/asset/?id=1195495135"
	v_u_43.ImageColor3 = Color3.new(1, 0, 0.0156863)
	coroutine.wrap(function()
		-- upvalues: (copy) v_u_43
		task.wait(0.02)
		v_u_43.ImageColor3 = Color3.new(1, 1, 1)
		task.wait(0.02)
		v_u_43.ImageColor3 = Color3.new(1, 0, 0.0156863)
	end)()
	if v_u_43:FindFirstChildOfClass("UIGradient") then
		v_u_43:FindFirstChildOfClass("UIGradient"):Destroy()
	end
	v49:Play()
	v46.Value = 0.02
	v_u_2:Create(v46, v_u_6, {
		["Value"] = 0
	}):Play()
	p41.Position = UDim2.fromScale(0.5, 0.5)
	p41.Size = UDim2.fromScale(0.6, 0.2)
	v_u_2:Create(p41, v_u_5, {
		["Size"] = UDim2.fromScale(0.4, 0.1)
	}):Play()
	v_u_42.BackgroundTransparency = 1
end