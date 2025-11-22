-- What the sigma?

local v_u_1 = game:GetService("Debris")
local v2 = game:GetService("Players")
local v_u_3 = game:GetService("TweenService")
local v4 = game:GetService("ReplicatedFirst")
local v5 = game:GetService("TeleportService")
local v6 = v2.LocalPlayer
local v7 = v6:WaitForChild("PlayerGui")
local v_u_8 = v5:GetArrivingTeleportGui()
local function v_u_9()
	-- upvalues: (copy) v_u_3, (copy) v_u_8, (copy) v_u_1
	task.wait(3)
	v_u_3:Create(v_u_8:WaitForChild("ImageLabel"), TweenInfo.new(1, Enum.EasingStyle.Linear), {
		["ImageTransparency"] = 1
	}):Play()
	v_u_3:Create(v_u_8:WaitForChild("ImageLabel"):WaitForChild("Frame"):WaitForChild("UIScale"), TweenInfo.new(1, Enum.EasingStyle.Linear), {
		["Scale"] = 0
	}):Play()
	v_u_1:AddItem(v_u_8, 2)
end
if v_u_8 then
	local v10 = v5:GetLocalPlayerTeleportData()
	if typeof(v10) == "table" then
		v10 = v10[v6.UserId]
	end
	if v10 then
		print(v10)
		v4:SetAttribute("AutorollEnabled", true)
	end
	v4:RemoveDefaultLoadingScreen()
	v4:SetAttribute("Teleported", true)
	v_u_8.Name = math.random()
	v_u_8.Parent = v7
	if workspace:WaitForChild("Terrain"):GetAttribute("IsWaitingServer") then
		return
	end
	if v4:GetAttribute("Remove") then
		v_u_9()
		return
	end
	v4:GetAttributeChangedSignal("Remove"):Once(function()
		-- upvalues: (copy) v_u_9
		v_u_9()
	end)
end