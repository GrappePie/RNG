-- What the sigma?

local v1 = game:GetService("Players")
game:GetService("StarterGui")
local v2 = game:GetService("ReplicatedStorage")
local v3 = v1.LocalPlayer
local v4 = v3:WaitForChild("PlayerGui"):WaitForChild("MainInterface"):WaitForChild("FilterSettings")
v4:WaitForChild("Close")
local v_u_5 = v4:WaitForChild("ScrollingFrame")
local v_u_6 = v_u_5:WaitForChild("Template")
local v7 = v2:WaitForChild("Modules")
local v8 = require(v2:WaitForChild("ReplicaController"))
local v_u_9 = require(v7:WaitForChild("CoreModules"):WaitForChild("ClientBasedFunctions"))
local v10 = v7:WaitForChild("DB")
local v11 = require(v10:WaitForChild("TierSkins"))
local v12 = require(v10:WaitForChild("RarityDB"))
local v_u_13 = v2:WaitForChild("Remotes"):WaitForChild("SetFilter")
local v14 = 0
v8.RequestData()
repeat
	task.wait()
until v8.InitialDataReceived
local v_u_15 = v8.GetReplicaById(v3:GetAttribute("UID"))
local function v_u_19()
	-- upvalues: (copy) v_u_5
	local v16 = 0
	local v17 = 0
	for _, v18 in ipairs(v_u_5:GetChildren()) do
		if v18:IsA("Frame") then
			if v18.Visible then
				v17 = v18.AbsoluteSize.Y
				v16 = v16 + 1
			end
		end
	end
	v_u_5.CanvasSize = UDim2.fromOffset(0, v16 * v17 + 7 * (v16 - 1))
end
local function v42(p_u_20, p21)
	-- upvalues: (copy) v_u_6, (copy) v_u_15, (copy) v_u_9, (copy) v_u_13, (copy) v_u_19, (copy) v_u_5
	local v_u_22 = false
	local v_u_23, v_u_24 = table.unpack(p_u_20:split("_"))
	local v_u_25 = v_u_6:Clone()
	local v_u_26 = v_u_25:WaitForChild("Locked")
	local v_u_27 = v_u_25:WaitForChild("AuraName")
	local v_u_28 = v_u_25:WaitForChild("SkipSetButton")
	local v_u_29 = v_u_28:WaitForChild("SkipEnabled")
	local v_u_30 = v_u_28:WaitForChild("SkipDisabled")
	local v_u_31 = v_u_28:WaitForChild("Disabled")
	local v32 = v_u_15.Data.SmartFilter[p_u_20]
	local v33 = v_u_25:WaitForChild("Description")
	local v_u_34 = v33:WaitForChild("TextLabel")
	local v_u_35 = v33:WaitForChild("SelectionCorners"):GetDescendants()
	v_u_27:GetPropertyChangedSignal("TextBounds"):Connect(function()
		-- upvalues: (copy) v_u_27, (copy) v_u_25
		if v_u_27.TextBounds.X > v_u_25.AbsoluteSize.X * 0.6 then
			v_u_27.AutomaticSize = Enum.AutomaticSize.None
			v_u_27.Size = UDim2.fromScale(2, 0.705)
		else
			v_u_27.AutomaticSize = Enum.AutomaticSize.X
			v_u_27.Size = UDim2.fromScale(0, 0.705)
		end
	end)
	v_u_27:GetPropertyChangedSignal("Visible"):Connect(function()
		-- upvalues: (copy) v_u_26, (copy) v_u_27, (copy) v_u_28
		v_u_26.Visible = not v_u_27.Visible
		v_u_28:SetAttribute("Disabled", v_u_26.Visible)
	end)
	local function v_u_36()
		-- upvalues: (copy) v_u_24, (ref) v_u_15, (copy) v_u_23
		if v_u_24 then
			return table.find(v_u_15.Data.SkinsOwned[v_u_23] or {}, v_u_24) ~= nil
		else
			return table.find(v_u_15.Data.DiscoveredAura, v_u_23) ~= nil
		end
	end
	local function v_u_40()
		-- upvalues: (ref) v_u_15, (copy) p_u_20, (copy) v_u_34, (copy) v_u_35
		local v37 = v_u_15.Data.SmartFilter[p_u_20]
		local v38 = v37 == true and Color3.fromRGB(255, 61, 64) or v37 == false and Color3.fromRGB(97, 255, 97) or Color3.new(1, 1, 1)
		v_u_34.Text = v37 == true and "Auto Skip Mode" or v37 == false and "Auto Equip Mode" or "Disabled"
		v_u_34.TextColor3 = v38
		for _, v39 in ipairs(v_u_35) do
			if v39:IsA("Frame") then
				v39.BackgroundColor3 = v38
			end
		end
	end
	v_u_27.Text = v_u_23
	v_u_27.Visible = v_u_36()
	v_u_9.ChangeTextColor(v_u_27, v_u_24)
	if v32 == nil then
		v_u_29.Visible = false
		v_u_30.Visible = false
		v_u_31.Visible = true
	else
		v_u_29.Visible = v32
		v_u_30.Visible = not v32
		v_u_31.Visible = false
	end
	v_u_40()
	v_u_15:ListenToChange({ "SmartFilter", p_u_20 }, function(p41)
		-- upvalues: (copy) v_u_29, (copy) v_u_30, (copy) v_u_31, (copy) v_u_40, (ref) v_u_22
		if p41 == nil then
			v_u_29.Visible = false
			v_u_30.Visible = false
			v_u_31.Visible = true
		else
			v_u_29.Visible = p41
			v_u_30.Visible = not p41
			v_u_31.Visible = false
		end
		v_u_40()
		v_u_22 = false
	end)
	v_u_28.MouseButton1Down:Connect(function()
		-- upvalues: (copy) v_u_36, (ref) v_u_22, (ref) v_u_13, (copy) p_u_20
		if v_u_36() and not v_u_22 then
			v_u_22 = true
			v_u_13:FireServer(p_u_20)
		end
	end)
	if v_u_24 then
		v_u_15:ListenToChange({ "SkinsOwned", v_u_23 }, function(_)
			-- upvalues: (copy) v_u_36, (copy) v_u_27, (ref) v_u_19
			if v_u_36() then
				v_u_27.Visible = true
				v_u_19()
			end
		end)
	else
		v_u_15:ListenToChange({ "DiscoveredAura" }, function()
			-- upvalues: (copy) v_u_36, (copy) v_u_27, (ref) v_u_19
			if v_u_36() then
				v_u_27.Visible = true
				v_u_19()
			end
		end)
	end
	v_u_25.LayoutOrder = p21
	v_u_25.Visible = true
	v_u_25.Parent = v_u_5
	v_u_9.LoadButtonEffects(v_u_28, 1)
end
for _, v43 in ipairs(v12) do
	if v43.ShowOnFilter or not v43.Unobtainable then
		v14 = v14 + 1
		v42(v43.Value, v14)
	end
	if v11[v43.Value] then
		for v44, v45 in pairs(v11[v43.Value]) do
			if v43.ShowOnFilter or not v45.Unobtainable then
				v14 = v14 + 1
				v42(("%*_%*"):format(v43.Value, v44), v14)
			end
		end
	end
end
v_u_19()
v_u_5:GetPropertyChangedSignal("AbsoluteCanvasSize"):Connect(v_u_19)