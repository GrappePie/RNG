-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2024-12-16 17:22:54
-- Luau version 6, Types version 3
-- Time taken: 0.002232 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Assets = ReplicatedStorage:WaitForChild("Assets")
local AreaGivers = workspace:WaitForChild("Map"):WaitForChild("AreaGivers")
local LeaveTime_upvr = Assets:WaitForChild("Attachments"):WaitForChild("LeaveTime")
local Radius_upvr = Assets:WaitForChild("Radius")
local RunService_upvr = game:GetService("RunService")
local module_upvr = require(ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Utility"))
local function LoadModel(arg1) -- Line 17
	--[[ Upvalues[4]:
		[1]: LeaveTime_upvr (readonly)
		[2]: Radius_upvr (readonly)
		[3]: RunService_upvr (readonly)
		[4]: module_upvr (readonly)
	]]
	local clone_2 = LeaveTime_upvr:Clone()
	local clone = Radius_upvr:Clone()
	local Attachment = clone:WaitForChild("Attachment")
	local TextLabel_upvr = clone_2:WaitForChild("LeaveTime"):WaitForChild("TextLabel")
	local var16
	if arg1:IsA("BasePart") then
		var16 = arg1
	else
		var16 = arg1.PrimaryPart
	end
	local var17 = arg1:GetAttribute("Radius") * 2
	clone.Parent = arg1
	Attachment:WaitForChild("Range1").Size = NumberSequence.new(0.5372549019607843 * var17)
	Attachment:WaitForChild("Range2").Size = NumberSequence.new(0.7058823529411765 * var17)
	if arg1.Name == "StellaCandle" then
		TextLabel_upvr:FindFirstChildWhichIsA("UIGradient", true).Color = ColorSequence.new(Color3.fromRGB(106, 99, 162), Color3.fromRGB(126, 85, 162))
	end
	clone_2.Parent = var16
	clone_2.Position = Vector3.yAxis * (var16.Size.Y / 2 + 1)
	clone.Position = var16.Position - Vector3.yAxis * (var16.Size.Y / 2 - 0.25)
	local DespawnTime_upvr = arg1:GetAttribute("DespawnTime")
	local any_Connect_result1_upvr = RunService_upvr.RenderStepped:Connect(function() -- Line 39
		--[[ Upvalues[4]:
			[1]: DespawnTime_upvr (readonly)
			[2]: TextLabel_upvr (readonly)
			[3]: module_upvr (copied, readonly)
			[4]: arg1 (readonly)
		]]
		if 0 <= DespawnTime_upvr - workspace:GetServerTimeNow() then
			TextLabel_upvr.Text = `Despawn in {module_upvr.ToTimeString2(math.floor(DespawnTime_upvr - workspace:GetServerTimeNow()), 3)}`
		else
			arg1:Destroy()
		end
	end)
	arg1.Destroying:Once(function() -- Line 49
		--[[ Upvalues[1]:
			[1]: any_Connect_result1_upvr (readonly)
		]]
		any_Connect_result1_upvr:Disconnect()
	end)
end
for _, v in ipairs(AreaGivers:GetChildren()) do
	task.spawn(LoadModel, v)
end
AreaGivers.ChildAdded:Connect(LoadModel)
