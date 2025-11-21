-- What the sigma?

game:GetService("RunService")
local v_u_1 = game:GetService("Debris")
local v_u_2 = {
	"!",
	"@",
	"#",
	"$",
	"%",
	"^",
	"&",
	"*",
	"(",
	")",
	"/",
	"`",
	"~"
}
local function v_u_7(p3)
	-- upvalues: (copy) v_u_2
	local v4 = string.split(p3, "")
	local v5 = ""
	for _, v6 in ipairs(v4) do
		v5 = v5 .. (math.random(1, 5) == 1 and v_u_2[math.random(1, #v_u_2)] or math.random(0, 1) == 1 and string.lower(v6) or string.upper(v6))
	end
	return v5
end
local v_u_8 = {
	Color3.fromRGB(255, 0, 174),
	Color3.fromRGB(58, 255, 137),
	Color3.fromRGB(74, 186, 255),
	Color3.fromRGB(255, 0, 0)
}
local function v_u_12(p9)
	-- upvalues: (copy) v_u_8, (copy) v_u_1
	local v10 = math.random(3, 5) / 100
	local v11 = Instance.new("ImageLabel", p9)
	v11.Position = UDim2.fromScale(math.random(0, 100) / 100, math.random(0, 100) / 100)
	v11.ImageColor3 = v_u_8[math.random(1, #v_u_8)]
	v11.Image = "rbxassetid://16850112653"
	v11.AnchorPoint = Vector2.new(0.5, 0.5)
	v11.BorderSizePixel = 0
	v11.BackgroundTransparency = 1
	v11.ImageTransparency = math.random(0, 30) / 100
	v11.Size = UDim2.fromScale(math.random(4, 8) / 10, math.random(1, 3) / 10)
	v_u_1:AddItem(v11, v10)
end
local v_u_13 = game:GetService("RunService")
return function(p_u_14)
	-- upvalues: (copy) v_u_13, (copy) v_u_7, (copy) v_u_12
	local v_u_15 = tick()
	local v_u_16 = game.Players:GetPlayerByUserId(p_u_14:GetAttribute("UserId")).DisplayName
	p_u_14.Rotation = 0
	local v_u_17 = v_u_13.RenderStepped:Connect(function()
		-- upvalues: (ref) v_u_15, (copy) p_u_14, (ref) v_u_7, (copy) v_u_16, (ref) v_u_12
		if tick() - v_u_15 >= Random.new():NextNumber(0, 0.06) then
			v_u_15 = tick()
			p_u_14.Rotation = math.random(-3, 3)
			p_u_14.Text = v_u_7(v_u_16)
			v_u_12(p_u_14)
		end
	end)
	return function()
		-- upvalues: (copy) v_u_17
		v_u_17:Disconnect()
	end
end