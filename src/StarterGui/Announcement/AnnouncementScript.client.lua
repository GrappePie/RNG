-- What the sigma?

local v1 = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Announcement")
local v_u_2 = script:WaitForChild("Announcement")
local v_u_3 = script:WaitForChild("Shutdown")
local v_u_4 = script:WaitForChild("AnnouncementSound")
local v_u_5 = game:GetService("TweenService")
local v_u_6 = game:GetService("Debris")
local v_u_7 = Tween0o.new(1, Enum.EasingStyle.Quart)
local v_u_8 = Tween0o.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
local v_u_9 = {
	["Position"] = UDim2.fromScale(0.5, 0.1)
}
local v_u_10 = {
	["Position"] = UDim2.fromScale(0.5, -0.3)
}
local v_u_11 = {
	["Position"] = UDim2.fromScale(0.5, 0.1)
}
local function v_u_16(p12, p13)
	-- upvalues: (copy) v_u_2, (copy) v_u_5, (copy) v_u_7, (copy) v_u_9, (copy) v_u_4, (copy) v_u_8, (copy) v_u_10, (copy) v_u_6
	local v14 = script.Parent:FindFirstChild("Announcement")
	if v14 then
		v14:Destroy()
	end
	local v15 = v_u_2:Clone()
	v15.Parent = script.Parent
	v15.Position = UDim2.fromScale(0.5, -0.3)
	v_u_5:Create(v15, v_u_7, v_u_9):Play()
	v_u_4:Play()
	v15.Context.Text = p12
	task.wait(p13)
	if v15 then
		v_u_5:Create(v15, v_u_8, v_u_10):Play()
		v_u_6:AddItem(v15, 1)
	end
end
local function v_u_24(p17, p18)
	-- upvalues: (copy) v_u_3, (copy) v_u_5, (copy) v_u_7, (copy) v_u_11, (copy) v_u_4, (copy) v_u_8, (copy) v_u_10, (copy) v_u_6
	local v19 = tonumber(p18)
	local v20 = script.Parent:FindFirstChild("Shutdown")
	if v20 then
		v20:Destroy()
	end
	local v21 = v_u_3:Clone()
	v21.Parent = script.Parent
	v21.Position = UDim2.fromScale(0.5, -0.3)
	v21.SelectionCorners.ShutdownReason.Text = "Reason: " .. p17
	v_u_5:Create(v21, v_u_7, v_u_11):Play()
	v_u_4:Play()
	local v22 = v21.TimeLeft
	repeat
		local v23 = v19 - os.time()
		v22.Text = string.format("%02i:%02i:%02i", v23 / 3600, v23 / 60 % 60, v23 % 60)
		task.wait(1)
	until v19 <= os.time()
	if v21 then
		v_u_5:Create(v21, v_u_8, v_u_10):Play()
		v_u_6:AddItem(v21, 1)
	end
end
v1.OnClientEvent:Connect(function(p25, p26, p27)
	-- upvalues: (copy) v_u_16, (copy) v_u_24
	if p25 == "Announcement" then
		v_u_16(p26, p27)
	elseif p25 == "Shutdown" then
		v_u_24(p26, p27)
	end
end)