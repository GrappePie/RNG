-- What the sigma?

local v1 = game:GetService("Players")
local v2 = game:GetService("TextChatService")
local v3 = game:GetService("ReplicatedStorage")
local v_u_4 = v1.LocalPlayer
local v5 = v3:WaitForChild("Remotes"):WaitForChild("ServerMessage")
local v6 = v3:WaitForChild("Events"):WaitForChild("ServerMessage")
local v_u_7 = v3:WaitForChild("Assets"):WaitForChild("SFXs")
local v_u_8 = v2:WaitForChild("TextChannels"):WaitForChild("RBXGeneral")
local function v12(p9, p10, p11)
	-- upvalues: (copy) v_u_4, (copy) v_u_7, (copy) v_u_8
	if p9 == "Rarity" and p11 then
		if v_u_4:GetAttribute("ServerMessageSFX") then
			if 99999999 <= p11 then
				v_u_7.HundredMillion1:Play()
				v_u_7.HundredMillion2:Play()
			elseif 9999999 <= p11 then
				v_u_7.ExoticRoll.TimePosition = 0.7
				v_u_7.ExoticRoll:Play()
				v_u_7.DeepImpact:Play()
			elseif 999999 <= p11 then
				v_u_7.ExoticRoll.TimePosition = 0.7
				v_u_7.ExoticRoll:Play()
				v_u_7.ExoticRoll2:Play()
			elseif 10000 <= p11 then
				v_u_7.EpicRoll:Play()
			elseif 1000 <= p11 then
				v_u_7.ServerSFX2:Play()
			end
		end
	elseif p9 == "Default" then
		p10 = p10:gsub("%[Tip%]:", "<font color=\"rgb(80, 255, 49)\">[Tip]:</font>"):gsub("%[GLOBAL%]:", "<font color=\"rgb(35, 35, 255)\">[GLOBAL]:</font>")
	end
	v_u_8:DisplaySystemMessage(p10)
end
v5.OnClientEvent:Connect(v12)
v6.Event:Connect(v12)
return v12