-- What the sigma?

local function v6(p1)
	local v2 = string.split(p1, "")
	local v3 = ""
	for v4 = 1, #p1 do
		if v2[v4] == " " then
			v3 = v3 .. " "
		else
			local v5 = math.random(1, 2) == 1 and "<font color=\"rgb(0,0,0)\">%s</font>" or "<font color=\"rgb(255,255,255)\">%s</font>"
			v3 = v3 .. string.format(v5, math.random(1, 2) == 1 and string.lower(v2[v4]) or string.upper(v2[v4]))
		end
	end
	return v3
end
local v7 = script.Parent
local v8 = script.Parent:WaitForChild("Rarity", 1)
game:GetService("RunService")
v7.RichText = true
if v8 then
	v8.RichText = true
end
local function v_u_11(p9)
	-- upvalues: (copy) v_u_11
	if p9 then
		if p9:IsA("GuiObject") then
			if p9.Visible then
				return v_u_11(p9.Parent)
			else
				return false
			end
		else
			if p9:IsA("ScreenGui") then
				return p9.Enabled
			end
			if not p9:IsA("BillboardGui") then
				return true
			end
			local v10 = p9.Enabled
			if v10 then
				v10 = p9:IsDescendantOf(workspace)
			end
			return v10
		end
	else
		return false
	end
end
while game:GetService("RunService").Heartbeat:Wait() and script.Parent and not script.Parent.Parent:IsA("Folder") do
	if v_u_11(v7) then
		v7.Text = v6("[ O P P R E S S I O N ]")
		if v8 then
			v8.Text = v6("[ 1 in 220,000,000 ]")
		end
	end
end