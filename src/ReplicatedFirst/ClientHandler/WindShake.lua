-- What the sigma?

repeat
	task.wait()
until game:IsLoaded()
local v1 = game:GetService("RunService")
local v2 = game:GetService("ReplicatedStorage")
local v_u_3 = {}
local v_u_4 = 0
local v_u_5 = v2:WaitForChild("Server0o")
local function v22(_)
	-- upvalues: (copy) v_u_5, (ref) v_u_4, (copy) v_u_3
	if 0 < v_u_5:GetAttribute("LeaveIntensity") then
		v_u_4 = v_u_4 + v_u_5:GetAttribute("LeaveIntensity") / 10
		for _, v6 in ipairs(v_u_3) do
			local v7 = v6:GetAttribute("Origin")
			local v8 = v6:GetAttribute("XScale")
			local v9 = v6:GetAttribute("YScale")
			local v10 = v6:GetAttribute("ZScale")
			if not v8 then
				v6:SetAttribute("XScale", math.random(30, 50))
			end
			if not v9 then
				v6:SetAttribute("YScale", math.random(30, 50))
			end
			if not v10 then
				v6:SetAttribute("ZScale", math.random(30, 50))
			end
			if v8 then
				if v9 then
					if v10 then
						local v11 = CFrame.Angles
						local v12 = v_u_4 / v8
						local v13 = math.sin(v12) * 3
						local v14 = math.rad(v13)
						local v15 = v_u_4 / v9
						local v16 = math.sin(v15) * 3
						local v17 = math.rad(v16)
						local v18 = v_u_4 / v10
						local v19 = math.sin(v18) * 3
						v6.CFrame = v7 * v11(v14, v17, (math.rad(v19)))
					end
				end
			end
		end
	else
		for _, v20 in ipairs(v_u_3) do
			local v21 = v20:GetAttribute("Origin")
			v20.CFrame = v20.CFrame:Lerp(v21, 0.05)
		end
	end
end
for _, v23 in ipairs(workspace:WaitForChild("Map"):WaitForChild("trees"):GetChildren()) do
	if v23:WaitForChild("Leaves", 2) then
		for _, v24 in ipairs(v23:WaitForChild("Leaves"):GetChildren()) do
			v24:SetAttribute("Origin", v24.CFrame)
			v24:SetAttribute("XScale", math.random(30, 50))
			v24:SetAttribute("YScale", math.random(30, 50))
			v24:SetAttribute("ZScale", math.random(30, 50))
			table.insert(v_u_3, v24)
		end
	end
end
v1.RenderStepped:Connect(v22)
return nil