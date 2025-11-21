-- What the sigma?

local v1 = game:GetService("Players")
local v_u_2 = game:GetService("TextService")
local v3 = game:GetService("HttpService")
local v_u_4 = game:GetService("SoundService")
local v5 = game:GetService("LocalizationService")
local v_u_6 = {}
local v_u_7 = require(script:WaitForChild("SpriteClip"))
local v_u_8 = require(script:WaitForChild("AdvancedTween"))
local v9 = v1.LocalPlayer
local v_u_10 = v5:GetTranslatorForPlayer(v9)
local v_u_11 = v3:GenerateGUID(false)
local v_u_12 = Instance.new("ScreenGui")
local v_u_13 = {
	["Destroy"] = true,
	["SetTransparency"] = true,
	["Skip"] = true
}
local v_u_14 = {
	["Font"] = Enum.Font.GothamMedium,
	["TextSize"] = 14,
	["TextColor3"] = Color3.new(1, 1, 1),
	["TextTransparency"] = 0,
	["StrokeThickness"] = 0,
	["StrokeColor3"] = Color3.new(),
	["StokeTransparency"] = 0.8,
	["TimePerGrapheme"] = 0.06
}
local v_u_15 = {
	["__index"] = v_u_14
}
local v_u_16 = {
	["__index"] = setmetatable({
		["Image"] = 5817511712,
		["UseSpriteClip"] = false,
		["FrameRate"] = 60
	}, v_u_15)
}
v_u_12.DisplayOrder = -99999
v_u_12.IgnoreGuiInset = true
v_u_12.ResetOnSpawn = false
v_u_12.Name = "RenderTextBounds"
v_u_12.Parent = v9:WaitForChild("PlayerGui")
local function v_u_29(p17, p18, p19, p20, p21)
	-- upvalues: (copy) v_u_12, (copy) v_u_2
	local v22 = Instance.new("TextLabel")
	v22.TextTransparency = 1
	v22.BackgroundTransparency = 1
	v22.Text = p17
	v22.Size = p20 or UDim2.fromScale(10, 10)
	v22.Position = UDim2.fromScale(0, 2)
	v22.TextSize = p18
	v22.TextScaled = p21
	v22.Parent = v_u_12
	v22.RichText = true
	local v23 = v22.TextBounds
	if typeof(p19) ~= "Font" then
		v22.Font = p19
		return v_u_2:GetTextSize(p17, p18, p19, Vector2.new((1 / 0), (1 / 0)))
	end
	v22.FontFace = p19
	if v22.TextBounds.Magnitude == v23.Magnitude then
		v22:GetPropertyChangedSignal("TextBounds"):Wait()
	end
	local v24 = v22.TextBounds
	v22:Destroy()
	local v25 = Vector2.new
	local v26 = v24.X
	local v27 = math.ceil(v26)
	local v28 = v24.Y
	return v25(v27, (math.floor(v28)))
end
function v_u_6.Destroy(p_u_30, p_u_31)
	-- upvalues: (copy) v_u_6, (copy) v_u_8
	if p_u_30 ~= v_u_6 then
		task.spawn(function()
			-- upvalues: (copy) p_u_30, (copy) p_u_31, (ref) v_u_8
			local v32 = p_u_30
			setmetatable(v32, nil)
			task.cancel(p_u_30.Rendering)
			p_u_30.Holder.Name = "Destroying_" .. math.random()
			local v33 = p_u_31 or nil
			if typeof(v33) == "number" and 0 < p_u_31 then
				local v34 = {
					["Time"] = p_u_31,
					["Easing"] = "Linear"
				}
				v_u_8.RunTween(p_u_30.Transparency, v34, {
					["Value"] = 1
				})
				task.wait(p_u_31)
			end
			for _, v35 in pairs(p_u_30.Rendered) do
				for _, v_u_36 in pairs(v35) do
					if typeof(v_u_36) == "table" then
						if v_u_36.Obj then
							v_u_36.Obj:Destroy()
						end
						if v_u_36.Clip then
							pcall(function()
								-- upvalues: (copy) v_u_36
								v_u_36.Clip:Destroy()
							end)
						end
						table.clear(v_u_36)
					end
				end
				table.clear(v35)
			end
			p_u_30.Event:Destroy()
			p_u_30.GlobalY:Destroy()
			p_u_30.Transparency:Destroy()
			p_u_30.Holder:Destroy()
			table.clear(p_u_30.Rendered)
			table.clear(p_u_30)
		end)
	end
end
function v_u_6.SetTransparency(p37, p38, p39)
	-- upvalues: (copy) v_u_6, (copy) v_u_8
	if p37 == v_u_6 then
		return
	elseif typeof(p39 or nil) == "number" and 0 < p39 then
		v_u_8.RunTween(p37.Transparency, {
			["Time"] = p39,
			["Easing"] = "Linear"
		}, {
			["Value"] = p38
		})
	else
		p37.Transparency.Value = p38
	end
end
function v_u_6.Skip(p40)
	-- upvalues: (copy) v_u_6
	if p40 ~= v_u_6 then
		p40.IsSkipping = true
	end
end
function v_u_6.__index(p41, p42)
	-- upvalues: (copy) v_u_6, (copy) v_u_13
	if p41 ~= v_u_6 then
		local v43 = v_u_13
		if rawget(v43, p42) then
			local v44 = v_u_6
			return rawget(v44, p42)
		end
	end
end
function v_u_6.__call(p45, ...)
	-- upvalues: (copy) v_u_6
	if p45 ~= v_u_6 then
		p45:Destroy(...)
	end
end
function v_u_6.Parse(p46)
	local v47 = {}
	local v48 = 1
	while true do
		local v49, v50, v51, v52 = p46:find("<style%s*=%s*\"?([^>\"]-)\"?%s*>(.-)</style>", v48)
		local v53, v54, v55 = p46:find(":(%w+):", v48)
		if not (v49 or v53) then
			break
		end
		if v53 and (not v49 or v53 < v49) then
			local v56 = p46:sub(v48, v53 - 1)
			if v56 ~= "" then
				table.insert(v47, {
					["Style"] = "Default",
					["Text"] = v56
				})
			end
			if v55 ~= "" then
				table.insert(v47, {
					["Style"] = "Emoji",
					["Text"] = v55
				})
			end
			v48 = v54 + 1
		else
			local v57, v58, v59 = v52:find(":(%w+):")
			local v60 = p46:sub(v48, v49 - 1)
			local v61 = v51:gsub("\"", ""):gsub("\'", "")
			if v60 ~= "" then
				table.insert(v47, {
					["Style"] = "Default",
					["Text"] = v60
				})
			end
			if v57 then
				local v62 = v52:sub(1, v57 - 1)
				if v62 ~= "" then
					table.insert(v47, {
						["Style"] = v61,
						["Text"] = v62
					})
				end
				if v59 ~= "" then
					table.insert(v47, {
						["Style"] = "Emoji",
						["Text"] = v59
					})
				end
				local v63 = v52:sub(v58 + 1, v50)
				if v63 ~= "" then
					table.insert(v47, {
						["Style"] = v61,
						["Text"] = v63
					})
				end
			elseif v52 ~= "" then
				table.insert(v47, {
					["Style"] = v61,
					["Text"] = v52
				})
			end
			v48 = v50 + 1
		end
	end
	local v64 = p46:sub(v48)
	if v64 == "" then
		return v47
	end
	table.insert(v47, {
		["Style"] = "Default",
		["Text"] = v64
	})
	return v47
end
function v_u_6.RenderText(p65, p66, p67, p68, p69)
	-- upvalues: (copy) v_u_11, (copy) v_u_15, (copy) v_u_14, (copy) v_u_6, (copy) v_u_10, (copy) v_u_16, (copy) v_u_7, (copy) v_u_29, (copy) v_u_8, (copy) v_u_4
	local v_u_70 = p66:FindFirstChild("TextRenderHolder_" .. v_u_11) or Instance.new("Frame")
	v_u_70.BackgroundTransparency = 1
	v_u_70.AnchorPoint = Vector2.new(0.5, 0.5)
	v_u_70.Position = UDim2.fromScale(0.5, 0.5)
	v_u_70.Size = UDim2.new(1, -14, 1, -14)
	v_u_70.Name = "TextRenderHolder_" .. v_u_11
	v_u_70.Parent = p66
	local v71 = (p69 == nil or not p69) and true or p69
	local v_u_72 = Instance.new("NumberValue")
	v_u_72.Value = 0
	local v_u_73 = table.clone(p67)
	local v_u_74 = table.clone(p68)
	local v75 = v_u_73.Default ~= nil and {
		["__index"] = v_u_73.Default
	} or v_u_15
	local v_u_78 = setmetatable({}, {
		["__index"] = function(p76, p77)
			rawset(p76, p77, {})
			return rawget(p76, p77)
		end
	})
	for v79, v80 in pairs(v_u_73) do
		if v79 == "Default" then
			local v81 = v_u_15
			setmetatable(v80, v81)
		else
			setmetatable(v80, v75)
		end
	end
	v_u_73.Default = v_u_73.Default or v_u_14
	local v_u_82 = {
		["IsRendering"] = true,
		["IsSkipping"] = false,
		["Event"] = Instance.new("BindableEvent")
	}
	local v_u_83 = 1
	local v_u_84 = 0
	local v_u_85 = 0
	local v_u_86 = 0
	local v_u_87 = 0
	local v_u_88 = Instance.new("NumberValue")
	v_u_82.Completed = v_u_82.Event.Event
	local v89 = v_u_6.Parse
	if v71 then
		p65 = v_u_10:Translate(game, p65) or p65
	end
	local v_u_90 = v89(p65)
	v_u_70:ClearAllChildren()
	v_u_82.Rendering = task.spawn(function()
		-- upvalues: (copy) v_u_90, (copy) v_u_74, (copy) v_u_73, (ref) v_u_16, (copy) v_u_70, (ref) v_u_7, (ref) v_u_85, (ref) v_u_86, (ref) v_u_87, (copy) v_u_78, (ref) v_u_83, (copy) v_u_88, (ref) v_u_84, (copy) v_u_72, (ref) v_u_29, (ref) v_u_8, (copy) v_u_82, (ref) v_u_4
		local v91 = 0
		local v92 = 0
		for _, v93 in ipairs(v_u_90) do
			if v93.Style == "Emoji" and v_u_74[v93.Text] then
				v92 = v92 + 1
			else
				v92 = v92 + utf8.len(v93.Text)
			end
		end
		for _, v94 in ipairs(v_u_90) do
			local v95 = v_u_73[v94.Style] or v_u_73.Default
			local v96 = v94.Text
			if v94.Style == "Emoji" and v_u_74[v96] then
				local v97 = v_u_74[v96]
				local v98 = typeof(v97) == "table"
				if v98 then
					local v99 = table.clone(v_u_74[v96])
					local v100 = v_u_16
					v95 = setmetatable(v99, v100) or v95
				end
				local v101 = v95.TextSize < 1 and v_u_70.AbsoluteSize.Y * v95.TextSize or v95.TextSize
				local v102 = Instance.new("ImageLabel")
				local v103 = Vector2.new(v101, v101)
				v102.SizeConstraint = Enum.SizeConstraint.RelativeYY
				v102.Name = v96
				v102.AnchorPoint = Vector2.new(0, 1)
				v102.Image = "rbxassetid://" .. (v98 and v_u_74[v96].Image or v_u_74[v96])
				v102.Size = UDim2.fromOffset(v103.X, v103.Y)
				v102.BackgroundTransparency = 1
				v102.ImageColor3 = v95.TextColor3
				local v104
				if v95.UseSpriteClip then
					v104 = v_u_7.new()
					if not v95.InheritSpriteSheet then
						error(("Mission Emoji(%*) Style Property : InheritSpriteSheet"):format(v96), 2)
					end
					if not v95.SpriteSizePixel then
						error(("Mission Emoji(%*) Style Property : SpriteSizePixel"):format(v96), 2)
					end
					if not v95.SpriteCountX then
						error(("Mission Emoji(%*) Style Property : SpriteCountX"):format(v96), 2)
					end
					if not v95.SpriteCount then
						error(("Mission Emoji(%*) Style Property : SpriteCount"):format(v96), 2)
					end
					v104.InheritSpriteSheet = v95.InheritSpriteSheet
					v104.Adornee = v102
					v104.SpriteSizePixel = v95.SpriteSizePixel
					v104.SpriteCountX = v95.SpriteCountX
					v104.SpriteCount = v95.SpriteCount
					v104.FrameRate = v95.FrameRate
				else
					v104 = nil
				end
				if v_u_85 + v103.X > v_u_70.AbsoluteSize.X then
					local v105 = v_u_86 + v_u_87
					local v106 = v_u_70.AbsoluteSize.Y + 7
					if math.floor(v106) < v105 then
						local v107 = {
							v_u_88,
							{
								["Time"] = 0.2,
								["Easing"] = "Quint",
								["Direction"] = "Out"
							},
							v_u_87
						}
						v_u_78[v_u_83].T = v107
					end
					v_u_78[v_u_83].N = v_u_84
					v_u_78[v_u_83].Y = v_u_87
					v_u_78[v_u_83].PY = v_u_86
					v_u_86 = v_u_86 + v_u_87
					v_u_83 = v_u_83 + 1
					v_u_85 = 0
					v_u_84 = 0
				end
				local v108 = v_u_87
				local v109 = v103.Y
				v_u_87 = math.max(v108, v109)
				v102.Position = UDim2.new(0, v_u_85, 1, 0)
				v_u_85 = v_u_85 + v103.X
				v91 = v91 + 1
				v_u_84 = v_u_84 + 1
				local v110 = v_u_78[v_u_83]
				table.insert(v110, {
					["Obj"] = v102,
					["Style"] = v95,
					["Clip"] = v104
				})
			else
				for v111, v112 in utf8.graphemes(v96) do
					local v113 = Instance.new("TextLabel")
					v113.Text = v96:sub(v111, v112)
					v113.BackgroundTransparency = 1
					v113.TextColor3 = v95.TextColor3
					v113.TextTransparency = v95.TextTransparency
					v113.AnchorPoint = Vector2.new(0, 1)
					v113.TextSize = v95.TextSize < 1 and v_u_70.AbsoluteSize.Y * v95.TextSize or v95.TextSize
					local v114 = v_u_72.Value
					local v115 = v95.TextTransparency
					v113.TextTransparency = 1 - (1 - v114) * (1 - v115)
					v113.AutoLocalize = false
					local v116 = Instance.new("UIStroke", v113)
					local v117 = v_u_72.Value
					local v118 = v95.StokeTransparency
					v116.Transparency = 1 - (1 - v117) * (1 - v118)
					v116.Thickness = v95.StrokeThickness
					v116.Color = v95.StrokeColor3
					if rawget(v95, "FontFace") then
						v113.FontFace = v95.FontFace
					else
						v113.Font = v95.Font
					end
					local v119 = v_u_29(v113.Text, v113.TextSize, v113.FontFace)
					if v_u_85 + v119.X > v_u_70.AbsoluteSize.X then
						local v120 = v_u_86 + v_u_87
						local v121 = v_u_70.AbsoluteSize.Y + 7
						if math.floor(v121) < v120 then
							local v122 = {
								v_u_88,
								{
									["Time"] = 0.2,
									["Easing"] = "Quint",
									["Direction"] = "Out"
								},
								v_u_87
							}
							v_u_78[v_u_83].T = v122
						end
						v_u_78[v_u_83].N = v_u_84
						v_u_78[v_u_83].Y = v_u_87
						v_u_78[v_u_83].PY = v_u_86
						v_u_86 = v_u_86 + v_u_87
						v_u_83 = v_u_83 + 1
						v_u_85 = 0
						v_u_84 = 0
						if v113.Text == " " then
							v119 = Vector2.new(0, v119.Y)
							v113.Text = ""
						end
					end
					local v123 = v_u_87
					local v124 = v119.Y
					v_u_87 = math.max(v123, v124)
					v113.Size = UDim2.fromOffset(v119.X, v119.Y)
					v113.Position = UDim2.new(0, v_u_85, 1, 0)
					v_u_85 = v_u_85 + v119.X
					v91 = v91 + 1
					v_u_84 = v_u_84 + 1
					local v125 = v_u_78[v_u_83]
					table.insert(v125, {
						["Obj"] = v113,
						["Style"] = v95
					})
				end
			end
			if v91 == v92 then
				if not v_u_78[v_u_83].N then
					local v126 = v_u_86 + v_u_87
					local v127 = v_u_70.AbsoluteSize.Y + 7
					if math.floor(v127) < v126 then
						local v128 = {
							v_u_88,
							{
								["Time"] = 0.2,
								["Easing"] = "Quint",
								["Direction"] = "Out"
							},
							v_u_87
						}
						v_u_78[v_u_83].T = v128
					end
					v_u_78[v_u_83].N = v_u_84
					v_u_78[v_u_83].Y = v_u_87
					v_u_78[v_u_83].PY = v_u_86
					v_u_83 = v_u_83 + 1
				end
			end
		end
		for v129, v_u_130 in ipairs(v_u_78) do
			local v_u_131 = Instance.new("Frame")
			v_u_131.Size = UDim2.new(1, 0, 0, v_u_130.Y)
			v_u_131.Position = UDim2.fromOffset(0, v_u_130.PY)
			v_u_131.BackgroundTransparency = 1
			v_u_131.Name = "Line_" .. v129
			v_u_131.Position = v_u_131.Position + UDim2.fromOffset(0, v_u_88.Value)
			v_u_88.Changed:Connect(function(_)
				-- upvalues: (ref) v_u_8, (copy) v_u_131, (copy) v_u_130, (ref) v_u_86, (ref) v_u_88
				v_u_8.RunTween(v_u_131, {
					["Time"] = 0.1,
					["Easing"] = "Quart"
				}, {
					["Position"] = UDim2.fromOffset(0, v_u_130.PY or v_u_86) + UDim2.fromOffset(0, v_u_88.Value)
				})
			end)
			if v_u_130.T then
				local v132 = v_u_130.T
				local v133, v134, v135 = table.unpack(v132)
				v134.Time = v134.Time * (v_u_82.IsSkipping and 0.5 or 1)
				v_u_8.RunTween(v133, v134, {
					["Value"] = v_u_88.Value - v135
				})
				task.wait(v134.Time)
				task.wait(0.05)
			end
			v_u_131.Parent = v_u_70
			for v136 = 1, v_u_130.N or v_u_84 do
				local v_u_137 = v_u_130[v136]
				local v_u_138 = v_u_137.Obj
				local v_u_139 = v_u_137.Style
				local v_u_140 = nil
				local v_u_141 = false
				v_u_138.Parent = v_u_131
				if v_u_139.GraphemeAction then
					v_u_140 = task.spawn(v_u_139.GraphemeAction, v_u_138, v_u_139)
				end
				if v_u_137.Clip then
					v_u_137.Clip:Play()
				end
				local v_u_151 = v_u_138.Changed:Connect(function(p142)
					-- upvalues: (copy) v_u_138, (ref) v_u_141, (copy) v_u_139
					if v_u_138:GetAttribute("NonDisplay") and not v_u_141 then
						if p142 == "ImageTransparency" then
							v_u_141 = true
							local v143 = v_u_138.ImageTransparency
							local v144 = v_u_138
							local v145 = v_u_139.TextTransparency
							v144.ImageTransparency = 1 - (1 - v143) * (1 - v145)
							v_u_141 = false
							return
						end
						if p142 == "TextTransparency" then
							v_u_141 = true
							local v146 = v_u_138.TextTransparency
							local v147 = v_u_138
							local v148 = v_u_139.TextTransparency
							v147.TextTransparency = 1 - (1 - v146) * (1 - v148)
							local v149 = v_u_138.UIStroke
							local v150 = v_u_139.StokeTransparency
							v149.Transparency = 1 - (1 - v146) * (1 - v150)
							v_u_141 = false
						end
					end
				end)
				v_u_131.Changed:Connect(function()
					-- upvalues: (copy) v_u_131, (ref) v_u_88, (copy) v_u_138, (ref) v_u_82, (ref) v_u_8
					if v_u_131.Position.Y.Offset < 0 and v_u_88.Value < 0 and v_u_138:GetAttribute("NonDisplay") ~= true then
						v_u_138:SetAttribute("NonDisplay", true)
						local v152 = v_u_82.IsSkipping and 0.5 or 1
						if v_u_138:IsA("TextLabel") then
							v_u_8.RunTween(v_u_138, {
								["Time"] = 0.2 * v152,
								["Easing"] = "Quint"
							}, {
								["TextTransparency"] = 1
							})
							return
						end
						if v_u_138:IsA("ImageLabel") then
							v_u_8.RunTween(v_u_138, {
								["Time"] = 0.2 * v152,
								["Easing"] = "Quint"
							}, {
								["ImageTransparency"] = 1
							})
						end
					end
				end)
				v_u_72.Changed:Connect(function(p153)
					-- upvalues: (copy) v_u_138, (copy) v_u_139
					if v_u_138:GetAttribute("NonDisplay") ~= true then
						if v_u_138:IsA("TextLabel") then
							local v154 = v_u_138
							local v155 = v_u_139.TextTransparency
							v154.TextTransparency = 1 - (1 - p153) * (1 - v155)
							local v156 = v_u_138.UIStroke
							local v157 = v_u_139.StokeTransparency
							v156.Transparency = 1 - (1 - p153) * (1 - v157)
							return
						end
						if v_u_138:IsA("ImageLabel") then
							local v158 = v_u_138
							local v159 = v_u_139.TextTransparency
							v158.ImageTransparency = 1 - (1 - p153) * (1 - v159)
						end
					end
				end)
				v_u_138.Destroying:Once(function()
					-- upvalues: (ref) v_u_140, (copy) v_u_137, (ref) v_u_151
					if v_u_140 then
						pcall(task.cancel, v_u_140)
					end
					if v_u_137.Clip then
						v_u_137.Clip:Destroy()
					end
					v_u_151:Disconnect()
				end)
				if v_u_139.DialogSound and (v_u_82.IsSkipping and v136 == 1 or not v_u_82.IsSkipping) then
					local v160 = v_u_139.DialogSound
					local v_u_161
					if typeof(v160) == "number" then
						v_u_161 = Instance.new("Sound")
						v_u_161.SoundId = "rbxassetid://" .. v_u_139.DialogSound
						v_u_161.Volume = 1
					else
						v_u_161 = v_u_139.DialogSound:Clone()
					end
					v_u_161.Name = math.random()
					v_u_161.Parent = v_u_4
					v_u_161:Play()
					v_u_161.Ended:Once(function()
						-- upvalues: (ref) v_u_161
						v_u_161:Destroy()
					end)
				end
				if 0 < v_u_139.TimePerGrapheme and not v_u_82.IsSkipping then
					task.wait(v_u_139.TimePerGrapheme)
				end
			end
		end
		v_u_82.IsRendering = false
		v_u_82.Event:Fire()
	end)
	v_u_82.Rendered = v_u_78
	v_u_82.GlobalY = v_u_88
	v_u_82.Holder = v_u_70
	v_u_82.Transparency = v_u_72
	local v162 = v_u_6
	return setmetatable(v_u_82, v162)
end
return v_u_6