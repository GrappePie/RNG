-- What the sigma?

local v1 = game:GetService("RunService")
local v_u_2 = game:GetService("UserService")
local v3 = workspace:WaitForChild("Map"):WaitForChild("Leaderboards"):GetChildren()
local v_u_4 = {}
local function v_u_19(p5)
	-- upvalues: (copy) v_u_2
	if p5:GetAttribute("IsBoard") then
		local v6 = {}
		local v7 = {}
		local v_u_8 = p5:WaitForChild("Leaderboard"):WaitForChild("SurfaceGui"):WaitForChild("Frame")
		local v_u_9 = v_u_8:GetAttribute("FullLength") + 2
		if #v_u_8:GetChildren() < v_u_9 then
			local v_u_10 = nil
			local v_u_11 = coroutine.running()
			v_u_10 = v_u_8.ChildAdded:Connect(function()
				-- upvalues: (copy) v_u_8, (copy) v_u_9, (copy) v_u_11, (ref) v_u_10
				if v_u_9 <= #v_u_8:GetChildren() then
					task.defer(v_u_11)
					v_u_10:Disconnect()
					v_u_10 = nil
				end
			end)
			task.delay(5, function()
				-- upvalues: (ref) v_u_10, (copy) v_u_11
				if v_u_10 then
					task.defer(v_u_11)
					v_u_10:Disconnect()
					v_u_10 = nil
				end
			end)
			coroutine.yield()
		end
		for _, v12 in ipairs(v_u_8:GetChildren()) do
			local v13 = v12:GetAttribute("UserId")
			if v13 then
				local v14 = tonumber(v13)
				table.insert(v7, v14)
				v6[v14] = v12
			end
		end
		local v16 = nil  -- Initialize v16 here
		repeat
			local v15, v16_attempt = pcall(v_u_2.GetUserInfosByUserIdsAsync, v_u_2, v7)
			v16 = v16_attempt
			if not v15 then
				task.wait(1)
			end
		until v15
		for _, v18 in ipairs(v16) do
			v6[v18.Id]:WaitForChild("Username").Text = v18.Username
			v6[v18.Id].Name = v18.Username
		end
		table.clear(v6)
		table.clear(v7)
		table.clear(v16)
	end
end
local function v24(p_u_20)
	-- upvalues: (copy) v_u_4, (copy) v_u_19
	if p_u_20:GetAttribute("IsBoard") then
		local v_u_21 = p_u_20:WaitForChild("Leaderboard"):WaitForChild("SurfaceGui"):WaitForChild("Frame"):WaitForChild("Timer")
		local v22 = v_u_4
		table.insert(v22, v_u_21)
		local function v23()
			-- upvalues: (copy) v_u_21, (ref) v_u_19, (copy) p_u_20
			if v_u_21:GetAttribute("BoardLoaded") then
				v_u_19(p_u_20)
			end
		end
		task.spawn(v23)
		v_u_21:GetAttributeChangedSignal("BoardLoaded"):Connect(v23)
	end
end
v1.RenderStepped:Connect(function()
	-- upvalues: (copy) v_u_4
	workspace:GetServerTimeNow()
	for _, v25 in ipairs(v_u_4) do
		local v26 = v25:GetAttribute("UpdateTime")
		if v26 then
			local v27 = v26 - workspace:GetServerTimeNow()
			if 0 < v27 then
				v25.Text = ("Refresh in %d"):format(math.floor(v27))
			else
				v25.Text = "Updating..."
			end
		else
			v25.Text = "Loading..."
		end
	end
end)
for _, v28 in ipairs(v3) do
	task.spawn(v24, v28)
end
return nil
