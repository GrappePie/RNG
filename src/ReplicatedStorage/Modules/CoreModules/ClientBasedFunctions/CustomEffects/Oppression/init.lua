-- What the sigma?
local v_u_1 = game:GetService("TweenService")
local v_u_2 = game:GetService("StarterGui")
local v_u_3 = game:GetService("RunService")
game:GetService("Debris")
local v4 = game:GetService("ReplicatedStorage")
local v_u_5 = script
local v_u_6 = v_u_5.Chain
local v_u_7 = script.parry
local v_u_8 = script["Boom Impact Deep Distant Thumping Hits Boomi (SFX)"]
local v_u_9 = Tween0o.new(0.5, Enum.EasingStyle.Quart)
local v_u_10 = Tween0o.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
local v_u_11 = Tween0o.new(1, Enum.EasingStyle.Quart)
local v_u_12 = Tween0o.new(5, Enum.EasingStyle.Quart)
local v_u_13 = Tween0o.new(2, Enum.EasingStyle.Quad)
local v_u_14 = Tween0o.new(0.75, Enum.EasingStyle.Linear)
local v_u_15 = require(v4.Modules:WaitForChild("UICache"))
local v_u_16 = {}
v_u_16.__index = v_u_16
function v_u_16.new(p17, p18, p19, p20)
	-- upvalues: (copy) v_u_16
	local v21 = v_u_16
	local v22 = setmetatable({}, v21)
	v22.k1 = p18 / 3.141592653589793 * p17
	v22.k2 = 1 / 6.283185307179586 * p17 * 6.283185307179586 * p17
	v22.k3 = p19 * p18 / 6.283185307179586 * p17
	v22.xp = p20
	v22.y = p20
	v22.yd = Vector3.new(0, 0, 0)
	return v22
end
function v_u_16.Update(p23, p24, p25, p26)
	local v27 = p26 or (p25 - p23.xp) / p24
	p23.xp = p25
	local v28 = p23.k2
	local v29 = p23.k1
	local v30 = p23.k3
	p23.y = p23.y + p24 * p23.yd
	p23.yd = p23.yd + p24 * (p25 + v30 * v27 - p23.y - v29 * p23.yd) / v28
	return p23.y
end
local function v_u_45(p_u_31)
	-- upvalues: (copy) v_u_1, (copy) v_u_9, (copy) v_u_10, (copy) v_u_3
	local v_u_32 = p_u_31:GetUI()
	local v33 = math.random(5, 20) / 500
	v_u_1:Create(v_u_32, v_u_9, {
		["Size"] = UDim2.fromScale(v33, v33)
	}):Play()
	local v_u_34 = UDim2.fromScale(math.random(0, 100) / 100, 1)
	local v_u_35 = math.random(50, 70) * (math.random(1, 2) == 1 and -1 or 1)
	local v_u_36 = math.random(2, 5) / 500
	coroutine.wrap(function()
		-- upvalues: (copy) v_u_32, (ref) v_u_1, (ref) v_u_10, (copy) p_u_31, (copy) v_u_34, (copy) v_u_35, (copy) v_u_36, (ref) v_u_3
		local v37 = time()
		local v38 = v37 + math.random(10, 25) / 10
		local v_u_39 = true
		while true do
			if not v_u_39 then
				return
			end
			if time() >= v38 - 0.5 and not v_u_32:GetAttribute("Removing") then
				v_u_32:SetAttribute("Removing", true)
				v_u_1:Create(v_u_32, v_u_10, {
					["Size"] = UDim2.fromScale(0, 0)
				}):Play()
				task.delay(2, function()
					-- upvalues: (ref) v_u_32, (ref) p_u_31, (ref) v_u_39
					if v_u_32.Parent then
						v_u_32:SetAttribute("Removing", false)
						p_u_31:ReturnUI(v_u_32)
						v_u_39 = false
					end
				end)
			end
			local v40 = (time() - v37) * 50
			local v41 = v_u_32
			local v42 = v_u_34
			local v43 = UDim2.fromScale
			local v44 = v40 / v_u_35
			v41.Position = v42 + v43(0.07 * math.sin(v44), v40 * -v_u_36)
			if 1 < v40 * -v_u_36 then
				v_u_32:SetAttribute("Removing", false)
				p_u_31:ReturnUI(v_u_32)
				break
			end
			v_u_3.Heartbeat:Wait()
		end
	end)()
end
function getRandomVector(p46, p47, p48)
	local v49 = math.random(p46.X, p47.X)
	local v50 = math.random(p46.Y, p47.Y)
	local v51 = math.random
	local v52 = p46.Z
	local v53 = p47.Z
	return Vector3.new(v49, v50, v51(v52, v53)) / (p48 or 1)
end
local function v_u_60(p54, p55, p56, p57)
	-- upvalues: (copy) v_u_1
	for _ = 1, math.random(12, 14) do
		local v58 = Instance.new("Frame", p54)
		v58.Name = "SplashFrameParticle"
		v58.SizeConstraint = Enum.SizeConstraint.RelativeYY
		v58.ZIndex = p56
		v58.Size = UDim2.fromScale(math.random(5, 8) / 100, math.random(5, 8) / 100)
		v58.BackgroundColor3 = p55
		v58.AnchorPoint = Vector2.new(0.5, 0.5)
		v58.Position = UDim2.fromScale(0.5, 0.5)
		v58.Rotation = math.random(0, 360)
		v58.BorderSizePixel = 0
		local v59 = math.random(80, 150) / 100
		v_u_1:Create(v58, Tween0o.new(v59, Enum.EasingStyle.Quart), {
			["Size"] = UDim2.fromScale(0, 0),
			["Position"] = UDim2.fromScale(p57.X.Scale + math.random(-20, 20) / 100, p57.Y.Scale + math.random(-20, 20) / 100),
			["Rotation"] = math.random(0, 360)
		}):Play()
		game:GetService("Debris"):AddItem(v58, v59)
	end
end
return function(_, p_u_61, _, p62, _)
	-- upvalues: (copy) v_u_5, (copy) v_u_16, (copy) v_u_3, (copy) v_u_15, (copy) v_u_1, (copy) v_u_2, (copy) v_u_6, (copy) v_u_45, (copy) v_u_8, (copy) v_u_13, (copy) v_u_12, (copy) v_u_14, (copy) v_u_7, (copy) v_u_60, (copy) v_u_11
	p62.Visible = false
	local v_u_63 = p_u_61.Blackboard
	v_u_63.BackgroundTransparency = 1
	v_u_63.Visible = true
	local v64 = Instance.new("ImageLabel")
	v64.Size = UDim2.new(0.7, 0, 0.7, 0)
	v64.Image = "rbxassetid://9533205744"
	v64.SizeConstraint = Enum.SizeConstraint.RelativeYY
	v64.AnchorPoint = Vector2.new(0.5, 0.5)
	v64.Position = UDim2.fromScale(0.5, 0.5) + UDim2.fromScale(0, 1)
	v64.BackgroundTransparency = 1
	v64.ZIndex = 3
	v64.Parent = v_u_63
	local v65 = v64:Clone()
	v65.ZIndex = 2
	v65.Image = "rbxassetid://9533205006"
	v65.Parent = v_u_63
	local v66 = Instance.new("Folder", v_u_63)
	local v67 = Instance.new("ImageLabel", v66)
	v67.Size = UDim2.new()
	v67.Image = "rbxassetid://8030760338"
	v67.ImageColor3 = Color3.new(1, 1, 1)
	v67.SizeConstraint = Enum.SizeConstraint.RelativeXX
	v67.BackgroundTransparency = 1
	v67.Rotation = math.random(-15, 15)
	v67.AnchorPoint = Vector2.new(0.5, 0.5)
	local v68 = Instance.new("ImageLabel", v_u_63)
	v68.Image = "http://www.roblox.com/asset/?id=7185003058"
	v68.Position = UDim2.fromScale(0, 2)
	v68.Size = UDim2.fromScale(0.3, 0.3)
	v68.ImageColor3 = Color3.new(1, 1, 1)
	v68.SizeConstraint = Enum.SizeConstraint.RelativeYY
	v68.BackgroundTransparency = 1
	v68.ImageTransparency = 0.2
	v68.AnchorPoint = Vector2.new(0.5, 0.5)
	v68.ZIndex = 4
	local v69 = Instance.new("ImageLabel", v_u_63)
	v69.Image = "http://www.roblox.com/asset/?id=7185003058"
	v69.Position = UDim2.fromScale(0, 2)
	v69.Size = UDim2.fromScale(0.3, 0.3)
	v69.ImageColor3 = Color3.new(1, 1, 1)
	v69.SizeConstraint = Enum.SizeConstraint.RelativeYY
	v69.BackgroundTransparency = 1
	v69.ImageTransparency = 0.2
	v69.AnchorPoint = Vector2.new(0.5, 0.5)
	v69.ZIndex = 4
	local v70 = v_u_5.ViewPort
	local v71 = Instance.new("ViewportFrame", v_u_63)
	v71.Visible = false
	v71.BackgroundTransparency = 1
	v71.Size = UDim2.fromScale(1, 1)
	v71.ZIndex = 5
	v71:SetAttribute("PlaneDistance", 150)
	local v72 = v70.BrokenHeartMaskModel:Clone()
	v72.Parent = v71
	local v_u_73 = v72.Left
	local v_u_74 = v72.Right
	local v_u_75 = v_u_73.Position
	local v_u_76 = v_u_74.Position
	local v_u_77 = v_u_16.new(1.5, 1, 1, v_u_75)
	local v_u_78 = v_u_16.new(1.5, 1, 1, v_u_76)
	local v_u_79 = 0
	local v81 = v_u_3.RenderStepped:Connect(function(p80)
		-- upvalues: (copy) v_u_77, (ref) v_u_75, (ref) v_u_79, (copy) v_u_73, (copy) v_u_78, (ref) v_u_76, (copy) v_u_74
		v_u_73.Position = v_u_77:Update(p80, v_u_75 + getRandomVector(Vector3.one * -v_u_79, Vector3.one * v_u_79, 100))
		v_u_74.Position = v_u_78:Update(p80, v_u_76 + getRandomVector(Vector3.one * -v_u_79, Vector3.one * v_u_79, 100))
	end)
	v70.CrossHatch:Clone().Parent = v71
	local v82 = v70.HatchPositionScript:Clone()
	v82.Enabled = true
	v82.Parent = v71
	v71.BrokenHeartMaskModel:ScaleTo(0.2)
	local v83 = Instance.new("Camera", v71)
	v83.CFrame = CFrame.new(Vector3.new(0, 0, -20), Vector3.zero)
	v71.CurrentCamera = v83
	local v_u_84 = v_u_15.new(v67, 60, v66)
	v_u_1:Create(v_u_63, Tween0o.new(0.3), {
		["BackgroundTransparency"] = 0
	}):Play()
	v_u_2:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
	local v85 = v_u_6:Clone()
	v85.Rotation = 225
	v85.Position = UDim2.fromScale(0.5, 0.5)
	v85.Parent = v_u_63
	v85.Visible = false
	local v86 = v85:Clone()
	v86.Rotation = 135
	v86.Parent = v_u_63
	v86.Visible = false
	local v87 = task.spawn(function()
		-- upvalues: (ref) v_u_45, (copy) v_u_84
		while task.wait(0.05) do
			v_u_45(v_u_84)
		end
	end)
	v_u_5.Ambient:Play()
	task.wait(4)
	v69.Rotation = math.random(0, 360)
	v_u_8:Play()
	v71.ImageTransparency = 1
	v71.Visible = true
	v68.Position = UDim2.fromScale(0.5, 0.5)
	v83.FieldOfView = 73
	local v88 = v_u_1:Create(v83, Tween0o.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.In, -1, true), {
		["FieldOfView"] = 70
	})
	v88:Play()
	v_u_1:Create(v71, v_u_13, {
		["ImageTransparency"] = 0
	}):Play()
	v_u_1:Create(v68, v_u_13, {
		["Size"] = UDim2.fromScale(1.8, 1.8),
		["ImageTransparency"] = 1
	}):Play()
	v_u_1:Create(v69, v_u_13, {
		["Size"] = UDim2.fromScale(1.7, 1.7),
		["ImageTransparency"] = 1
	}):Play()
	v64.Position = UDim2.fromScale(0.5, 0.5)
	v64.ImageTransparency = 0
	v64.Size = UDim2.fromScale(0.2, 0.2)
	v65.Position = UDim2.fromScale(0.5, 0.5)
	v65.ImageTransparency = 0
	v65.Size = UDim2.fromScale(0.2, 0.2)
	v_u_1:Create(v64, v_u_12, {
		["Size"] = UDim2.fromScale(1, 1),
		["ImageTransparency"] = 1,
		["Rotation"] = 180
	}):Play()
	v_u_1:Create(v65, v_u_12, {
		["Size"] = UDim2.fromScale(1.3, 1.3),
		["ImageTransparency"] = 1,
		["Rotation"] = -180
	}):Play()
	task.wait(0.5)
	v_u_5["Heart Beat"]:Play()
	task.wait(3.5)
	v_u_8:Play()
	local _ = v85.Position
	local v89 = p_u_61.AbsoluteSize.X / 2 + 2000
	local v90 = p_u_61.AbsoluteSize.Y / 2 - 2000
	v85.Position = UDim2.new(0, v89, 0, v90)
	v85.Visible = true
	v85.Chain.ImageTransparency = 0.5
	v85.smoke.ImageTransparency = 1
	v_u_1:Create(v85.Chain, Tween0o.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
		["ImageTransparency"] = 0
	}):Play()
	v_u_1:Create(v85.smoke, Tween0o.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
		["ImageTransparency"] = 0
	}):Play()
	local v91 = v_u_1:Create(v85, v_u_14, {
		["Position"] = UDim2.fromScale(0.5, 0.5)
	})
	v91:Play()
	task.delay(0.13, function()
		-- upvalues: (ref) v_u_7, (ref) v_u_75, (ref) v_u_76, (ref) v_u_79, (ref) v_u_60, (copy) p_u_61
		v_u_7.PlaybackSpeed = 0.13
		v_u_7:Play()
		v_u_75 = v_u_75 + Vector3.new(0.21, -0.2, 0)
		v_u_76 = v_u_76 + Vector3.new(0.15, -0.2, 0)
		v_u_79 = 15
		v_u_60(p_u_61, Color3.new(1, 1, 1), 45, UDim2.fromScale(0.4, 0.6))
	end)
	v91.Completed:Wait()
	v85.Chain.AnchorPoint = Vector2.new(0, 0)
	v85.smoke.AnchorPoint = Vector2.new(0, 0)
	v_u_1:Create(v85.Chain, Tween0o.new(1.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1), {
		["AnchorPoint"] = Vector2.new(0, 0.5)
	}):Play()
	v_u_1:Create(v85.smoke, Tween0o.new(1.7, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1), {
		["AnchorPoint"] = Vector2.new(0, 0.5)
	}):Play()
	task.wait(4)
	v_u_8:Play()
	local _ = v86.Position
	local v92 = p_u_61.AbsoluteSize.X / 2 - 2000
	local v93 = p_u_61.AbsoluteSize.Y / 2 - 2000
	v86.Position = UDim2.new(0, v92, 0, v93)
	v86.Visible = true
	v86.Chain.ImageTransparency = 0.5
	v86.smoke.ImageTransparency = 1
	v_u_1:Create(v86.Chain, Tween0o.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
		["ImageTransparency"] = 0
	}):Play()
	v_u_1:Create(v86.smoke, Tween0o.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
		["ImageTransparency"] = 0
	}):Play()
	local v94 = v_u_1:Create(v86, v_u_14, {
		["Position"] = UDim2.fromScale(0.5, 0.5)
	})
	v94:Play()
	task.delay(0.13, function()
		-- upvalues: (ref) v_u_7, (ref) v_u_75, (ref) v_u_76, (ref) v_u_79, (ref) v_u_60, (copy) p_u_61
		v_u_7:Play()
		v_u_75 = v_u_75 + Vector3.new(0, 0.1, 0)
		v_u_76 = v_u_76 + Vector3.new(-0.36, 0.1, 0)
		v_u_79 = 50
		v_u_60(p_u_61, Color3.new(1, 1, 1), 45, UDim2.fromScale(0.6, 0.6))
	end)
	v94.Completed:Wait()
	v86.Chain.AnchorPoint = Vector2.new(0, 0)
	v86.smoke.AnchorPoint = Vector2.new(0, 0)
	v_u_1:Create(v86.Chain, Tween0o.new(1.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1), {
		["AnchorPoint"] = Vector2.new(0, 0.5)
	}):Play()
	v_u_1:Create(v86.smoke, Tween0o.new(1.7, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1), {
		["AnchorPoint"] = Vector2.new(0, 0.5)
	}):Play()
	task.wait(4)
	v_u_1:Create(v_u_74, Tween0o.new(0.5), {
		["Size"] = v_u_74.Size * 1.5
	}):Play()
	v_u_1:Create(v_u_73, Tween0o.new(0.5), {
		["Size"] = v_u_73.Size * 1.5
	}):Play()
	v_u_79 = 100
	v_u_5["Heart Beat"].TimePosition = 0.3
	v_u_5["Heart Beat"].Volume = 0.3
	v_u_63.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
	v_u_5.GlassBreak.TimePosition = 0.3
	v_u_5.GlassBreak.Pitch = 1
	v_u_5.GlassBreak:Play()
	v_u_5.Whoosh:Play()
	v_u_76 = v_u_76 - Vector3.new(1, 0, 0)
	v_u_75 = v_u_75 + Vector3.new(1, 0, 0)
	task.cancel(v87)
	task.wait(1.5)
	v_u_63.BackgroundColor3 = Color3.new(0.7, 0.7, 0.7)
	v_u_1:Create(v_u_74, Tween0o.new(0.5), {
		["Size"] = v_u_74.Size * 1.5
	}):Play()
	v_u_1:Create(v_u_73, Tween0o.new(0.5), {
		["Size"] = v_u_73.Size * 1.5
	}):Play()
	v_u_79 = 200
	v_u_5.GlassBreak.TimePosition = 0.3
	v_u_5.GlassBreak.Pitch = 0.9
	v_u_5.GlassBreak:Play()
	v_u_5.Whoosh:Play()
	v_u_76 = v_u_76 + Vector3.new(-4, -1, 0)
	v_u_75 = v_u_75 + Vector3.new(4, -1, 0)
	task.wait(1.5)
	v_u_63.BackgroundColor3 = Color3.new(1, 1, 1)
	v88:Cancel()
	v_u_1:Create(v_u_74, Tween0o.new(1), {
		["Size"] = v_u_74.Size * 5
	}):Play()
	v_u_1:Create(v_u_73, Tween0o.new(1), {
		["Size"] = v_u_73.Size * 5
	}):Play()
	v_u_79 = 0
	v_u_5.GlassBreak2:Play()
	v_u_76 = v_u_76 + Vector3.new(-50, -1, 5)
	v_u_75 = v_u_75 + Vector3.new(50, -1, 5)
	v_u_1:Create(v_u_63, Tween0o.new(0.5), {
		["BackgroundTransparency"] = 1
	}):Play()
	v_u_1:Create(v85.Chain, Tween0o.new(0.5), {
		["ImageTransparency"] = 1
	}):Play()
	v_u_1:Create(v85.smoke, Tween0o.new(0.5), {
		["ImageTransparency"] = 1
	}):Play()
	v_u_1:Create(v86.Chain, Tween0o.new(0.5), {
		["ImageTransparency"] = 1
	}):Play()
	v_u_1:Create(v86.smoke, Tween0o.new(0.5), {
		["ImageTransparency"] = 1
	}):Play()
	v_u_1:Create(v71, Tween0o.new(0.5), {
		["ImageTransparency"] = 1
	}):Play()
	v_u_79 = 1000
	v_u_5["Heart Beat"]:Stop()
	v_u_5.Ambient:Stop()
	v81:Disconnect()
	v_u_5.DeepImpact:Play()
	p62.Visible = true
	p62.Position = UDim2.fromScale(0.5, 0.5)
	p62.Size = UDim2.fromScale(0.6, 0.2)
	v_u_1:Create(p62, v_u_11, {
		["Size"] = UDim2.fromScale(0.4, 0.1)
	}):Play()
	task.delay(0.5, function()
		-- upvalues: (copy) v_u_63
		v_u_63.BackgroundTransparency = 1
		v_u_63.BackgroundColor3 = Color3.new()
	end)
	task.delay(2, function()
		-- upvalues: (copy) v_u_84
		v_u_84:Dispose()
	end)
end