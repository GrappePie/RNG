-- What the sigma?

local v_u_1 = { script.Parent }
local v2 = script.Parent:WaitForChild("Rarity", 2)
if v2 then
	table.insert(v_u_1, v2)
end
local v3 = game:GetService("RunService")
local v_u_4 = 0
local v_u_5 = { Color3.fromRGB(255, 0, 4), Color3.fromRGB(255, 0, 234), Color3.fromRGB(0, 0, 0) }
local v_u_6 = Enum.FontWeight:GetEnumItems()
local v_u_7 = Enum.FontStyle:GetEnumItems()
local v_u_8 = Enum.Font:GetEnumItems()
local v_u_9 = {
	"!",
	"@",
	"#",
	"%",
	"&"
}
local function v_u_14(p10)
	-- upvalues: (copy) v_u_9
	local v11 = string.split(p10, "")
	local v12 = ""
	for v13 = 1, #p10 do
		if math.random(1, 3) == 1 then
			v12 = v12 .. v_u_9[math.random(1, #v_u_9)]
		else
			v12 = v12 .. (math.random(1, 2) == 1 and string.lower(v11[v13]) or string.upper(v11[v13]))
		end
	end
	return v12
end
local function v_u_19(p15)
	local v16 = string.split(p15, "")
	local v17 = ""
	for v18 = 1, #p15 do
		v17 = v17 .. v16[v18]
		if v18 ~= #p15 then
			v17 = v17 .. " "
		end
	end
	return v17
end
v3.RenderStepped:Connect(function(p20)
	-- upvalues: (ref) v_u_4, (copy) v_u_1, (copy) v_u_5, (copy) v_u_14, (copy) v_u_19, (copy) v_u_6, (copy) v_u_7, (copy) v_u_8
	if script.Parent and script:IsDescendantOf(game) then
		v_u_4 = v_u_4 + p20 * 166
		for _, v21 in ipairs(v_u_1) do
			local v22 = v21:FindFirstChildOfClass("UIGradient")
			if v22 then
				v22.Color = ColorSequence.new(v_u_5[math.random(1, 3)], v_u_5[math.random(1, 3)])
			end
			if v21.Name == "Title" then
				v21.Text = v_u_14("AB0M%N@AT1ON")
			elseif v21.Name == "Rarity" then
				v21.Text = v_u_19((v_u_14("UNOBTAINABLE")))
			else
				v21.Text = "Unknown"
			end
			v21.FontFace.Weight = v_u_6[math.random(1, #v_u_6)]
			v21.FontFace.Style = v_u_7[math.random(1, #v_u_7)]
			v21.Font = v_u_8[math.random(1, #v_u_8)]
		end
	end
end)
