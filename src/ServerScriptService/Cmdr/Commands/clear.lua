-- What the sigma?

local v_u_1 = game:GetService("Players")
return {
	["Name"] = "clear",
	["Aliases"] = {},
	["Description"] = "Clear all lines above the entry line of the Cmdr window.",
	["Group"] = "DefaultUtil",
	["Args"] = {},
	["ClientRun"] = function()
		-- upvalues: (copy) v_u_1
		local v2 = v_u_1.LocalPlayer
		local v3 = v2:WaitForChild("PlayerGui"):FindFirstChild("AdminPanel")
		if v3 then
			local v4 = v3:WaitForChild("Base"):WaitForChild("Console"):WaitForChild("ConsoleFrame"):WaitForChild("Frame")
			for _, v5 in pairs(v4:GetChildren()) do
				if v5.Name == "Line" and v5:IsA("TextBox") then
					v5:Destroy()
				end
			end
		else
			local v6 = v2:WaitForChild("PlayerGui"):WaitForChild("Cmdr")
			local v7 = v6:WaitForChild("Frame")
			if v6 and v7 then
				for _, v8 in pairs(v7:GetChildren()) do
					if v8.Name == "Line" and v8:IsA("TextBox") then
						v8:Destroy()
					end
				end
			end
		end
		return ""
	end
}