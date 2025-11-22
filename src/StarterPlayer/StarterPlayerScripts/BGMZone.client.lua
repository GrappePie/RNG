local v_u_1 = game:GetService("CollectionService")
local v_u_2 = game:GetService("ReplicatedStorage")
local v_u_3 = game:GetService("Players").LocalPlayer
local v_u_4 = workspace:WaitForChild("BGMS")
local v_u_5 = workspace:WaitForChild("BGMZones")
local v_u_6 = false
local v_u_7 = nil
local v_u_8 = {
	["Name"] = 0
}
local v_u_9 = game:GetService("HttpService"):GenerateGUID(false)
local v_u_10 = game:GetService("SoundService")
local v_u_11 = game:GetService("TweenService")
local v_u_12 = TweenInfo.new(2, Enum.EasingStyle.Linear)
local v_u_13 = nil
local function v_u_22(p14)
	-- upvalues: (copy) v_u_10, (copy) v_u_9, (copy) v_u_4, (copy) v_u_2, (copy) v_u_11, (copy) v_u_12, (copy) v_u_3, (ref) v_u_13
	local v15 = v_u_10:FindFirstChild(v_u_9)
	if not v15 then
		local v16 = v_u_4
		local v17 = v_u_2.ServerInfo:GetAttribute("CurrentTime")
		local v18 = v_u_2.ServerInfo:GetAttribute("CurrentBiome") or v17
		local v19 = "Is%*"
		if v18 == "Normal" then
			v18 = v17 or v18
		end
		v15 = v16:FindFirstChild((v19:format(v18)))
	end
	for _, v20 in ipairs(v_u_10:GetChildren()) do
		if v20 ~= v15 and v20.Name == v_u_9 then
			v20:Destroy()
		end
	end
	if v15 then
		v_u_11:Create(v15, v_u_12, {
			["Volume"] = 0
		}):Play()
		if not v15:IsDescendantOf(v_u_4) then
			task.delay(2, v15.Destroy, v15)
		end
	end
	local v21
	if p14:IsDescendantOf(v_u_4) then
		v21 = v_u_11:Create(p14, v_u_12, {
			["Volume"] = p14:GetAttribute("PlayVolume")
		})
	else
		p14 = p14:Clone()
		p14.Name = v_u_9
		p14.Parent = v_u_10
		p14:AddTag("BGM")
		v21 = v_u_11:Create(p14, v_u_12, {
			["Volume"] = p14.Volume
		})
	end
	p14:SetAttribute("PlayVolume", p14:GetAttribute("PlayVolume") or p14.Volume)
	p14.Volume = 0
	if v_u_3:GetAttribute("ToggleBGM") then
		p14:Resume()
		v21:Play()
	else
		v_u_13 = v21
		p14:Pause()
	end
end
game:GetService("RunService").Heartbeat:Connect(function()
	-- upvalues: (copy) v_u_3, (copy) v_u_5, (ref) v_u_7, (copy) v_u_8, (ref) v_u_6, (copy) v_u_4, (copy) v_u_22, (copy) v_u_2
	if v_u_3.Character and v_u_3.Character:FindFirstChild("Head") then
		task.wait()
		local v23 = 0
		local v24 = nil
		for _, v25 in ipairs(workspace:GetPartsInPart(v_u_3.Character:FindFirstChild("Head"))) do
			if v25.Parent == v_u_5 then
				if v23 <= (v25:GetAttribute("Priority") or 0) then
					v23 = v25:GetAttribute("Priority") or 0
					v24 = v25
				end
			end
		end
		if v24 then
			if v24.Name ~= (v_u_7 or v_u_8).Name then
				v_u_6 = true
				for _, v26 in pairs(v_u_4:GetChildren()) do
					if v26.Playing then
						v26:Pause()
					end
				end
				v_u_7 = v24
				v_u_22(v24:FindFirstChild("CustomSound"))
				v_u_3.Character:SetAttribute("PlayingZone", true)
				return
			end
		elseif v_u_6 then
			v_u_6 = false
			local v27 = v_u_22
			local v28 = v_u_4
			local v29 = v_u_2.ServerInfo:GetAttribute("CurrentTime")
			local v30 = v_u_2.ServerInfo:GetAttribute("CurrentBiome") or v29
			local v31 = "Is%*"
			if v30 == "Normal" then
				v30 = v29 or v30
			end
			v27(v28:FindFirstChild((v31:format(v30))))
			v_u_3.Character:SetAttribute("PlayingZone", false)
			v_u_7 = nil
		end
	end
end)
local function v34()
	-- upvalues: (copy) v_u_3, (copy) v_u_1, (ref) v_u_13
	local v32 = v_u_3:GetAttribute("ToggleBGM")
	for _, v33 in ipairs(v_u_1:GetTagged("BGM")) do
		if v33:IsA("Sound") then
			if v32 then
				if v_u_13 and v_u_13.Instance == v33 then
					v_u_13:Play()
				end
				v33:Resume()
			else
				v33:Pause()
			end
		end
	end
end
v34()
v_u_3:GetAttributeChangedSignal("ToggleBGM"):Connect(v34)