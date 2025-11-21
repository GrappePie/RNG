-- What the sigma?

local v_u_1 = {}
local v_u_2 = {}
v_u_2.__index = v_u_2
v_u_1.ConsoleGuide = v_u_2
local v3 = {}
v_u_1.ButtonGuide = v3
v_u_1.Actions = {}
local v_u_4 = {
	["ButtonA"] = "rbxassetid://16531816039",
	["ButtonB"] = "rbxassetid://16532739806",
	["ButtonX"] = "rbxassetid://16532738159",
	["ButtonY"] = "rbxassetid://16532737967",
	["ButtonStart"] = "rbxassetid://16532738322",
	["ButtonSelect"] = "rbxassetid://16532738483",
	["ButtonR1"] = "rbxassetid://16533996470",
	["ButtonR2"] = "rbxassetid://16533996648",
	["ButtonR3"] = "rbxassetid://16532738848",
	["ButtonL1"] = "rbxassetid://16533996816",
	["ButtonL2"] = "rbxassetid://16533996981",
	["ButtonL3"] = "rbxassetid://16532739141",
	["DPadUp"] = "rbxassetid://16532739301",
	["DPadRight"] = "rbxassetid://16532739431",
	["DPadLeft"] = "rbxassetid://16532739569",
	["DPadDown"] = "rbxassetid://16532739706"
}
local v_u_5 = game:GetService("UserInputService")
local v_u_6 = v_u_5.GamepadEnabled
local v_u_7 = Enum.KeyCode
local v_u_8 = {
	["ButtonR2"] = v_u_7.ButtonR2,
	["ButtonL2"] = v_u_7.ButtonL2,
	["ButtonY"] = v_u_7.ButtonY,
	["ButtonB"] = v_u_7.ButtonB,
	["ButtonA"] = v_u_7.ButtonA,
	["ButtonR3"] = v_u_7.ButtonR3,
	["DPadRight"] = v_u_7.DPadRight,
	["DPadLeft"] = v_u_7.DPadLeft,
	["DPadUp"] = v_u_7.DPadUp,
	["DPadDown"] = v_u_7.DPadDown
}
local v_u_9 = script:WaitForChild("GuideFrame")
local v_u_10 = script:WaitForChild("ConsoleUI")
function v_u_2.new(p11)
	-- upvalues: (copy) v_u_10, (copy) v_u_2
	local v12 = v_u_10:Clone()
	v12.Parent = p11
	local v13 = v_u_2
	local v14 = setmetatable(v13, {})
	v14.ConsoleUI = v12
	v14.Screen = p11
	return v14
end
function v_u_2.Set(p15, p16)
	-- upvalues: (copy) v_u_9, (copy) v_u_2
	for _, v17 in p15.ConsoleUI:GetChildren() do
		if v17:IsA(v_u_9.ClassName) then
			v17:Destroy()
		end
	end
	for _, v18 in p16 do
		v_u_2:Add(v18)
	end
end
function v_u_2.Add(p19, p20)
	-- upvalues: (copy) v_u_2, (copy) v_u_9, (copy) v_u_4
	v_u_2:Remove(p20.Key)
	local v21 = v_u_9:Clone()
	v21.Name = p20.Key
	v21.GuideText.Text = p20.Name
	v21.ImageLabel.Image = v_u_4[p20.Key]
	v21.Size = UDim2.fromOffset(0, p19.Screen.AbsoluteSize.Y * 0.025)
	v21.UIListLayout.Padding = UDim.new(0, p19.Screen.AbsoluteSize.Y * 0.008333333333333333)
	v21.Parent = p19.ConsoleUI
end
function v_u_2.Remove(p22, p23)
	local v24 = p22.ConsoleUI:FindFirstChild(p23)
	if v24 then
		v24:Destroy()
	end
end
function v3.Set(_, p_u_25, p26, p27)
	-- upvalues: (copy) v_u_7, (copy) v_u_6, (copy) v_u_5, (copy) v_u_1
	local v28 = v_u_7[p26]
	if v_u_7[p26] then
		if v_u_6 then
			local v29 = Instance.new("ImageLabel", p_u_25)
			v29.Size = UDim2.new(0.8, 0, 0.8, 0)
			v29.SizeConstraint = Enum.SizeConstraint.RelativeYY
			v29.AnchorPoint = Vector2.new(0.8, 0.8)
			v29.Position = UDim2.fromScale(1, 1)
			v29.BackgroundTransparency = 1
			v29.Image = v_u_5:GetImageForKeyCode(v28)
			v29.Name = "Icon"
			local v_u_30 = v_u_1.Actions[p26]
			if not v_u_30 then
				v_u_30 = {}
				v_u_1.Actions[p26] = v_u_30
			end
			v_u_30[p_u_25] = p27
			p_u_25.Destroying:Once(function()
				-- upvalues: (ref) v_u_30, (copy) p_u_25
				v_u_30[p_u_25] = nil
			end)
		end
	else
		warn(p26 .. " is not vaild of member of KeyCode")
		return
	end
end
v_u_5.InputBegan:Connect(function(p31, _)
	-- upvalues: (copy) v_u_1, (copy) v_u_8
	for v32, v33 in v_u_1.Actions do
		if v_u_8[v32].Name ~= p31.KeyCode.Name then
			return
		end
		for v34, v35 in v33 do
			if v34.Active and v34.Visible then
				v35()
			end
		end
	end
end)
return v_u_1