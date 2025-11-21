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
local function v_u_35(p31, p32, p33, _)
	-- upvalues: (copy) v_u_2, (copy) v_u_6, (copy) v_u_14
	script:WaitForChild("Whoosh").Volume = 1 - p33 + 0.3
	script:WaitForChild("Whoosh"):Play()
	local v34 = Instance.new("ImageLabel", p31)
	v34.Size = UDim2.fromScale(0.8, 0.8)
	v34.Image = "https://assetgame.roblox.com/asset/?id=12389945698&assetName=09 %281%29"
	v34.ImageColor3 = p32
	v34.SizeConstraint = Enum.SizeConstraint.RelativeYY
	v34.BackgroundTransparency = 1
	v34.ImageTransparency = p33
	v34.AnchorPoint = Vector2.new(0.5, 0.5)
	v34.Position = UDim2.fromScale(0.5, 0.5)
	v_u_2:Create(v34, v_u_6, {
		["Size"] = UDim2.fromScale(0.7, 0.7),
		["ImageTransparency"] = 1
	}):Play()
	v_u_14:AddItem(v34, 2)
end
return function(_, p36, p37, p38, _)
	-- upvalues: (copy) v_u_2, (copy) v_u_11, (copy) v_u_12, (copy) v_u_3, (copy) v_u_13, (copy) v_u_1, (copy) v_u_10, (copy) v_u_20, (copy) v_u_30, (copy) v_u_6, (copy) v_u_7, (copy) v_u_35, (copy) v_u_5
	script:WaitForChild("Ambient"):Play()
	local v_u_39 = p36.Blackboard
	local v40 = p36.Colorboard
	local v41 = p36.Background
	local _ = p36.EquipButton
	local _ = p36.SkipButton
	local v42 = p36.Star
	local _ = p36.Break1
	local _ = p36.Break2
	local v43 = p37:WaitForChild("ShakeAmount")
	local v44 = p37:WaitForChild("StarSpinSpeed")
	v_u_2:Create(v41, Tween0o.new(1, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), v_u_11)
	v_u_2:Create(v41, Tween0o.new(1, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), v_u_12)
	local v45 = v_u_2:Create(v40, Tween0o.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
		["ImageTransparency"] = 0
	})
	local v46 = v_u_2:Create(v40, Tween0o.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
		["ImageTransparency"] = 1
	})
	local v47 = v_u_2:Create(v_u_39, v_u_3, v_u_13)
	local v_u_48 = true
	v_u_1:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
	p38.Visible = false
	v47:Play()
	v40.Image = "http://www.roblox.com/asset/?id=12353440665"
	v40.ImageTransparency = 1
	v40.ImageColor3 = Color3.new(1, 1, 1)
	v42.ImageColor3 = Color3.new(1, 1, 1)
	local v49 = v42:FindFirstChildOfClass("UIGradient")
	if v49 then
		v49.Color = ColorSequence.new(Color3.new(1, 1, 1), Color3.fromRGB(139, 201, 255))
	end
	v_u_10:WaitForChild("OneMilPlus"):Play()
	v42.Size = UDim2.fromScale(1.5, 1.5)
	v42.Image = "rbxassetid://17068400400"
	v42.Visible = true
	coroutine.wrap(function()
		-- upvalues: (ref) v_u_48, (ref) v_u_20, (copy) v_u_39
		while task.wait(0.03) and v_u_48 do
			v_u_20(v_u_39, Color3.fromRGB(153, 184, 255), "rbxassetid://7216849594")
		end
	end)()
	coroutine.wrap(function()
		-- upvalues: (ref) v_u_48, (ref) v_u_30, (copy) v_u_39
		while task.wait(0.2) and v_u_48 do
			v_u_30(v_u_39, Color3.fromRGB(153, 184, 255))
		end
	end)()
	v_u_2:Create(v42, v_u_6, {
		["Size"] = UDim2.fromScale(0.6, 0.6)
	}):Play()
	v44.Value = 5
	v_u_2:Create(v44, v_u_6, {
		["Value"] = 1
	}):Play()
	task.wait(3.23)
	v_u_2:Create(v44, v_u_7, {
		["Value"] = 4
	}):Play()
	v_u_2:Create(v42, v_u_7, {
		["Size"] = UDim2.fromScale(1.5, 1.5)
	}):Play()
	task.wait(4)
	p38.Visible = true
	v45:Play()
	v_u_35(v_u_39, Color3.fromRGB(153, 184, 255), 0.6)
	task.wait(1)
	v_u_35(v_u_39, Color3.fromRGB(153, 184, 255), 0.3)
	task.wait(1)
	script:WaitForChild("Ambient"):Stop()
	script:WaitForChild("Omg"):Play()
	v_u_48 = false
	v42.Visible = false
	v40.Image = "http://www.roblox.com/asset/?id=1195495135"
	v40.ImageColor3 = Color3.new(1, 1, 1)
	if v40:FindFirstChildOfClass("UIGradient") then
		v40:FindFirstChildOfClass("UIGradient"):Destroy()
	end
	v46:Play()
	v43.Value = 0.02
	v_u_2:Create(v43, v_u_6, {
		["Value"] = 0
	}):Play()
	p38.Position = UDim2.fromScale(0.5, 0.5)
	p38.Size = UDim2.fromScale(0.6, 0.2)
	v_u_2:Create(p38, v_u_5, {
		["Size"] = UDim2.fromScale(0.4, 0.1)
	}):Play()
	v_u_39.BackgroundTransparency = 1
end
