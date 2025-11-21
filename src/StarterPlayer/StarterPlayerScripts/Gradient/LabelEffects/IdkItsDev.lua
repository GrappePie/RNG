-- What the sigma?

local v_u_1 = {
	[7344703077] = { --ragey
		"[Owner] %s | Testing, Balancing, Planning",
		true,
		Color3.fromRGB(62, 120, 255),
		1
	},
	[419860256] = {
		"[Co-Owner] %s | UI Design, Animating, VFX, Visual, Scripting, Asset, Modelling",
		true,
		Color3.fromRGB(0, 255, 149),
		2
	},
	[1390696522] = {
		"[Sol] %s | VFX, Creator",
		true,
		Color3.fromRGB(255, 214, 110),
		3
	},
	[361208413] = {
		"[Head-Scripter] %s | Scripting",
		false,
		Color3.fromRGB(0, 242, 255),
		4
	},
	[1343308718] = {
		"[Scripter] %s | Scripting",
		false,
		Color3.fromRGB(66, 255, 72),
		5
	},
	[2912484262] = {
		"[Scripter] %s | Scripting",
		false,
		Color3.fromRGB(255, 200, 0),
		6
	},
	[1971714479] = {
		"[Scripter] %s | Scripting",
		false,
		Color3.fromRGB(255, 102, 0),
		7
	},
	[3929062638] = {
		"[Builder] %s | Building, Modelling, VFX",
		false,
		Color3.fromRGB(255, 115, 253),
		8
	},
	[525498778] = {
		"[Modeller/UGC Creator] %s | Building, Modelling",
		false,
		Color3.fromRGB(255, 238, 0),
		9
	},
	[1913463034] = {
		"[Developer] %s | VFX",
		false,
		Color3.fromRGB(0, 0, 0),
		10
	}
}
game:GetService("Players")
return function(p2)
	-- upvalues: (copy) v_u_1
	local v3 = p2:GetAttribute("UserId")
	local v4 = v_u_1[420685792][3] --v_u_1[tonumber(v3)][3]
	local v5 = p2:WaitForChild("UIGradient")
	local v_u_6 = {}
	v5.Color = ColorSequence.new(v4, Color3.new(1, 1, 1))
	v5.Rotation = -90
	return function()
		-- upvalues: (ref) v_u_6
		for _, v7 in ipairs(v_u_6) do
			v7:Destroy()
		end
		table.clear(v_u_6)
		v_u_6 = nil
	end
end