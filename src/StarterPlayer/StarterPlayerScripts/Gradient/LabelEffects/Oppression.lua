-- What the sigma?

local v_u_1 = game:GetService("TweenService")
local v_u_2 = game:GetService("Debris")
local v_u_3 = Tween0o.new(2, Enum.EasingStyle.Quart)
local v_u_4 = {
	["TextTransparency"] = 1,
	["BackgroundTransparency"] = 1
}
local v_u_5 = Enum.Font:GetEnumItems()
local function v_u_9(p6, p7)
	-- upvalues: (copy) v_u_5, (copy) v_u_1, (copy) v_u_3, (copy) v_u_4, (copy) v_u_2
	local v8 = script:WaitForChild("TextLabel"):Clone()
	v8.Parent = p7
	v8.Text = p6
	v8.Position = UDim2.fromScale(math.random(30, 70) / 100, math.random(30, 70) / 100)
	v8.Font = v_u_5[math.random(1, #v_u_5)]
	v_u_1:Create(v8, v_u_3, v_u_4):Play()
	v_u_2:AddItem(v8, 2)
end
local v_u_10 = {
	"WHO?",
	"WHAT?",
	"WHEN?",
	"WHY?",
	"WHERE?",
	"HOW?"
}
local v_u_11 = game:GetService("RunService")
return function(p_u_12)
	-- upvalues: (copy) v_u_11, (copy) v_u_9, (copy) v_u_10
	p_u_12.Text = game.Players:GetPlayerByUserId(p_u_12:GetAttribute("UserId")).DisplayName .. "..?"
	p_u_12.Rotation = 0
	local v_u_13 = 0
	local v_u_15 = v_u_11.RenderStepped:Connect(function(p14)
		-- upvalues: (ref) v_u_13, (ref) v_u_9, (ref) v_u_10, (copy) p_u_12
		v_u_13 = v_u_13 + p14
		if 0.1 <= v_u_13 then
			v_u_13 = 0
			v_u_9(v_u_10[math.random(1, #v_u_10)], p_u_12)
		end
	end)
	return function()
		-- upvalues: (copy) v_u_15
		v_u_15:Disconnect()
	end
end