-- What the sigma?

local v1 = game:GetService("Players")
local v2 = game:GetService("ReplicatedStorage")
local v3 = v1.LocalPlayer
local v_u_4 = workspace:WaitForChild("Map"):WaitForChild("Miscs") -- portals
local v5 = require(v2:WaitForChild("ReplicaController"))
local v_u_6 = require(script.Parent.Parent:WaitForChild("Notification"):WaitForChild("Core"))
if not v3:GetAttribute("UID") then
	v3:GetAttributeChangedSignal("UID"):Wait()
end
v5.RequestData()
repeat
	task.wait()
until v5.InitialDataReceived
task.wait(3)
local v7 = v5.GetReplicaById(v3:GetAttribute("UID"))
local function v_u_9()
	-- upvalues: (copy) v_u_4
	for _, v_u_8 in ipairs(v_u_4:GetChildren()) do
		task.defer(function()
			-- upvalues: (copy) v_u_8
			if v_u_8:WaitForChild("SoundPart", 3) then
				v_u_8.SoundPart:WaitForChild("Sound"):Play()
			end
		end)
	end
end
if v7.Data.CaveShortcutUnlocked or v3:GetAttribute("ModMenuAccess") ~= nil then
	v_u_9()
else
	v_u_4.Parent = nil
	local function unlockPortals()
		do	
			v_u_9()
			v_u_4.Parent = workspace
			v_u_6.Create("Portal Unlocked!", "You can now go directly to Stella\'s location using the portal in the cave in the mountain!", 10, "Normal")
		end
	end
	v3:GetAttributeChangedSignal("ModMenuAccess", unlockPortals) -- error if u want it to detect if false or true
	v7:ListenToChange("CaveShortcutUnlocked", unlockPortals)
end