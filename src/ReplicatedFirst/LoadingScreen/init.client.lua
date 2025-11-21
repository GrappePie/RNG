-- What the sigma?
local v0 = require(script:WaitForChild("SuperTween"))
local v1 = game:GetService("ReplicatedStorage")
local v2 = game:GetService("Players")
local v3 = game:GetService("Lighting")
local v_u_4 = game:GetService("TweenService")
local v_u_5 = game:GetService("RunService")
local v_u_6 = game:GetService("StarterGui")
local v_u_7 = game:GetService("ContentProvider")
game:GetService("TeleportService")
local v8 = game:GetService("ReplicatedStorage")
local v_u_9 = v2.LocalPlayer
v3:WaitForChild("Atmosphere")
local v_u_10 = v8:WaitForChild("Remotes"):WaitForChild("PlayBegin")
local v_u_11 = script:WaitForChild("BeforePlaying", 100)
local Waiting = v_u_11:WaitForChild("Waiting", 100)
local Border = v_u_11:WaitForChild("Border", 100)
local v_u_12 = v_u_11:WaitForChild("LoadingFrame", 100)
local v_u_13 = v_u_11:WaitForChild("ERATitle", 100)
local v_u_14 = v_u_12:WaitForChild("Start", 100)
local v_u_15 = v_u_12:WaitForChild("Skip", 100)
local imCrashingOut = v_u_12:WaitForChild("UpdateLog",100)
local v_u_16 = v_u_12:WaitForChild("LoadingBar", 100)
local v_u_17 = v_u_16.BarHolder.Bar
local v_u_18 = v_u_11.DarkFrame
local v_u_19 = v_u_16.AssetText
local v_u_20 = v_u_12:WaitForChild("UpdateLogs")
local v_u_21 = v_u_12:WaitForChild("BaseFrame")
local v_u_22 = v_u_11:WaitForChild("BGM")
local v_u_23 = script:WaitForChild("ERATitleY")
local v_u_24 = script:WaitForChild("StartButtonY")
local v25 = require(v8:WaitForChild("Modules"):WaitForChild("ConsoleIconHandler"))
local v_u_26 = false --game:GetService("RunService"):IsStudio()
local v_u_27 = game:GetService("TweenService")
local v_u_28 = game:GetService("Debris")
local v_u_29 = Tween0o.new(0.5, Enum.EasingStyle.Quart)
local v_u_30 = Tween0o.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
local v_u_31 = Tween0o.new(2, Enum.EasingStyle.Back)
local function v_u_48(p32, p33, p34, p35, p36)
	-- upvalues: (copy) v_u_27, (copy) v_u_29, (copy) v_u_30, (copy) v_u_28, (copy) v_u_5
	local v_u_37 = Instance.new("ImageLabel", p32)
	v_u_37.Size = UDim2.fromScale()
	v_u_37.Image = p33
	v_u_37.ImageColor3 = p34
	v_u_37.SizeConstraint = Enum.SizeConstraint.RelativeXX
	v_u_37.BackgroundTransparency = 1
	v_u_37.Rotation = math.random(-15, 15)
	v_u_37.AnchorPoint = Vector2.new(0.5, 0.5)
	if p36 then
		p36:Clone().Parent = v_u_37
	end
	v_u_27:Create(v_u_37, v_u_29, {
		["Size"] = UDim2.fromScale(p35, p35)
	}):Play()
	local v_u_38 = UDim2.fromScale(math.random(0, 100) / 100, 1)
	local v_u_39 = math.random(50, 70) * (math.random(1, 2) == 1 and -1 or 1)
	local v_u_40 = math.random(2, 5) / 500
	coroutine.wrap(function()
		-- upvalues: (copy) v_u_37, (ref) v_u_27, (ref) v_u_30, (ref) v_u_28, (copy) v_u_38, (copy) v_u_39, (copy) v_u_40, (ref) v_u_5
		local v41 = time()
		local v42 = v41 + math.random(15, 20) / 10
		while v_u_37 and v_u_37.Parent do
			if time() >= v42 - 0.5 and not v_u_37:GetAttribute("Removing") then
				v_u_37:SetAttribute("Removing", true)
				v_u_27:Create(v_u_37, v_u_30, {
					["Size"] = UDim2.fromScale(0, 0)
				}):Play()
				v_u_28:AddItem(v_u_37, 0.5)
			end
			local v43 = (time() - v41) * 50
			local v44 = v_u_37
			local v45 = v_u_38
			local v46 = UDim2.fromScale
			local v47 = v43 / v_u_39
			v44.Position = v45 + v46(0.07 * math.sin(v47), v43 * -v_u_40)
			v_u_5.Heartbeat:Wait()
		end
	end)()
end
local v_u_49 = false
task.spawn(function()
	-- upvalues: (copy) v_u_11, (copy) v_u_9, (copy) v_u_6, (ref) v_u_49, (copy) v_u_48, (copy) v_u_12
	v_u_11.Enabled = true
	v_u_11.Parent = v_u_9.PlayerGui
	v_u_6:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
	while true do
		local v50, v51 = pcall(function()
			-- upvalues: (ref) v_u_6
			v_u_6:SetCore("BadgesNotificationsActive", false)
		end)
		if not v50 then
			print("There was an issue disabling Badge Notifications: " .. v51)
			wait()
		end
		if v50 then
			v_u_49 = true
			coroutine.wrap(function()
				-- upvalues: (ref) v_u_49, (ref) v_u_48, (ref) v_u_12
				while task.wait(0.1) and v_u_49 do
					v_u_48(v_u_12, "rbxassetid://12402859532", Color3.new(1, 1, 1), math.random(5, 20) / 900)
				end
			end)()
			if not v_u_9:GetAttribute("PlayBegin") then
				v_u_9:GetAttributeChangedSignal("PlayBegin"):Wait()
			end
			v_u_9.PlayerGui:WaitForChild("MainInterface"):WaitForChild("CurrentTime").GameVersion.Text = "v" .. game.PlaceVersion / 1000
			local v52 = game:GetService("ReplicatedStorage")
			require(v52:WaitForChild("CmdrClient"))
			repeat
				task.wait()
			until game:IsLoaded()
			for _, v_u_53 in ipairs(game:GetDescendants()) do
				pcall(function()
					-- upvalues: (copy) v_u_53, (ref) v_u_9
					local v54 = v_u_53:FindFirstAncestorOfClass("Player")
					if v_u_53.Name == "AuraInstances" and v54 and v54 ~= v_u_9 then
						v_u_53:Destroy()
					end
				end)
			end
			workspace.DescendantAdded:Connect(function(p_u_55)
				-- upvalues: (ref) v_u_9
				pcall(function()
					-- upvalues: (copy) p_u_55, (ref) v_u_9
					local v56 = p_u_55:FindFirstAncestorOfClass("Player")
					if p_u_55.Name == "AuraInstances" and v56 and v56 ~= v_u_9 then
						p_u_55:Destroy()
					end
				end)
			end)
			return
		end
	end
end)
local v_u_57 = Tween0o.new(0.2, Enum.EasingStyle.Quart)
local v_u_58 = Tween0o.new(2, Enum.EasingStyle.Quad)
local v_u_59 = Tween0o.new(0.5, Enum.EasingStyle.Quart)
local v_u_60 = Tween0o.new(1, Enum.EasingStyle.Quart)
local v_u_61 = Tween0o.new(3, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
local v_u_62 = v1:WaitForChild("Assets"):WaitForChild("SFXs")
local v_u_63 = game.Workspace.CurrentCamera

local v_u_64 = script:WaitForChild("MenuBGM")
local v_u_65 = workspace:WaitForChild("BGMS")
workspace:WaitForChild("GlobalSounds")
local v_u_66 = Instance.new("BlurEffect", game.Lighting)
require(v8:WaitForChild("Modules").DB.WeatherDB2)
local v_u_67 = v8:WaitForChild("Server0o")
local v_u_68 = false
local v_u_69 = false
local v_u_70 = false
local v_u_71 = 0
local v_u_72 = CFrame.new(408.544586, 111.252098, -342.674713, 0.324568152, 0.167498857, -0.930913389, -1.29416585e-05, 0.984196186, 0.177081496, 0.945862353, -0.0574629717, 0.319440901)
local v_u_73 = {}
local v_u_74 = Instance.new("BindableEvent")
local function v_u_76()
	-- upvalues: (copy) v_u_65
	for _, v75 in pairs(v_u_65:GetChildren()) do
		if v75:GetAttribute("IsPlaying") then
			v75:Pause()
			v75:SetAttribute("IsPlaying", false)
		end
	end
end
local function v_u_79()
	-- upvalues: (copy) v_u_65, (copy) v_u_67, (copy) v_u_4, (copy) v_u_58, (copy) v_u_9, (copy) v_u_76
	local v77 = v_u_65:FindFirstChild("Is" .. v_u_67:GetAttribute("CurrentBiome")) or v_u_65:FindFirstChild("Is" .. v_u_67:GetAttribute("CurrentTime"))
	if v77 then
		if not v77:GetAttribute("IsPlaying") then
			for _, v78 in ipairs(v_u_65:GetChildren()) do
				if v78.Name == v77.Name then
					v_u_4:Create(v78, v_u_58, {
						["Volume"] = v78:GetAttribute("PlayVolume") or 0.2
					}):Play()
					v78:Play()
					v78:SetAttribute("IsPlaying", true)
				else
					v_u_4:Create(v78, v_u_58, {
						["Volume"] = 0
					}):Play()
					v78:SetAttribute("IsPlaying", false)
				end
			end
		end
		if not v_u_9:GetAttribute("ToggleBGM") then
			v_u_76()
		end
		if v_u_9.Character and v_u_9.Character:GetAttribute("PlayingZone") then
			v_u_76()
		end
	else
		error("BGM Not found on the folder")
	end
end
v_u_64:Play()
repeat
	v_u_63.CameraType = Enum.CameraType.Scriptable
	task.wait()
until v_u_63.CameraType == Enum.CameraType.Scriptable
task.spawn(function()
	-- upvalues: (copy) v_u_5, (ref) v_u_71, (copy) v_u_63, (copy) v_u_72, (copy) v_u_4, (copy) v_u_57, (copy) v_u_64, (copy) v_u_12, (ref) v_u_68, (copy) v_u_9
	repeat
		v_u_5.Heartbeat:Wait()
		v_u_71 = v_u_71 + 1
		local v80 = v_u_63
		local v81 = v_u_72
		local v82 = CFrame.Angles
		local v83 = v_u_71 / 124
		local v84 = math.sin(v83) * 1
		local v85 = math.rad(v84)
		local v86 = v_u_71 / 142
		local v87 = math.sin(v86) * 1
		local v88 = math.rad(v87)
		local v89 = v_u_71 / 130
		local v90 = math.sin(v89) * 1
		v80.CFrame = v81 --* v82(v85, v88, (math.rad(v90)))
		v_u_4:Create(v_u_63, v_u_57, {
			["FieldOfView"] = 70 - v_u_64.PlaybackLoudness / 80
		}):Play()
		local v91 = v_u_12.LoadingImage
		local v92 = v91.Rotation
		local v93 = v_u_71 / 50
		v91.Rotation = v92 + 1.2 + 1 * math.sin(v93)
	until v_u_68
	v_u_4:Create(v_u_63, v_u_57, {
		["FieldOfView"] = 70
	}):Play()
	repeat
		v_u_63.CameraType = Enum.CameraType.Custom
		task.wait()
	until v_u_63.CameraType == Enum.CameraType.Custom
	task.wait(3)
	v_u_9:SetAttribute("ClientLoaded", true)
end)
local v_u_94 = v8:GetDescendants()
local function v_u_106()
	-- upvalues: (ref) v_u_69, (copy) v_u_26, (copy) v_u_94, (copy) v_u_74, (copy) v_u_7, (copy) v_u_4, (copy) v_u_17, (copy) v_u_59, (copy) v_u_19
	script.Parent:GetAttributeChangedSignal("Teleported"):Once(function()
		-- upvalues: (ref) v_u_69
		v_u_69 = true
	end)
	v_u_69 = v_u_26 or script.Parent:GetAttribute("Teleported")
	local v_u_95 = 0
	for v96, v_u_97 in ipairs(v_u_94) do
		task.defer(function()
			-- upvalues: (ref) v_u_74, (copy) v_u_97, (ref) v_u_7, (ref) v_u_95
			local v_u_98 = false
			local v_u_99 = false
			local v_u_100 = false
			local v_u_101 = nil
			local v103 = v_u_74.Event:Connect(function(p102)
				-- upvalues: (ref) v_u_99, (ref) v_u_97, (ref) v_u_100
				v_u_99 = p102 == v_u_97
				v_u_100 = v_u_99
			end)
			task.delay(3, v_u_74.Fire, v_u_74, v_u_97)
			task.defer(function()
				-- upvalues: (ref) v_u_7, (ref) v_u_97, (ref) v_u_98, (ref) v_u_101, (ref) v_u_99
				v_u_7:PreloadAsync({ v_u_97 }, function(p104, p105)
					-- upvalues: (ref) v_u_98, (ref) v_u_101
					p104:gsub("%D", "")
					if p105 == Enum.AssetFetchStatus.Success then
						v_u_98 = true
					end
					v_u_101 = p105
				end)
				v_u_99 = true
			end)
			repeat
				task.wait()
			until v_u_98 or v_u_99
			v103:Disconnect()
			v_u_95 = v_u_95 + 1
		end)
		if v96 % 100 == 0 then
			task.wait()
		end
	end
	repeat
		v_u_4:Create(v_u_17, v_u_59, {
			["Size"] = UDim2.fromScale(v_u_95 / #v_u_94, 1)
		}):Play()
		v_u_19.Text = string.format("[%d/%d]", v_u_95, #v_u_94)
		task.wait()
	until v_u_69 or v_u_95 == #v_u_94
end
local function v107()
	-- upvalues: (copy) v_u_12
	v_u_12.CurrentLoadingState.Text = "Closing latest session..."
end
task.delay(20, function()
	-- upvalues: (copy) v_u_15, (copy) v_u_9, (copy) v_u_12
	if not (v_u_15.Visible or v_u_9:GetAttribute("ForceLoading")) then
		v_u_12.CurrentLoadingState.Text = "Force-Loading Data..."
	end
end)
local function v108()
	-- upvalues: (ref) v_u_69, (copy) v_u_62, (copy) v_u_15, (copy) v_u_12
	if not v_u_69 then
		v_u_69 = true
		v_u_62.Click:Play()
		v_u_15.Visible = false
		v_u_12.CurrentLoadingState.Text = "Skipping..."
	end
end
v25.ButtonGuide:Set(v_u_15, "ButtonA", v108)
v_u_15.MouseButton1Click:Connect(v108)
v_u_15.MouseEnter:Connect(function()
	-- upvalues: (copy) v_u_62, (copy) v_u_4, (copy) v_u_15, (copy) v_u_59
	v_u_62.MouseHover:Play()
	v_u_4:Create(v_u_15, v_u_59, {
		["Size"] = UDim2.fromScale(0.21, 0.06)
	}):Play()
end)
v_u_15.MouseLeave:Connect(function()
	-- upvalues: (copy) v_u_4, (copy) v_u_15, (copy) v_u_59
	v_u_4:Create(v_u_15, v_u_59, {
		["Size"] = UDim2.fromScale(0.2, 0.05)
	}):Play()
end)
local function v_u_109()
	-- upvalues: (ref) v_u_70, (copy) v_u_10, (copy) v_u_62, (copy) v_u_6, (copy) v_u_14, (copy) v_u_20, (copy) v_u_13, (copy) v_u_18, (copy) v_u_4, (copy) v_u_61, (copy) v_u_66, (copy) v_u_64, (copy) v_u_79, (ref) v_u_68, (copy) v_u_12, (copy) v_u_11
	if not v_u_70 then
		v_u_70 = true
	end
	Waiting.Visible = true
	v_u_10:FireServer()
	v_u_62.Click:Play()
	v_u_62.Shine:Play()
	v_u_6:SetCoreGuiEnabled(Enum.CoreGuiType.All, true)
	v_u_14.Visible = false
	v_u_20.Visible = false
	v_u_13.Visible = false
	Border.Visible = false
	imCrashingOut.Visible = false
	v_u_18.BackgroundTransparency = 0
	coroutine.wrap(function()
		-- upvalues: (ref) v_u_4, (ref) v_u_18, (ref) v_u_61
		task.wait(2)
		v_u_4:Create(v_u_18, v_u_61, {
			["BackgroundTransparency"] = 1
		}):Play()
	end)()
	v_u_4:Create(v_u_66, v_u_61, {
		["Size"] = 0
	}):Play()
	v_u_64:Stop()
	v_u_79()
	v_u_68 = true
	v_u_12.Visible = false
	v_u_9.PlayerGui:WaitForChild("Luck").Enabled = true --MIERDA CACA SEXO CULO
	task.wait(5)
	Waiting.Visible = false
	v_u_11.Enabled = false
end
local v_u_110 = 0
local function v129(p111)
	-- upvalues: (ref) v_u_110, (copy) v_u_73, (copy) v_u_21, (copy) v_u_14, (copy) v_u_24, (copy) v_u_13, (copy) v_u_23
	v_u_110 = v_u_110 + p111 * 50
	for _, v112 in ipairs(v_u_73) do
		if v112 and v112.Parent then
			v112.ImageTransparency = 0.98 + v_u_21.BackgroundTransparency * 0.02
		end
	end
	--[[local v113 = v_u_14
	local v114 = UDim2.fromScale
	local v115 = v_u_110 / 60
	local v116 = 0.5 + 0.01 * math.sin(v115)
	local v117 = v_u_24.Value
	local v118 = v_u_110 / 50
	v113.Position = v114(v116, v117 + 0.01 * math.sin(v118))
	local v119 = v_u_14
	local v120 = v_u_110 / 55
	v119.Rotation = math.sin(v120)
	local v121 = v_u_13
	local v122 = UDim2.fromScale
	local v123 = v_u_110 / 55
	local v124 = 0.012 + 0.01 * math.sin(v123)
	local v125 = v_u_23.Value
	local v126 = v_u_110 / 60
	v121.Position = v122(v124, v125 + 0.01 * math.sin(v126))
	local v127 = v_u_13
	local v128 = v_u_110 / 50
	v127.Rotation = math.sin(v128)]]
	local v129 = require(v1:WaitForChild("Modules"):WaitForChild("UI"):WaitForChild("Quad")).Mount
	local tbl_12_upvr = {{
		Type = "Title";
		Text = "[ Eon1-1 Update ]";
	}, {
			Type = "Head";
			Text = "New Content";
		}, {
			Type = "Context";
			Text = "";
		}, {
			Type = "Context";
			Text = "**NPC**";
		}, {
			Type = "Context";
			Text = "- New traveling merchant, Jack";
		}, {
			Type = "Context";
			Text = "- You can sell Halloween themed aura and item to him to trade \"Pump Tokens\" Additionally, he offers most in-game items in exchange for these \"Pump Tokens\"";
		}, {
			Type = "Context";
			Text = "";
		}, {
			Type = "Context";
			Text = "**Aura**";
		}, {
			Type = "Context";
			Text = "> 10 New types of Event Aura";
		}, {
			Type = "Context";
			Text = "- APOSTOLOS:VEIL, HARVESTER, NIGHTMARE SKY, DULLAHAN, SOUL HUNTER, Cryptfire, Moonflower, Vital, Lunar : Nightfall, PUMP";
		}, {
			Type = "Context";
			Text = "- These auras all appear exclusively in their dedicated biomes";
		}, {
			Type = "Context";
			Text = "**Tier changed**";
		}, {
			Type = "Context";
			Text = "- Innovator (EXALTED -> EVENT)";
		}, {
			Type = "Context";
			Text = "";
		}, {
			Type = "Context";
			Text = "**BGM**";
		}, {
			Type = "Context";
			Text = "- Overdrive BGM has been changed";
		}, {
			Type = "Context";
			Text = "- The sound scales of all auras have been slightly adjusted";
		}, {
			Type = "Context";
			Text = "";
		}, {
			Type = "Context";
			Text = "**Biome**";
		}, {
			Type = "Context";
			Text = "> 2 New biome added";
		}, {
			Type = "Context";
			Text = "- Pumkin Moon, Graveyard";
		}, {
			Type = "Context";
			Text = "- These biomes only appear during Night Time";
		}, {
			Type = "Context";
			Text = "";
		}, {
			Type = "Context";
			Text = "**Items**";
		}, {
			Type = "Context";
			Text = "> Gear";
		}, {
			Type = "Context";
			Text = "- Pump Punch (Event)";
		}, {
			Type = "Context";
			Text = "> Potion";
		}, {
			Type = "Context";
			Text = "- Pump King's Blood";
		}, {
			Type = "Context";
			Text = "> Crafting Material";
		}, {
			Type = "Context";
			Text = "- Pump King's Soul";
		}, {
			Type = "Context";
			Text = "";
		}, {
			Type = "Context";
			Text = "**Others**";
		}, {
			Type = "Context";
			Text = "- RIA event has completely ended.";
		}, {
			Type = "Context";
			Text = "- remaining RIA points have been exchanged for either 1 Lucky Potion or 1 Speed Potion each";
		}}
	local tbl_9 = {
		Title = 0.08;
		Head = 0.05;
		Context = 0.03;
	}
	for _, v in ipairs(tbl_12_upvr) do
		v129(script, {
			BackgroundTransparency = 1;
			TextColor3 = Color3.fromRGB(47, 50, 63);
			TextScaled = true;
			Size = UDim2.fromScale(1, tbl_9[v.Type]);
			Text = v.Text;
			TextXAlignment = Enum.TextXAlignment.Left;
		})
	end
end
local function v131()
	-- upvalues: (copy) v_u_16, (copy) v_u_12, (copy) v_u_15, (copy) v_u_106, (copy) v_u_4, (copy) v_u_60, (ref) v_u_49, (copy) v_u_14, (copy) v_u_27, (copy) v_u_58, (copy) v_u_23, (copy) v_u_31, (copy) v_u_24, (copy) v_u_22, (copy) v_u_20, (copy) v_u_26, (copy) v_u_109
	v_u_16.Visible = true
	v_u_12.CurrentLoadingState.Text = "Loading assets..."
	v_u_15.Visible = true
	v_u_11.LoadingFrame.LoadingBar.AssetText.Visible = true
	v_u_106()
	v_u_15.Visible = false
	coroutine.wrap(function()
		-- upvalues: (ref) v_u_4, (ref) v_u_16, (ref) v_u_60
		v_u_4:Create(v_u_16, v_u_60, {
			["BackgroundTransparency"] = 1
		}):Play()
		for _, v130 in ipairs(v_u_16:GetDescendants()) do
			if v130:IsA("Frame") then
				v_u_4:Create(v130, v_u_60, {
					["BackgroundTransparency"] = 1
				}):Play()
			elseif v130:IsA("TextLabel") then
				v_u_4:Create(v130, v_u_60, {
					["TextTransparency"] = 1
				}):Play()
			end
		end
		task.wait(1)
		v_u_16.Visible = false
	end)()
	v_u_49 = false
	coroutine.wrap(function()
		-- upvalues: (ref) v_u_14, (ref) v_u_27, (ref) v_u_12, (ref) v_u_58, (ref) v_u_23, (ref) v_u_31, (ref) v_u_24, (ref) v_u_22, (ref) v_u_60, (ref) v_u_20
		v_u_14.Visible = true
		imCrashingOut.Visible = true
		v_u_27:Create(v_u_12:WaitForChild("BaseFrame"), v_u_58, {
			["BackgroundTransparency"] = 1
		}):Play()
		task.wait(2)
		--[[v_u_27:Create(v_u_23, v_u_31, {
			["Value"] = 0.024
		}):Play()]]
		task.wait(0.5)
		v_u_27:Create(v_u_24, v_u_31, {
			["Value"] = 0.85
		}):Play()
		task.wait(0.5)
		--[[v_u_27:Create(v_u_22, v_u_60, {
			["Position"] = UDim2.fromScale(0, 0.96)
		}):Play()]]
		task.wait(0.5)
		--[[v_u_27:Create(v_u_20, v_u_60, {
			["Position"] = UDim2.fromScale(0.77, 0.95)
		}):Play()]]
	end)()
	v_u_12.CurrentLoadingState.Visible = false
	v_u_12.LoadingImage.Visible = false
	v_u_11.LoadingFrame.LoadingBar.AssetText.Visible = false
	v_u_11.ERATitle.Visible = true
	v_u_11.BGM.Visible = true
	v_u_11.LoadingFrame.UpdateLogs.Visible = true
	v_u_4:Create(v_u_13, Tween0o.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {
		Position = UDim2.new(.1,0,.1,0)
	}):Play()
	task.delay(1, function()
		v_u_4:Create(v_u_11.LoadingFrame.Start, Tween0o.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {
			Position = UDim2.new(.5,0,.8,0)
		}):Play()
		v_u_4:Create(v_u_11.LoadingFrame.UpdateLog, Tween0o.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {
			Position = UDim2.new(.5,0,.89,0)
		}):Play()	
	end)
	task.delay(1, function()
		local AnimateBorder = function(): ()
			local Borders = Border:WaitForChild("Borders")
			local BrightGradient = Border:WaitForChild("BrightGradient")
			local Animate = function(): ()
				--[[local StartSequence = NumberSequence.new(
					{
						NumberSequenceKeypoint.new(1, 1, 1),
						NumberSequenceKeypoint.new(1, 1, 1),
						NumberSequenceKeypoint.new(1, 1, 1),
						NumberSequenceKeypoint.new(1, 1, 1)
					}
				)]]
				local EndSequence = NumberSequence.new(
					{
						NumberSequenceKeypoint.new(0, 0.7, 0),
						NumberSequenceKeypoint.new(0.15, 1, 0),
						NumberSequenceKeypoint.new(0.85, 1, 0),
						NumberSequenceKeypoint.new(1, 0.7, 0)
					}
				)
				v_u_4:Create(Borders:WaitForChild("T"), Tween0o.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {
					Position = UDim2.fromScale(0, 0)
				}):Play()
				v_u_4:Create(Borders:WaitForChild("B"), Tween0o.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {
					Position = UDim2.fromScale(0, 1)
				}):Play()
				v0.new(BrightGradient:WaitForChild("UIGradient"), Tween0o.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {
					Transparency = EndSequence
				}):Play()
			end
			Animate()
		end
		AnimateBorder()
	end)
	if script.Parent:GetAttribute("Teleported") or v_u_26 then
		script.Parent:SetAttribute("Remove", true)
		v_u_109()
	end
end
--[[if game:GetService("UserInputService").TouchEnabled then
	local v_u_132 = false
	v_u_20:WaitForChild("ScrollingFrame"):WaitForChild("Title").MouseEnter:Connect(function()
		-- upvalues: (ref) v_u_132, (copy) v_u_27, (copy) v_u_20, (copy) v_u_60
		if v_u_132 then
			v_u_132 = false
			v_u_27:Create(v_u_20, v_u_60, {
				["Position"] = UDim2.fromScale(0.77, 0.95)
			}):Play()
		else
			v_u_132 = true
			v_u_27:Create(v_u_20, v_u_60, {
				["Position"] = UDim2.fromScale(0.77, 0.4)
			}):Play()
		end
	end)
else
	v_u_20.MouseEnter:Connect(function()
		-- upvalues: (copy) v_u_27, (copy) v_u_20, (copy) v_u_60
		v_u_27:Create(v_u_20, v_u_60, {
			["Position"] = UDim2.fromScale(0.77, 0.4)
		}):Play()
	end)
	v_u_20.MouseLeave:Connect(function()
		-- upvalues: (copy) v_u_27, (copy) v_u_20, (copy) v_u_60
		v_u_27:Create(v_u_20, v_u_60, {
			["Position"] = UDim2.fromScale(0.77, 0.95)
		}):Play()
	end)
end]]
if v_u_9:GetAttribute("Loaded") then
	task.defer(v131)
else
	v_u_9:GetAttributeChangedSignal("Loaded"):Once(v131)
end
v_u_14.MouseButton1Click:Connect(v_u_109)
v_u_14.MouseEnter:Connect(function()
	-- upvalues: (copy) v_u_62, (copy) v_u_4, (copy) v_u_14, (copy) v_u_59
	v_u_62.MouseHover:Play()
	v_u_4:Create(v_u_14.Frame, v_u_59, {
		["BackgroundTransparency"] = 0.4
	}):Play()
end)
v_u_14.MouseLeave:Connect(function()
	-- upvalues: (copy) v_u_4, (copy) v_u_14, (copy) v_u_59
	v_u_4:Create(v_u_14.Frame, v_u_59, {
		["BackgroundTransparency"] = 0.8
	}):Play()
end)
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local Player = game.Players.LocalPlayer
local gui = script.Parent
local loadingFrame = v_u_12
local updateLogButton = loadingFrame:WaitForChild("UpdateLog")
local baseFrame = loadingFrame:WaitForChild("BaseFrame")
local darkFrame = v_u_18
local buttonEnterTween0o = Tween0o.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local buttonLeaveTween0o = Tween0o.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local transparencyTween0o = Tween0o.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local isUpdateLogVisible = false
local function toggleUpdateLog()
	local XS = 1.125
	if isUpdateLogVisible and isUpdateLogVisible == true then
		XS = 1.125
	else
		XS = 0.85
	end
	local Open = function(): (Tween)
		local Tween = v_u_4:Create(v_u_20, Tween0o.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
			Position = UDim2.fromScale(XS, 0.5)
		})
		return Tween :: Tween
	end
	Open():Play()
	isUpdateLogVisible = not isUpdateLogVisible
end
updateLogButton.MouseEnter:Connect(function()
	local hoverTween = TweenService:Create(updateLogButton:FindFirstChild("Frame"), buttonEnterTween0o, { BackgroundTransparency = 0.4 })
	hoverTween:Play()
	v_u_62.MouseHover:Play()
end)
updateLogButton.MouseLeave:Connect(function()
	local resetHoverTween = TweenService:Create(updateLogButton:FindFirstChild("Frame"), buttonLeaveTween0o, { BackgroundTransparency = 0.8 })
	resetHoverTween:Play()
end)
updateLogButton.MouseButton1Click:Connect(toggleUpdateLog)
v_u_67:GetAttributeChangedSignal("CurrentBiome"):Connect(function()
	-- upvalues: (ref) v_u_68, (copy) v_u_79
	if v_u_68 then
		v_u_79()
	end
end)
v_u_9:GetAttributeChangedSignal("ToggleBGM"):Connect(function(_)
	-- upvalues: (ref) v_u_68, (copy) v_u_79
	if v_u_68 then
		v_u_79()
	end
end)
if v_u_9:GetAttribute("ForceLoading") then
	v_u_12.CurrentLoadingState.Text = "Closing latest session..."
end
require(v8.Modules.ConsoleIconHandler).ButtonGuide:Set(v_u_14, "ButtonA", v_u_109)
v_u_9:GetAttributeChangedSignal("ForceLoading"):Connect(v107)
v_u_5.RenderStepped:Connect(v129)
while not v_u_70 do
	local v133 = script:WaitForChild("Checker"):Clone()
	v133.Parent = v_u_12:WaitForChild("BaseFrame")
	v133.ImageTransparency = 0.98 + v_u_21.BackgroundTransparency * 0.02
	v_u_27:Create(v133, Tween0o.new(6, Enum.EasingStyle.Linear), {
		["Position"] = UDim2.fromScale(0, -1)
	}):Play()
	game:GetService("Debris"):AddItem(v133, 6)
	table.insert(v_u_73, v133)
	task.wait(3)
end