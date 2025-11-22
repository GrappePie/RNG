-- What the sigma?

local v1 = Color3.new(1, 1, 1)
local v2 = NumberSequence.new(10)
local v3 = NumberRange.new(0.8)
local v4 = NumberSequence.new({ NumberSequenceKeypoint.new(0, 5.33, 2.75), NumberSequenceKeypoint.new(1, 5.33, 2.75) })
local v5 = NumberRange.new(0.8)
local v6 = NumberRange.new(0, 360)
local v7 = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.4, 3), NumberSequenceKeypoint.new(1, 0) })
local v8 = NumberRange.new(0.1, 0.15)
local v9 = NumberRange.new(0, 360)
local v10 = Vector2.new(10, 10)
local v_u_11 = {
	["None"] = 0,
	["Whitelist"] = 1,
	["Blacklist"] = 2,
	["Function"] = 3
}
local v_u_12 = game:GetService("Players")
local v_u_13 = game:GetService("TweenService")
local v_u_14 = game:GetService("RunService")
local v_u_15 = Instance.new("NumberValue")
v_u_15.Value = 1
local v_u_16 = {}
local v_u_17 = true
local v_u_18 = Vector3.new(0, -1, 0)
local v_u_19 = nil
local v_u_20 = v_u_11.None
local v_u_21 = nil
local v_u_22 = nil
local v_u_23 = 1
local v_u_24 = 1
local v_u_25 = 0
local v_u_26 = 0
local v_u_27 = 0
local v_u_28 = Vector3.new
local v_u_29 = NumberSequenceKeypoint.new(0, 1, 0)
local v_u_30 = NumberSequenceKeypoint.new(1, 1, 0)
local v_u_31 = {}
for _, v32 in pairs({
	Vector3.new(0.14142136, 0, 0.14142136),
	Vector3.new(-0.14142136, 0, 0.14142136),
	Vector3.new(-0.14142136, 0, -0.14142136),
	Vector3.new(0.14142136, 0, -0.14142136),
	Vector3.new(0.4, 0, 0),
	Vector3.new(0.28284273, 0, 0.28284273),
	Vector3.new(0.000000000000000024492937, 0, 0.4),
	Vector3.new(-0.28284273, 0, 0.28284273),
	Vector3.new(-0.4, 0, 0.000000000000000048985874),
	Vector3.new(-0.28284273, 0, -0.28284273),
	Vector3.new(-0.000000000000000073478805, 0, -0.4),
	Vector3.new(0.28284273, 0, -0.28284273),
	Vector3.new(0.6, 0, 0),
	Vector3.new(0.4854102, 0, 0.35267115),
	Vector3.new(0.1854102, 0, 0.57063395),
	Vector3.new(-0.1854102, 0, 0.57063395),
	Vector3.new(-0.4854102, 0, 0.35267115),
	Vector3.new(-0.6, 0, 0.00000000000000007347881),
	Vector3.new(-0.4854102, 0, -0.35267115),
	Vector3.new(-0.1854102, 0, -0.57063395),
	Vector3.new(0.1854102, 0, -0.57063395),
	Vector3.new(0.4854102, 0, -0.35267115),
	Vector3.new(0.77274066, 0, 0.20705524),
	Vector3.new(0.56568545, 0, 0.56568545),
	Vector3.new(0.20705524, 0, 0.77274066),
	Vector3.new(-0.20705524, 0, 0.77274066),
	Vector3.new(-0.56568545, 0, 0.56568545),
	Vector3.new(-0.77274066, 0, 0.20705524),
	Vector3.new(-0.77274066, 0, -0.20705524),
	Vector3.new(-0.56568545, 0, -0.56568545),
	Vector3.new(-0.20705524, 0, -0.77274066),
	Vector3.new(0.20705524, 0, -0.77274066),
	Vector3.new(0.56568545, 0, -0.56568545),
	Vector3.new(0.77274066, 0, -0.20705524)
}) do
	local v33 = v32 * 35
	table.insert(v_u_31, v33)
end
table.sort(v_u_31, function(p34, p35)
	return p34.magnitude < p35.magnitude
end)
local v_u_36 = Instance.new("SoundGroup")
v_u_36.Name = "__RainSoundGroup"
v_u_36.Volume = 0.2
v_u_36.Archivable = false
local v_u_37 = Instance.new("Sound")
v_u_37.Name = "RainSound"
v_u_37.Volume = v_u_27
v_u_37.SoundId = "rbxassetid://1516791621"
v_u_37.Looped = true
v_u_37.SoundGroup = v_u_36
v_u_37.Parent = v_u_36
v_u_37.Archivable = false
local v_u_38 = Instance.new("Part")
v_u_38.Transparency = 1
v_u_38.Anchored = true
v_u_38.CanCollide = false
v_u_38.Locked = false
v_u_38.Archivable = false
v_u_38.TopSurface = Enum.SurfaceType.Smooth
v_u_38.BottomSurface = Enum.SurfaceType.Smooth
v_u_38.Name = "__RainEmitter"
v_u_38.Size = Vector3.new(0.05, 0.05, 0.05)
v_u_38.Archivable = false
local v39 = Instance.new("ParticleEmitter")
v39.Name = "RainStraight"
v39.LightEmission = 0.05
v39.LightInfluence = 0.9
v39.Size = v2
v39.Texture = "rbxassetid://1822883048"
v39.LockedToPart = true
v39.Enabled = false
v39.Lifetime = v3
v39.Rate = 600
v39.Speed = NumberRange.new(60)
v39.EmissionDirection = Enum.NormalId.Bottom
v39.Parent = v_u_38
v39.Orientation = Enum.ParticleOrientation.FacingCameraWorldUp
local v40 = Instance.new("ParticleEmitter")
v40.Name = "RainTopDown"
v40.LightEmission = 0.05
v40.LightInfluence = 0.9
v40.Size = v4
v40.Texture = "rbxassetid://1822856633"
v40.LockedToPart = true
v40.Enabled = false
v40.Rotation = v6
v40.Lifetime = v5
v40.Rate = 600
v40.Speed = NumberRange.new(60)
v40.EmissionDirection = Enum.NormalId.Bottom
v40.Parent = v_u_38
local v_u_41 = {}
local v_u_42 = {}
for _ = 1, 20 do
	local v43 = Instance.new("Attachment")
	v43.Name = "__RainSplashAttachment"
	local v44 = Instance.new("ParticleEmitter")
	v44.LightEmission = 0.05
	v44.LightInfluence = 0.9
	v44.Size = v7
	v44.Texture = "rbxassetid://1822856633"
	v44.Rotation = v9
	v44.Lifetime = v8
	v44.Transparency = NumberSequence.new({
		v_u_29,
		NumberSequenceKeypoint.new(0.25, 0.6, 0),
		NumberSequenceKeypoint.new(0.75, 0.6, 0),
		v_u_30
	})
	v44.Enabled = false
	v44.Rate = 0
	v44.Speed = NumberRange.new(0)
	v44.Name = "RainSplash"
	v44.Parent = v43
	v43.Archivable = false
	local v45 = v_u_41
	table.insert(v45, v43)
	local v46 = Instance.new("Attachment")
	v46.Name = "__RainOccludedAttachment"
	local v47 = v_u_38.RainStraight:Clone()
	v47.Speed = NumberRange.new(70, 100)
	v47.SpreadAngle = v10
	v47.LockedToPart = false
	v47.Enabled = false
	v47.Parent = v46
	local v48 = v_u_38.RainTopDown:Clone()
	v48.Speed = NumberRange.new(70, 100)
	v48.SpreadAngle = v10
	v48.LockedToPart = false
	v48.Enabled = false
	v48.Parent = v46
	v46.Archivable = false
	local v49 = v_u_42
	table.insert(v49, v46)
end
local v_u_50 = { v_u_38 }
local v_u_66 = {
	[v_u_11.None] = function(p51, p52)
		-- upvalues: (ref) v_u_38, (copy) v_u_12, (copy) v_u_50
		local v53 = workspace
		if p52 then
			v56 = {}
			local v54 = v_u_38
			local v55 = v_u_12.LocalPlayer
			if v55 then
				v55 = v_u_12.LocalPlayer.Character
			end
			--__set_list(v56, 1, {v54, v55})
			if v56 then
				--::l5::
				return v53:FindPartOnRayWithIgnoreList(p51, v56)
			end
		end
		local v56 = v_u_50
		--goto l5
	end,
	[v_u_11.Blacklist] = function(p57)
		-- upvalues: (ref) v_u_21
		return workspace:FindPartOnRayWithIgnoreList(p57, v_u_21)
	end,
	[v_u_11.Whitelist] = function(p58)
		-- upvalues: (ref) v_u_21
		return workspace:FindPartOnRayWithWhitelist(p58, v_u_21)
	end,
	[v_u_11.Function] = function(p59)
		-- upvalues: (copy) v_u_50, (ref) v_u_22
		local v60 = p59.Origin + p59.Direction
		while true do
			if 0.001 >= p59.Direction.magnitude then
				return
			end
			local v61, v62, v63, v64 = workspace:FindPartOnRayWithIgnoreList(p59, v_u_50)
			if not v61 or v_u_22(v61) then
				return v61, v62, v63, v64
			end
			local v65 = v62 + p59.Direction.Unit * 0.001
			p59 = Ray.new(v65, v60 - v65)
		end
	end
}
local v_u_67 = v_u_66[v_u_20]
local function v_u_117()
	-- upvalues: (ref) v_u_16, (copy) v_u_14, (ref) v_u_67, (ref) v_u_18, (ref) v_u_19, (ref) v_u_27, (ref) v_u_17, (copy) v_u_13, (copy) v_u_37, (ref) v_u_38, (copy) v_u_28, (copy) v_u_29, (ref) v_u_23, (copy) v_u_30, (ref) v_u_24, (ref) v_u_42, (copy) v_u_31, (ref) v_u_26, (ref) v_u_41, (ref) v_u_25
	local v_u_68 = Random.new()
	local v_u_69 = true
	local v_u_70 = 6
	local v71 = v_u_16
	local v72 = v_u_14.RenderStepped
	local function v80()
		-- upvalues: (ref) v_u_67, (ref) v_u_18, (ref) v_u_19, (ref) v_u_27, (ref) v_u_17, (ref) v_u_13, (ref) v_u_37, (ref) v_u_70, (ref) v_u_38, (ref) v_u_28, (ref) v_u_69
		local v73, _ = v_u_67(Ray.new(workspace.CurrentCamera.CFrame.p, -v_u_18 * 1000), true)
		if v_u_19 and workspace.CurrentCamera.CFrame.p.y > v_u_19 or v73 then
			v_u_38.RainStraight.Enabled = false
			v_u_38.RainTopDown.Enabled = false
			v_u_69 = true
		else
			if v_u_27 < 1 and not v_u_17 then
				v_u_27 = 1
				v_u_13:Create(v_u_37, TweenInfo.new(0.5), {
					["Volume"] = 1
				}):Play()
			end
			v_u_70 = 6
			local v74 = workspace.CurrentCamera.CFrame.lookVector:Dot(v_u_18)
			local v75 = math.abs(v74)
			local v76 = workspace.CurrentCamera.CFrame.p
			local v77 = workspace.CurrentCamera.CFrame.lookVector:Cross(-v_u_18)
			local v78 = 0.001 < v77.magnitude and v77.unit or -v_u_18
			local v79 = v_u_18:Cross(v78).unit
			v_u_38.Size = v_u_28(40, 40, 40 + (1 - v75) * 60)
			v_u_38.CFrame = CFrame.new(v76.x, v76.y, v76.z, v78.x, -v_u_18.x, v79.x, v78.y, -v_u_18.y, v79.y, v78.z, -v_u_18.z, v79.z) + (1 - v75) * workspace.CurrentCamera.CFrame.lookVector * v_u_38.Size.Z / 3 - v75 * v_u_18 * 20
			v_u_38.RainStraight.Enabled = true
			v_u_38.RainTopDown.Enabled = true
			v_u_69 = false
		end
	end
	table.insert(v71, v72:connect(v80))
	local v81 = v_u_14:IsRunning() and v_u_14.Stepped or v_u_14.RenderStepped
	local v82 = v_u_16
	local function v116()
		-- upvalues: (ref) v_u_70, (ref) v_u_18, (ref) v_u_29, (ref) v_u_23, (ref) v_u_30, (ref) v_u_24, (ref) v_u_69, (ref) v_u_42, (ref) v_u_17, (ref) v_u_19, (ref) v_u_31, (ref) v_u_67, (ref) v_u_27, (ref) v_u_13, (ref) v_u_37, (ref) v_u_38, (ref) v_u_26, (ref) v_u_41, (copy) v_u_68, (ref) v_u_28, (ref) v_u_25
		v_u_70 = v_u_70 + 1
		if 6 <= v_u_70 then
			local v83 = workspace.CurrentCamera.CFrame.lookVector:Dot(v_u_18)
			local v84 = math.abs(v83)
			local v85 = NumberSequence.new({
				v_u_29,
				NumberSequenceKeypoint.new(0.25, (1 - v84) * v_u_23 + v84, 0),
				NumberSequenceKeypoint.new(0.75, (1 - v84) * v_u_23 + v84, 0),
				v_u_30
			})
			local v86 = NumberSequence.new({
				v_u_29,
				NumberSequenceKeypoint.new(0.25, v84 * v_u_24 + 1 - v84, 0),
				NumberSequenceKeypoint.new(0.75, v84 * v_u_24 + 1 - v84, 0),
				v_u_30
			})
			local v87 = workspace.Camera.CFrame:inverse() * (workspace.Camera.CFrame.p - v_u_18)
			local v88 = NumberRange.new
			local v89 = -v87.x
			local v90 = v87.y
			local v91 = math.atan2(v89, v90)
			local v92 = v88((math.deg(v91)))
			if v_u_69 then
				for _, v93 in pairs(v_u_42) do
					v93.RainStraight.Transparency = v85
					v93.RainStraight.Rotation = v92
					v93.RainTopDown.Transparency = v86
				end
				if not v_u_17 then
					local v94
					if v_u_19 and workspace.CurrentCamera.CFrame.p.y > v_u_19 then
						v94 = 0
					else
						local v95 = 35
						local v96 = -v_u_18 * 1000
						for v97 = 1, #v_u_31 do
							if not v_u_67(Ray.new(workspace.CurrentCamera.CFrame * v_u_31[v97], v96), true) then
								v95 = v_u_31[v97].magnitude
								break
							end
						end
						v94 = 1 - v95 / 35
					end
					local v98 = v94 - v_u_27
					if 0.01 < math.abs(v98) then
						v_u_27 = v94
						local v99 = {
							["Volume"] = v_u_27
						}
						v_u_13:Create(v_u_37, TweenInfo.new(1), v99):Play()
					end
				end
			else
				v_u_38.RainStraight.Transparency = v85
				v_u_38.RainStraight.Rotation = v92
				v_u_38.RainTopDown.Transparency = v86
			end
			v_u_70 = 0
		end
		local v100 = workspace.CurrentCamera.CFrame.p
		local v101 = workspace.CurrentCamera.CFrame.lookVector:Cross(-v_u_18)
		local v102 = 0.001 < v101.magnitude and v101.unit or -v_u_18
		local v103 = v_u_18:Cross(v102).unit
		local v104 = CFrame.new(v100.x, v100.y, v100.z, v102.x, -v_u_18.x, v103.x, v102.y, -v_u_18.y, v103.y, v102.z, -v_u_18.z, v103.z)
		local v105 = v_u_18 * 550
		for v106 = 1, v_u_26 do
			local v107 = v_u_41[v106]
			local v108 = v_u_42[v106]
			local v109 = v_u_68:NextNumber(-100, 100)
			local v110 = v_u_68:NextNumber(-100, 100)
			local v111, v112, v113 = v_u_67(Ray.new(v104 * v_u_28(v109, 500, v110), v105))
			if v111 then
				v107.Position = v112 + v113 * 0.5
				v107.RainSplash:Emit(1)
				if v_u_69 then
					local v114 = v112 - v_u_18 * 50
					if v_u_19 then
						if v_u_19 < v114.Y then
							if v_u_18.Y < 0 then
								v114 = v114 + v_u_18 * (v_u_19 - v114.Y) / v_u_18.Y
							end
						end
					end
					v108.CFrame = v104 - v104.p + v114
					v108.RainStraight:Emit(v_u_25)
					v108.RainTopDown:Emit(v_u_25)
				end
			elseif v_u_69 then
				local v115 = v104 * v_u_28(v109, v_u_68:NextNumber(20, 100), v110)
				if v_u_19 then
					if v_u_19 < v115.Y then
						if v_u_18.Y < 0 then
							v115 = v115 + v_u_18 * (v_u_19 - v115.Y) / v_u_18.Y
						end
					end
				end
				v108.CFrame = v104 - v104.p + v115
				v108.RainStraight:Emit(v_u_25)
				v108.RainTopDown:Emit(v_u_25)
			end
		end
	end
	table.insert(v82, v81:connect(v116))
end
local function v_u_119()
	-- upvalues: (ref) v_u_16
	if 0 < #v_u_16 then
		for _, v118 in pairs(v_u_16) do
			v118:disconnect()
		end
		v_u_16 = {}
	end
end
local function v_u_123(p120)
	-- upvalues: (ref) v_u_27, (copy) v_u_13, (copy) v_u_37
	v_u_27 = 0
	local v_u_121 = v_u_13:Create(v_u_37, p120, {
		["Volume"] = 0
	})
	v_u_121.Completed:connect(function(p122)
		-- upvalues: (ref) v_u_37, (copy) v_u_121
		if p122 == Enum.PlaybackState.Completed then
			v_u_37:Stop()
		end
		v_u_121:Destroy()
	end)
	v_u_121:Play()
end
local function v128(p124)
	-- upvalues: (ref) v_u_38, (ref) v_u_41, (ref) v_u_42
	local v125 = ColorSequence.new(p124)
	v_u_38.RainStraight.Color = v125
	v_u_38.RainTopDown.Color = v125
	for _, v126 in pairs(v_u_41) do
		v126.RainSplash.Color = v125
	end
	for _, v127 in pairs(v_u_42) do
		v127.RainStraight.Color = v125
		v127.RainTopDown.Color = v125
	end
end
local v_u_129 = Instance.new("Color3Value")
if v1 then
	v_u_129.Value = v1
end
v_u_129.Changed:connect(v128)
v128(v_u_129.Value)
local function v135(p130)
	-- upvalues: (copy) v_u_15, (ref) v_u_23, (ref) v_u_24, (copy) v_u_29, (copy) v_u_30, (ref) v_u_41
	local v131 = (1 - p130) * (1 - v_u_15.Value)
	local v132 = 1 - v131
	v_u_23 = 0.7 * v131 + v132
	v_u_24 = 0.85 * v131 + v132
	local v133 = NumberSequence.new({
		v_u_29,
		NumberSequenceKeypoint.new(0.25, v131 * 0.6 + v132, 0),
		NumberSequenceKeypoint.new(0.75, v131 * 0.6 + v132, 0),
		v_u_30
	})
	for _, v134 in pairs(v_u_41) do
		v134.RainSplash.Transparency = v133
	end
end
local v_u_136 = Instance.new("NumberValue")
v_u_136.Value = 0
v_u_136.Changed:connect(v135)
v135(v_u_136.Value)
v_u_15.Changed:connect(v135)
local function v138(p137)
	-- upvalues: (ref) v_u_38
	v_u_38.RainStraight.Speed = NumberRange.new(p137 * 60)
	v_u_38.RainTopDown.Speed = NumberRange.new(p137 * 60)
end
local v_u_139 = Instance.new("NumberValue")
v_u_139.Value = 1
v_u_139.Changed:connect(v138)
v138(v_u_139.Value)
local function v142(p140)
	-- upvalues: (ref) v_u_38, (ref) v_u_25, (ref) v_u_26
	v_u_38.RainStraight.Rate = 600 * p140
	v_u_38.RainTopDown.Rate = 600 * p140
	local v141 = 2 * p140
	v_u_25 = math.ceil(v141)
	v_u_26 = 20 * p140
end
local v_u_143 = Instance.new("NumberValue")
v_u_143.Value = 1
v_u_143.Changed:connect(v142)
v142(v_u_143.Value)
local function v147(p144)
	-- upvalues: (ref) v_u_38, (ref) v_u_42, (ref) v_u_41
	v_u_38.RainStraight.LightEmission = p144
	v_u_38.RainTopDown.LightEmission = p144
	for _, v145 in pairs(v_u_42) do
		v145.RainStraight.LightEmission = p144
		v145.RainTopDown.LightEmission = p144
	end
	for _, v146 in pairs(v_u_41) do
		v146.RainSplash.LightEmission = p144
	end
end
local v_u_148 = Instance.new("NumberValue")
v_u_148.Value = 0.05
v_u_148.Changed:connect(v147)
v147(v_u_148.Value)
local function v152(p149)
	-- upvalues: (ref) v_u_38, (ref) v_u_42, (ref) v_u_41
	v_u_38.RainStraight.LightInfluence = p149
	v_u_38.RainTopDown.LightInfluence = p149
	for _, v150 in pairs(v_u_42) do
		v150.RainStraight.LightInfluence = p149
		v150.RainTopDown.LightInfluence = p149
	end
	for _, v151 in pairs(v_u_41) do
		v151.RainSplash.LightInfluence = p149
	end
end
local v_u_153 = Instance.new("NumberValue")
v_u_153.Value = 0.9
v_u_153.Changed:connect(v152)
v152(v_u_153.Value)
local function v155(p154)
	-- upvalues: (ref) v_u_18
	if 0.001 < p154.magnitude then
		v_u_18 = p154.unit
	end
end
local v_u_156 = Instance.new("Vector3Value")
v_u_156.Value = Vector3.new(0, -1, 0)
v_u_156.Changed:connect(v155)
v155(v_u_156.Value)
local v164 = {
	["CollisionMode"] = v_u_11,
	["Enable"] = function(_, p157)
		-- upvalues: (copy) v_u_119, (ref) v_u_38, (ref) v_u_41, (ref) v_u_42, (copy) v_u_14, (copy) v_u_36, (copy) v_u_117, (copy) v_u_13, (copy) v_u_15, (copy) v_u_37, (ref) v_u_17
		if p157 ~= nil and typeof(p157) ~= "TweenInfo" then
			error("bad argument #1 to \'Enable\' (TweenInfo expected, got " .. typeof(p157) .. ")", 2)
		end
		v_u_119()
		v_u_38.RainStraight.Enabled = true
		v_u_38.RainTopDown.Enabled = true
		v_u_38.Parent = workspace.CurrentCamera
		for v158 = 1, 20 do
			v_u_41[v158].Parent = workspace.Terrain
			v_u_42[v158].Parent = workspace.Terrain
		end
		if v_u_14:IsRunning() then
			v_u_36.Parent = game:GetService("SoundService")
		end
		v_u_117()
		if p157 then
			v_u_13:Create(v_u_15, p157, {
				["Value"] = 0
			}):Play()
		else
			v_u_15.Value = 0
		end
		if not v_u_37.Playing then
			v_u_37:Play()
			v_u_37.TimePosition = math.random() * v_u_37.TimeLength
		end
		v_u_17 = false
	end,
	["Disable"] = function(_, p159)
		-- upvalues: (copy) v_u_13, (copy) v_u_15, (copy) v_u_119, (ref) v_u_38, (ref) v_u_17, (copy) v_u_123
		if p159 ~= nil and typeof(p159) ~= "TweenInfo" then
			error("bad argument #1 to \'Disable\' (TweenInfo expected, got " .. typeof(p159) .. ")", 2)
		end
		if p159 then
			local v_u_160 = v_u_13:Create(v_u_15, p159, {
				["Value"] = 1
			})
			v_u_160.Completed:connect(function(p161)
				-- upvalues: (ref) v_u_119, (ref) v_u_38, (ref) v_u_17, (ref) v_u_123, (copy) v_u_160
				if p161 == Enum.PlaybackState.Completed then
					v_u_119()
					v_u_38.RainStraight.Enabled = false
					v_u_38.RainTopDown.Enabled = false
					v_u_38.Size = Vector3.new(0.05, 0.05, 0.05)
					if not v_u_17 then
						v_u_123(TweenInfo.new(1))
					end
				end
				v_u_160:Destroy()
			end)
			v_u_160:Play()
			v_u_123(p159)
		else
			v_u_15.Value = 1
			v_u_119()
			v_u_38.RainStraight.Enabled = false
			v_u_38.RainTopDown.Enabled = false
			v_u_38.Size = Vector3.new(0.05, 0.05, 0.05)
			if not v_u_17 then
				v_u_123(TweenInfo.new(1))
			end
		end
		v_u_17 = true
	end,
	["SetColor"] = function(_, p162, p163)
		-- upvalues: (copy) v_u_13, (copy) v_u_129
		if typeof(p162) == "Color3" then
			if p163 ~= nil and typeof(p163) ~= "TweenInfo" then
				error("bad argument #2 to \'SetColor\' (TweenInfo expected, got " .. typeof(p163) .. ")", 2)
			end
		else
			error("bad argument #1 to \'SetColor\' (Color3 expected, got " .. typeof(p162) .. ")", 2)
		end
		if p163 then
			v_u_13:Create(v_u_129, p163, {
				["Value"] = p162
			}):Play()
		else
			v_u_129.Value = p162
		end
	end
}
local v_u_165 = "SetTransparency"
function v164.SetTransparency(_, p166, p167)
	-- upvalues: (copy) v_u_165, (copy) v_u_13, (copy) v_u_136
	if typeof(p166) == "number" then
		if p167 ~= nil and typeof(p167) ~= "TweenInfo" then
			local v168 = error
			local v169 = v_u_165
			local v170 = typeof(p167)
			v168("bad argument #2 to \'" .. v169 .. "\' (TweenInfo expected, got " .. v170 .. ")", 2)
		end
	else
		local v171 = error
		local v172 = v_u_165
		local v173 = typeof(p166)
		v171("bad argument #1 to \'" .. v172 .. "\' (number expected, got " .. v173 .. ")", 2)
	end
	local v174 = math.clamp(p166, 0, 1)
	if p167 then
		v_u_13:Create(v_u_136, p167, {
			["Value"] = v174
		}):Play()
	else
		v_u_136.Value = v174
	end
end
local v_u_175 = "SetSpeedRatio"
function v164.SetSpeedRatio(_, p176, p177)
	-- upvalues: (copy) v_u_175, (copy) v_u_13, (copy) v_u_139
	if typeof(p176) == "number" then
		if p177 ~= nil and typeof(p177) ~= "TweenInfo" then
			local v178 = error
			local v179 = v_u_175
			local v180 = typeof(p177)
			v178("bad argument #2 to \'" .. v179 .. "\' (TweenInfo expected, got " .. v180 .. ")", 2)
		end
	else
		local v181 = error
		local v182 = v_u_175
		local v183 = typeof(p176)
		v181("bad argument #1 to \'" .. v182 .. "\' (number expected, got " .. v183 .. ")", 2)
	end
	local v184 = math.clamp(p176, 0, 1)
	if p177 then
		v_u_13:Create(v_u_139, p177, {
			["Value"] = v184
		}):Play()
	else
		v_u_139.Value = v184
	end
end
local v_u_185 = "SetIntensityRatio"
function v164.SetIntensityRatio(_, p186, p187)
	-- upvalues: (copy) v_u_185, (copy) v_u_13, (copy) v_u_143
	if typeof(p186) == "number" then
		if p187 ~= nil and typeof(p187) ~= "TweenInfo" then
			local v188 = error
			local v189 = v_u_185
			local v190 = typeof(p187)
			v188("bad argument #2 to \'" .. v189 .. "\' (TweenInfo expected, got " .. v190 .. ")", 2)
		end
	else
		local v191 = error
		local v192 = v_u_185
		local v193 = typeof(p186)
		v191("bad argument #1 to \'" .. v192 .. "\' (number expected, got " .. v193 .. ")", 2)
	end
	local v194 = math.clamp(p186, 0, 1)
	if p187 then
		v_u_13:Create(v_u_143, p187, {
			["Value"] = v194
		}):Play()
	else
		v_u_143.Value = v194
	end
end
local v_u_195 = "SetLightEmission"
function v164.SetLightEmission(_, p196, p197)
	-- upvalues: (copy) v_u_195, (copy) v_u_13, (copy) v_u_148
	if typeof(p196) == "number" then
		if p197 ~= nil and typeof(p197) ~= "TweenInfo" then
			local v198 = error
			local v199 = v_u_195
			local v200 = typeof(p197)
			v198("bad argument #2 to \'" .. v199 .. "\' (TweenInfo expected, got " .. v200 .. ")", 2)
		end
	else
		local v201 = error
		local v202 = v_u_195
		local v203 = typeof(p196)
		v201("bad argument #1 to \'" .. v202 .. "\' (number expected, got " .. v203 .. ")", 2)
	end
	local v204 = math.clamp(p196, 0, 1)
	if p197 then
		v_u_13:Create(v_u_148, p197, {
			["Value"] = v204
		}):Play()
	else
		v_u_148.Value = v204
	end
end
local v_u_205 = "SetLightInfluence"
function v164.SetLightInfluence(_, p206, p207)
	-- upvalues: (copy) v_u_205, (copy) v_u_13, (copy) v_u_153
	if typeof(p206) == "number" then
		if p207 ~= nil and typeof(p207) ~= "TweenInfo" then
			local v208 = error
			local v209 = v_u_205
			local v210 = typeof(p207)
			v208("bad argument #2 to \'" .. v209 .. "\' (TweenInfo expected, got " .. v210 .. ")", 2)
		end
	else
		local v211 = error
		local v212 = v_u_205
		local v213 = typeof(p206)
		v211("bad argument #1 to \'" .. v212 .. "\' (number expected, got " .. v213 .. ")", 2)
	end
	local v214 = math.clamp(p206, 0, 1)
	if p207 then
		v_u_13:Create(v_u_153, p207, {
			["Value"] = v214
		}):Play()
	else
		v_u_153.Value = v214
	end
end
function v164.SetVolume(_, p215, p216)
	-- upvalues: (copy) v_u_13, (copy) v_u_36
	if typeof(p215) == "number" then
		if p216 ~= nil and typeof(p216) ~= "TweenInfo" then
			error("bad argument #2 to \'SetVolume\' (TweenInfo expected, got " .. typeof(p216) .. ")", 2)
		end
	else
		error("bad argument #1 to \'SetVolume\' (number expected, got " .. typeof(p215) .. ")", 2)
	end
	if p216 then
		v_u_13:Create(v_u_36, p216, {
			["Volume"] = p215
		}):Play()
	else
		v_u_36.Volume = p215
	end
end
function v164.SetDirection(_, p217, p218)
	-- upvalues: (copy) v_u_13, (copy) v_u_156
	if typeof(p217) == "Vector3" then
		if p218 ~= nil and typeof(p218) ~= "TweenInfo" then
			error("bad argument #2 to \'SetDirection\' (TweenInfo expected, got " .. typeof(p218) .. ")", 2)
		end
	else
		error("bad argument #1 to \'SetDirection\' (Vector3 expected, got " .. typeof(p217) .. ")", 2)
	end
	if 0 >= p217.unit.magnitude then
		warn("Attempt to set rain direction to a zero-length vector, falling back on default direction = (" .. tostring(Vector3.new(0, -1, 0)) .. ")")
		p217 = Vector3.new(0, -1, 0)
	end
	if p218 then
		v_u_13:Create(v_u_156, p218, {
			["Value"] = p217
		}):Play()
	else
		v_u_156.Value = p217
	end
end
function v164.SetCeiling(_, p219)
	-- upvalues: (ref) v_u_19
	if p219 ~= nil and typeof(p219) ~= "number" then
		error("bad argument #1 to \'SetCeiling\' (number expected, got " .. typeof(p219) .. ")", 2)
	end
	v_u_19 = p219
end
function v164.SetStraightTexture(_, p220)
	-- upvalues: (ref) v_u_38, (ref) v_u_42
	if typeof(p220) ~= "string" then
		error("bad argument #1 to \'SetStraightTexture\' (string expected, got " .. typeof(p220) .. ")", 2)
	end
	v_u_38.RainStraight.Texture = p220
	for _, v221 in pairs(v_u_42) do
		v221.RainStraight.Texture = p220
	end
end
function v164.SetTopDownTexture(_, p222)
	-- upvalues: (ref) v_u_38, (ref) v_u_42
	if typeof(p222) ~= "string" then
		error("bad argument #1 to \'SetStraightTexture\' (string expected, got " .. typeof(p222) .. ")", 2)
	end
	v_u_38.RainTopDown.Texture = p222
	for _, v223 in pairs(v_u_42) do
		v223.RainTopDown.Texture = p222
	end
end
function v164.SetSplashTexture(_, p224)
	-- upvalues: (ref) v_u_41
	if typeof(p224) ~= "string" then
		error("bad argument #1 to \'SetStraightTexture\' (string expected, got " .. typeof(p224) .. ")", 2)
	end
	for _, v225 in pairs(v_u_41) do
		v225.RainSplash.Texture = p224
	end
end
function v164.SetSoundId(_, p226)
	-- upvalues: (copy) v_u_37
	if typeof(p226) ~= "string" then
		error("bad argument #1 to \'SetSoundId\' (string expected, got " .. typeof(p226) .. ")", 2)
	end
	v_u_37.SoundId = p226
end
function v164.SetCollisionMode(_, p227, p228)
	-- upvalues: (copy) v_u_11, (ref) v_u_21, (ref) v_u_22, (ref) v_u_38, (ref) v_u_20, (ref) v_u_67, (copy) v_u_66
	if p227 == v_u_11.None then
		v_u_21 = nil
		v_u_22 = nil
	elseif p227 == v_u_11.Blacklist then
		if typeof(p228) == "Instance" then
			v_u_21 = { p228, v_u_38 }
		elseif typeof(p228) == "table" then
			for v229 = 1, #p228 do
				local v230 = p228[v229]
				if typeof(v230) ~= "Instance" then
					local v231 = error
					local v232 = p228[v229]
					local v233 = typeof(v232)
					local v234 = tostring(v229)
					v231("bad argument #2 to \'SetCollisionMode\' (blacklist contained a " .. v233 .. " on index " .. v234 .. " which is not an Instance)", 2)
				end
			end
			v_u_21 = { v_u_38 }
			for v235 = 1, #p228 do
				local v236 = v_u_21
				local v237 = p228[v235]
				table.insert(v236, v237)
			end
		else
			error("bad argument #2 to \'SetCollisionMode (Instance or array of Instance expected, got " .. typeof(p228) .. ")\'", 2)
		end
		v_u_22 = nil
	elseif p227 == v_u_11.Whitelist then
		if typeof(p228) == "Instance" then
			v_u_21 = { p228 }
		elseif typeof(p228) == "table" then
			for v238 = 1, #p228 do
				local v239 = p228[v238]
				if typeof(v239) ~= "Instance" then
					local v240 = error
					local v241 = p228[v238]
					local v242 = typeof(v241)
					local v243 = tostring(v238)
					v240("bad argument #2 to \'SetCollisionMode\' (whitelist contained a " .. v242 .. " on index " .. v243 .. " which is not an Instance)", 2)
				end
			end
			v_u_21 = {}
			for v244 = 1, #p228 do
				local v245 = v_u_21
				local v246 = p228[v244]
				table.insert(v245, v246)
			end
		else
			error("bad argument #2 to \'SetCollisionMode (Instance or array of Instance expected, got " .. typeof(p228) .. ")\'", 2)
		end
		v_u_22 = nil
	elseif p227 == v_u_11.Function then
		if typeof(p228) ~= "function" then
			error("bad argument #2 to \'SetCollisionMode\' (function expected, got " .. typeof(p228) .. ")", 2)
		end
		v_u_21 = nil
		v_u_22 = p228
	else
		error("bad argument #1 to \'SetCollisionMode (Rain.CollisionMode expected, got " .. typeof(p228) .. ")\'", 2)
	end
	v_u_20 = p227
	v_u_67 = v_u_66[p227]
end
return v164