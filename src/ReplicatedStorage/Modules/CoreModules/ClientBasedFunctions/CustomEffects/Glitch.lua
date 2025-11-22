-- What the sigma?

game:GetService("ReplicatedStorage")
local v_u_1 = game:GetService("StarterGui")
local v_u_2 = game:GetService("TweenService")
local v_u_3 = TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
local v_u_4 = TweenInfo.new(0.5, Enum.EasingStyle.Quart)
local v_u_5 = TweenInfo.new(1, Enum.EasingStyle.Quart)
local v_u_6 = TweenInfo.new(2, Enum.EasingStyle.Quart)
local v_u_7 = TweenInfo.new(6, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
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
local v_u_15 = {
	Color3.fromRGB(207, 127, 227),
	Color3.fromRGB(227, 232, 237),
	Color3.fromRGB(122, 109, 195),
	Color3.fromRGB(111, 174, 93),
	Color3.fromRGB(96, 172, 199)
}
local function v_u_19(p16)
	-- upvalues: (copy) v_u_15, (copy) v_u_14
	local v17 = math.random(1, 2) / 100
	local v18 = Instance.new("ImageLabel", p16)
	v18.Position = UDim2.fromScale(math.random(0, 100) / 100, math.random(0, 100) / 100)
	v18.ImageColor3 = v_u_15[math.random(1, #v_u_15)]
	v18.Image = "rbxassetid://16850112653"
	v18.AnchorPoint = Vector2.new(0.5, 0.5)
	v18.BorderSizePixel = 0
	v18.BackgroundTransparency = 1
	v18.ImageTransparency = math.random(0, 30) / 100
	v18.Size = UDim2.fromScale(math.random(4, 8) / 10, math.random(2, 6) / 10)
	v_u_14:AddItem(v18, v17)
end
local function v_u_28(p20)
	-- upvalues: (copy) v_u_2, (copy) v_u_4, (copy) v_u_3, (copy) v_u_14, (copy) v_u_15, (copy) v_u_9
	local v_u_21 = Instance.new("ImageLabel", p20)
	v_u_21.Size = UDim2.fromScale(1, 1)
	v_u_21.Image = "rbxassetid://1946917526"
	v_u_21.SizeConstraint = Enum.SizeConstraint.RelativeXX
	v_u_21.BackgroundTransparency = 1
	v_u_21.ImageTransparency = 1
	v_u_21.Rotation = math.random(-3, 3)
	v_u_21.AnchorPoint = Vector2.new(0.5, 0.5)
	v_u_2:Create(v_u_21, v_u_4, {
		["ImageTransparency"] = 0.7
	}):Play()
	local v_u_22 = UDim2.fromScale(math.random(0, 100) / 100, math.random(0, 100) / 100)
	local v_u_23 = math.random(2, 5) / 1400 * (math.random(1, 2) == 1 and -1 or 1)
	local v_u_24 = math.random(2, 5) / 1400 * (math.random(1, 2) == 1 and -1 or 1)
	coroutine.wrap(function()
		-- upvalues: (copy) v_u_21, (ref) v_u_2, (ref) v_u_3, (ref) v_u_14, (copy) v_u_22, (copy) v_u_23, (copy) v_u_24, (ref) v_u_15, (ref) v_u_9
		local v25 = time()
		local v26 = v25 + math.random(15, 20) / 10
		while v_u_21 and v_u_21.Parent do
			if time() >= v26 - 0.5 and not v_u_21:GetAttribute("Removing") then
				v_u_21:SetAttribute("Removing", true)
				v_u_2:Create(v_u_21, v_u_3, {
					["ImageTransparency"] = 1
				}):Play()
				v_u_14:AddItem(v_u_21, 0.5)
			end
			local v27 = (time() - v25) * 50
			v_u_21.Position = v_u_22 + UDim2.fromScale(v27 * -v_u_23, v27 * -v_u_24)
			v_u_21.ImageColor3 = v_u_15[math.random(1, #v_u_15)]
			v_u_9.Heartbeat:Wait()
		end
	end)()
end
return function(_, p29, p30, p31, _)
	-- upvalues: (copy) v_u_2, (copy) v_u_11, (copy) v_u_12, (copy) v_u_4, (copy) v_u_13, (copy) v_u_1, (copy) v_u_10, (copy) v_u_6, (copy) v_u_9, (copy) v_u_15, (copy) v_u_19, (copy) v_u_28, (copy) v_u_7, (copy) v_u_5
	script:WaitForChild("Ambient"):Play()
	local v_u_32 = p29.Blackboard
	local v33 = p29.Colorboard
	local v34 = p29.Background
	local v_u_35 = p29.Star
	local _ = p29.Break1
	local _ = p29.Break2
	local v36 = p30:WaitForChild("ShakeAmount")
	local v37 = p30:WaitForChild("StarSpinSpeed")
	v_u_2:Create(v34, TweenInfo.new(1, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), v_u_11)
	v_u_2:Create(v34, TweenInfo.new(1, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), v_u_12)
	local v38 = v_u_2:Create(v33, TweenInfo.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
		["ImageTransparency"] = 0
	})
	local v39 = v_u_2:Create(v33, TweenInfo.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
		["ImageTransparency"] = 1
	})
	local v40 = v_u_2:Create(v_u_32, v_u_4, v_u_13)
	local v_u_41 = false
	v_u_1:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
	p31.Visible = false
	v40:Play()
	v33.Image = "http://www.roblox.com/asset/?id=12353440665"
	v33.ImageTransparency = 1
	v33.ImageColor3 = Color3.new(1, 1, 1)
	v_u_35.ImageColor3 = Color3.new(1, 1, 1)
	v_u_10:WaitForChild("OneMilPlus"):Play()
	v_u_35.Size = UDim2.fromScale(1.5, 1.5)
	v_u_35.Visible = true
	v_u_2:Create(v_u_35, v_u_6, {
		["Size"] = UDim2.fromScale(0.6, 0.6)
	}):Play()
	coroutine.wrap(function()
		-- upvalues: (ref) v_u_9, (copy) v_u_35, (ref) v_u_15, (ref) v_u_41, (ref) v_u_19, (copy) v_u_32
		while true do
			local v42 = v_u_9.RenderStepped:Wait()
			local v43 = v_u_35
			v43.Rotation = v43.Rotation + math.random(-50, 50) * v42
			v_u_35.ImageColor3 = v_u_15[math.random(1, #v_u_15)]
			if not v_u_41 then
				break
			end
			v_u_19(v_u_32)
		end
	end)()
	coroutine.wrap(function()
		-- upvalues: (ref) v_u_41, (ref) v_u_28, (copy) v_u_32
		while task.wait(0.2) and v_u_41 do
			v_u_28(v_u_32)
		end
	end)()
	v_u_41 = true
	v37.Value = 5
	v_u_2:Create(v37, v_u_6, {
		["Value"] = 1
	}):Play()
	task.wait(3.23)
	v_u_2:Create(v37, v_u_7, {
		["Value"] = 4
	}):Play()
	v_u_2:Create(v_u_35, v_u_7, {
		["Size"] = UDim2.fromScale(1.5, 1.5)
	}):Play()
	task.wait(4)
	p31.Visible = true
	v38:Play()
	task.wait(2)
	script:WaitForChild("Ambient"):Stop()
	script:WaitForChild("Omg"):Play()
	v_u_41 = false
	v_u_35.Visible = false
	v33.Image = "http://www.roblox.com/asset/?id=1195495135"
	v33.ImageColor3 = Color3.new(1, 1, 1)
	if v33:FindFirstChildOfClass("UIGradient") then
		v33:FindFirstChildOfClass("UIGradient"):Destroy()
	end
	v39:Play()
	v36.Value = 0.02
	v_u_2:Create(v36, v_u_6, {
		["Value"] = 0
	}):Play()
	p31.Position = UDim2.fromScale(0.5, 0.5)
	p31.Size = UDim2.fromScale(0.6, 0.2)
	v_u_2:Create(p31, v_u_5, {
		["Size"] = UDim2.fromScale(0.4, 0.1)
	}):Play()
	v_u_32.BackgroundTransparency = 1
end