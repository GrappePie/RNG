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
local function v_u_24(p15, p16)
	-- upvalues: (copy) v_u_2, (copy) v_u_3, (copy) v_u_4, (copy) v_u_14, (copy) v_u_9
	local v_u_17 = Instance.new("ImageLabel", p15)
	v_u_17.Size = UDim2.fromScale(1, 1)
	v_u_17.Image = "rbxassetid://1946917526"
	v_u_17.ImageColor3 = p16
	v_u_17.SizeConstraint = Enum.SizeConstraint.RelativeXX
	v_u_17.BackgroundTransparency = 1
	v_u_17.ImageTransparency = 1
	v_u_17.Rotation = math.random(-3, 3)
	v_u_17.AnchorPoint = Vector2.new(0.5, 0.5)
	v_u_2:Create(v_u_17, v_u_3, {
		["ImageTransparency"] = 0.7
	}):Play()
	local v_u_18 = UDim2.fromScale(math.random(0, 100) / 100, math.random(0, 100) / 100)
	local v_u_19 = math.random(2, 5) / 2500 * (math.random(1, 2) == 1 and -1 or 1)
	local v_u_20 = math.random(2, 5) / 2500 * (math.random(1, 2) == 1 and -1 or 1)
	coroutine.wrap(function()
		-- upvalues: (copy) v_u_17, (ref) v_u_2, (ref) v_u_4, (ref) v_u_14, (copy) v_u_18, (copy) v_u_19, (copy) v_u_20, (ref) v_u_9
		local v21 = time()
		local v22 = v21 + math.random(15, 20) / 10
		while v_u_17 and v_u_17.Parent do
			if time() >= v22 - 0.5 and not v_u_17:GetAttribute("Removing") then
				v_u_17:SetAttribute("Removing", true)
				v_u_2:Create(v_u_17, v_u_4, {
					["ImageTransparency"] = 1
				}):Play()
				v_u_14:AddItem(v_u_17, 0.5)
			end
			local v23 = (time() - v21) * 50
			v_u_17.Position = v_u_18 + UDim2.fromScale(v23 * -v_u_19, v23 * -v_u_20)
			v_u_9.Heartbeat:Wait()
		end
	end)()
end
local function v_u_36(p25, p26, p27)
	-- upvalues: (copy) v_u_2, (copy) v_u_3, (copy) v_u_4, (copy) v_u_14, (copy) v_u_9
	local v_u_28 = Instance.new("ImageLabel", p25)
	local v29 = math.random(10, 25) / 10
	v_u_28.Size = UDim2.fromScale(0.15 * v29, 0.15 * v29)
	v_u_28.Image = p27
	v_u_28.ImageColor3 = p26
	v_u_28.SizeConstraint = Enum.SizeConstraint.RelativeXX
	v_u_28.BackgroundTransparency = 1
	v_u_28.ImageTransparency = 1
	v_u_28.Rotation = math.random(-3, 3)
	v_u_28.AnchorPoint = Vector2.new(0.5, 0.5)
	v_u_2:Create(v_u_28, v_u_3, {
		["ImageTransparency"] = 0
	}):Play()
	local v_u_30 = UDim2.fromScale(math.random(0, 100) / 100, math.random(0, 100) / 100)
	local v_u_31 = math.random(2, 5) / 2500 * (math.random(1, 2) == 1 and -1 or 1)
	local v_u_32 = math.random(2, 5) / 2500 * (math.random(1, 2) == 1 and -1 or 1)
	coroutine.wrap(function()
		-- upvalues: (copy) v_u_28, (ref) v_u_2, (ref) v_u_4, (ref) v_u_14, (copy) v_u_30, (copy) v_u_31, (copy) v_u_32, (ref) v_u_9
		local v33 = time()
		local v34 = v33 + math.random(15, 20) / 10
		while v_u_28 and v_u_28.Parent do
			if time() >= v34 - 0.5 and not v_u_28:GetAttribute("Removing") then
				v_u_28:SetAttribute("Removing", true)
				v_u_2:Create(v_u_28, v_u_4, {
					["ImageTransparency"] = 1
				}):Play()
				v_u_14:AddItem(v_u_28, 0.5)
			end
			local v35 = (time() - v33) * 50
			v_u_28.Position = v_u_30 + UDim2.fromScale(v35 * -v_u_31, v35 * -v_u_32)
			v_u_9.Heartbeat:Wait()
		end
	end)()
end
local function v_u_41(p37, p38, p39, _)
	-- upvalues: (copy) v_u_2, (copy) v_u_6, (copy) v_u_14
	script:WaitForChild("Whoosh").Volume = 1 - p39 + 0.3
	script:WaitForChild("Whoosh"):Play()
	local v40 = Instance.new("ImageLabel", p37)
	v40.Size = UDim2.fromScale(0.8, 0.8)
	v40.Image = "rbxassetid://17020883448"
	v40.ImageColor3 = p38
	v40.SizeConstraint = Enum.SizeConstraint.RelativeYY
	v40.BackgroundTransparency = 1
	v40.ImageTransparency = p39
	v40.AnchorPoint = Vector2.new(0.5, 0.5)
	v40.Position = UDim2.fromScale(0.5, 0.5)
	v_u_2:Create(v40, v_u_6, {
		["Size"] = UDim2.fromScale(0.7, 0.7),
		["ImageTransparency"] = 1
	}):Play()
	v_u_14:AddItem(v40, 2)
end
Textures = {
	"rbxassetid://17020865216",
	"rbxassetid://17020868229",
	"rbxassetid://17020871697",
	"rbxassetid://17020875458",
	"rbxassetid://17020880091"
}
return function(_, p42, p43, p44, _)
	-- upvalues: (copy) v_u_2, (copy) v_u_11, (copy) v_u_12, (copy) v_u_3, (copy) v_u_13, (copy) v_u_1, (copy) v_u_10, (copy) v_u_36, (copy) v_u_24, (copy) v_u_6, (copy) v_u_7, (copy) v_u_41, (copy) v_u_5
	script:WaitForChild("Ambient"):Play()
	local v_u_45 = p42.Blackboard
	local v46 = p42.Colorboard
	local v47 = p42.Background
	local _ = p42.EquipButton
	local _ = p42.SkipButton
	local v48 = p42.Star
	local _ = p42.Break1
	local _ = p42.Break2
	local v49 = p43:WaitForChild("ShakeAmount")
	local v50 = p43:WaitForChild("StarSpinSpeed")
	v_u_2:Create(v47, TweenInfo.new(1, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), v_u_11)
	v_u_2:Create(v47, TweenInfo.new(1, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), v_u_12)
	local v51 = v_u_2:Create(v46, TweenInfo.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
		["ImageTransparency"] = 0
	})
	local v52 = v_u_2:Create(v46, TweenInfo.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
		["ImageTransparency"] = 1
	})
	local v53 = v_u_2:Create(v_u_45, v_u_3, v_u_13)
	local v_u_54 = true
	v_u_1:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
	p44.Visible = false
	v53:Play()
	v46.Image = "http://www.roblox.com/asset/?id=12353440665"
	v46.ImageTransparency = 1
	v46.ImageColor3 = Color3.new(1, 1, 1)
	if v46:FindFirstChildOfClass("UIGradient") then
		v46:FindFirstChildOfClass("UIGradient"):Destroy()
	end
	if v48:FindFirstChildOfClass("UIGradient") then
		v48:FindFirstChildOfClass("UIGradient"):Destroy()
	end
	v48.ImageColor3 = Color3.new(0.47451, 0.552941, 1)
	Instance.new("UIGradient", v48).Color = ColorSequence.new(Color3.new(1, 1, 1), Color3.fromRGB(144, 110, 255))
	Instance.new("UIGradient", v46).Color = ColorSequence.new(Color3.new(1, 1, 1), Color3.fromRGB(144, 110, 255))
	v_u_10:WaitForChild("OneMilPlus"):Play()
	v48.Size = UDim2.fromScale(1.5, 1.5)
	v48.Image = "rbxassetid://17068400400"
	v48.Visible = true
	coroutine.wrap(function()
		-- upvalues: (ref) v_u_54, (ref) v_u_36, (copy) v_u_45
		while task.wait(0.7) and v_u_54 do
			v_u_36(v_u_45, math.random(0, 1) == 1 and Color3.fromRGB(147, 185, 255) or Color3.fromRGB(189, 167, 255), Textures[math.random(1, #Textures)])
		end
	end)()
	coroutine.wrap(function()
		-- upvalues: (ref) v_u_54, (ref) v_u_24, (copy) v_u_45
		while task.wait(0.2) and v_u_54 do
			v_u_24(v_u_45, math.random(0, 1) == 1 and Color3.fromRGB(110, 125, 255) or Color3.fromRGB(159, 115, 255))
		end
	end)()
	v_u_2:Create(v48, v_u_6, {
		["Size"] = UDim2.fromScale(0.6, 0.6)
	}):Play()
	v50.Value = 5
	v_u_2:Create(v50, v_u_6, {
		["Value"] = 1
	}):Play()
	task.wait(3.23)
	v_u_2:Create(v50, v_u_7, {
		["Value"] = 4
	}):Play()
	v_u_2:Create(v48, v_u_7, {
		["Size"] = UDim2.fromScale(1.5, 1.5)
	}):Play()
	task.wait(4)
	p44.Visible = true
	v51:Play()
	v_u_41(v_u_45, Color3.fromRGB(110, 125, 255), 0.6)
	task.wait(1)
	v_u_41(v_u_45, Color3.fromRGB(110, 125, 255), 0.3)
	task.wait(1)
	script:WaitForChild("Ambient"):Stop()
	script:WaitForChild("Omg"):Play()
	v_u_54 = false
	v48.Visible = false
	v46.Image = "http://www.roblox.com/asset/?id=1195495135"
	v46.ImageColor3 = Color3.new(1, 1, 1)
	if v46:FindFirstChildOfClass("UIGradient") then
		v46:FindFirstChildOfClass("UIGradient"):Destroy()
	end
	v52:Play()
	v49.Value = 0.02
	v_u_2:Create(v49, v_u_6, {
		["Value"] = 0
	}):Play()
	p44.Position = UDim2.fromScale(0.5, 0.5)
	p44.Size = UDim2.fromScale(0.6, 0.2)
	v_u_2:Create(p44, v_u_5, {
		["Size"] = UDim2.fromScale(0.4, 0.1)
	}):Play()
	v_u_45.BackgroundTransparency = 1
end