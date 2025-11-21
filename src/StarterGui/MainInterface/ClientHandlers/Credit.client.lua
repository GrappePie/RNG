-- What the sigma?

local v1 = {
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
local v2 = game:GetService("UserService")
local v3 = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("MainInterface")
local v_u_4 = v3:WaitForChild("Credit")
local v_u_5 = v_u_4:WaitForChild("ScrollingFrame")
local v_u_6 = script:WaitForChild("Big")
local v_u_7 = script:WaitForChild("Regular")
local v8 = v_u_4:WaitForChild("Close")
local v9 = v3:WaitForChild("SettingsFrame"):WaitForChild("SettingsButtons"):WaitForChild("Line4"):WaitForChild("Credit"):WaitForChild("Button")
local v10 = game:GetService("ReplicatedStorage"):WaitForChild("Modules")
local v11 = require(v10:WaitForChild("Utility"))
local v_u_12 = require(v10:WaitForChild("CoreModules"):WaitForChild("ClientBasedFunctions"))
local v13 = v11.GetKeys(v1)
local v14 = v11.TryUntilSuccess(v2.GetUser0osByUserIdsAsync, v2, v13)
local function v28(p15, p16, p17, p18)
	-- upvalues: (copy) v_u_6, (copy) v_u_7, (copy) v_u_5
	local v19 = p16 and v_u_6:Clone() or v_u_7:Clone()
	v19.Parent = v_u_5
	v19.LayoutOrder = p18
	local v20 = v19:WaitForChild("Base")
	local v21 = v20:WaitForChild("DevName")
	v21.Text = p15
	local v22 = Instance.new("UIGradient", v21)
	v22.Color = ColorSequence.new(p17, Color3.new(1, 1, 1))
	v22.Rotation = -90
	v20:WaitForChild("GradientBase").BackgroundColor3 = p17
	local v23 = v20:WaitForChild("SelectionCorners")
	v23:WaitForChild("LeftDown"):WaitForChild("Corner1").BackgroundColor3 = p17
	v23:WaitForChild("RightDown"):WaitForChild("Corner1").BackgroundColor3 = p17
	local v24 = v23:WaitForChild("RightBase")
	local v25 = Instance.new("UIGradient", v24)
	v25.Color = ColorSequence.new(p17, Color3.new(1, 1, 1))
	v25.Rotation = -90
	local v26 = v23:WaitForChild("LeftBase")
	local v27 = Instance.new("UIGradient", v26)
	v27.Color = ColorSequence.new(p17, Color3.new(1, 1, 1))
	v27.Rotation = -90
end
for _, v29 in ipairs(v14) do
	local v30 = v1[v29.Id]
	if v29.Username == v29.DisplayName then
		v30[1] = v30[1]:format((("@%*"):format(v29.Username)))
	else
		v30[1] = v30[1]:format((("%*(@%*)"):format(v29.DisplayName, v29.Username)))
	end
	task.defer(v28, table.unpack(v30))
end
v9.MouseButton1Click:Connect(function()
	-- upvalues: (copy) v_u_4, (copy) v_u_12
	if not v_u_4.Visible then
		v_u_12.CloseAllWindows()
	end
	v_u_4.Visible = not v_u_4.Visible
end)
v8.MouseButton1Click:Connect(function()
	-- upvalues: (copy) v_u_4
	v_u_4.Visible = false
end)
v_u_12.LoadButtonEffects(v9)
v_u_12.LoadButtonEffects(v8, 1)