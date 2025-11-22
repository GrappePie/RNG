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
local function v_u_20(p15, p16, p17)
	-- upvalues: (copy) v_u_2, (copy) v_u_3, (copy) v_u_14
	local v18 = Instance.new("ImageLabel", p15)
	v18.Position = UDim2.fromScale(math.random(0, 100) / 100, math.random(0, 100) / 100)
	v18.Image = p17
	v18.ImageColor3 = p16
	v18.SizeConstraint = Enum.SizeConstraint.RelativeXX
	v18.BackgroundTransparency = 1
	local v19 = math.random(2, 6) / 10
	v18.Rotation = math.random(0, 360)
	v18.AnchorPoint = Vector2.new(0.5, 0.5)
	v18.Size = UDim2.fromScale(v19, v19)
	v_u_2:Create(v18, v_u_3, {
		["Size"] = UDim2.fromScale()
	}):Play()
	v_u_14:AddItem(v18, 0.5)
end
local function v_u_30(p21, p22)
	-- upvalues: (copy) v_u_2, (copy) v_u_3, (copy) v_u_4, (copy) v_u_14, (copy) v_u_9
	local v_u_23 = Instance.new("ImageLabel", p21)
	v_u_23.Size = UDim2.fromScale(1, 1)
	v_u_23.Image = "rbxassetid://1946917526"
	v_u_23.ImageColor3 = p22
	v_u_23.SizeConstraint = Enum.SizeConstraint.RelativeXX
	v_u_23.BackgroundTransparency = 1
	v_u_23.ImageTransparency = 1
	v_u_23.Rotation = math.random(-3, 3)
	v_u_23.AnchorPoint = Vector2.new(0.5, 0.5)
	v_u_2:Create(v_u_23, v_u_3, {
		["ImageTransparency"] = 0.7
	}):Play()
	local v_u_24 = UDim2.fromScale(math.random(0, 100) / 100, math.random(0, 100) / 100)
	local v_u_25 = math.random(2, 5) / 1400 * (math.random(1, 2) == 1 and -1 or 1)
	local v_u_26 = math.random(2, 5) / 1400 * (math.random(1, 2) == 1 and -1 or 1)
	coroutine.wrap(function()
		-- upvalues: (copy) v_u_23, (ref) v_u_2, (ref) v_u_4, (ref) v_u_14, (copy) v_u_24, (copy) v_u_25, (copy) v_u_26, (ref) v_u_9
		local v27 = time()
		local v28 = v27 + math.random(15, 20) / 10
		while v_u_23 and v_u_23.Parent do
			if time() >= v28 - 0.5 and not v_u_23:GetAttribute("Removing") then
				v_u_23:SetAttribute("Removing", true)
				v_u_2:Create(v_u_23, v_u_4, {
					["ImageTransparency"] = 1
				}):Play()
				v_u_14:AddItem(v_u_23, 0.5)
			end
			local v29 = (time() - v27) * 50
			v_u_23.Position = v_u_24 + UDim2.fromScale(v29 * -v_u_25, v29 * -v_u_26)
			v_u_9.Heartbeat:Wait()
		end
	end)()
end
local function v_u_36(p31, p32, p33, p34)
	-- upvalues: (copy) v_u_2, (copy) v_u_6, (copy) v_u_14
	script:WaitForChild("Whoosh").Volume = 1 - p33 + 0.3
	script:WaitForChild("Whoosh"):Play()
	local v35 = Instance.new("ImageLabel", p31)
	v35.Size = UDim2.fromScale(0.8, 0.8)
	v35.Image = p34 or "rbxassetid://16685503908"
	v35.ImageColor3 = p32
	v35.SizeConstraint = Enum.SizeConstraint.RelativeYY
	v35.BackgroundTransparency = 1
	v35.ImageTransparency = p33
	v35.AnchorPoint = Vector2.new(0.5, 0.5)
	v35.Position = UDim2.fromScale(0.5, 0.5)
	v_u_2:Create(v35, v_u_6, {
		["Size"] = UDim2.fromScale(0.7, 0.7),
		["ImageTransparency"] = 1
	}):Play()
	v_u_14:AddItem(v35, 2)
end
local function v_u_40(p37, p38)
	-- upvalues: (copy) v_u_2, (copy) v_u_5, (copy) v_u_14
	local v39 = Instance.new("ImageLabel", p37)
	v39.Position = UDim2.fromScale(0.5, 0.5)
	v39.Image = "rbxassetid://16685733415"
	v39.ImageColor3 = p38
	v39.SizeConstraint = Enum.SizeConstraint.RelativeXY
	v39.BackgroundTransparency = 1
	v39.Rotation = 110
	v39.AnchorPoint = Vector2.new(0.5, 0.5)
	v39.Size = UDim2.fromScale(0.7, 5)
	v_u_2:Create(v39, v_u_5, {
		["Size"] = UDim2.fromScale(0, 5)
	}):Play()
	v_u_14:AddItem(v39, 1)
end
return function(_, p41, p42, p43, _)
	-- upvalues: (copy) v_u_2, (copy) v_u_11, (copy) v_u_12, (copy) v_u_3, (copy) v_u_13, (copy) v_u_1, (copy) v_u_10, (copy) v_u_20, (copy) v_u_30, (copy) v_u_6, (copy) v_u_7, (copy) v_u_36, (copy) v_u_40, (copy) v_u_5
	script:WaitForChild("Ambient"):Play()
	local v_u_44 = p41.Blackboard
	local v45 = p41.Colorboard
	local v46 = p41.Background
	local _ = p41.EquipButton
	local _ = p41.SkipButton
	local v47 = p41.Star
	local _ = p41.Break1
	local _ = p41.Break2
	local v48 = p42:WaitForChild("ShakeAmount")
	local v49 = p42:WaitForChild("StarSpinSpeed")
	v_u_2:Create(v46, TweenInfo.new(1, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), v_u_11)
	v_u_2:Create(v46, TweenInfo.new(1, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), v_u_12)
	local v50 = v_u_2:Create(v45, TweenInfo.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
		["ImageTransparency"] = 0
	})
	local v51 = v_u_2:Create(v45, TweenInfo.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
		["ImageTransparency"] = 1
	})
	local v52 = v_u_2:Create(v_u_44, v_u_3, v_u_13)
	local v_u_53 = true
	v_u_1:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
	p43.Visible = false
	v52:Play()
	v45.Image = "http://www.roblox.com/asset/?id=12353440665"
	v45.ImageTransparency = 1
	v45.ImageColor3 = Color3.new(1, 1, 1)
	v47.ImageColor3 = Color3.new(1, 1, 1)
	if not p43:GetAttribute("IgnoreTextColor") then
		v45.ImageColor3 = p43.TextColor3
		v47.ImageColor3 = v45.ImageColor3
	end
	v_u_10:WaitForChild("OneMilPlus"):Play()
	v47.Size = UDim2.fromScale(1.5, 1.5)
	v47.Image = "rbxassetid://17068400400"
	v47.Visible = true
	coroutine.wrap(function()
		-- upvalues: (ref) v_u_53, (ref) v_u_20, (copy) v_u_44
		while task.wait(0.03) and v_u_53 do
			v_u_20(v_u_44, Color3.fromRGB(141, 48, 255), "http://www.roblox.com/asset/?id=13273852131")
		end
	end)()
	coroutine.wrap(function()
		-- upvalues: (ref) v_u_53, (ref) v_u_30, (copy) v_u_44
		while task.wait(0.2) and v_u_53 do
			v_u_30(v_u_44, Color3.fromRGB(141, 48, 255))
		end
	end)()
	v_u_2:Create(v47, v_u_6, {
		["Size"] = UDim2.fromScale(0.6, 0.6)
	}):Play()
	v49.Value = 5
	v_u_2:Create(v49, v_u_6, {
		["Value"] = 1
	}):Play()
	task.wait(3.23)
	v_u_2:Create(v49, v_u_7, {
		["Value"] = 4
	}):Play()
	v_u_2:Create(v47, v_u_7, {
		["Size"] = UDim2.fromScale(1.5, 1.5)
	}):Play()
	task.wait(4)
	p43.Visible = true
	v50:Play()
	v_u_36(v_u_44, Color3.fromRGB(141, 48, 255), 0.6)
	task.wait(1)
	v_u_36(v_u_44, Color3.fromRGB(141, 48, 255), 0.3, "rbxassetid://16685690147")
	task.wait(1)
	v_u_40(v_u_44, Color3.fromRGB(141, 48, 255))
	script:WaitForChild("Ambient"):Stop()
	script:WaitForChild("Omg"):Play()
	v_u_53 = false
	v47.Visible = false
	v45.Image = "http://www.roblox.com/asset/?id=1195495135"
	v45.ImageColor3 = Color3.new(1, 1, 1)
	if v45:FindFirstChildOfClass("UIGradient") then
		v45:FindFirstChildOfClass("UIGradient"):Destroy()
	end
	v51:Play()
	v48.Value = 0.02
	v_u_2:Create(v48, v_u_6, {
		["Value"] = 0
	}):Play()
	p43.Position = UDim2.fromScale(0.5, 0.5)
	p43.Size = UDim2.fromScale(0.6, 0.2)
	v_u_2:Create(p43, v_u_5, {
		["Size"] = UDim2.fromScale(0.4, 0.1)
	}):Play()
	v_u_44.BackgroundTransparency = 1
end