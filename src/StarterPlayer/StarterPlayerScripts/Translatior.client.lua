-- What the sigma?

local v_u_1 = game:GetService("Players")
local v_u_2 = game:GetService("LocalizationService")
local v_u_3 = v_u_2.SystemLocaleId
local v_u_4, v_u_5 = pcall(function()
	-- upvalues: (copy) v_u_2, (ref) v_u_3
	return v_u_2:GetTranslatorForLocaleAsync(v_u_3)
end)
local function v_u_9(p6)
	-- upvalues: (ref) v_u_4, (copy) v_u_5
	if p6:IsA("TextLabel") then
		if v_u_4 then
			local v7, v8 = pcall(v_u_5.FormatByKey, v_u_5, p6.Text)
			if not v7 then
				warn("\235\178\136\236\151\173\236\157\180 \236\139\164\237\140\168\235\144\152\236\151\136\236\138\181\235\139\136\235\139\164 \236\157\180 \235\169\148\236\139\156\236\167\128\235\165\188 \236\186\161\236\179\144\237\149\180\236\132\156 \236\187\164\235\174\164\235\139\136\237\139\176\236\151\144 \235\172\184\236\157\152\237\149\180\236\163\188\236\132\184\236\154\148 \235\172\184\236\158\144 : " .. p6.Text)
				return
			end
			p6.Text = v8
		end
	end
end
local function v_u_14(p10)
	-- upvalues: (ref) v_u_4, (copy) v_u_5, (copy) v_u_9
	if p10:FindFirstChildOfClass("BillboardGui") then
		for _, v11 in p10:GetDescendants() do
			if v11:IsA("TextLabel") then
				if v_u_4 then
					local v12, v13 = pcall(v_u_5.FormatByKey, v_u_5, v11.Text)
					if v12 then
						v11.Text = v13
					else
						warn("\235\178\136\236\151\173\236\157\180 \236\139\164\237\140\168\235\144\152\236\151\136\236\138\181\235\139\136\235\139\164 \236\157\180 \235\169\148\236\139\156\236\167\128\235\165\188 \236\186\161\236\179\144\237\149\180\236\132\156 \236\187\164\235\174\164\235\139\136\237\139\176\236\151\144 \235\172\184\236\157\152\237\149\180\236\163\188\236\132\184\236\154\148 \235\172\184\236\158\144 : " .. v11.Text)
					end
				end
			end
		end
		p10.DescendantAdded:Connect(v_u_9)
	end
end
local function v_u_20(p15)
	-- upvalues: (copy) v_u_14
	local v16 = p15:WaitForChild("HumanoidRootPart")
	for _, v17 in v16:GetChildren() do
		v_u_14(v17)
	end
	v16.ChildAdded:Connect(v_u_14)
	local v18 = p15:WaitForChild("Torso")
	for _, v19 in v18:GetChildren() do
		v_u_14(v19)
	end
	v18.ChildAdded:Connect(v_u_14)
end
local function v22(p21)
	-- upvalues: (copy) v_u_20
	p21.CharacterAdded:Connect(v_u_20)
end
for _, v23 in v_u_1:GetPlayers() do
	v23.CharacterAdded:Connect(v_u_20)
end
v_u_1.PlayerAdded:Connect(v22)
v_u_2:GetPropertyChangedSignal("SystemLocaleId"):Connect(function()
	-- upvalues: (ref) v_u_3, (copy) v_u_2, (ref) v_u_4, (copy) v_u_1, (copy) v_u_20
	v_u_3 = v_u_2.SystemLocaleId
	local v24, v25 = pcall(function()
		-- upvalues: (ref) v_u_2, (ref) v_u_3
		return v_u_2:GetTranslatorForLocaleAsync(v_u_3)
	end)
	v_u_4 = v24
	translator = v25
	for _, v26 in v_u_1:GetPlayers() do
		v26.CharacterAdded:Connect(v_u_20)
	end
end)