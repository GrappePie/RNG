-- What the sigma?

local v_u_1 = {
	["251"] = { Color3.fromRGB(0, 255, 204), "\226\152\133Owner\226\152\133" },
	["255"] = { Color3.fromRGB(84, 255, 127), "Sol" },
	["253"] = { Color3.fromRGB(67, 127, 255), "Developer" },
	["245"] = { Color3.fromRGB(233, 30, 99), "Admin" },
	["240"] = { Color3.fromRGB(80, 197, 81), "Tester" },
	["243"] = { Color3.fromRGB(178, 83, 255), "Moderator" },
	["235"] = { Color3.fromRGB(255, 64, 67), "Content Creator" },
	["1"] = { Color3.fromRGB(255, 128, 0), "Fan" }
}
local v2 = game:GetService("TextChatService")
local v_u_3 = game:GetService("Players")
function v2.OnIncomingMessage(p4)
	-- upvalues: (copy) v_u_3, (copy) v_u_1
	if p4.TextSource then
		local v5 = v_u_3:GetPlayerByUserId(p4.TextSource.UserId)
		if v5 then
			local v6 = v5:GetAttribute("HasVIP")
			v5:GetAttribute("Donated")
			local v7 = v_u_1
			local v8 = v5:GetAttribute("GroupRank") or 0
			local v9 = v7[tostring(v8)] or nil
			local v10 = Instance.new("TextChatMessageProperties")
			p4.PrefixText = v5.DisplayName .. ":"
			if v9 then
				local v11 = v9[1].R * 255
				local v12 = math.floor(v11)
				local v13 = v9[1].G * 255
				local v14 = math.floor(v13)
				local v15 = v9[1].B * 255
				local v16 = ("%*, %*, %*"):format(v12, v14, (math.floor(v15)))
				local v17 = v10.PrefixText
				local v18 = v9[2]
				v10.PrefixText = v17 .. "<font color=\'rgb(" .. v16 .. ")\'>[" .. v18 .. "]</font> "
			end
			if v6 then
				v10.PrefixText = v10.PrefixText .. "<font color=\'rgb(255, 218, 8)\'>[VIP]</font> "
			end
			v10.PrefixText = v10.PrefixText .. p4.PrefixText
			return v10
		end
	end
end