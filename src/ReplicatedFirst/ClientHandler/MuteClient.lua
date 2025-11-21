-- What the sigma?

local v1 = game:GetService("Players")
local v2 = game:GetService("TextChatService")
game:GetService("ReplicatedStorage")
local v_u_3 = v1.LocalPlayer
local v_u_4 = v2:WaitForChild("ChatInputBarConfiguration")
local v_u_5 = require(script.Parent:WaitForChild("ServerMessage"))
local function v6()
	-- upvalues: (copy) v_u_3, (copy) v_u_4, (copy) v_u_5
	if v_u_3:GetAttribute("Muted") then
		v_u_4.Enabled = false
		task.spawn(v_u_5, "Default", "<font color=\"rgb(150, 150, 150)\">[SYSTEM]: You\'ve been muted.</font>")
	else
		v_u_4.Enabled = true
	end
end
local function v7()
	-- upvalues: (copy) v_u_3, (copy) v_u_4
	if v_u_3:GetAttribute("Muted") and v_u_4.Enabled then
		v_u_4.Enabled = false
	end
end
if v_u_3:GetAttribute("Muted") then
	v_u_4.Enabled = false
	task.spawn(v_u_5, "Default", "<font color=\"rgb(150, 150, 150)\">[SYSTEM]: You\'ve been muted.</font>")
else
	v_u_4.Enabled = true
end
v_u_4.Changed:Connect(v7)
v_u_3:GetAttributeChangedSignal("Muted"):Connect(v6)
return nil