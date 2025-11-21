-- What the sigma?

local v1 = game:GetService("Players")
local v_u_2 = game:GetService("RunService")
game:GetService("HttpService")
local v3 = game:GetService("ReplicatedStorage")
local v4 = script:FindFirstAncestorOfClass("ScreenGui")
local v_u_5 = v4:WaitForChild("CurrentTime")
local v_u_6 = v_u_5:WaitForChild("Weather")
local v_u_7 = v_u_5:WaitForChild("WeatherRed")
local v_u_8 = v_u_5:WaitForChild("WeatherBlue")
local v_u_9 = v4:WaitForChild("ZeroWarning")
local v_u_10 = v3:WaitForChild("Server0o")
local v_u_11 = v1.LocalPlayer
local v_u_12 = nil
local v_u_13 = {
	["RedFullMoon"] = "Unknown"
}
local function v_u_22()
	-- upvalues: (copy) v_u_7, (copy) v_u_8, (copy) v_u_6, (copy) v_u_11, (copy) v_u_9
	if script:GetAttribute("Glitched") then
		local v14 = math.random(0, 3)
		v_u_7.Position = UDim2.fromOffset(-1, -v14)
		v_u_8.Position = UDim2.fromOffset(1, v14)
		local v15 = v_u_6
		local v16 = string.format
		local v17 = math.random
		v15.Text = v16("[ %s ]", (tostring(v17())))
		v_u_7.Text = v_u_6.Text
		v_u_8.Text = v_u_6.Text
	end
	if v_u_11:GetAttribute("ZeroSettingsWarning") then
		local v18 = v_u_9
		local v19 = v_u_11:GetAttribute("AutoEquip")
		local v20 = v_u_11:GetAttribute("SkipWarning")
		local v21 = v_u_11
		v18.Visible = math.min(v19, v20, v21:GetAttribute("SwapWarning")) <= 0
	end
end
local function v24()
	-- upvalues: (copy) v_u_10, (copy) v_u_5, (copy) v_u_6, (ref) v_u_12, (copy) v_u_7, (copy) v_u_8, (copy) v_u_13, (copy) v_u_2, (copy) v_u_22
	local v23 = v_u_10:GetAttribute("CurrentBiome")
	if v_u_10:GetAttribute("CurrentTime") == "Day" then
		v_u_5.Text = "DAYTIME"
		v_u_5.TextColor3 = Color3.fromRGB(255, 251, 137)
	else
		v_u_5.Text = "NIGHTTIME"
		v_u_5.TextColor3 = Color3.fromRGB(129, 71, 255)
	end
	v_u_6.TextColor3 = v_u_10:GetAttribute("BiomeColor")
	if v23 == "Glitched" then
		script:SetAttribute("Glitched", true)
		v_u_12 = v_u_2.RenderStepped:Connect(v_u_22)
		v_u_7.Visible = true
		v_u_8.Visible = true
	else
		script:SetAttribute("Glitched", false)
		if v_u_12 then
			v_u_12:Disconnect()
		end
		v_u_7.Visible = false
		v_u_8.Visible = false
		v_u_6.Text = string.format("[ %s ]", v_u_13[v23] or v23)
	end
end
v24()
v_u_10:GetAttributeChangedSignal("CurrentBiome"):Connect(v24)
v_u_10:GetAttributeChangedSignal("CurrentTime"):Connect(v24)
script.AttributeChanged:Connect(v24)