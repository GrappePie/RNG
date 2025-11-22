-- What the sigma?

local v1 = game:GetService("Players")
local v_u_2 = game:GetService("StarterGui")
local v_u_3 = game:GetService("TweenService")
v1.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainInterface")
local v_u_4 = script:WaitForChild("Cross")
local v_u_5 = script:WaitForChild("Cross2")
local v_u_6 = script:WaitForChild("HugeRing")
local v_u_7 = script:WaitForChild("SmallRing")
local v8 = {}
local v_u_9 = {
	["BackgroundTransparency"] = 0.6
}
local v_u_10 = {
	["BackgroundTransparency"] = 1
}
local v_u_11 = {
	["BackgroundTransparency"] = 0
}
local v_u_12 = TweenInfo.new(0.5, Enum.EasingStyle.Quart)
local v_u_13 = TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
local v_u_14 = TweenInfo.new(1, Enum.EasingStyle.Quart)
local v_u_15 = TweenInfo.new(2, Enum.EasingStyle.Quart)
TweenInfo.new(6, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
local v_u_16 = game:GetService("ReplicatedStorage"):WaitForChild("Assets"):WaitForChild("SFXs")
function v8.Init() end
local function v_u_26(p17, p18)
	-- upvalues: (copy) v_u_3, (copy) v_u_12, (copy) v_u_13
	local v_u_19 = Instance.new("ImageLabel", p17)
	v_u_19.Size = UDim2.fromScale(1, 1)
	v_u_19.Image = "rbxassetid://1946917526"
	v_u_19.ImageColor3 = p18
	v_u_19.SizeConstraint = Enum.SizeConstraint.RelativeXX
	v_u_19.BackgroundTransparency = 1
	v_u_19.ImageTransparency = 1
	v_u_19.Rotation = math.random(-3, 3)
	v_u_19.AnchorPoint = Vector2.new(0.5, 0.5)
	v_u_3:Create(v_u_19, v_u_12, {
		["ImageTransparency"] = 0.7
	}):Play()
	local v_u_20 = UDim2.fromScale(math.random(0, 100) / 100, math.random(0, 100) / 100)
	local v_u_21 = math.random(2, 5) / 1400 * (math.random(1, 2) == 1 and -1 or 1)
	local v_u_22 = math.random(2, 5) / 1400 * (math.random(1, 2) == 1 and -1 or 1)
	coroutine.wrap(function()
		-- upvalues: (copy) v_u_19, (ref) v_u_3, (ref) v_u_13, (copy) v_u_20, (copy) v_u_21, (copy) v_u_22
		local v23 = time()
		local v24 = v23 + math.random(15, 20) / 10
		while v_u_19 and v_u_19.Parent do
			if time() >= v24 - 0.5 and not v_u_19:GetAttribute("Removing") then
				v_u_19:SetAttribute("Removing", true)
				v_u_3:Create(v_u_19, v_u_13, {
					["ImageTransparency"] = 1
				}):Play()
				game:GetService("Debris"):AddItem(v_u_19, 0.5)
			end
			local v25 = (time() - v23) * 50
			v_u_19.Position = v_u_20 + UDim2.fromScale(v25 * -v_u_21, v25 * -v_u_22)
			game:GetService("RunService").Heartbeat:Wait()
		end
	end)()
end
return setmetatable(v8, {
	["__call"] = function(_, _, p27, p28, p29, _)
		-- upvalues: (copy) v_u_4, (copy) v_u_5, (copy) v_u_6, (copy) v_u_7, (copy) v_u_3, (copy) v_u_9, (copy) v_u_10, (copy) v_u_12, (copy) v_u_11, (copy) v_u_26, (copy) v_u_2, (copy) v_u_16, (copy) v_u_15, (copy) v_u_14
		local v30 = Instance.new("Frame")
		local v_u_31 = v_u_4:Clone()
		local v_u_32 = v_u_5:Clone()
		local v_u_33 = v_u_6:Clone()
		local v_u_34 = v_u_7:Clone()
		local v35 = script:WaitForChild("Circle"):Clone()
		local v_u_36 = script:WaitForChild("LogoThing"):Clone()
		v30.Position = UDim2.fromScale(0.5, 0.5)
		v30.BackgroundTransparency = 1
		v30.Size = UDim2.fromScale(0.8, 0.8)
		v30.SizeConstraint = Enum.SizeConstraint.RelativeYY
		v30.AnchorPoint = Vector2.new(0.5, 0.5)
		v30.ZIndex = 15
		v30.Parent = p27
		v_u_31.Size = UDim2.fromOffset(1, 1)
		v_u_32.Size = UDim2.fromOffset(1, 1)
		v_u_33.Size = UDim2.fromOffset(1, 1)
		v_u_34.Size = UDim2.fromOffset(1, 1)
		v_u_31.Parent = v30
		v_u_32.Parent = v30
		v_u_33.Parent = v30
		v_u_34.Parent = v30
		v35.Parent = v30
		v_u_36.Parent = p27
		v_u_31.ImageTransparency = 1
		v_u_32.ImageTransparency = 1
		v_u_33.ImageTransparency = 1
		v_u_34.ImageTransparency = 1
		v35.ImageTransparency = 1
		script:WaitForChild("Ambient"):Play()
		local v_u_37 = p27.Blackboard
		local v_u_38 = p27.Colorboard
		local v39 = p27.Background
		local _ = p27.EquipButton
		local _ = p27.SkipButton
		local _ = p27.Star
		local _ = p27.Break1
		local _ = p27.Break2
		local v40 = script:WaitForChild("Message"):Clone()
		local v_u_41 = v40:WaitForChild("UIGradient")
		v_u_3:Create(v39, TweenInfo.new(1, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), v_u_9)
		v_u_3:Create(v39, TweenInfo.new(1, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), v_u_10)
		local v42 = v_u_3:Create(v_u_38, TweenInfo.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
			["ImageTransparency"] = 0
		})
		local v43 = v_u_3:Create(v_u_38, TweenInfo.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
			["ImageTransparency"] = 1
		})
		local v44 = v_u_3:Create(v_u_37, v_u_12, v_u_11)
		local v_u_45 = true
		local v46 = Instance.new("NumberValue")
		local v47 = p28:WaitForChild("ShakeAmount")
		v46.Value = 1
		v_u_38.ImageColor3 = Color3.new(1, 0, 0)
		v46.Changed:Connect(function(p48)
			-- upvalues: (copy) v_u_41
			v_u_41.Transparency = NumberSequence.new({
				NumberSequenceKeypoint.new(0, p48, 0),
				NumberSequenceKeypoint.new(0.3, p48, 0),
				NumberSequenceKeypoint.new(0.5, 0, 0),
				NumberSequenceKeypoint.new(0.7, p48, 0),
				NumberSequenceKeypoint.new(1, p48, 0)
			})
		end)
		coroutine.wrap(function()
			-- upvalues: (ref) v_u_45, (ref) v_u_26, (copy) v_u_37
			while task.wait(0.2) and v_u_45 do
				v_u_26(v_u_37, Color3.fromRGB(144, 0, 0))
			end
		end)()
		v_u_2:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
		p29.Visible = false
		v44:Play()
		v40.Parent = p27
		v_u_3:Create(v_u_41, TweenInfo.new(4, Enum.EasingStyle.Linear), {
			["Offset"] = Vector2.new(1, 0)
		}):Play()
		v_u_3:Create(v40:WaitForChild("UIStroke"):WaitForChild("UIGradient"), TweenInfo.new(4, Enum.EasingStyle.Linear), {
			["Offset"] = Vector2.new(1, 0)
		}):Play()
		task.delay(2, function()
			-- upvalues: (ref) v_u_3, (copy) v_u_34, (copy) v_u_33, (copy) v_u_31, (copy) v_u_32, (copy) v_u_36
			v_u_3:Create(v_u_34, TweenInfo.new(2.5, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut), {
				["Size"] = UDim2.fromScale(1, 1),
				["ImageTransparency"] = 0
			}):Play()
			v_u_3:Create(v_u_33, TweenInfo.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
				["Size"] = UDim2.fromScale(1, 1),
				["ImageTransparency"] = 0
			}):Play()
			task.wait(1)
			v_u_3:Create(v_u_31, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut), {
				["Size"] = UDim2.fromScale(1, 1),
				["ImageTransparency"] = 0
			}):Play()
			v_u_3:Create(v_u_32, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
				["Size"] = UDim2.fromScale(1, 1),
				["ImageTransparency"] = 0
			}):Play()
			task.wait(1)
			v_u_3:Create(v_u_36:WaitForChild("UIGradient"), TweenInfo.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
				["Offset"] = Vector2.new(1, 0)
			}):Play()
		end)
		v_u_16:WaitForChild("OneMilPlus"):Play()
		task.wait(5.8)
		v_u_3:Create(v35, TweenInfo.new(2.7, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
			["ImageTransparency"] = 0.2
		}):Play()
		v_u_3:Create(v30, TweenInfo.new(3, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
			["Size"] = UDim2.fromScale(1.2, 1.2),
			["Rotation"] = 360
		}):Play()
		v_u_3:Create(v_u_36, TweenInfo.new(3, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
			["Size"] = UDim2.fromScale(0.65, 0.65)
		}):Play()
		task.wait(0.5)
		v42:Play()
		task.wait(2.5)
		v47.Value = 0.04
		v_u_3:Create(v47, v_u_15, {
			["Value"] = 0
		}):Play()
		v_u_38.Image = "http://www.roblox.com/asset/?id=1195495135"
		v_u_38.ImageColor3 = Color3.new(1, 0, 0.0156863)
		coroutine.wrap(function()
			-- upvalues: (copy) v_u_38
			task.wait(0.02)
			v_u_38.ImageColor3 = Color3.new(1, 1, 1)
			task.wait(0.02)
			v_u_38.ImageColor3 = Color3.new(1, 0, 0.0156863)
		end)()
		v_u_37.BackgroundTransparency = 1
		v_u_36:Destroy()
		v30:Destroy()
		v40:Destroy()
		script:WaitForChild("Ambient"):Stop()
		v_u_45 = false
		task.wait(0.1)
		v43:Play()
		v_u_3:Create(p29, v_u_14, {
			["Size"] = UDim2.fromScale(0.4, 0.1)
		}):Play()
		p29.Visible = true
	end
})