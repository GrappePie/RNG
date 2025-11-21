-- What the sigma?

local v_u_1 = game:GetService("RunService")
local v2 = game:GetService("ReplicatedStorage")
local v3 = v2:WaitForChild("Assets")
local v_u_4 = v3:WaitForChild("Attachments"):WaitForChild("LeaveTime")
local v_u_5 = v3:WaitForChild("Radius")
local v6 = workspace:WaitForChild("AreaBuffGivers")
local v7 = v2:WaitForChild("Modules")
local v_u_8 = require(v7:WaitForChild("Utility"))
local function v23(p9)
	-- upvalues: (copy) v_u_4, (copy) v_u_5, (copy) v_u_1, (copy) v_u_8
	local v10 = v_u_4:Clone()
	local v11 = v_u_5:Clone()
	local v12 = v11:WaitForChild("Attachment")
	local v_u_13 = v10:WaitForChild("LeaveTime"):WaitForChild("TextLabel")
	local v14
	if p9:IsA("BasePart") then
		v14 = p9
	else
		v14 = p9.PrimaryPart
	end
	local v_u_15 = p9:GetAttribute("DespawnTime")
	local v16 = p9:GetAttribute("Radius") * 2
	local v17 = v12:WaitForChild("Range1")
	local v18 = v12:WaitForChild("Range2")
	v11.Parent = p9
	v17.Size = NumberSequence.new(0.5372549019607843 * v16)
	v18.Size = NumberSequence.new(0.7058823529411765 * v16)
	if p9.Name == "StellaCandle" then
		v_u_13:FindFirstChildWhichIsA("UIGradient", true).Color = ColorSequence.new(Color3.fromRGB(106, 99, 162), Color3.fromRGB(126, 85, 162))
	end
	v10.Parent = v14
	v10.Position = Vector3.yAxis * (v14.Size.Y / 2 + 1)
	v11.Position = v14.Position - Vector3.yAxis * (v14.Size.Y / 2 - 0.25)
	local v_u_22 = v_u_1.RenderStepped:Connect(function()
		-- upvalues: (copy) v_u_13, (ref) v_u_8, (copy) v_u_15
		local v19 = v_u_13
		local v20 = v_u_8.ConvertToDHMS
		local v21 = v_u_15 - workspace:GetServerTimeNow()
		v19.Text = ("Despawn in %*"):format((v20((math.floor(v21)))))
	end)
	p9.Destroying:Once(function()
		-- upvalues: (copy) v_u_22
		v_u_22:Disconnect()
	end)
end
for _, v24 in ipairs(v6:GetChildren()) do
	task.spawn(v23, v24)
end
v6.ChildAdded:Connect(v23)