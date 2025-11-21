-- What the sigma?

local v1 = game:GetService("Players")
local v2 = game:GetService("ReplicatedStorage")
local v3 = game:GetService("LocalizationService")
local v4 = v2:WaitForChild("Remotes"):WaitForChild("BiomeServerMessage")
local v_u_5 = v3:GetTranslatorForPlayerAsync(v1.LocalPlayer)
local v_u_6 = require(script.Parent:WaitForChild("ServerMessage"))
v4.OnClientEvent:Connect(function(p7)
	-- upvalues: (copy) v_u_5, (copy) v_u_6
	if p7.Translate ~= false or not p7.Text then
		v_u_5:Translate(game, p7.Text)
	end
	local v8 = v_u_6
	local v9 = p7.TextColor or Color3.new(1, 1, 1)
	local v10 = v9.R * 255
	local v11 = math.round(v10)
	local v12 = v9.G * 255
	local v13 = math.round(v12)
	local v14 = v9.B * 255
	v8("Default", (("<font color=\"rgb(%*)\">%*</font>"):format(("%*, %*, %*"):format(v11, v13, (math.round(v14))), p7.Text)))
end)
return nil