-- What the sigma?

local v1 = game:GetService("Players")
local v2 = game:GetService("ReplicatedStorage")
local v_u_3 = v1.LocalPlayer
local v4 = script:FindFirstAncestorOfClass("ScreenGui"):WaitForChild("Badges")
local v_u_5 = v4:WaitForChild("ItemsHolder")
local v_u_6 = v_u_5:WaitForChild("Template")
local v_u_7 = v4:WaitForChild("Icon")
local v_u_8 = v_u_7:WaitForChild("Description")
local v_u_9 = v_u_7:WaitForChild("EquipButton")
local v10 = v4:WaitForChild("SelectionCorners"):WaitForChild("Title"):WaitForChild("Close")
local v11 = v2:WaitForChild("Modules")
local v12 = v11:WaitForChild("DB")
local v_u_13 = require(v11:WaitForChild("ClientFunctions"))
local v14 = require(v2:WaitForChild("ReplicaController"))
local v15 = require(v12:WaitForChild("TagOptions"))
local v_u_16 = v2:WaitForChild("Remotes"):WaitForChild("ChangeTitle")
local v_u_17 = {}
local v_u_18 = nil
v14.RequestData()
repeat
	task.wait()
until v14.InitialDataReceived
local v_u_19 = v14.GetReplicaById(v_u_3:GetAttribute("UID"))
local function v_u_22(p20)
	-- upvalues: (ref) v_u_18, (copy) v_u_9, (copy) v_u_3, (copy) v_u_7, (copy) v_u_8
	v_u_18 = p20
	v_u_9.Visible = true
	local v21 = p20.Name == v_u_3:GetAttribute("PlayerTag")
	v_u_9:SetAttribute("Disabled", v21)
	v_u_9.Text = v21 and "Equipped" or "Equip"
	v_u_9.TextColor3 = v21 and Color3.new(0.4, 0.4, 0.4) or Color3.new(1, 1, 1)
	v_u_7.Image = ("rbxassetid://%*"):format(p20.ImageId)
	v_u_8.Text = p20.Description or "Empty"
end
local function v31(p_u_23)
	-- upvalues: (copy) v_u_6, (copy) v_u_19, (copy) v_u_17, (copy) v_u_5, (copy) v_u_22, (copy) v_u_13
	if p_u_23.ImageId then
		local v_u_24 = v_u_6:Clone()
		local v25 = v_u_24.BaseFrame
		local function v28()
			-- upvalues: (copy) v_u_24, (copy) p_u_23, (ref) v_u_19
			local v26 = v_u_24
			local v27 = p_u_23.Name
			if v27 then
				v27 = table.find(v_u_19.Data.OwnedTags, v27) ~= nil
			end
			v26.Visible = v27
		end
		local v29 = v_u_17
		table.insert(v29, v28)
		local v30 = p_u_23.Name
		if v30 then
			v30 = table.find(v_u_19.Data.OwnedTags, v30) ~= nil
		end
		v_u_24.Visible = v30
		v25.Icon.Image = ("rbxassetid://%*"):format(p_u_23.ImageId)
		v25.TagName.Text = p_u_23.DisplayName or p_u_23.Name
		v_u_24.LayoutOrder = p_u_23.ZIndex or (1 / 0)
		v_u_24.Parent = v_u_5
		v25.MouseButton1Click:Connect(function()
			-- upvalues: (ref) v_u_22, (copy) p_u_23
			v_u_22(p_u_23)
		end)
		v_u_13.LoadButtonEffects(v25)
	end
end
local function v32()
	-- upvalues: (ref) v_u_18, (copy) v_u_9, (copy) v_u_16
	if v_u_18 and not v_u_9:GetAttribute("Disabled") then
		v_u_16:FireServer(v_u_18.Name)
	end
end
for _, v33 in ipairs(v15) do
	task.defer(v31, v33)
end
v_u_19:ListenToChange("OwnedTags", function()
	-- upvalues: (copy) v_u_17
	for _, v34 in v_u_17 do
		task.defer(v34)
	end
end)
v_u_9.MouseButton1Click:Connect(v32)
v10.MouseButton1Click:Connect(v_u_13.CloseAllWindows)
v_u_13.LoadButtonEffects(v_u_9)
v_u_13.LoadButtonEffects(v10)