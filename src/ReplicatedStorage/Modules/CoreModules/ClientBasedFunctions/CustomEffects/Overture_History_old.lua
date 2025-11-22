-- What the sigma?

local v_u_1 = game:GetService("StarterGui")
local v_u_2 = game:GetService("TweenService")
local v_u_3 = TweenInfo.new(0.5, Enum.EasingStyle.Quart)
local v_u_4 = TweenInfo.new(0.3, Enum.EasingStyle.Quart)
local v_u_5 = TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
local v_u_6 = TweenInfo.new(1, Enum.EasingStyle.Quart)
local v_u_7 = TweenInfo.new(2, Enum.EasingStyle.Quart)
local v_u_8 = TweenInfo.new(6, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
local v9 = game:GetService("ReplicatedStorage")
local v_u_10 = game:GetService("RunService")
local v_u_11 = v9.Assets.SFXs
local v_u_12 = {
	["BackgroundTransparency"] = 0.6
}
local v_u_13 = {
	["BackgroundTransparency"] = 1
}
local v_u_14 = {
	["BackgroundTransparency"] = 0
}
local v_u_15 = game:GetService("Debris")
local function v_u_21(p16, p17, p18)
	-- upvalues: (copy) v_u_2, (copy) v_u_4, (copy) v_u_15
	local v19 = Instance.new("ImageLabel", p16)
	v19.Position = UDim2.fromScale(math.random(0, 100) / 100, math.random(0, 100) / 100)
	v19.Image = p18
	v19.ImageColor3 = p17
	v19.SizeConstraint = Enum.SizeConstraint.RelativeXX
	v19.BackgroundTransparency = 1
	local v20 = math.random(2, 6) / 10
	v19.AnchorPoint = Vector2.new(0.5, 0.5)
	v19.Size = UDim2.fromScale(v20, v20)
	v_u_2:Create(v19, v_u_4, {
		["Size"] = UDim2.fromScale()
	}):Play()
	v_u_15:AddItem(v19, 0.3)
end
local function v_u_31(p22, p23)
	-- upvalues: (copy) v_u_2, (copy) v_u_3, (copy) v_u_5, (copy) v_u_15, (copy) v_u_10
	local v_u_24 = Instance.new("ImageLabel", p22)
	v_u_24.Size = UDim2.fromScale(1, 1)
	v_u_24.Image = "rbxassetid://1946917526"
	v_u_24.ImageColor3 = p23
	v_u_24.SizeConstraint = Enum.SizeConstraint.RelativeXX
	v_u_24.BackgroundTransparency = 1
	v_u_24.ImageTransparency = 1
	v_u_24.Rotation = math.random(-3, 3)
	v_u_24.AnchorPoint = Vector2.new(0.5, 0.5)
	v_u_2:Create(v_u_24, v_u_3, {
		["ImageTransparency"] = 0.7
	}):Play()
	local v_u_25 = UDim2.fromScale(math.random(0, 100) / 100, math.random(0, 100) / 100)
	local v_u_26 = math.random(2, 5) / 1400 * (math.random(1, 2) == 1 and -1 or 1)
	local v_u_27 = math.random(2, 5) / 1400 * (math.random(1, 2) == 1 and -1 or 1)
	coroutine.wrap(function()
		-- upvalues: (copy) v_u_24, (ref) v_u_2, (ref) v_u_5, (ref) v_u_15, (copy) v_u_25, (copy) v_u_26, (copy) v_u_27, (ref) v_u_10
		local v28 = time()
		local v29 = v28 + math.random(15, 20) / 10
		while v_u_24 and v_u_24.Parent do
			if time() >= v29 - 0.5 and not v_u_24:GetAttribute("Removing") then
				v_u_24:SetAttribute("Removing", true)
				v_u_2:Create(v_u_24, v_u_5, {
					["ImageTransparency"] = 1
				}):Play()
				v_u_15:AddItem(v_u_24, 0.5)
			end
			local v30 = (time() - v28) * 50
			v_u_24.Position = v_u_25 + UDim2.fromScale(v30 * -v_u_26, v30 * -v_u_27)
			v_u_10.Heartbeat:Wait()
		end
	end)()
end
local function v_u_37(p32, p33, p34, p35)
	-- upvalues: (copy) v_u_2, (copy) v_u_7, (copy) v_u_15
	script:WaitForChild("Whoosh").Volume = 1 - p34 + 0.3
	script:WaitForChild("Whoosh"):Play()
	local v36 = Instance.new("ImageLabel", p32)
	v36.Size = UDim2.fromScale(0.8, 0.8)
	v36.Image = p35
	v36.ImageColor3 = p33
	v36.SizeConstraint = Enum.SizeConstraint.RelativeYY
	v36.BackgroundTransparency = 1
	v36.ImageTransparency = p34
	v36.AnchorPoint = Vector2.new(0.5, 0.5)
	v36.Position = UDim2.fromScale(0.5, 0.5)
	v_u_2:Create(v36, v_u_7, {
		["Size"] = UDim2.fromScale(0.7, 0.7),
		["ImageTransparency"] = 1
	}):Play()
	v_u_15:AddItem(v36, 2)
end
return function(_, p38, p39, p40, _)
	-- upvalues: (copy) v_u_2, (copy) v_u_12, (copy) v_u_13, (copy) v_u_3, (copy) v_u_14, (copy) v_u_1, (copy) v_u_11, (copy) v_u_10, (copy) v_u_21, (copy) v_u_31, (copy) v_u_7, (copy) v_u_8, (copy) v_u_37, (copy) v_u_6
	script:WaitForChild("Ambient"):Play()
	local v_u_41 = p38.Blackboard
	local v42 = p38.Colorboard
	local v43 = p38.Background
	local _ = p38.EquipButton
	local _ = p38.SkipButton
	local v44 = p38.Star
	local _ = p38.Break1
	local _ = p38.Break2
	local v45 = p39:WaitForChild("ShakeAmount")
	local v46 = p39:WaitForChild("StarSpinSpeed")
	v_u_2:Create(v43, TweenInfo.new(1, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), v_u_12)
	v_u_2:Create(v43, TweenInfo.new(1, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), v_u_13)
	local v47 = v_u_2:Create(v42, TweenInfo.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
		["ImageTransparency"] = 0
	})
	local v48 = v_u_2:Create(v42, TweenInfo.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
		["ImageTransparency"] = 1
	})
	local v49 = v_u_2:Create(v_u_41, v_u_3, v_u_14)
	local v_u_50 = true
	v_u_1:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
	p40.Visible = false
	v49:Play()
	v42.Image = "http://www.roblox.com/asset/?id=12353440665"
	v42.ImageTransparency = 1
	v42.ImageColor3 = Color3.new(1, 1, 1)
	if v44:FindFirstChildOfClass("UIGradient") then
		v44:FindFirstChildOfClass("UIGradient"):Destroy()
	end
	v44.ImageColor3 = Color3.fromRGB(89, 255, 150)
	v_u_11:WaitForChild("OneMilPlus"):Play()
	script:WaitForChild("Start"):Play()
	v44.Size = UDim2.fromScale(1.5, 1.5)
	v44.Image = "rbxassetid://17068400400"
	v44.Visible = true
	coroutine.wrap(function()
		-- upvalues: (ref) v_u_10, (ref) v_u_50, (ref) v_u_21, (copy) v_u_41
		while v_u_10.Stepped:Wait() and v_u_50 do
			v_u_21(v_u_41, Color3.fromRGB(89, 255, 150), "rbxassetid://6909741538")
		end
	end)()
	coroutine.wrap(function()
		-- upvalues: (ref) v_u_50, (ref) v_u_31, (copy) v_u_41
		while task.wait(0.2) and v_u_50 do
			v_u_31(v_u_41, Color3.fromRGB(89, 255, 150))
		end
	end)()
	v_u_2:Create(v44, v_u_7, {
		["Size"] = UDim2.fromScale(0.6, 0.6)
	}):Play()
	v46.Value = 5
	v_u_2:Create(v46, v_u_7, {
		["Value"] = 1
	}):Play()
	task.wait(3.23)
	v_u_2:Create(v46, v_u_8, {
		["Value"] = 4
	}):Play()
	v_u_2:Create(v44, v_u_8, {
		["Size"] = UDim2.fromScale(1.5, 1.5)
	}):Play()
	task.wait(4)
	p40.Visible = true
	v47:Play()
	v_u_37(v_u_41, Color3.fromRGB(89, 255, 150), 0.6, "rbxassetid://17272988611")
	task.wait(1)
	v_u_37(v_u_41, Color3.fromRGB(89, 255, 150), 0.3, "rbxassetid://17272988611")
	task.wait(1)
	script:WaitForChild("Ambient"):Stop()
	script:WaitForChild("Omg"):Play()
	v_u_50 = false
	v44.Visible = false
	v42.Image = "http://www.roblox.com/asset/?id=1195495135"
	v42.ImageColor3 = Color3.new(1, 1, 1)
	if v42:FindFirstChildOfClass("UIGradient") then
		v42:FindFirstChildOfClass("UIGradient"):Destroy()
	end
	v48:Play()
	v45.Value = 0.02
	v_u_2:Create(v45, v_u_7, {
		["Value"] = 0
	}):Play()
	p40.Position = UDim2.fromScale(0.5, 0.5)
	p40.Size = UDim2.fromScale(0.6, 0.2)
	v_u_2:Create(p40, v_u_6, {
		["Size"] = UDim2.fromScale(0.4, 0.1)
	}):Play()
	v_u_41.BackgroundTransparency = 1
end