-- What the sigma?

local v_u_1 = game:GetService("RunService")
local v_u_2 = game:GetService("TweenService")
local v3 = game:GetService("ReplicatedStorage")
local v_u_4 = game:GetService("StarterGui")
local v5 = game:GetService("Players")
local v_u_6 = game:GetService("Debris")
local v_u_7 = v5.LocalPlayer
local v_u_8 = v_u_7.PlayerGui:WaitForChild("MainInterface", 100)
v_u_8:WaitForChild("ExtraButtons")
local v_u_9 = script:WaitForChild("CustomEffects")
local v_u_10 = v3.Assets
local v_u_11 = v_u_10.SFXs
local v_u_12 = require(v3:WaitForChild("Modules"):WaitForChild("Utility"))
local v_u_13 = v3:WaitForChild("TiersUI")
local v_u_14 = v3:WaitForChild("TierSkinUIs")
local v_u_15 = script:WaitForChild("RollBGM")
local v_u_16 = {
	["Chromatic"] = { "rbxassetid://16680130430", 76.25, 9.23 }
}
local v_u_17 = Tween0o.new(0.5, Enum.EasingStyle.Quart)
local v_u_18 = Tween0o.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
local v_u_19 = Tween0o.new(1, Enum.EasingStyle.Quart)
local v_u_20 = Tween0o.new(2, Enum.EasingStyle.Quart)
local v_u_21 = Tween0o.new(6, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
Tween0o.new(1)
local v_u_22 = {
	["BackgroundTransparency"] = 0.6
}
local v_u_23 = {
	["BackgroundTransparency"] = 1
}
local v_u_24 = {
	["BackgroundTransparency"] = 0
}
local rainbowify = function(thing: ImageLabel): ()
	local speed = 0.0025

	local function zz(X) return math.acos(math.cos(X*math.pi))/math.pi end

	local count = 0

	thing:SetAttribute("Follow", "C_Rainbow")

	--[[coroutine.wrap(function()
		if not v_u_1:IsServer() then
			local rs: RBXScriptConnection

			local c = 0
			local startTime = tick()

			if not thing:FindFirstChild("UIGradient") then
				Instance.new("UIGradient").Parent = thing
			end

			thing:WaitForChild("UIGradient").Offset = Vector2.new()

			rs = v_u_1.Heartbeat:Connect(function(dt)
				local type = "ImageColor3"

				--if not thing:FindFirstChild("UIGradient") then rs:Disconnect() return end

				if thing:IsA("Frame") then
					type = "BackgroundColor3"
				end

				if (tick() - startTime) >= 9.23 then 
					thing:WaitForChild("UIGradient").Enabled = false
					thing:SetAttribute("Follow", "None")
					rs:Disconnect() 
				end

				c += dt * 50
				c %= 50

				local Color3_fromHSV_result1 = Color3.fromHSV(c / 50, 1, 1)
				thing:WaitForChild("UIGradient").Color = ColorSequence.new(Color3.fromRGB(math.clamp(Color3_fromHSV_result1.R * 225 + 125, 0, 255), math.clamp(Color3_fromHSV_result1.G * 225 + 125, 0, 255), math.clamp(Color3_fromHSV_result1.B * 225 + 125, 0, 255)), Color3_fromHSV_result1)
			end)
		end
	end)()]]
end
local function v_u_41(p25, p26, p27, p28, p29, rainbow)
	-- upvalues: (copy) v_u_2, (copy) v_u_17, (copy) v_u_18, (copy) v_u_6, (copy) v_u_1
	local v_u_30 = Instance.new("ImageLabel", p25)
	if rainbow == true then
		rainbowify(v_u_30)
	else
		v_u_30.ImageColor3 = p27
	end
	v_u_30.Size = UDim2.fromScale()
	v_u_30.Image = p26
	v_u_30.SizeConstraint = Enum.SizeConstraint.RelativeXX
	v_u_30.BackgroundTransparency = 1
	v_u_30.Rotation = math.random(-15, 15)
	v_u_30.AnchorPoint = Vector2.new(0.5, 0.5)
	if p29 then
		p29:Clone().Parent = v_u_30
	end
	v_u_2:Create(v_u_30, v_u_17, {
		["Size"] = UDim2.fromScale(p28, p28)
	}):Play()
	local v_u_31 = UDim2.fromScale(math.random(0, 100) / 100, 1)
	local v_u_32 = math.random(50, 70) * (math.random(1, 2) == 1 and -1 or 1)
	local v_u_33 = math.random(2, 5) / 500
	coroutine.wrap(function()
		-- upvalues: (copy) v_u_30, (ref) v_u_2, (ref) v_u_18, (ref) v_u_6, (copy) v_u_31, (copy) v_u_32, (copy) v_u_33, (ref) v_u_1
		local v34 = time()
		local v35 = v34 + math.random(15, 20) / 10
		while v_u_30 and v_u_30.Parent do
			if time() >= v35 - 0.5 and not v_u_30:GetAttribute("Removing") then
				v_u_30:SetAttribute("Removing", true)
				v_u_2:Create(v_u_30, v_u_18, {
					["Size"] = UDim2.fromScale(0, 0)
				}):Play()
				v_u_6:AddItem(v_u_30, 0.5)
			end
			local v36 = (time() - v34) * 50
			local v37 = v_u_30
			local v38 = v_u_31
			local v39 = UDim2.fromScale
			local v40 = v36 / v_u_32
			v37.Position = v38 + v39(0.07 * math.sin(v40), v36 * -v_u_33)
			v_u_1.Heartbeat:Wait()
		end
	end)()
end
local function v_u_48(p42, p43, p44)
	-- upvalues: (copy) v_u_2
	for _ = 1, math.random(12, 14) do
		local v45 = Instance.new("Frame", p42)
		v45.Name = "SplashFrameParticle"
		v45.SizeConstraint = Enum.SizeConstraint.RelativeYY
		v45.ZIndex = p44
		local v46 = math.random(5, 8) / 100
		v45.Size = UDim2.fromScale(v46, v46)
		v45.BackgroundColor3 = p43
		v45.AnchorPoint = Vector2.new(0.5, 0.5)
		v45.Position = UDim2.fromScale(0.5, 0.5)
		v45.Rotation = math.random(0, 360)
		v45.BorderSizePixel = 0
		local v47 = math.random(80, 150) / 100
		v_u_2:Create(v45, Tween0o.new(v47, Enum.EasingStyle.Quart), {
			["Size"] = UDim2.fromScale(0, 0),
			["Position"] = UDim2.fromScale(math.random(10, 90) / 100, math.random(10, 90) / 100),
			["Rotation"] = math.random(0, 360)
		}):Play()
		game:GetService("Debris"):AddItem(v45, v47)
	end
end

local _self

_self = {
	["RollingEffect"] = function(p49, p50, p51, p52, p_u_53)
		-- upvalues: (copy) v_u_1, (copy) v_u_7, (copy) v_u_12, (copy) v_u_2, (copy) v_u_22, (copy) v_u_23, (copy) v_u_17, (copy) v_u_24, (copy) v_u_16, (copy) v_u_15, (copy) v_u_9, (copy) v_u_4, (copy) v_u_11, (copy) v_u_20, (copy) v_u_41, (copy) v_u_21, (copy) v_u_19, (copy) v_u_48
		if not v_u_1:IsServer() then
			local v54 = p50:FindFirstChild("EquipButton")
			local v55 = p50:FindFirstChild("SkipButton")
			local v56 = p52 or Instance.new("TextLabel")
			local v57 = v_u_7:GetAttribute("SkipAuraEffect") or (100_000_000 / 10)
			if string.len(v_u_7:GetAttribute("SkipAuraEffect")) ~= 0 and tonumber(v_u_7:GetAttribute("SkipAuraEffect")) ~= nil then
				v57 = v57 / 10
			else
				v57 = 100_000_000 / 10
			end
			if not (v54 and v54:IsA("GuiButton")) and true or v57 < p49 or v_u_12.FindAuraData(p_u_53).Unobtainable then
				local v_u_57 = p50.Blackboard
				local v58 = p50.Colorboard
				local v59 = p50.GradientBoard
				local v60 = p50.Background
				local v_u_61 = p50.Star
				local v62 = p50.Break1
				local v63 = p50.Break2
				local v64 = p51:WaitForChild("ShakeAmount")
				local v65 = p51:WaitForChild("StarSpinSpeed")
				v_u_2:Create(v60, Tween0o.new(1, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), v_u_22)
				v_u_2:Create(v60, Tween0o.new(1, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), v_u_23)
				local v66 = v_u_2:Create(v58, Tween0o.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
					["ImageTransparency"] = 0
				})
				local v67 = v_u_2:Create(v58, Tween0o.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
					["ImageTransparency"] = 1
				})
				local v68 = v_u_2:Create(v_u_57, v_u_17, v_u_24)
				if v58:FindFirstChildOfClass("UIGradient") then
					v58:FindFirstChildOfClass("UIGradient"):Destroy()
				end
				if v59:FindFirstChildOfClass("UIGradient") then
					v59:FindFirstChildOfClass("UIGradient"):Destroy()
				end
				if v_u_61:FindFirstChildOfClass("UIGradient") then
					v_u_61:FindFirstChildOfClass("UIGradient"):Destroy()
				end
				local v_u_69 = v56:FindFirstChildWhichIsA("UIGradient", true)
				if v_u_69 then
					v_u_69:Clone().Parent = v58
					v_u_69:Clone().Parent = v59
					v_u_69:Clone().Parent = v_u_61
				end
				print(p_u_53, p49)
				if v_u_16[p_u_53] then
					coroutine.wrap(function()
						-- upvalues: (ref) v_u_15, (ref) v_u_16, (copy) p_u_53, (ref) v_u_2
						v_u_15.SoundId = v_u_16[p_u_53][1]
						v_u_15.TimePosition = 0
						v_u_15:Play()
						v_u_15.Volume = 0.15
						v_u_2:Create(v_u_15, Tween0o.new(2, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 2), {
							["Volume"] = 0
						}):Play()
						task.wait(v_u_16[p_u_53][3])
						v_u_15.TimePosition = v_u_16[p_u_53][2]
						v_u_15:Play()
						v_u_15.Volume = 0.5
						v_u_2:Create(v_u_15, Tween0o.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 2.5), {
							["Volume"] = 0
						}):Play()
					end)()
				end
				if v_u_9:FindFirstChild(p_u_53) then
					require(v_u_9:FindFirstChild(p_u_53))(p49, p50, p51, v56, p_u_53)
				elseif p_u_53 == "Chromatic" then
					v56:SetAttribute("IgnoreTextColor", true)
					v_u_4:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
					v56.Visible = false
					v68:Play()
					v_u_2:Create(v59, v_u_17, {
						["ImageTransparency"] = 0.4
					}):Play()
					rainbowify(v56)
					rainbowify(v58)
					rainbowify(v59)
					rainbowify(v60)
					rainbowify(v_u_57)
					rainbowify(v_u_61)
					v58.Image = "http://www.roblox.com/asset/?id=12353440665"
					v58.ImageTransparency = 1
					v58.ImageColor3 = Color3.new(1, 1, 1)
					v_u_61.ImageColor3 = Color3.new(1, 1, 1)
					v_u_11:WaitForChild("OneMilPlus"):Play()
					v_u_61.Size = UDim2.fromScale(1.5, 1.5)
					v_u_61.Visible = true
					v_u_61.Image = "rbxassetid://17068400400"
					v_u_2:Create(v_u_61, v_u_20, {
						["Size"] = UDim2.fromScale(0.6, 0.6)
					}):Play()
					v65.Value = 5
					v_u_2:Create(v65, v_u_20, {
						["Value"] = 1
					}):Play()
					local v_u_70 = true
					coroutine.wrap(function()
						-- upvalues: (ref) v_u_70, (ref) v_u_41, (copy) v_u_57, (copy) v_u_61, (copy) v_u_69
						while task.wait(0.05) and v_u_70 do
							v_u_41(v_u_57, "rbxassetid://8030760338", Color3.new(1, 1, 1), math.random(5, 20) / 500, v_u_69, true)
						end
					end)()
					task.wait(3.23)
					v_u_2:Create(v65, v_u_21, {
						["Value"] = 4
					}):Play()
					v_u_2:Create(v_u_61, v_u_21, {
						["Size"] = UDim2.fromScale(1.5, 1.5)
					}):Play()
					task.wait(4)
					v56.Visible = true
					v66:Play()
					task.wait(2)
					v59.ImageTransparency = 1
					v_u_70 = false
					v_u_61.Visible = false
					v58.Image = "http://www.roblox.com/asset/?id=1195495135"
					v58.ImageColor3 = Color3.new(1, 1, 1)
					if v58:FindFirstChildOfClass("UIGradient") then
						v58:FindFirstChildOfClass("UIGradient"):Destroy()
					end
					v67:Play()
					v64.Value = 0.02
					v_u_2:Create(v64, v_u_20, {
						["Value"] = 0
					}):Play()
					v56.Position = UDim2.fromScale(0.5, 0.5)
					v56.Size = UDim2.fromScale(0.6, 0.2)
					v_u_2:Create(v56, v_u_19, {
						["Size"] = UDim2.fromScale(0.4, 0.1)
					}):Play()
					v_u_57.BackgroundTransparency = 1
				elseif (10_000_000 / 10) <= p49 then
					v_u_4:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
					v56.Visible = false
					v68:Play()
					v_u_2:Create(v59, v_u_17, {
						["ImageTransparency"] = 0.4
					}):Play()
					v58.Image = "http://www.roblox.com/asset/?id=12353440665"
					v58.ImageTransparency = 1
					v58.ImageColor3 = Color3.new(1, 1, 1)
					v_u_61.ImageColor3 = Color3.new(1, 1, 1)
					if not v56:GetAttribute("IgnoreTextColor") then
						if p_u_53 ~= "Chromatic" then
							v58.ImageColor3 = v56.TextColor3
							v_u_61.ImageColor3 = v58.ImageColor3
						end
					end
					v_u_11:WaitForChild("OneMilPlus"):Play()
					v_u_61.Size = UDim2.fromScale(1.5, 1.5)
					v_u_61.Visible = true
					v_u_61.Image = "rbxassetid://17068400400"
					v_u_2:Create(v_u_61, v_u_20, {
						["Size"] = UDim2.fromScale(0.6, 0.6)
					}):Play()
					v65.Value = 5
					v_u_2:Create(v65, v_u_20, {
						["Value"] = 1
					}):Play()
					local v_u_70 = true
					coroutine.wrap(function()
						-- upvalues: (ref) v_u_70, (ref) v_u_41, (copy) v_u_57, (copy) v_u_61, (copy) v_u_69
						while task.wait(0.05) and v_u_70 do
							if p_u_53 ~= "Chromatic" then
								v_u_41(v_u_57, "rbxassetid://8030760338", v_u_61.ImageColor3, math.random(5, 20) / 500, v_u_69, false)
							end
						end
					end)()
					task.wait(3.23)
					v_u_2:Create(v65, v_u_21, {
						["Value"] = 4
					}):Play()
					v_u_2:Create(v_u_61, v_u_21, {
						["Size"] = UDim2.fromScale(1.5, 1.5)
					}):Play()
					task.wait(4)
					v56.Visible = true
					v66:Play()
					task.wait(2)
					v59.ImageTransparency = 1
					v_u_70 = false
					v_u_61.Visible = false
					v58.Image = "http://www.roblox.com/asset/?id=1195495135"
					v58.ImageColor3 = Color3.new(1, 1, 1)
					if v58:FindFirstChildOfClass("UIGradient") then
						v58:FindFirstChildOfClass("UIGradient"):Destroy()
					end
					v67:Play()
					v64.Value = 0.02
					v_u_2:Create(v64, v_u_20, {
						["Value"] = 0
					}):Play()
					v56.Position = UDim2.fromScale(0.5, 0.5)
					v56.Size = UDim2.fromScale(0.6, 0.2)
					v_u_2:Create(v56, v_u_19, {
						["Size"] = UDim2.fromScale(0.4, 0.1)
					}):Play()
					v_u_57.BackgroundTransparency = 1
				elseif (999_999 / 10) <= p49 then
					v_u_4:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
					v56.Visible = false
					v68:Play()
					v_u_2:Create(v59, v_u_17, {
						["ImageTransparency"] = 0.8
					}):Play()
					v58.Image = "http://www.roblox.com/asset/?id=12353440665"
					v58.ImageTransparency = 1
					v58.ImageColor3 = Color3.new(1, 1, 1)
					v_u_61.ImageColor3 = Color3.new(1, 1, 1)
					if not v56:GetAttribute("IgnoreTextColor") then
						v58.ImageColor3 = v56.TextColor3
						v_u_61.ImageColor3 = v58.ImageColor3
					end
					v_u_11:WaitForChild("OneMilPlus"):Play()
					v_u_61.Size = UDim2.fromScale(1.5, 1.5)
					v_u_61.Visible = true
					v_u_61.Image = "rbxassetid://17068400400"
					v_u_2:Create(v_u_61, v_u_20, {
						["Size"] = UDim2.fromScale(0.6, 0.6)
					}):Play()
					v65.Value = 5
					v_u_2:Create(v65, v_u_20, {
						["Value"] = 1
					}):Play()
					local v_u_71 = true
					coroutine.wrap(function()
						-- upvalues: (ref) v_u_71, (ref) v_u_41, (copy) v_u_57, (copy) v_u_61, (copy) v_u_69
						while task.wait(0.05) and v_u_71 do
							v_u_41(v_u_57, "rbxassetid://8030760338", v_u_61.ImageColor3, math.random(5, 20) / 1000, v_u_69)
						end
					end)()
					task.wait(3.23)
					v_u_2:Create(v65, v_u_21, {
						["Value"] = 4
					}):Play()
					v_u_2:Create(v_u_61, v_u_21, {
						["Size"] = UDim2.fromScale(1.5, 1.5)
					}):Play()
					task.wait(4)
					v56.Visible = true
					v66:Play()
					task.wait(2)
					v59.ImageTransparency = 1
					v_u_71 = false
					v_u_61.Visible = false
					v58.Image = "http://www.roblox.com/asset/?id=1195495135"
					v58.ImageColor3 = Color3.new(1, 1, 1)
					if v58:FindFirstChildOfClass("UIGradient") then
						v58:FindFirstChildOfClass("UIGradient"):Destroy()
					end
					v67:Play()
					v64.Value = 0.02
					v_u_2:Create(v64, v_u_20, {
						["Value"] = 0
					}):Play()
					v56.Position = UDim2.fromScale(0.5, 0.5)
					v56.Size = UDim2.fromScale(0.6, 0.2)
					v_u_2:Create(v56, v_u_19, {
						["Size"] = UDim2.fromScale(0.4, 0.1)
					}):Play()
					v_u_57.BackgroundTransparency = 1
				elseif (99_999 / 10) <= p49 then
					v_u_4:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
					v56.Visible = false
					v68:Play()
					v58.Image = "http://www.roblox.com/asset/?id=12353440665"
					v58.ImageTransparency = 1
					v58.ImageColor3 = Color3.new(1, 1, 1)
					v_u_61.ImageColor3 = Color3.new(1, 1, 1)
					if not v56:GetAttribute("IgnoreTextColor") then
						v58.ImageColor3 = v56.TextColor3
						v_u_61.ImageColor3 = v58.ImageColor3
					end
					v_u_11:WaitForChild("MoreRareRollSound"):Play()
					v_u_61.Size = UDim2.fromScale(1.5, 1.5)
					v_u_61.Image = "rbxassetid://6909741538"
					v_u_61.Visible = true
					v_u_2:Create(v_u_61, v_u_20, {
						["Size"] = UDim2.fromScale(0.6, 0.6)
					}):Play()
					v65.Value = 5
					v_u_2:Create(v65, v_u_20, {
						["Value"] = 1
					}):Play()
					task.wait(2)
					v_u_2:Create(v65, v_u_21, {
						["Value"] = 4
					}):Play()
					v_u_2:Create(v_u_61, v_u_21, {
						["Size"] = UDim2.fromScale(1.5, 1.5)
					}):Play()
					task.wait(4)
					v56.Visible = true
					v66:Play()
					task.wait(2)
					v_u_61.Visible = false
					v58.Image = "http://www.roblox.com/asset/?id=1195495135"
					v58.ImageColor3 = Color3.new(1, 1, 1)
					if v58:FindFirstChildOfClass("UIGradient") then
						v58:FindFirstChildOfClass("UIGradient"):Destroy()
					end
					task.wait(2)
					v_u_48(p50, Color3.new(), 11)
					v_u_11.GlassBreak.TimePosition = 0.3
					v_u_11.GlassBreak.Pitch = 1
					v_u_11.GlassBreak:Play()
					v62.Visible = true
					v62.Size = UDim2.fromScale(0.5, 0.6)
					v_u_2:Create(v62, v_u_20, {
						["Size"] = UDim2.fromScale(1, 1.2)
					}):Play()
					v64.Value = 0.02
					v_u_2:Create(v64, v_u_20, {
						["Value"] = 0
					}):Play()
					task.wait(1)
					v_u_48(p50, Color3.new(), 11)
					v_u_11.GlassBreak.TimePosition = 0.3
					v_u_11.GlassBreak.Pitch = 0.9
					v_u_11.GlassBreak:Play()
					v63.Visible = true
					v63.Size = UDim2.fromScale(0.5, 0.5)
					v_u_2:Create(v63, v_u_20, {
						["Size"] = UDim2.fromScale(1, 1)
					}):Play()
					v64.Value = 0.02
					v_u_2:Create(v64, v_u_20, {
						["Value"] = 0
					}):Play()
					task.wait(1)
					v_u_11.GlassBreak2:Play()
					v62.Visible = false
					v63.Visible = false
					v67:Play()
					v64.Value = 0.02
					v_u_2:Create(v64, v_u_20, {
						["Value"] = 0
					}):Play()
					v56.Position = UDim2.fromScale(0.5, 0.5)
					v_u_57.BackgroundTransparency = 1
				elseif (10_000 / 10) <= p49 then
					v_u_4:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
					v56.Visible = false
					v68:Play()
					v58.Image = "http://www.roblox.com/asset/?id=12353440665"
					v58.ImageTransparency = 1
					v58.ImageColor3 = Color3.new(1, 1, 1)
					v_u_11:WaitForChild("MoreRareRollSound"):Play()
					v_u_61.Image = "rbxassetid://6909741538"
					v_u_61.ImageColor3 = Color3.new(1, 1, 1)
					if not v56:GetAttribute("IgnoreTextColor") then
						v58.ImageColor3 = v56.TextColor3
						v_u_61.ImageColor3 = v58.ImageColor3
					end
					v_u_61.Size = UDim2.fromScale(1.5, 1.5)
					v_u_61.Visible = true
					v_u_2:Create(v_u_61, v_u_20, {
						["Size"] = UDim2.fromScale(0.6, 0.6)
					}):Play()
					v65.Value = 5
					v_u_2:Create(v65, v_u_20, {
						["Value"] = 1
					}):Play()
					task.wait(2)
					v_u_2:Create(v65, v_u_21, {
						["Value"] = 4
					}):Play()
					v_u_2:Create(v_u_61, v_u_21, {
						["Size"] = UDim2.fromScale(1.5, 1.5)
					}):Play()
					task.wait(4)
					v56.Visible = true
					v66:Play()
					task.wait(2)
					v_u_61.Visible = false
					v58.Image = "http://www.roblox.com/asset/?id=1195495135"
					v58.ImageColor3 = Color3.new(1, 1, 1)
					if v58:FindFirstChildOfClass("UIGradient") then
						v58:FindFirstChildOfClass("UIGradient"):Destroy()
					end
					v64.Value = 0.02
					v_u_2:Create(v64, v_u_20, {
						["Value"] = 0
					}):Play()
					v67:Play()
					v56.Position = UDim2.fromScale(0.5, 0.5)
					v_u_57.BackgroundTransparency = 1
				elseif (1_000 / 10) <= p49 then
					v_u_4:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
					v56.Visible = false
					v68:Play()
					v58.Image = "http://www.roblox.com/asset/?id=12353440665"
					v58.ImageTransparency = 1
					v58.ImageColor3 = v56.TextColor3
					v_u_11:WaitForChild("RareRollSound"):Play()
					task.wait(2)
					v56.Visible = true
					v66:Play()
					task.wait(2)
					v58.Image = "http://www.roblox.com/asset/?id=1195495135"
					v64.Value = 0.02
					v_u_2:Create(v64, v_u_20, {
						["Value"] = 0
					}):Play()
					v67:Play()
					v56.Position = UDim2.fromScale(0.5, 0.5)
					v_u_57.BackgroundTransparency = 1
				else
					print("Ski")
					v64.Value = 0
					v_u_2:Create(v56, v_u_20, {
						["Position"] = UDim2.fromScale(0.5, 0.5)
					}):Play()
				end
			end
			v_u_4:SetCoreGuiEnabled(Enum.CoreGuiType.All, true)
			v_u_4:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false)
			v_u_4:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
			if v56 and not v56.Visible then
				v56.Visible = true
			end
			if v54 then
				v54.Visible = true
				v55.Visible = true
			end
		end
	end,
	["ChangeTextColor"] = function(p72, p73)
		-- upvalues: (copy) v_u_14, (copy) v_u_13
		p72:ClearAllChildren()
		if p72.Text == "Empty" then
			p72.Font = Enum.Font.GothamBold
			p72.TextColor3 = Color3.fromRGB(255, 255, 255)
		else
			local v74 = p73 and v_u_14:WaitForChild(p72.Text):WaitForChild(p73) or v_u_13:WaitForChild(p72.Text)
			local v75 = {}
			for _, v76 in ipairs(v74:GetChildren()) do
				if not v76:IsA("TextLabel") then
					local v77 = v76:Clone()
					if v77:IsA("BaseScript") then
						table.insert(v75, v77)
					else
						v77.Parent = p72
					end
				end
			end
			if v74:FindFirstChild("TitleImage") then
				p72.TextTransparency = 1
			else
				p72.TextTransparency = 0
			end
			for _, v78 in ipairs(v75) do
				v78.Parent = p72
			end
			table.clear(v75)
			p72.FontFace = v74.FontFace
			p72.TextColor3 = v74.TextColor3
			if p73 then
				p72.Text = p72.Text .. (" : %*"):format(p73)
				return
			end
		end
	end,
	["LoadButtonEffects"] = function(p_u_79, p80)
		-- upvalues: (copy) v_u_2, (copy) v_u_17, (copy) v_u_10, (copy) v_u_19, (copy) v_u_6, (copy) v_u_11
		local v81 = p_u_79:FindFirstChildWhichIsA("UIScale") or Instance.new("UIScale", p_u_79)
		local v_u_82 = p_u_79:FindFirstChild("Usage")
		local v_u_83 = v_u_2:Create(v81, v_u_17, {
			["Scale"] = v81.Scale * (p80 or 1.1)
		})
		local v_u_84 = v_u_2:Create(v81, v_u_17, {
			["Scale"] = v81.Scale
		})
		local v_u_85 = p_u_79:FindFirstAncestorOfClass("ScreenGui")
		local v86 = p_u_79:FindFirstAncestorOfClass("ScreenGui"):FindFirstChild("SelectedButtonValue")
		local v87 = {}
		local function v_u_90()
			-- upvalues: (copy) p_u_79, (ref) v_u_10, (ref) v_u_2, (ref) v_u_19, (ref) v_u_6, (copy) v_u_84, (copy) v_u_83, (copy) v_u_82, (ref) v_u_11
			if not p_u_79:GetAttribute("Disabled") then
				local v88 = nil
				if p_u_79:IsA("TextButton") then
					v88 = p_u_79.TextColor3
				elseif p_u_79:IsA("ImageButton") then
					v88 = p_u_79.ImageColor3
				end
				if v88 and p_u_79.BackgroundTransparency < 1 then
					local v89 = v_u_10.Gradient:Clone()
					v89.Parent = p_u_79
					v89.BackgroundTransparency = 0.5
					v_u_2:Create(v89, v_u_19, {
						["BackgroundTransparency"] = 1,
						["BackgroundColor3"] = v88
					}):Play()
					v_u_6:AddItem(v89, 1)
				end
				v_u_84:Pause()
				v_u_83:Play()
				if v_u_82 then
					v_u_82.Visible = true
				end
				v_u_11.MouseHover:Play()
			end
		end
		v87.Enter = p_u_79.MouseEnter:Connect(v_u_90)
		if v86 then
			v87.ConsoleEvent = v86.Changed:Connect(function(p91)
				-- upvalues: (copy) p_u_79, (copy) v_u_84, (copy) v_u_83, (copy) v_u_82, (ref) v_u_11
				if p_u_79 == p91 then
					if not p_u_79:GetAttribute("Disabled") then
						v_u_84:Pause()
						v_u_83:Play()
						if v_u_82 then
							v_u_82.Visible = true
						end
						v_u_11.MouseHover:Play()
					end
				else
					v_u_83:Pause()
					v_u_84:Play()
					if v_u_82 then
						v_u_82.Visible = false
					end
					return
				end
			end)
		end
		v87.Leave = p_u_79.MouseLeave:Connect(function()
			-- upvalues: (copy) v_u_83, (copy) v_u_84, (copy) v_u_82
			v_u_83:Pause()
			v_u_84:Play()
			if v_u_82 then
				v_u_82.Visible = false
			end
		end)
		v87.Selected = p_u_79.SelectionChanged:Connect(function(p92)
			-- upvalues: (copy) v_u_90, (copy) v_u_83, (copy) v_u_84, (copy) v_u_82
			if p92 then
				v_u_90()
			else
				v_u_83:Pause()
				v_u_84:Play()
				if v_u_82 then
					v_u_82.Visible = false
				end
			end
		end)
		v87.Click = p_u_79.MouseButton1Click:Connect(function()
			-- upvalues: (copy) p_u_79, (ref) v_u_11
			if not p_u_79:GetAttribute("Disabled") then
				v_u_11.Click:Play()
			end
		end)
		v87.Visible = p_u_79:GetPropertyChangedSignal("Visible"):Connect(function()
			-- upvalues: (copy) p_u_79, (copy) v_u_83, (copy) v_u_84, (copy) v_u_82
			if not p_u_79.Visible then
				v_u_83:Pause()
				v_u_84:Play()
				if v_u_82 then
					v_u_82.Visible = false
				end
			end
		end)
		if v_u_85 then
			v87.Enabled = v_u_85:GetPropertyChangedSignal("Enabled"):Connect(function()
				-- upvalues: (copy) v_u_85, (copy) v_u_83, (copy) v_u_84, (copy) v_u_82
				if not v_u_85.Enabled then
					v_u_83:Pause()
					v_u_84:Play()
					if v_u_82 then
						v_u_82.Visible = false
					end
				end
			end)
		end
		v87.Disabled = p_u_79:GetAttributeChangedSignal("Disabled"):Connect(function()
			-- upvalues: (copy) p_u_79, (copy) v_u_83, (copy) v_u_84, (copy) v_u_82
			if p_u_79:GetAttribute("Disabled") then
				v_u_83:Pause()
				v_u_84:Play()
				if v_u_82 then
					v_u_82.Visible = false
				end
			end
		end)
		return v87
	end,
	["LoadFrameEffects"] = function(frame: Frame, button1: (TextButton | ImageButton) | nil, button2: (TextButton | ImageButton) | nil)
		local framePosition = frame.Position
		--local previousState = frame.Visible

		local currentState = false

		local stateChanger = function(customState: boolean | nil)
			currentState = (customState) or (not currentState)

			_self.CloseAllWindows()

			frame.Visible = currentState
		end

		frame:GetPropertyChangedSignal("Visible"):Connect(function()
			local newState = frame.Visible
			frame.Position = framePosition
			if newState == true then
				frame.Position = UDim2.new(framePosition.X.Scale, 0, framePosition.Y.Scale + 0.05, 0)
				v_u_2:Create(frame, v_u_17, {
					Position = UDim2.new(framePosition.X.Scale, 0, framePosition.Y.Scale, 0)
				}):Play()
				currentState = true
			elseif newState == false then
				currentState = false
			else
				currentState = nil
				--previousState = nil
			end
		end)

		if button1 ~= nil then
			button1.MouseButton1Click:Connect(function()
				stateChanger(nil)
			end)
		end
		if button2 ~= nil then
			button2.MouseButton1Click:Connect(function()
				stateChanger(false)
			end)
		end
	end,
	["CloseAllWindows"] = function()
		-- upvalues: (copy) v_u_8
		for _, v93 in ipairs(v_u_8:GetChildren()) do
			if v93:GetAttribute("IsWindow") then
				v93.Visible = false
			end
		end
	end
}
--[[
	for _, v95 in v_u_9:GetChildren() do
		local v96 = require(v95)
		if typeof(v96) == "table" then
			v96.Init()
		end
	end
]]
return _self