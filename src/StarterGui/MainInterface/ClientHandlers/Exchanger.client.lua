-- What the sigma?

local v1 = game:GetService("Players")
game:GetService("StarterGui")
local v2 = game:GetService("RunService")
local v3 = game:GetService("ReplicatedStorage")
local v4 = game:GetService("CollectionService")
local v_u_5 = v1.LocalPlayer
local v6 = v_u_5:WaitForChild("PlayerGui"):WaitForChild("MainInterface")
local v_u_7 = v6:WaitForChild("ExchangerUI")
local v_u_8 = v3:WaitForChild("Assets"):WaitForChild("SFXs")
local v_u_9 = v_u_7:WaitForChild("ViewportFrame")
local v_u_10 = v_u_7:WaitForChild("ItemName")
local v_u_11 = v_u_7:WaitForChild("ItemDesc"):WaitForChild("TextLabel")
local v_u_12 = v_u_7:WaitForChild("Price")
local v_u_13 = v_u_12:WaitForChild("SelectionCorners"):GetDescendants()
local v14 = v_u_7:WaitForChild("SelectionCorners"):WaitForChild("Title"):WaitForChild("Close")
local v_u_15 = v_u_7:WaitForChild("ExchangeButton")
local v_u_16 = v_u_15:WaitForChild("Amount")
local v_u_17 = v_u_15:WaitForChild("Disabled")
local v_u_18 = v_u_15:WaitForChild("Processing")
v_u_18:WaitForChild("Frame"):WaitForChild("UIGradient")
local v_u_19 = v_u_7:WaitForChild("MessageUI")
local v20 = v_u_19:WaitForChild("Message")
local v_u_21 = v20:WaitForChild("Description")
local v22 = v20:WaitForChild("Close")
local v_u_23 = v_u_7:WaitForChild("Selection"):WaitForChild("ScrollingFrame")
local v_u_24 = v_u_23.Parent:WaitForChild("TextBox")
local v_u_25 = v_u_23:WaitForChild("Item")
local v_u_26 = v3:WaitForChild("Server0o")
local v27 = v3:WaitForChild("Modules")
local v_u_28 = require(v27:WaitForChild("Dialog"))
local v_u_29 = require(v27:WaitForChild("Utility"))
local v_u_30 = require(v27:WaitForChild("msgpack"))
local v_u_31 = require(v27:WaitForChild("ClientFunctions"))
local v_u_32 = require(v6:WaitForChild("RemoteFunction")).new("ExchangeRemote")
local v_u_33 = v_u_29.GetReplica()
local v34 = v27:WaitForChild("DB")
local v_u_35 = require(v34:WaitForChild("ExchangeList"))
local v_u_36 = require(v34:WaitForChild("ItemDB"))
local v_u_37 = require(v34:WaitForChild("BlackmarketDialogs"))
local v_u_38 = nil
local v_u_39 = Instance.new("Camera")
local v_u_40 = Instance.new("StringValue")
local v_u_41 = false
local v_u_42 = false
local v_u_43 = ""
local v_u_44 = nil
local v_u_45 = {}
local v_u_46 = nil
local v_u_47 = nil
v_u_39.Parent = v_u_9
v_u_9.CurrentCamera = v_u_39
local function v_u_51(p48)
	-- upvalues: (ref) v_u_38, (copy) v_u_44, (copy) v_u_36, (copy) v_u_9, (copy) v_u_39
	if v_u_38 then
		v_u_38:Destroy()
		v_u_38 = v_u_44
	end
	local v49 = v_u_36[p48].PreviewModel
	if v49 then
		local v50 = v49:Clone()
		v50:PivotTo(CFrame.new())
		v50.Parent = v_u_9
		v_u_39.CFrame = CFrame.lookAt((CFrame.Angles(0.7853981633974483, 0.7853981633974483, 0) * CFrame.new(0, 0, -(v50:IsA("BasePart") and v50.Size.Magnitude / 2 or v50:GetExtentsSize().Magnitude / 2) - 1)).Position, Vector3.zero)
		v_u_38 = v50
	end
end
local function v_u_62()
	-- upvalues: (ref) v_u_43, (copy) v_u_35, (copy) v_u_36, (copy) v_u_33, (copy) v_u_29, (copy) v_u_16, (copy) v_u_13, (copy) v_u_12
	if v_u_43 ~= "" then
		local v52 = v_u_35.Container[v_u_43]
		local _ = v_u_36[v_u_43]
		local v53 = v_u_33.Data.Inventory[v_u_43]
		local v54
		if v_u_29.IsValidNumberText(v_u_16.Text) then
			local v55 = v_u_16.Text
			if 0 < tonumber(v55) then
				local v56 = v_u_16.Text
				v54 = tonumber(v56) or 1
			else
				v54 = 1
			end
		else
			v54 = 1
		end
		local v57 = v52.EarningPoints
		local v58 = v53.amount
		local v59 = v57 * math.min(v54, v58)
		local v60 = Color3.fromRGB(144, 73, 207)
		for _, v61 in ipairs(v_u_13) do
			if v61:IsA("Frame") then
				v61.BackgroundColor3 = v60
			end
		end
		v_u_12.TextColor3 = v60
		v_u_12.Text = ("%*P in total"):format(v59)
	end
end
local function v_u_66()
	-- upvalues: (ref) v_u_43, (copy) v_u_10, (copy) v_u_11, (copy) v_u_35, (copy) v_u_36, (copy) v_u_33, (copy) v_u_17, (copy) v_u_51, (copy) v_u_62
	if v_u_43 == "" then
		v_u_10.Text = "No item selected."
		v_u_11.Text = "You do not have any items that can be exchanged now."
	else
		local _ = v_u_35.Container[v_u_43]
		local v63 = v_u_36[v_u_43]
		local v64 = v_u_33.Data.Inventory[v_u_43]
		v_u_10.Text = v_u_43
		v_u_10.TextColor3 = v63.TextColor
		v_u_11.Text = v63.Description
		local v65 = v_u_17
		if v64 then
			v64 = 0 < v64.amount
		end
		v65.Visible = not v64
		v_u_51(v_u_43)
		v_u_62()
	end
end
local function v_u_79(p_u_67)
	-- upvalues: (copy) v_u_45, (copy) v_u_36, (copy) v_u_35, (ref) v_u_43, (copy) v_u_33, (copy) v_u_25, (copy) v_u_23, (copy) v_u_17, (copy) v_u_40, (copy) v_u_66, (copy) v_u_31
	if not v_u_45[p_u_67] and v_u_36[p_u_67] and v_u_35.Container[p_u_67] then
		v_u_45[p_u_67] = true
		if v_u_43 == "" then
			v_u_43 = p_u_67
		end
		local _ = v_u_35.Container[p_u_67]
		local v68 = v_u_36[p_u_67]
		local v_u_69 = v_u_33.Data.Inventory[p_u_67]
		local v_u_70 = v_u_25:Clone()
		local v71 = v_u_70:WaitForChild("Button")
		v71:WaitForChild("GearType")
		local v_u_72 = v71:WaitForChild("ItemAmount")
		local v_u_73 = v71:WaitForChild("TextLabel")
		v_u_70.Name = p_u_67
		v_u_70.Visible = true
		v_u_72.Text = ("x%*"):format(v_u_69.amount)
		v_u_72.Visible = 1 < v_u_69.amount
		v_u_73.Text = p_u_67
		v_u_73.TextColor3 = v68.TextColor
		v_u_70.Parent = v_u_23
		v_u_33:ListenToChange("Inventory", function(p74)
			-- upvalues: (ref) v_u_69, (copy) p_u_67, (copy) v_u_72, (copy) v_u_70, (ref) v_u_43, (ref) v_u_17
			v_u_69 = p74[p_u_67] or {
				["amount"] = 0
			}
			v_u_72.Text = ("x%*"):format(v_u_69.amount)
			v_u_72.Visible = 1 < v_u_69.amount
			v_u_70.Visible = 0 < v_u_69.amount
			if v_u_43 == p_u_67 then
				local v75 = v_u_17
				local v76 = v_u_69
				if v76 then
					v76 = 0 < v_u_69.amount
				end
				v75.Visible = not v76
			end
		end)
		v_u_40.Changed:Connect(function()
			-- upvalues: (copy) v_u_70, (ref) v_u_69, (copy) v_u_73, (ref) v_u_40
			local v77 = v_u_70
			local v78
			if 0 < v_u_69.amount then
				v78 = v_u_73.LocalizedText:lower():gsub(" ", ""):find(v_u_40.Value:gsub(" ", ""):lower())
			else
				v78 = false
			end
			v77.Visible = v78
		end)
		v71.MouseButton1Down:Connect(function()
			-- upvalues: (ref) v_u_43, (copy) p_u_67, (ref) v_u_66
			v_u_43 = p_u_67
			v_u_66()
		end)
		v_u_31.LoadButtonEffects(v71, 1)
	end
end
local function v_u_84(p80, p81)
	-- upvalues: (copy) v_u_84
	for v82, v83 in pairs(p80) do
		if v82 == "ViewportData" then
			p80[v82] = p81
		elseif typeof(v83) == "table" then
			v_u_84(v83, p81)
		end
	end
end
local function v_u_92(p85, p86, p87)
	-- upvalues: (copy) v_u_37, (ref) v_u_46, (copy) v_u_84
	local v88 = p87 and v_u_37[p85][p86 or "Interact"][p87] or v_u_37[p85][p86 or "Interact"]
	local v89 = table.clone
	if 1 <= #v88 then
		v88 = v88[Random.new():NextInteger(1, #v88)] or v88
	end
	local v90 = v89(v88)
	if v_u_46 and v_u_46.Name == "Jester" then
		local v91 = v_u_46:WaitForChild("Head")
		v_u_84(v90, {
			["Model"] = v_u_46,
			["CFrame"] = CFrame.lookAt((v91.CFrame * CFrame.new(0, 0, -3)).Position, v91.Position)
		})
	end
	return v90
end
local function v99()
	-- upvalues: (ref) v_u_43, (ref) v_u_42, (copy) v_u_16, (copy) v_u_18, (copy) v_u_33, (copy) v_u_29, (copy) v_u_32, (copy) v_u_30, (copy) v_u_21, (copy) v_u_19, (copy) v_u_7, (copy) v_u_37, (copy) v_u_28, (copy) v_u_92, (copy) v_u_8
	if v_u_43 and not v_u_42 then
		v_u_16.TextEditable = false
		v_u_42 = true
		v_u_18.Visible = true
		local _ = v_u_33.Data.Inventory[v_u_43]
		local v93
		if v_u_29.IsValidNumberText(v_u_16.Text) then
			local v94 = v_u_16.Text
			if 0 < tonumber(v94) then
				local v95 = v_u_16.Text
				v93 = tonumber(v95) or 1
			else
				v93 = 1
			end
		else
			v93 = 1
		end
		local v96 = {
			["Type"] = "Exchange",
			["Item"] = v_u_43,
			["Amount"] = v93
		}
		local v97 = v_u_32:Fire(v_u_30.encode(v96))
		if v97 then
			local v98 = v_u_30.decode(v97)
			if v98[1] then
				v_u_7.Visible = false
				if v_u_37.Special.SpecialExchangeDialogs and v_u_37.Special.SpecialExchangeDialogs[v_u_43] then
					v_u_28.DisplayDialog((v_u_92("Special", "SpecialExchangeDialogs", v_u_43)))
				else
					v_u_28.DisplayDialog((v_u_92("Special", "ExchangeDialogs")))
				end
				v_u_7.Visible = true
				v_u_8:WaitForChild("Exchange"):Play()
			else
				v_u_21.Text = v98[2]
				v_u_19.Visible = true
			end
		else
			v_u_21.Text = "Server is not responding."
			v_u_19.Visible = true
		end
		task.wait(1)
		v_u_16.TextEditable = true
		v_u_42 = false
		v_u_18.Visible = false
	end
end
local function v101()
	-- upvalues: (copy) v_u_26, (ref) v_u_47, (copy) v_u_30, (ref) v_u_41, (copy) v_u_44
	local v100 = v_u_26:GetAttribute("ExchangerUI")
	if v100 then
		v_u_47 = v_u_30.decode(v100)
		v_u_41 = v_u_47.Type == "Special"
	else
		v_u_41 = false
		v_u_47 = v_u_44
	end
end
local function v106()
	-- upvalues: (ref) v_u_47, (copy) v_u_7, (copy) v_u_5
	if v_u_47 and v_u_7.Visible then
		local v102 = CFrame.new
		local v103 = v_u_47.SpawnLocation
		local v104 = v102(table.unpack(v103))
		local v105 = v_u_5.Character
		if v105 then
			v105 = v105:WaitForChild("HumanoidRootPart")
		end
		if v105 then
			v105 = (v105.Position - v104.Position).Magnitude
		end
		if not v105 or 17 < v105 then
			v_u_7.Visible = false
		end
	end
end
local function v112(p107)
	-- upvalues: (ref) v_u_38
	if v_u_38 then
		local v108 = v_u_38
		local v109 = v_u_38:GetPivot()
		local v110 = CFrame.Angles
		local v111 = 15 * p107
		v108:PivotTo(v109 * v110(0, math.rad(v111), 0))
	end
end
local function v114()
	-- upvalues: (copy) v_u_33, (copy) v_u_79
	for v113 in pairs(v_u_33.Data.Inventory) do
		task.defer(v_u_79, v113)
	end
end
local function v115()
	-- upvalues: (copy) v_u_18, (copy) v_u_17, (copy) v_u_15
	v_u_15:SetAttribute("Disabled", v_u_18.Visible or v_u_17.Visible)
end
local v116 = v_u_26:GetAttribute("ExchangerUI")
if v116 then
	v_u_47 = v_u_30.decode(v116)
	if v_u_47.Type == "Special" then
		v_u_41 = true
	else
		v_u_41 = false
	end
else
	v_u_41 = false
	v_u_47 = v_u_44
end
v_u_26:GetAttributeChangedSignal("ExchangerUI"):Connect(v101)
v114()
v_u_33:ListenToChange("Inventory", v114)
task.delay(0.1, v_u_66)
v_u_18.Changed:Connect(v115)
v_u_17.Changed:Connect(v115)
v_u_15.MouseButton1Down:Connect(v99)
v14.MouseButton1Click:Connect(function()
	-- upvalues: (copy) v_u_7
	v_u_7.Visible = false
end)
v22.MouseButton1Click:Connect(function()
	-- upvalues: (copy) v_u_19
	v_u_19.Visible = false
end)
v_u_16.Changed:Connect(function(p117)
	-- upvalues: (copy) v_u_29, (copy) v_u_16, (copy) v_u_62
	if p117 == "Text" then
		if not v_u_29.IsValidNumberText(v_u_16.Text) then
			v_u_16.Text = v_u_16.Text:gsub("%D", "")
		end
		local v118 = v_u_16.Text
		if tonumber(v118) then
			local v119 = v_u_16.Text
			if tonumber(v119) <= 0 then
				v_u_16.Text = v_u_16.Text:gsub("0", "")
			end
		end
		v_u_62()
	end
end)
v_u_24.Changed:Connect(function()
	-- upvalues: (copy) v_u_40, (copy) v_u_24
	v_u_40.Value = v_u_24.Text
end)
v2.RenderStepped:Connect(v112)
if not v2:IsStudio() then
	v2.Heartbeat:Connect(v106)
end
for _, v120 in ipairs(v4:GetTagged("Blackmarket")) do
	if v120:IsDescendantOf(workspace) then
		v_u_46 = v120
		break
	end
end
v4:GetInstanceAddedSignal("Blackmarket"):Connect(function(p121)
	-- upvalues: (ref) v_u_46
	if p121:IsDescendantOf(workspace) then
		v_u_46 = p121
	end
end)