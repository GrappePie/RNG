--!nocheck
local v_u_1 = game:GetService("Lighting")
local v_u_2 = game:GetService("HttpService")
local v_u_3 = game:GetService("TweenService")
local v_u_4 = game:GetService("ReplicatedStorage"):WaitForChild("Server0o")
local v_u_5 = workspace:WaitForChild("Map")
local v_u_6 = v_u_5:WaitForChild("Miscs"):WaitForChild("EffectModel"):WaitForChild("SkyParticles")
local v_u_7 = v_u_5:WaitForChild("Miscs"):WaitForChild("EffectModel"):WaitForChild("FloorParticles")
local v_u_8 = v_u_5:WaitForChild("Miscs"):WaitForChild("EffectModel"):WaitForChild("InParticles")
local v_u_9 = v_u_1:WaitForChild("Atmosphere")
local function v_u_12(p9)
	for v10, v11 in p9 do
		if typeof(v11) == "table" and #v11 == 3 then
			p9[v10] = Color3.new(table.unpack(v11))
		end
	end
	return p9
end
local function v23()
	local v13 = v_u_4:GetAttribute("CurrentBiome")
	local v14 = v_u_12(v_u_2:JSONDecode(v_u_4:GetAttribute("Structures")))
	local v15 = v_u_12(v_u_2:JSONDecode(v_u_4:GetAttribute("Lighting")))
	local v16 = v_u_12(v15.Atmosphere)
	local v17 = Tween0o.new(v15.TweenTime, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
	v15.Atmosphere = nil
	v15.TweenTime = nil
	for v18, v19 in pairs(v14) do
		for _, v20 in ipairs(v_u_5:GetDescendants()) do
			if (v20:IsA("BasePart")) and (v20:HasTag(v18) == true) then
				--print(v18, type(v18), v20.Parent.Name, v20:GetTags(), v20:HasTag(v18))
				v20.Color = v19
			end
		end
	end
	for _, v21 in ipairs(v_u_6:GetChildren()) do
		if v21.Name == "Is" .. v13 then
			v21.Enabled = true
		else
			v21.Enabled = false
		end
	end
	for _, v22 in ipairs(v_u_7:GetChildren()) do
		if v22.Name == "Is" .. v13 then
			v22.Enabled = true
		else
			v22.Enabled = false
		end
	end
	for _, v23 in ipairs(v_u_8:GetChildren()) do
		if v23.Name == "Is" .. v13 then
			v23.Enabled = true
		else
			v23.Enabled = false
		end
	end
	v_u_3:Create(v_u_9, v17, v16):Play()
	v_u_3:Create(v_u_1, v17, v15):Play()
end
v23()
v_u_4:GetAttributeChangedSignal("Lighting"):Connect(v23)
return nil