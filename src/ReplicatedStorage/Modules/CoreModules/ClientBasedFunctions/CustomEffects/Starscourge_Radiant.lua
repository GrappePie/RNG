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
local v_u_11 = require(v8.Modules:WaitForChild("UICache"))
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
local function v_u_25(p16, p17)
	-- upvalues: (copy) v_u_2, (copy) v_u_3, (copy) v_u_4, (copy) v_u_15, (copy) v_u_9
	local v_u_18 = Instance.new("ImageLabel")
	v_u_18.Size = UDim2.fromScale(1, 1)
	v_u_18.Image = "rbxassetid://1946917526"
	v_u_18.ImageColor3 = p17
	v_u_18.SizeConstraint = Enum.SizeConstraint.RelativeXX
	v_u_18.BackgroundTransparency = 1
	v_u_18.ImageTransparency = 1
	v_u_18.ZIndex = 12
	v_u_18.Rotation = math.random(-3, 3)
	v_u_18.AnchorPoint = Vector2.new(0.5, 0.5)
	v_u_2:Create(v_u_18, v_u_3, {
		["ImageTransparency"] = 0.8
	}):Play()
	local v_u_19 = UDim2.fromScale(math.random(0, 100) / 100, math.random(0, 100) / 100)
	local v_u_20 = math.random(2, 5) / 1400 * (math.random(1, 2) == 1 and -1 or 1)
	local v_u_21 = math.random(2, 5) / 1400 * (math.random(1, 2) == 1 and -1 or 1)
	v_u_18.Parent = p16
	coroutine.wrap(function()
		-- upvalues: (copy) v_u_18, (ref) v_u_2, (ref) v_u_4, (ref) v_u_15, (copy) v_u_19, (copy) v_u_20, (copy) v_u_21, (ref) v_u_9
		local v22 = time()
		local v23 = v22 + math.random(15, 20) / 10
		while v_u_18 and v_u_18.Parent do
			if time() >= v23 - 0.5 and not v_u_18:GetAttribute("Removing") then
				v_u_18:SetAttribute("Removing", true)
				v_u_2:Create(v_u_18, v_u_4, {
					["ImageTransparency"] = 1
				}):Play()
				v_u_15:AddItem(v_u_18, 0.5)
			end
			local v24 = (time() - v22) * 50
			v_u_18.Position = v_u_19 + UDim2.fromScale(v24 * -v_u_20, v24 * -v_u_21)
			v_u_9.Heartbeat:Wait()
		end
	end)()
end
require(v8:WaitForChild("Modules"):WaitForChild("UICache"))
local function v_u_35(p26, p27)
	-- upvalues: (copy) v_u_2
	local v28 = math.random()
	local v29 = math.random()
	local v30 = p27.AbsoluteSize.X
	local v31 = p27.AbsoluteSize.Y
	local v32 = math.max(v30, v31)
	p26.Position = UDim2.new(v28, v32, v29, -v32)
	local v33 = {
		["Position"] = UDim2.new(v28, -v32, v29, v32)
	}
	local v34 = v_u_2:Create(p26, Tween0o.new(math.random(300, 500) / 100, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, -1), v33)
	task.wait(math.random() * 5)
	v34:Play()
end
local v_u_36 = {}
local function v_u_41(p37)
	-- upvalues: (copy) v_u_36, (copy) v_u_35
	local v38 = Instance.new("Frame", p37)
	local v39 = v_u_36
	table.insert(v39, v38)
	v38.BackgroundTransparency = 1
	v38.AnchorPoint = Vector2.new(0.5, 0.5)
	v38.ZIndex = 10
	v38.Size = UDim2.fromScale(0.1, 0.1)
	v38.SizeConstraint = Enum.SizeConstraint.RelativeXX
	v38.Position = UDim2.new(0.99, 0.01)
	local v40 = Instance.new("ImageLabel")
	v40.Position = UDim2.fromScale(0.2, -0.2)
	v40.ZIndex = 10
	v40.Size = UDim2.fromScale(2, 0.1)
	v40.Rotation = -45
	v40.BackgroundTransparency = 1
	v40.Image = "rbxassetid://18244764764"
	v40.ImageColor3 = Color3.fromRGB(219, 253, 255)
	v40.ImageTransparency = 0.6
	v40.Parent = v38
	v_u_35(v38, p37)
end
local function v_u_46(p42)
	-- upvalues: (copy) v_u_2
	p42.Rotation = math.random(1, 360)
	local v43 = {
		["ImageTransparency"] = 0
	}
	local v44 = math.random() * 3 / 100
	v43.Size = UDim2.fromScale(v44, v44)
	local v45 = v_u_2:Create(p42, Tween0o.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out, -1, true), v43)
	while p42 and p42.Parent do
		task.wait(math.random() * 5)
		v45:Play()
		v45.Completed:Wait()
	end
end
local function v_u_50(p47)
	-- upvalues: (copy) v_u_36, (copy) v_u_46
	local v48 = Instance.new("ImageLabel")
	local v49 = v_u_36
	table.insert(v49, v48)
	v48.Size = UDim2.fromScale(0, 0)
	v48.Image = "rbxassetid://17068400400"
	v48.ImageColor3 = Color3.new(0.7, 0.9, 1)
	v48.ImageTransparency = 0.95
	v48.SizeConstraint = Enum.SizeConstraint.RelativeXX
	v48.BackgroundTransparency = 1
	v48.ZIndex = 10
	v48.Rotation = math.random(-3, 3)
	v48.BackgroundColor3 = Color3.new(1, 1, 1)
	v48.AnchorPoint = Vector2.new(0.5, 0.5)
	v48.Name = "Star"
	v48.Position = UDim2.fromScale(math.random(), math.random())
	v48.Parent = p47
	v_u_46(v48)
end
local function v_u_65(p_u_51)
	-- upvalues: (copy) v_u_2, (copy) v_u_3, (copy) v_u_4, (copy) v_u_9
	if #p_u_51.InUse ~= #p_u_51.Open then
		local v_u_52 = p_u_51:GetUI()
		local v53 = math.random(5, 20) / 500
		v_u_2:Create(v_u_52, v_u_3, {
			["Size"] = UDim2.fromScale(v53, v53)
		}):Play()
		local v_u_54 = UDim2.fromScale(math.random(0, 100) / 100, 1)
		local v_u_55 = math.random(50, 70) * (math.random(1, 2) == 1 and -1 or 1)
		local v_u_56 = v53 / 5
		coroutine.wrap(function()
			-- upvalues: (copy) v_u_52, (ref) v_u_2, (ref) v_u_4, (copy) p_u_51, (copy) v_u_54, (copy) v_u_55, (copy) v_u_56, (ref) v_u_9
			local v57 = time()
			local v58 = v57 + math.random(10, 25) / 10
			local v_u_59 = true
			while true do
				if not v_u_59 then
					return
				end
				if time() >= v58 - 0.5 and not v_u_52:GetAttribute("Removing") then
					v_u_52:SetAttribute("Removing", true)
					v_u_2:Create(v_u_52, v_u_4, {
						["Size"] = UDim2.fromScale(0, 0)
					}):Play()
					task.delay(2, function()
						-- upvalues: (ref) v_u_52, (ref) p_u_51, (ref) v_u_59
						if v_u_52.Parent then
							v_u_52:SetAttribute("Removing", false)
							p_u_51:ReturnUI(v_u_52)
							v_u_59 = false
						end
					end)
				end
				local v60 = (time() - v57) * 50
				local v61 = v_u_52
				local v62 = v_u_54
				local v63 = UDim2.fromScale
				local v64 = v60 / v_u_55
				v61.Position = v62 + v63(0.07 * math.sin(v64), v60 * -v_u_56)
				if 1 < v60 * -v_u_56 then
					v_u_52:SetAttribute("Removing", false)
					p_u_51:ReturnUI(v_u_52)
					break
				end
				v_u_9.Heartbeat:Wait()
			end
		end)()
	end
end
return function(_, p66, p67, p68, _)
	-- upvalues: (copy) v_u_2, (copy) v_u_12, (copy) v_u_13, (copy) v_u_3, (copy) v_u_14, (copy) v_u_11, (copy) v_u_1, (copy) v_u_10, (copy) v_u_25, (copy) v_u_6, (copy) v_u_50, (copy) v_u_41, (copy) v_u_65, (copy) v_u_7, (copy) v_u_36, (copy) v_u_5
	script:WaitForChild("Ambient"):Play()
	local v_u_69 = p66.Blackboard
	local v70 = p66.Colorboard
	local v71 = v70.BackgroundColor3
	local v72 = v70.BackgroundTransparency
	local v73 = p66.Background
	local v74 = p66.Star
	local _ = p66.Break1
	local _ = p66.Break2
	local v75 = p67:WaitForChild("ShakeAmount")
	local v76 = p67:WaitForChild("StarSpinSpeed")
	v_u_2:Create(v73, Tween0o.new(1, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), v_u_12)
	v_u_2:Create(v73, Tween0o.new(1, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), v_u_13)
	local v77 = v_u_2:Create(v70, Tween0o.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
		["ImageTransparency"] = 0,
		["BackgroundTransparency"] = 0.6
	})
	local v78 = v_u_2:Create(v70, Tween0o.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
		["ImageTransparency"] = 1
	})
	local v79 = v_u_2:Create(v_u_69, v_u_3, v_u_14)
	local v_u_80 = true
	local v81 = Instance.new("ImageLabel")
	v81.Size = UDim2.new()
	v81.Image = "rbxassetid://8030760338"
	v81.ImageColor3 = Color3.new(0.7, 0.9, 1)
	v81.SizeConstraint = Enum.SizeConstraint.RelativeXX
	v81.BackgroundTransparency = 1
	v81.Rotation = math.random(-15, 15)
	v81.AnchorPoint = Vector2.new(0.5, 0.5)
	v81.ZIndex = 13
	if v70:FindFirstChildOfClass("UIGradient") then
		v70:FindFirstChildOfClass("UIGradient"):Destroy()
	end
	local v_u_82 = v_u_11.new(v81, 60, p66)
	local v_u_83 = v74:FindFirstChildOfClass("UIGradient")
	local v84 = Instance.new("Frame", v_u_69)
	v84.Size = UDim2.fromScale(1.4142135623730951, 1.4142135623730951)
	v84.SizeConstraint = Enum.SizeConstraint.RelativeXX
	v84.Position = UDim2.fromScale(0.5, 0.5)
	v84.AnchorPoint = Vector2.new(0.5, 0.5)
	v84.BackgroundTransparency = 1
	local v_u_85 = Color3.fromHex("#dafaff")
	local v_u_86 = Instance.new("UIGradient", v70)
	v_u_1:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
	p68.Visible = false
	v79:Play()
	v70.Image = "http://www.roblox.com/asset/?id=12353440665"
	v70.ImageTransparency = 1
	v70.ImageColor3 = Color3.new(0.7, 0.9, 1)
	v_u_86.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 0) })
	v70.BackgroundColor3 = Color3.new(0.7, 0.9, 1)
	v74.ImageColor3 = v70.ImageColor3
	v_u_10:WaitForChild("OneMilPlus"):Play()
	v74.Size = UDim2.fromScale(1.5, 1.5)
	v74.Image = "rbxassetid://17068400400"
	v74.Visible = true
	coroutine.wrap(function()
		-- upvalues: (ref) v_u_80, (ref) v_u_25, (copy) v_u_69
		while task.wait(0.2) and v_u_80 do
			v_u_25(v_u_69, Color3.new(0.7, 0.9, 1))
		end
	end)()
	v_u_2:Create(v84, Tween0o.new(20, Enum.EasingStyle.Quint), {
		["Rotation"] = 90
	}):Play()
	v_u_2:Create(v74, Tween0o.new(1), {
		["ImageColor3"] = Color3.new(0.7, 0.8, 1)
	}):Play()
	v_u_2:Create(v74, v_u_6, {
		["Size"] = UDim2.fromScale(0.6, 0.6)
	}):Play()
	v76.Value = 5
	v_u_2:Create(v76, v_u_6, {
		["Value"] = 1
	}):Play()
	task.spawn(function()
		-- upvalues: (copy) v_u_85, (copy) v_u_86, (copy) v_u_83
		for v87 = 60, 0, -1 do
			local v88 = (60 - v87) / 60
			local v89 = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0):Lerp(v_u_85, v88)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255):Lerp(v_u_85, v88)) })
			v_u_86.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 1 - v88), NumberSequenceKeypoint.new(1, 0) })
			v_u_83.Color = v89
			task.wait(0.01)
		end
	end)
	for _ = 1, 100 do
		task.spawn(v_u_50, v84)
	end
	for _ = 1, 20 do
		task.spawn(v_u_41, p66)
	end
	local v90 = task.spawn(function()
		-- upvalues: (ref) v_u_65, (copy) v_u_82
		while task.wait(0.05) do
			v_u_65(v_u_82)
		end
	end)
	task.wait(3.23)
	v_u_2:Create(v76, v_u_7, {
		["Value"] = 4
	}):Play()
	v_u_2:Create(v74, v_u_7, {
		["Size"] = UDim2.fromScale(1.5, 1.5)
	}):Play()
	task.wait(4)
	p68.Visible = true
	v77:Play()
	task.wait(1)
	task.wait(1)
	script:WaitForChild("Ambient"):Stop()
	v_u_80 = false
	v74.Visible = false
	v70.Image = "http://www.roblox.com/asset/?id=1195495135"
	v70.ImageColor3 = Color3.new(1, 1, 1)
	for _, v91 in v_u_36 do
		v91:Destroy()
	end
	v78:Play()
	v75.Value = 0.02
	v_u_2:Create(v75, v_u_6, {
		["Value"] = 0
	}):Play()
	p68.Position = UDim2.fromScale(0.5, 0.5)
	p68.Size = UDim2.fromScale(0.6, 0.2)
	v_u_2:Create(p68, v_u_5, {
		["Size"] = UDim2.fromScale(0.4, 0.1)
	}):Play()
	v_u_69.BackgroundTransparency = 1
	v70.BackgroundColor3 = v71
	v70.BackgroundTransparency = v72
	v84:Destroy()
	task.cancel(v90)
	task.delay(2, function()
		-- upvalues: (copy) v_u_82
		v_u_82:Dispose()
	end)
end