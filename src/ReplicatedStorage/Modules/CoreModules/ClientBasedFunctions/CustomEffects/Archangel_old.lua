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
local function v_u_35(p15, p16)
	-- upvalues: (copy) v_u_2, (copy) v_u_3, (copy) v_u_4, (copy) v_u_14, (copy) v_u_9
	local v_u_17 = Instance.new("ImageLabel", p15)
	v_u_17.Size = UDim2.fromScale()
	v_u_17.Image = "rbxassetid://7244584563"
	v_u_17.ImageColor3 = p16
	v_u_17.SizeConstraint = Enum.SizeConstraint.RelativeXX
	v_u_17.BackgroundTransparency = 1
	local v18 = math.random(2, 6) / 100
	local v_u_19 = math.random(-80, 100)
	local v_u_20 = math.random(5, 10) * (math.random(1, 2) == 1 and -1 or 1)
	v_u_17.Rotation = v_u_19
	v_u_17.AnchorPoint = Vector2.new(0.5, 0.5)
	v_u_2:Create(v_u_17, v_u_3, {
		["Size"] = UDim2.fromScale(v18, v18)
	}):Play()
	local v_u_21 = UDim2.fromScale(math.random(0, 100) / 100, 0)
	local v_u_22 = math.random(50, 70) * (math.random(1, 2) == 1 and -1 or 1)
	local v_u_23 = math.random(2, 5) / -500
	coroutine.wrap(function()
		-- upvalues: (copy) v_u_17, (ref) v_u_2, (ref) v_u_4, (ref) v_u_14, (copy) v_u_21, (copy) v_u_22, (copy) v_u_23, (copy) v_u_19, (copy) v_u_20, (ref) v_u_9
		local v24 = time()
		local v25 = v24 + math.random(15, 20) / 10
		while v_u_17 and v_u_17.Parent do
			if time() >= v25 - 0.5 and not v_u_17:GetAttribute("Removing") then
				v_u_17:SetAttribute("Removing", true)
				v_u_2:Create(v_u_17, v_u_4, {
					["Size"] = UDim2.fromScale(0, 0)
				}):Play()
				v_u_14:AddItem(v_u_17, 0.5)
			end
			local v26 = (time() - v24) * 50
			local v27 = v_u_17
			local v28 = v_u_21
			local v29 = UDim2.fromScale
			local v30 = v26 / v_u_22
			v27.Position = v28 + v29(0.07 * math.cos(v30), v26 * -v_u_23)
			local v31 = v_u_17
			local v32 = v_u_19
			local v33 = v_u_20
			local v34 = v26 / v_u_22 * 1.2
			v31.Rotation = v32 + v33 * math.cos(v34)
			v_u_9.Heartbeat:Wait()
		end
	end)()
end
local function v_u_45(p36, p37)
	-- upvalues: (copy) v_u_2, (copy) v_u_3, (copy) v_u_4, (copy) v_u_14, (copy) v_u_9
	local v_u_38 = Instance.new("ImageLabel", p36)
	v_u_38.Size = UDim2.fromScale(1, 1)
	v_u_38.Image = "rbxassetid://1946917526"
	v_u_38.ImageColor3 = p37
	v_u_38.SizeConstraint = Enum.SizeConstraint.RelativeXX
	v_u_38.BackgroundTransparency = 1
	v_u_38.ImageTransparency = 1
	v_u_38.Rotation = math.random(-3, 3)
	v_u_38.AnchorPoint = Vector2.new(0.5, 0.5)
	v_u_2:Create(v_u_38, v_u_3, {
		["ImageTransparency"] = 0.7
	}):Play()
	local v_u_39 = UDim2.fromScale(math.random(0, 100) / 100, math.random(0, 100) / 100)
	local v_u_40 = math.random(2, 5) / 1400 * (math.random(1, 2) == 1 and -1 or 1)
	local v_u_41 = math.random(2, 5) / 1400 * (math.random(1, 2) == 1 and -1 or 1)
	coroutine.wrap(function()
		-- upvalues: (copy) v_u_38, (ref) v_u_2, (ref) v_u_4, (ref) v_u_14, (copy) v_u_39, (copy) v_u_40, (copy) v_u_41, (ref) v_u_9
		local v42 = time()
		local v43 = v42 + math.random(15, 20) / 10
		while v_u_38 and v_u_38.Parent do
			if time() >= v43 - 0.5 and not v_u_38:GetAttribute("Removing") then
				v_u_38:SetAttribute("Removing", true)
				v_u_2:Create(v_u_38, v_u_4, {
					["ImageTransparency"] = 1
				}):Play()
				v_u_14:AddItem(v_u_38, 0.5)
			end
			local v44 = (time() - v42) * 50
			v_u_38.Position = v_u_39 + UDim2.fromScale(v44 * -v_u_40, v44 * -v_u_41)
			v_u_9.Heartbeat:Wait()
		end
	end)()
end
local function v_u_50(p46, p47, p48)
	-- upvalues: (copy) v_u_2, (copy) v_u_6, (copy) v_u_14
	script:WaitForChild("Whoosh").Volume = 1 - p48 + 0.3
	script:WaitForChild("Whoosh"):Play()
	local v49 = Instance.new("ImageLabel", p46)
	v49.Size = UDim2.fromScale(0.8, 0.8)
	v49.Image = "rbxassetid://16695982496"
	v49.ImageColor3 = p47
	v49.SizeConstraint = Enum.SizeConstraint.RelativeYY
	v49.BackgroundTransparency = 1
	v49.ImageTransparency = p48
	v49.AnchorPoint = Vector2.new(0.5, 0.5)
	v49.Position = UDim2.fromScale(0.5, 0.5)
	v_u_2:Create(v49, v_u_6, {
		["Size"] = UDim2.fromScale(0.7, 0.7),
		["ImageTransparency"] = 1
	}):Play()
	v_u_14:AddItem(v49, 2)
end
return function(_, p51, p52, p53, _)
	-- upvalues: (copy) v_u_2, (copy) v_u_11, (copy) v_u_12, (copy) v_u_3, (copy) v_u_13, (copy) v_u_1, (copy) v_u_10, (copy) v_u_35, (copy) v_u_45, (copy) v_u_6, (copy) v_u_7, (copy) v_u_50, (copy) v_u_5
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
	
	v_u_2:Create(v56, Tween0o.new(1, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), v_u_11)
	v_u_2:Create(v56, Tween0o.new(1, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), v_u_12)
	local v60 = v_u_2:Create(v55, Tween0o.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
		["ImageTransparency"] = 0
	})
	local v61 = v_u_2:Create(v55, Tween0o.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
		["ImageTransparency"] = 1
	})
	local v62 = v_u_2:Create(v_u_54, v_u_3, v_u_13)
	local v_u_63 = true
	v_u_1:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
	p53.Visible = false
	v62:Play()
	v55.Image = "http://www.roblox.com/asset/?id=12353440665"
	v55.ImageTransparency = 1
	v55.ImageColor3 = Color3.new(1, 1, 1)
	v57.ImageColor3 = Color3.new(1, 1, 1)
	if not p53:GetAttribute("IgnoreTextColor") then
		v55.ImageColor3 = p53.TextColor3
		v57.ImageColor3 = v55.ImageColor3
	end
	v_u_10:WaitForChild("OneMilPlus"):Play()
	v57.Size = UDim2.fromScale(1.5, 1.5)
	v57.Image = "rbxassetid://17068400400"
	v57.Visible = true
	coroutine.wrap(function()
		-- upvalues: (ref) v_u_63, (ref) v_u_35, (copy) v_u_54
		while task.wait(0.05) and v_u_63 do
			v_u_35(v_u_54, Color3.fromRGB(255, 200, 124))
		end
	end)()
	coroutine.wrap(function()
		-- upvalues: (ref) v_u_63, (ref) v_u_45, (copy) v_u_54
		while task.wait(0.2) and v_u_63 do
			v_u_45(v_u_54, Color3.fromRGB(255, 200, 124))
		end
	end)()
	v_u_2:Create(v57, v_u_6, {
		["Size"] = UDim2.fromScale(0.6, 0.6)
	}):Play()
	v59.Value = 5
	v_u_2:Create(v59, v_u_6, {
		["Value"] = 1
	}):Play()
	task.wait(3.23)
	v_u_2:Create(v59, v_u_7, {
		["Value"] = 4
	}):Play()
	v_u_2:Create(v57, v_u_7, {
		["Size"] = UDim2.fromScale(1.5, 1.5)
	}):Play()
	task.wait(4)
	p53.Visible = true
	v60:Play()
	v_u_50(v_u_54, Color3.fromRGB(255, 200, 124), 0.6)
	task.wait(1)
	v_u_50(v_u_54, Color3.fromRGB(255, 200, 124), 0.2)
	task.wait(1)
	script:WaitForChild("Ambient"):Stop()
	script:WaitForChild("Omg"):Play()
	v_u_63 = false
	v57.Visible = false
	v55.Image = "http://www.roblox.com/asset/?id=1195495135"
	v55.ImageColor3 = Color3.new(1, 1, 1)
	if v55:FindFirstChildOfClass("UIGradient") then
		v55:FindFirstChildOfClass("UIGradient"):Destroy()
	end
	v61:Play()
	v58.Value = 0.02
	v_u_2:Create(v58, v_u_6, {
		["Value"] = 0
	}):Play()
	p53.Position = UDim2.fromScale(0.5, 0.5)
	p53.Size = UDim2.fromScale(0.6, 0.2)
	v_u_2:Create(p53, v_u_5, {
		["Size"] = UDim2.fromScale(0.4, 0.1)
	}):Play()
	v_u_54.BackgroundTransparency = 1
end