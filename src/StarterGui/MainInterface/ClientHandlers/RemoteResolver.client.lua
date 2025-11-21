-- What the sigma?

local v1 = game:GetService("Players")
game:GetService("StarterGui")
local v2 = game:GetService("RunService")
local v_u_3 = game:GetService("TweenService")
local v4 = game:GetService("ReplicatedStorage")
local v_u_5 = game:GetService("CollectionService")
local v6 = v4:WaitForChild("Modules")
local v_u_7 = require(v6:WaitForChild("Utility"))
local v_u_8 = require(v6:WaitForChild("ClientFunctions"))
local v9 = v4:WaitForChild("Remotes"):WaitForChild("RollEffect")
local v_u_10 = v1.LocalPlayer:WaitForChild("PlayerGui")
local v11 = v4:WaitForChild("Events"):WaitForChild("PlayRollEffect")
local v12 = v4:WaitForChild("Remotes"):WaitForChild("PlayRollEffect")
local v_u_12 = v4:WaitForChild("Assets"):WaitForChild("SFXs")
local v13 = script:FindFirstAncestorOfClass("ScreenGui")
local v_u_14 = v_u_10:WaitForChild("Shiftlock")
local v_u_15 = v_u_10:FindFirstChild("TouchGui")
local v_u_16 = v13.Parent:WaitForChild("FakeRolling")
local v_u_17 = v_u_16:WaitForChild("Star")
local v_u_18 = v_u_16:WaitForChild("CloseButton")
local v_u_19 = v_u_18.Position
local v_u_20 = v_u_16:WaitForChild("Background")
local v_u_21 = v_u_16:WaitForChild("Break1")
local v_u_22 = v_u_16:WaitForChild("Break2")
v_u_3:Create(v_u_20, Tween0o.new(1), {
	["BackgroundTransparency"] = 1
})
local v_u_23 = script:WaitForChild("ShakeAmount")
local v_u_24 = script:WaitForChild("StarSpinSpeed")
local v_u_25 = nil
v2:IsStudio()
local v_u_26 = v4:WaitForChild("TiersUI")
local v_u_27 = v4:WaitForChild("TierSkinUIs")
local v_u_28 = nil
local function v_u_34(p29)
	-- upvalues: (copy) v_u_26, (copy) v_u_27
	local v30, v31 = table.unpack(p29:split("_"))
	local v32 = v_u_26:FindFirstChild(v30):Clone()
	if v31 and v_u_27:FindFirstChild(v30) and v_u_27:FindFirstChild(v30):FindFirstChild(v31) then
		local v33 = v_u_27:FindFirstChild(v30):FindFirstChild(v31):Clone()
		v33.Visible = true
		v33.Parent = v32
	end
	return v32
end
local function v43(p35)
	-- upvalues: (copy) v_u_7, (copy) v_u_34, (copy) v_u_18, (copy) v_u_16, (copy) v_u_15, (copy) v_u_10, (copy) v_u_14, (ref) v_u_25, (copy) v_u_5, (copy) v_u_12, (copy) v_u_3, (copy) v_u_8, (copy) v_u_20, (copy) v_u_28
	local v36 = v_u_7.FindAuraData(p35)
	if v36.ShowOnFilter or not v36.Craftable and v_u_7.FindRarityByName(p35, true) > 0 then
		local v_u_37 = v_u_34(p35)
		v_u_37.Position = UDim2.fromScale(0.5, 0.47)
		v_u_18.Visible = false
		v_u_16.Enabled = true
		if v_u_15 then
			v_u_10.TouchGui.TouchControlFrame.JumpButton.Visible = false
			v_u_14.Enabled = false
		end
		v_u_25 = v_u_37
		local v38 = {}
		for _, v39 in ipairs(v_u_5:GetTagged("Dummy")) do
			for _, v40 in v39:GetDescendants() do
				if v40:IsA("Sound") then
					v38[v40] = v40.Volume
					v40.Volume = 0
				end
			end
		end
		v_u_12.SpinningSound:Play()
		v_u_3:Create(v_u_37, Tween0o.new(0.5, Enum.EasingStyle.Quart), {
			["Position"] = UDim2.fromScale(0.5, 0.5)
		}):Play()
		v_u_8.RollingEffect(v_u_7.FindRarityByName(p35, true), v_u_16, script, v_u_37, p35)
		v_u_20.BackgroundTransparency = 0.4
		v_u_18.Visible = true
		if v_u_15 then
			v_u_10.TouchGui.TouchControlFrame.JumpButton.Visible = true
			v_u_14.Enabled = true
		end
		v_u_37.Parent = v_u_16
		for v41, v42 in v38 do
			v41.Volume = v42
		end
		table.clear(v38)
		v_u_18.MouseButton1Click:Once(function()
			-- upvalues: (copy) v_u_37
			v_u_37:Destroy()
		end)
	end
end
local function v47(p44)
	-- upvalues: (copy) v_u_23, (copy) v_u_17, (copy) v_u_24, (copy) v_u_18, (copy) v_u_19, (copy) v_u_21, (copy) v_u_22, (ref) v_u_25
	local v45 = UDim2.fromScale(v_u_23.Value * (math.random(1, 2) == 1 and -1 or 1), v_u_23.Value * (math.random(1, 2) == 1 and -1 or 1))
	local v46 = v_u_17
	v46.Rotation = v46.Rotation + 50 * p44 * v_u_24.Value
	v_u_18.Position = v_u_19 + v45
	v_u_18.Rotation = v_u_23.Value * 400 * (math.random(1, 2) == 1 and -1 or 1)
	v_u_21.Position = UDim2.fromScale(0.5, 0.5) + v45
	v_u_21.Rotation = v_u_23.Value * 50 * (math.random(1, 2) == 1 and -1 or 1)
	v_u_22.Position = v_u_21.Position
	v_u_22.Rotation = v_u_23.Value * 50 * (math.random(1, 2) == 1 and -1 or 1)
	if v_u_25 and 0 < v_u_23.Value then
		v_u_25.Position = UDim2.fromScale(0.5, 0.5) + v45
		v_u_25.Rotation = v_u_23.Value * 400 * (math.random(1, 2) == 1 and -1 or 1)
	end
end
v9.OnClientEvent:Connect(v43)
v11.Event:Connect(v43)
v12.OnClientEvent:Connect(v43)
v2.RenderStepped:Connect(v47)
v_u_8.LoadButtonEffects(v_u_18)
v_u_18.MouseButton1Click:Connect(function()
	-- upvalues: (copy) v_u_16, (ref) v_u_25
	v_u_16.Enabled = false
	v_u_25 = nil
end)