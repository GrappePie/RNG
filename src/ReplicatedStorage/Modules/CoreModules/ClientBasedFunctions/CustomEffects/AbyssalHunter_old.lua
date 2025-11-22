-- What the sigma?

local v_u_1 = game:GetService("StarterGui")
local v_u_2 = game:GetService("TweenService")
local v_u_3 = TweenInfo.new(0.5, Enum.EasingStyle.Quart)
local v_u_4 = TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
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
local function v_u_29(p15, p16)
	-- upvalues: (copy) v_u_2, (copy) v_u_3, (copy) v_u_4, (copy) v_u_14, (copy) v_u_9
	local v_u_17 = Instance.new("ImageLabel", p15)
	v_u_17.Size = UDim2.fromScale()
	v_u_17.Image = "rbxassetid://16681431607"
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
local function v_u_39(p30, p31)
	-- upvalues: (copy) v_u_2, (copy) v_u_3, (copy) v_u_4, (copy) v_u_14, (copy) v_u_9
	local v_u_32 = Instance.new("ImageLabel", p30)
	v_u_32.Size = UDim2.fromScale(1, 1)
	v_u_32.Image = "rbxassetid://1946917526"
	v_u_32.ImageColor3 = p31
	v_u_32.SizeConstraint = Enum.SizeConstraint.RelativeXX
	v_u_32.BackgroundTransparency = 1
	v_u_32.ImageTransparency = 1
	v_u_32.Rotation = math.random(-3, 3)
	v_u_32.AnchorPoint = Vector2.new(0.5, 0.5)
	v_u_2:Create(v_u_32, v_u_3, {
		["ImageTransparency"] = 0.7
	}):Play()
	local v_u_33 = UDim2.fromScale(math.random(0, 100) / 100, math.random(0, 100) / 100)
	local v_u_34 = math.random(2, 5) / 1400 * (math.random(1, 2) == 1 and -1 or 1)
	local v_u_35 = math.random(2, 5) / 1400 * (math.random(1, 2) == 1 and -1 or 1)
	coroutine.wrap(function()
		-- upvalues: (copy) v_u_32, (ref) v_u_2, (ref) v_u_4, (ref) v_u_14, (copy) v_u_33, (copy) v_u_34, (copy) v_u_35, (ref) v_u_9
		local v36 = time()
		local v37 = v36 + math.random(15, 20) / 10
		while v_u_32 and v_u_32.Parent do
			if time() >= v37 - 0.5 and not v_u_32:GetAttribute("Removing") then
				v_u_32:SetAttribute("Removing", true)
				v_u_2:Create(v_u_32, v_u_4, {
					["ImageTransparency"] = 1
				}):Play()
				v_u_14:AddItem(v_u_32, 0.5)
			end
			local v38 = (time() - v36) * 50
			v_u_32.Position = v_u_33 + UDim2.fromScale(v38 * -v_u_34, v38 * -v_u_35)
			v_u_9.Heartbeat:Wait()
		end
	end)()
end
local function v_u_44(p40, p41, p42)
	-- upvalues: (copy) v_u_2, (copy) v_u_6, (copy) v_u_14
	script:WaitForChild("Whoosh").Volume = 1 - p42 + 0.3
	script:WaitForChild("Whoosh"):Play()
	local v43 = Instance.new("ImageLabel", p40)
	v43.Size = UDim2.fromScale(0.8, 0.8)
	v43.Image = "rbxassetid://16681036685"
	v43.ImageColor3 = p41
	v43.SizeConstraint = Enum.SizeConstraint.RelativeYY
	v43.BackgroundTransparency = 1
	v43.ImageTransparency = p42
	v43.AnchorPoint = Vector2.new(0.5, 0.5)
	v43.Position = UDim2.fromScale(0.5, 0.5)
	v_u_2:Create(v43, v_u_6, {
		["Size"] = UDim2.fromScale(0.7, 0.7),
		["ImageTransparency"] = 1
	}):Play()
	v_u_14:AddItem(v43, 2)
end
return function(_, p45, p46, p47, _)
	-- upvalues: (copy) v_u_2, (copy) v_u_11, (copy) v_u_12, (copy) v_u_3, (copy) v_u_13, (copy) v_u_1, (copy) v_u_10, (copy) v_u_29, (copy) v_u_39, (copy) v_u_6, (copy) v_u_7, (copy) v_u_44, (copy) v_u_5
	script:WaitForChild("Ambient"):Play()
	local v_u_48 = p45.Blackboard
	local v49 = p45.Colorboard
	local v50 = p45.Background
	local v51 = p45.Star
	local _ = p45.Break1
	local _ = p45.Break2
	local v52 = p46:WaitForChild("ShakeAmount")
	local v53 = p46:WaitForChild("StarSpinSpeed")
	v_u_2:Create(v50, TweenInfo.new(1, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), v_u_11)
	v_u_2:Create(v50, TweenInfo.new(1, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), v_u_12)
	local v54 = v_u_2:Create(v49, TweenInfo.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
		["ImageTransparency"] = 0
	})
	local v55 = v_u_2:Create(v49, TweenInfo.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
		["ImageTransparency"] = 1
	})
	local v56 = v_u_2:Create(v_u_48, v_u_3, v_u_13)
	local v_u_57 = true
	v_u_1:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
	p47.Visible = false
	v56:Play()
	v49.Image = "http://www.roblox.com/asset/?id=12353440665"
	v49.ImageTransparency = 1
	v49.ImageColor3 = Color3.new(1, 1, 1)
	v51.ImageColor3 = Color3.new(1, 1, 1)
	if not p47:GetAttribute("IgnoreTextColor") then
		v49.ImageColor3 = p47.TextColor3
		v51.ImageColor3 = v49.ImageColor3
	end
	v_u_10:WaitForChild("OneMilPlus"):Play()
	v51.Size = UDim2.fromScale(1.5, 1.5)
	v51.Image = "rbxassetid://17068400400"
	v51.Visible = true
	coroutine.wrap(function()
		-- upvalues: (ref) v_u_57, (ref) v_u_29, (copy) v_u_48
		while task.wait(0.05) and v_u_57 do
			v_u_29(v_u_48, Color3.fromRGB(47, 61, 255))
		end
	end)()
	coroutine.wrap(function()
		-- upvalues: (ref) v_u_57, (ref) v_u_39, (copy) v_u_48
		while task.wait(0.2) and v_u_57 do
			v_u_39(v_u_48, Color3.fromRGB(47, 61, 255))
		end
	end)()
	v_u_29(v_u_48, Color3.fromRGB(47, 61, 255))
	v_u_2:Create(v51, v_u_6, {
		["Size"] = UDim2.fromScale(0.6, 0.6)
	}):Play()
	v53.Value = 5
	v_u_2:Create(v53, v_u_6, {
		["Value"] = 1
	}):Play()
	task.wait(3.23)
	v_u_2:Create(v53, v_u_7, {
		["Value"] = 4
	}):Play()
	v_u_2:Create(v51, v_u_7, {
		["Size"] = UDim2.fromScale(1.5, 1.5)
	}):Play()
	task.wait(4)
	p47.Visible = true
	v54:Play()
	v_u_44(v_u_48, Color3.fromRGB(47, 61, 255), 0.6)
	task.wait(1)
	v_u_44(v_u_48, Color3.fromRGB(47, 61, 255), 0.3)
	task.wait(1)
	script:WaitForChild("Ambient"):Stop()
	script:WaitForChild("Omg"):Play()
	v_u_57 = false
	v51.Visible = false
	v49.Image = "http://www.roblox.com/asset/?id=1195495135"
	v49.ImageColor3 = Color3.new(1, 1, 1)
	if v49:FindFirstChildOfClass("UIGradient") then
		v49:FindFirstChildOfClass("UIGradient"):Destroy()
	end
	v55:Play()
	v52.Value = 0.02
	v_u_2:Create(v52, v_u_6, {
		["Value"] = 0
	}):Play()
	p47.Position = UDim2.fromScale(0.5, 0.5)
	p47.Size = UDim2.fromScale(0.6, 0.2)
	v_u_2:Create(p47, v_u_5, {
		["Size"] = UDim2.fromScale(0.4, 0.1)
	}):Play()
	v_u_48.BackgroundTransparency = 1
end