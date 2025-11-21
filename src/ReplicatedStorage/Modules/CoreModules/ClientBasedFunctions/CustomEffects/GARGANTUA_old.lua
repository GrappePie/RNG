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
local function v_u_29(p15, p16)
	-- upvalues: (copy) v_u_2, (copy) v_u_3, (copy) v_u_4, (copy) v_u_14, (copy) v_u_9
	local v_u_17 = Instance.new("ImageLabel", p15)
	v_u_17.Size = UDim2.fromScale()
	v_u_17.Image = "rbxassetid://8030760338"
	v_u_17.ImageColor3 = p16
	v_u_17.SizeConstraint = Enum.SizeConstraint.RelativeXX
	v_u_17.BackgroundTransparency = 1
	local v18 = math.random(2, 6) / 100
	v_u_17.Rotation = math.random(-15, 15)
	v_u_17.AnchorPoint = Vector2.new(0.5, 0.5)
	v_u_2:Create(v_u_17, v_u_3, {
		["Size"] = UDim2.fromScale(v18, v18)
	}):Play()
	local v_u_19 = UDim2.fromScale(math.random(0, 100) / 100, 1)
	local v_u_20 = math.random(50, 70) * (math.random(1, 2) == 1 and -1 or 1)
	local v_u_21 = math.random(2, 5) / 500
	coroutine.wrap(function()
		-- upvalues: (copy) v_u_17, (ref) v_u_2, (ref) v_u_4, (ref) v_u_14, (copy) v_u_19, (copy) v_u_20, (copy) v_u_21, (ref) v_u_9
		local v22 = time()
		local v23 = v22 + math.random(15, 20) / 10
		while v_u_17 and v_u_17.Parent do
			if time() >= v23 - 0.5 and not v_u_17:GetAttribute("Removing") then
				v_u_17:SetAttribute("Removing", true)
				v_u_2:Create(v_u_17, v_u_4, {
					["Size"] = UDim2.fromScale(0, 0)
				}):Play()
				v_u_14:AddItem(v_u_17, 0.5)
			end
			local v24 = (time() - v22) * 50
			local v25 = v_u_17
			local v26 = v_u_19
			local v27 = UDim2.fromScale
			local v28 = v24 / v_u_20
			v25.Position = v26 + v27(0.07 * math.sin(v28), v24 * -v_u_21)
			v_u_9.Heartbeat:Wait()
		end
	end)()
end
local v_u_30 = Tween0o.new(0.7, Enum.EasingStyle.Quart)
local function v_u_33(p31)
	-- upvalues: (copy) v_u_2, (copy) v_u_30, (copy) v_u_14
	local v32 = Instance.new("ImageLabel", p31)
	v32.Size = UDim2.fromScale(1.3, 1.3)
	v32.Image = "rbxassetid://12402897209"
	v32.Rotation = math.random(0, 360)
	v32.ImageColor3 = Color3.new(1, 0.490196, 0.0431373)
	v32.SizeConstraint = Enum.SizeConstraint.RelativeYY
	v32.BackgroundTransparency = 1
	v32.ImageTransparency = 0.7
	v32.AnchorPoint = Vector2.new(0.5, 0.5)
	v32.Position = UDim2.fromScale(0.5, 0.5)
	v_u_2:Create(v32, v_u_30, {
		["Size"] = UDim2.fromScale(0, 0, 0),
		["ImageTransparency"] = 0.4
	}):Play()
	v_u_14:AddItem(v32, 0.7)
end
local function v_u_43(p34, p35)
	-- upvalues: (copy) v_u_2, (copy) v_u_3, (copy) v_u_4, (copy) v_u_14, (copy) v_u_9
	local v_u_36 = Instance.new("ImageLabel", p34)
	v_u_36.Size = UDim2.fromScale(1, 1)
	v_u_36.Image = "rbxassetid://1946917526"
	v_u_36.ImageColor3 = p35
	v_u_36.SizeConstraint = Enum.SizeConstraint.RelativeXX
	v_u_36.BackgroundTransparency = 1
	v_u_36.ImageTransparency = 1
	v_u_36.Rotation = math.random(-3, 3)
	v_u_36.AnchorPoint = Vector2.new(0.5, 0.5)
	v_u_2:Create(v_u_36, v_u_3, {
		["ImageTransparency"] = 0.7
	}):Play()
	local v_u_37 = UDim2.fromScale(math.random(0, 100) / 100, math.random(0, 100) / 100)
	local v_u_38 = math.random(2, 5) / 1400 * (math.random(1, 2) == 1 and -1 or 1)
	local v_u_39 = math.random(2, 5) / 1400 * (math.random(1, 2) == 1 and -1 or 1)
	coroutine.wrap(function()
		-- upvalues: (copy) v_u_36, (ref) v_u_2, (ref) v_u_4, (ref) v_u_14, (copy) v_u_37, (copy) v_u_38, (copy) v_u_39, (ref) v_u_9
		local v40 = time()
		local v41 = v40 + math.random(15, 20) / 10
		while v_u_36 and v_u_36.Parent do
			if time() >= v41 - 0.5 and not v_u_36:GetAttribute("Removing") then
				v_u_36:SetAttribute("Removing", true)
				v_u_2:Create(v_u_36, v_u_4, {
					["ImageTransparency"] = 1
				}):Play()
				v_u_14:AddItem(v_u_36, 0.5)
			end
			local v42 = (time() - v40) * 50
			v_u_36.Position = v_u_37 + UDim2.fromScale(v42 * -v_u_38, v42 * -v_u_39)
			v_u_9.Heartbeat:Wait()
		end
	end)()
end
local function v_u_48(p44, p45, p46)
	-- upvalues: (copy) v_u_2, (copy) v_u_6, (copy) v_u_14
	script:WaitForChild("Whoosh").Volume = 1 - p46 + 0.3
	script:WaitForChild("Whoosh"):Play()
	local v47 = Instance.new("ImageLabel", p44)
	v47.Size = UDim2.fromScale(0.8, 0.8)
	v47.Image = "rbxassetid://17405714990"
	v47.ImageColor3 = p45
	v47.SizeConstraint = Enum.SizeConstraint.RelativeYY
	v47.BackgroundTransparency = 1
	v47.ImageTransparency = p46
	v47.AnchorPoint = Vector2.new(0.5, 0.5)
	v47.Position = UDim2.fromScale(0.5, 0.5)
	v_u_2:Create(v47, v_u_6, {
		["Size"] = UDim2.fromScale(0.7, 0.7),
		["ImageTransparency"] = 1
	}):Play()
	v_u_14:AddItem(v47, 2)
end
return function(_, p49, p50, p51, _)
	-- upvalues: (copy) v_u_2, (copy) v_u_11, (copy) v_u_12, (copy) v_u_3, (copy) v_u_13, (copy) v_u_1, (copy) v_u_10, (copy) v_u_33, (copy) v_u_29, (copy) v_u_43, (copy) v_u_6, (copy) v_u_7, (copy) v_u_48, (copy) v_u_5
	script:WaitForChild("Ambient"):Play()
	local v_u_52 = p49.Blackboard
	local v53 = p49.Colorboard
	local v54 = p49.Background
	local v55 = p49.Star
	local _ = p49.Break1
	local _ = p49.Break2
	local v56 = p50:WaitForChild("ShakeAmount")
	local v57 = p50:WaitForChild("StarSpinSpeed")
	v_u_2:Create(v54, Tween0o.new(1, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), v_u_11)
	v_u_2:Create(v54, Tween0o.new(1, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), v_u_12)
	local v58 = v_u_2:Create(v53, Tween0o.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
		["ImageTransparency"] = 0
	})
	local v59 = v_u_2:Create(v53, Tween0o.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
		["ImageTransparency"] = 1
	})
	local v60 = v_u_2:Create(v_u_52, v_u_3, v_u_13)
	local v_u_61 = true
	v_u_1:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
	p51.Visible = false
	v60:Play()
	v53.Image = "http://www.roblox.com/asset/?id=12353440665"
	v53.ImageTransparency = 1
	v53.ImageColor3 = Color3.new(1, 0.67451, 0.215686)
	v55.ImageColor3 = Color3.new(1, 0.67451, 0.215686)
	v_u_10:WaitForChild("OneMilPlus"):Play()
	v55.Size = UDim2.fromScale(1.5, 1.5)
	v55.Image = "rbxassetid://17068400400"
	v55.Visible = true
	coroutine.wrap(function()
		-- upvalues: (ref) v_u_61, (ref) v_u_33, (copy) v_u_52, (ref) v_u_29
		while task.wait(0.05) and v_u_61 do
			v_u_33(v_u_52)
			v_u_29(v_u_52, Color3.fromRGB(255, 106, 0))
		end
	end)()
	coroutine.wrap(function()
		-- upvalues: (ref) v_u_61, (ref) v_u_43, (copy) v_u_52
		while task.wait(0.2) and v_u_61 do
			v_u_43(v_u_52, Color3.fromRGB(48, 16, 0))
		end
	end)()
	v_u_29(v_u_52, Color3.fromRGB(255, 106, 0))
	v_u_2:Create(v55, v_u_6, {
		["Size"] = UDim2.fromScale(0.6, 0.6)
	}):Play()
	v57.Value = 5
	v_u_2:Create(v57, v_u_6, {
		["Value"] = 1
	}):Play()
	task.wait(3.23)
	v_u_2:Create(v57, v_u_7, {
		["Value"] = 4
	}):Play()
	v_u_2:Create(v55, v_u_7, {
		["Size"] = UDim2.fromScale(1.5, 1.5)
	}):Play()
	task.wait(4)
	p51.Visible = true
	v58:Play()
	v_u_48(v_u_52, Color3.fromRGB(255, 106, 0), 0.6)
	task.wait(1)
	v_u_48(v_u_52, Color3.fromRGB(255, 106, 0), 0.3)
	task.wait(1)
	script:WaitForChild("Ambient"):Stop()
	script:WaitForChild("Omg"):Play()
	v_u_61 = false
	v55.Visible = false
	v53.Image = "http://www.roblox.com/asset/?id=1195495135"
	v53.ImageColor3 = Color3.new(1, 1, 1)
	if v53:FindFirstChildOfClass("UIGradient") then
		v53:FindFirstChildOfClass("UIGradient"):Destroy()
	end
	v59:Play()
	v56.Value = 0.02
	v_u_2:Create(v56, v_u_6, {
		["Value"] = 0
	}):Play()
	p51.Position = UDim2.fromScale(0.5, 0.5)
	p51.Size = UDim2.fromScale(0.6, 0.2)
	v_u_2:Create(p51, v_u_5, {
		["Size"] = UDim2.fromScale(0.4, 0.1)
	}):Play()
	v_u_52.BackgroundTransparency = 1
end