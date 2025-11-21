local l_Players_0 = game:GetService("Players");
local l_Lighting_0 = game:GetService("Lighting");
local _ = game:GetService("StarterGui");
local l_RunService_0 = game:GetService("RunService");
local _ = game:GetService("UserService");
local _ = game:GetService("UserInputService");
local l_ReplicatedStorage_0 = game:GetService("ReplicatedStorage");
local l_LocalPlayer_0 = l_Players_0.LocalPlayer;
local l_PlayerGui_0 = l_LocalPlayer_0:WaitForChild("PlayerGui");
local l_l_LocalPlayer_0_Mouse_0 = l_LocalPlayer_0:GetMouse();
local l_Modules_0 = l_ReplicatedStorage_0:WaitForChild("Modules");
local l_DB_0 = l_Modules_0:WaitForChild("DB");
local l_ClientBasedFunctions_0 = require(l_Modules_0:WaitForChild("CoreModules"):WaitForChild("ClientBasedFunctions"));
local l_AuraControll_0 = require(l_Modules_0:WaitForChild("AuraControll"));
local _ = require(l_Modules_0:WaitForChild("Queue")).new("asdf", false);
local l_ReplicaController_0 = require(l_ReplicatedStorage_0:WaitForChild("ReplicaController"));
local l_Utility_0 = require(l_Modules_0:WaitForChild("Utility"));
local l_ConsoleIconHandler_0 = require(l_Modules_0:WaitForChild("ConsoleIconHandler"));
local _ = l_ReplicatedStorage_0:WaitForChild("Remotes"):WaitForChild("SetFilter");
local l_PlayRollEffect_0 = l_ReplicatedStorage_0:WaitForChild("Events"):WaitForChild("PlayRollEffect");
local l_RarityDB_0 = require(l_DB_0:WaitForChild("RarityDB"));
local l_Descriptions_0 = require(l_DB_0:WaitForChild("Descriptions"));
local l_TierSkins_0 = require(l_DB_0:WaitForChild("TierSkins"));
local l_Item_0 = script:WaitForChild("Item");
local l_WikiDummy_0 = l_ReplicatedStorage_0:WaitForChild("WikiDummy");
local l_l_WikiDummy_0_Pivot_0 = l_WikiDummy_0:GetPivot();
local l_Humanoid_0 = l_WikiDummy_0:WaitForChild("Humanoid");
local _ = l_ReplicatedStorage_0:WaitForChild("Assets"):WaitForChild("SFXs");
local l_WikiGround_0 = workspace:WaitForChild("WikiGround");
local l_GreenScreens_0 = l_ReplicatedStorage_0:WaitForChild("GreenScreens");
local l_FakeRolling_0 = l_PlayerGui_0:WaitForChild("FakeRolling");
local l_MainInterface_0 = l_PlayerGui_0:WaitForChild("MainInterface");
local l_Shiftlock_0 = l_PlayerGui_0:WaitForChild("Shiftlock");
local l_Auras_0 = l_MainInterface_0:WaitForChild("ExtraButtons"):WaitForChild("Auras");
local _ = CFrame.new(267.90625, 1, -31474, 0, -0.258819073, 0.965925932, 0, 0.965925932, 0.258819073, -1, 0, 0);
local v35 = nil;
local v36 = nil;
local l_CurrentCamera_0 = workspace.CurrentCamera;
local _ = l_CurrentCamera_0.CameraSubject;
local _ = l_Lighting_0:WaitForChild("Bloom");
local l_Atmosphere_0 = l_Lighting_0:WaitForChild("Atmosphere");
local l_AuraWiki_0 = l_PlayerGui_0:WaitForChild("AuraWiki");
local l_WikiBase_0 = l_AuraWiki_0:WaitForChild("WikiBase");
local l_Holder_0 = l_WikiBase_0:WaitForChild("Holder");
local l_Wiki0ormation_0 = l_AuraWiki_0:WaitForChild("Wiki0ormation");
local l_Rarity_0 = l_Wiki0ormation_0:WaitForChild("Rarity");
local l_Condition_0 = l_Wiki0ormation_0:WaitForChild("Condition");
local l_BackButton_0 = l_WikiBase_0:WaitForChild("SelectionCorners"):WaitForChild("BackButton");
local l_Desc_0 = l_Wiki0ormation_0:WaitForChild("DescHolder"):WaitForChild("Desc");
local l_GreenScreen_0 = l_AuraWiki_0:WaitForChild("GreenScreen");
local l_ViewCutscene_0 = l_AuraWiki_0:WaitForChild("ViewCutscene");
local l_Creators_0 = l_Wiki0ormation_0:WaitForChild("Creators");
local l_Owner_0 = l_Creators_0:WaitForChild("Owner");
local l_Creator_0 = l_Creators_0:WaitForChild("Creator");
local l_Conecpt_0 = l_Creators_0:WaitForChild("Conecpt");
local l_Original_0 = l_Creators_0:WaitForChild("Original");
local l_Skins_0 = l_AuraWiki_0:WaitForChild("Skins");
local l_Holder_1 = l_Skins_0:WaitForChild("Holder");
local l_Template_0 = l_Holder_1:WaitForChild("Template");
local l_TierSkinUIs_0 = l_ReplicatedStorage_0:WaitForChild("TierSkinUIs");
local l_NotExist_0 = l_Skins_0:WaitForChild("NotExist");
local l_Audio_0 = l_AuraWiki_0:WaitForChild("Audio");
local l_Author_0 = l_Audio_0:WaitForChild("Author");
local l_AudioName_0 = l_Audio_0:WaitForChild("AudioName");
local l_ToolTip_0 = l_AuraWiki_0:WaitForChild("ToolTip");
local l_Text_0 = l_ToolTip_0:WaitForChild("Text");
local l_Descendants_0 = l_ToolTip_0:WaitForChild("SelectionCorners"):GetDescendants();
local v67 = {};
local l_TiersUI_0 = l_ReplicatedStorage_0:WaitForChild("TiersUI");
local v69 = false;
local v70 = false;
local v71 = false;
local v72 = "None";
local v73 = nil;
local v74 = nil;
l_ReplicaController_0.RequestData();
while true do
	task.wait();
	if l_ReplicaController_0.InitialDataReceived then
		break;
	end;
end;
local v75 = l_ReplicaController_0.GetReplicaById(l_LocalPlayer_0:GetAttribute("UID"));
local v76 = {};
local v77 = {};
l_Humanoid_0.RootPart.Anchored = true;
format_int = function(v78)
	local _, _, v81, v82, v83 = tostring(v78):find("([-]?)(%d+)([.]?%d*)");
	return v81 .. v82:reverse():gsub("(%d%d%d)", "%1,"):reverse():gsub("^,", "") .. v83;
end;
local function v88(v84, ...)
	local v85 = 0;
	local v86 = nil;
	local v87 = nil;
	while true do
		v86 = {
			pcall(v84, ...)
		};
		v87 = table.remove(v86, 1);
		if not v87 then
			v85 = v85 + 1;
			task.wait(2 ^ v85);
		end;
		if v87 then
			break;
		end;
	end;
	return table.unpack(v86);
end;
local function v89(v90)
	v67[v90] = {
		Model = v88(l_Players_0.CreateHumanoidModelFromDescription, l_Players_0, v88(l_Players_0.GetHumanoidDescriptionFromUserId, l_Players_0, v90), Enum.HumanoidRigType.R6), 
		Name = l_Utility_0.GetUsernameById(v90)
	};
	task.delay(120, v89, v90);
end;
local function __(v91)
	return table.find(v75.Data.DiscoveredAura, v91) ~= nil;
end;
local function _(v93, v94)
	if l_TierSkins_0[v93] and l_TierSkins_0[v93][v94] then
		return table.find(v75.Data.SkinsOwned[v93] or {}, v94) ~= nil;
	else
		return ;
	end;
end;
local function v100()
	local v96 = 0;
	local v97 = 0;
	for _, v99 in ipairs(l_Holder_0:GetChildren()) do
		if v99:IsA("ImageButton") and v99.Visible then
			v96 = v96 + 1;
			v97 = v99.AbsoluteSize.Y;
		end;
	end;
	l_Holder_0.CanvasSize = UDim2.fromOffset(0, v96 * v97 + (v96 - 1) * 5);
end;
local function v117(v101, v102, v103, v104, v105)
	local l_Value_0 = v101.Value;
	local v107 = v76[l_Value_0];
	local v108 = tostring((v101.RequirementOverride or v101.UnlockBy) or "None"):gsub("Is", "");
	local v109 = nil;
	local v110 = nil;
	if v107 == nil then
		return ;
	else
		if (v107.Value and (not (v35 == v101.Value) or v36 ~= v104)) and not v69 then
			v69 = true;
			v35 = v101.Value;
			v36 = v104 or "";
			if v101.Craftable then
				l_Rarity_0.Text = "Craftable";
			elseif v101.Unobtainable then
				l_Rarity_0.Text = "Unobtainable";
			else
				l_Rarity_0.Text = string.format("1 in %s", format_int(l_Utility_0.GetGeneralRarityByName(v104 and ("%*_%*"):format(l_Value_0, v104) or l_Value_0)));
			end;
			l_Condition_0.Text = string.format("Required: %s", v108);
			l_Desc_0.Text = (v104 and l_TierSkins_0[l_Value_0][v104].Description or l_Descriptions_0[v101.Value]) or "Empty";
			local l_Script_0 = l_Desc_0:FindFirstChildOfClass("Script");
			if l_Script_0 then
				l_Script_0.Enabled = false;
				l_Script_0:Destroy();
				l_Script_0 = v74;
			end;
			local l_FirstChild_0 = script.DescEffect:FindFirstChild(v104 and ("%*_%*"):format(l_Value_0, v104) or l_Value_0);
			if l_FirstChild_0 then
				l_FirstChild_0 = l_FirstChild_0:Clone();
				l_FirstChild_0.Parent = l_Desc_0;
				l_FirstChild_0.Enabled = true;
			end;
			if l_TierSkins_0[l_Value_0] and l_TierSkins_0[l_Value_0][v104] then
				v105 = l_TierSkins_0[l_Value_0][v104].IsCommunityAura or v105;
			end;
			if v104 then
				local v113 = l_TierSkins_0[l_Value_0][v104];
				if v113.Audio0o then
					l_Audio_0.Visible = true;
					l_AudioName_0.Text = v113.Audio0o.Name;
					l_Author_0.Text = ("By %*"):format(v113.Audio0o.Author);
				else
					l_Audio_0.Visible = false;
				end;
				if v113.OwnerId then
					while true do
						task.wait();
						if v67[v113.OwnerId] then
							break;
						end;
					end;
					v109 = v67[v113.OwnerId].Model:Clone();
					v110 = v67[v113.OwnerId].Name;
				end;
			else
				if v101.Audio0o then
					l_Audio_0.Visible = true;
					l_AudioName_0.Text = v101.Audio0o.Name;
					l_Author_0.Text = ("By %*"):format(v101.Audio0o.Author);
				else
					l_Audio_0.Visible = false;
				end;
				if v101.OwnerId then
					while true do
						task.wait();
						if v67[v101.OwnerId] then
							break;
						end;
					end;
					v109 = v67[v101.OwnerId].Model:Clone();
					v110 = v67[v101.OwnerId].Name;
				end;
			end;
			if v102 or v103 then
				l_Original_0.Visible = false;
				if v102 then
					l_Creator_0.Visible = true;
					l_Creator_0.Text = (v105 and "[CA] " or "[OA] ") .. ("By @%*"):format((l_Utility_0.GetUsernameById(v102, true)));
				else
					l_Creator_0.Visible = false;
				end;
				if v103 then
					l_Conecpt_0.Visible = true;
					l_Conecpt_0.Text = ("Concept By @%*"):format((l_Utility_0.GetUsernameById(v103, true)));
				else
					l_Conecpt_0.Visible = false;
				end;
			else
				l_Original_0.Visible = true;
				l_Creator_0.Visible = false;
				l_Conecpt_0.Visible = false;
			end;
			l_Owner_0.Visible = v110 ~= nil;
			if v110 then
				l_Owner_0.Text = ("Owned by @%*"):format(v110);
			end;
			for _, v115 in pairs(v77) do
				v115.Visible = false;
			end;
			if v77[l_Value_0] then
				l_NotExist_0.Visible = false;
				v77[l_Value_0].Visible = true;
			else
				l_NotExist_0.Visible = true;
			end;
			if v73 then
				v73:Destroy();
				v73 = v74;
			end;
			if v109 then
				v109:WaitForChild("Animate"):Destroy();
				l_WikiDummy_0:WaitForChild("Animate"):Clone().Parent = v109;
				l_AuraControll_0.EquipAura(l_WikiDummy_0, "");
				l_WikiDummy_0.Parent = l_ReplicatedStorage_0;
				v109.Parent = workspace;
				v109.PrimaryPart = v109:WaitForChild("HumanoidRootPart");
				v73 = v109;
			else
				l_WikiDummy_0.Parent = workspace;
			end;
			local v116 = v109 or l_WikiDummy_0;
			v116:SetAttribute("Aura", v104 and ("%*_%*"):format(l_Value_0, v104) or l_Value_0);
			l_AuraControll_0.EquipAura(v116, v104 and ("%*_%*"):format(l_Value_0, v104) or l_Value_0);
			v69 = false;
		end;
		return ;
	end;
end;
local _ = function(v118)
	local v119 = (v118 == true and Color3.fromRGB(255, 61, 64) or v118 == false and Color3.fromRGB(97, 255, 97)) or Color3.new(1, 1, 1);
	l_Text_0.Text = v118 == true and "Auto Skip Mode" or (v118 == false and "Auto Equip Mode" or "Disabled");
	l_Text_0.TextColor3 = v119;
	for _, v121 in ipairs(l_Descendants_0) do
		if v121:IsA("Frame") then
			v121.BackgroundColor3 = v119;
		end;
	end;
end;
local function v159(v123, v124)
	local v125 = l_Item_0:Clone();
	local l_AuraName_0 = v125.AuraName;
	local _ = string.gsub(tostring((v123.RequirementOverride or v123.UnlockBy) or "None"), "Is", "");
	local l_l_TiersUI_0_FirstChild_0 = l_TiersUI_0:FindFirstChild(v123.Value);
	local l_Value_1 = v123.Value;
	local l_BoolValue_0 = Instance.new("BoolValue");
	local v131 = l_TierSkins_0[l_Value_1];
	local v132 = v131 ~= nil and l_TierSkinUIs_0:WaitForChild(l_Value_1) or nil;
	local l_Loading_0 = v125:WaitForChild("Loading");
	v125.LayoutOrder = v124;
	l_BoolValue_0.Value = table.find(v75.Data.DiscoveredAura, l_Value_1) ~= nil;
	l_Loading_0.Visible = true;
	if not l_l_TiersUI_0_FirstChild_0 then
		
	end;
	if l_l_TiersUI_0_FirstChild_0 == nil then
		return
	end
	for _, v135 in ipairs(l_l_TiersUI_0_FirstChild_0:GetChildren()) do
		if not v135:IsA("TextLabel") then
			v135:Clone().Parent = l_AuraName_0;
		end;
	end;
	l_AuraName_0.FontFace = l_l_TiersUI_0_FirstChild_0.FontFace;
	l_AuraName_0.TextColor3 = l_l_TiersUI_0_FirstChild_0.TextColor3;
	v125.Parent = l_Holder_0;
	l_AuraName_0.Visible = false;
	l_AuraName_0.Text = v123.Value;
	if v131 then
		local l_StringValue_0 = Instance.new("StringValue");
		local v137 = l_Holder_1:Clone();
		v137.Name = l_Value_1;
		v137.Visible = false;
		v137.Parent = l_Holder_1.Parent;
		local v138 = l_TiersUI_0:WaitForChild(l_Value_1):Clone();
		local v139 = l_Template_0:Clone();
		local l_Locked_0 = v139:WaitForChild("Locked");
		local l_Equipped_0 = v139:WaitForChild("Equipped");
		v139.Name = "Default";
		v139.Visible = true;
		v139.Parent = v137;
		l_StringValue_0.Value = "";
		l_Locked_0.Visible = false;
		if v138:FindFirstChild("Rarity") then
			v138:FindFirstChild("Rarity"):Destroy();
		end;
		v138.Size = UDim2.fromScale(1, 0.75);
		v138.Position = UDim2.fromScale(0.5, 0.5);
		v138.Visible = not l_Locked_0.Visible;
		v138.Parent = v139;
		local l_l_Equipped_0_0 = l_Equipped_0 --[[ copy: 16 -> 24 ]];
		local function v144(v143)
			l_l_Equipped_0_0.Visible = v143 == "";
		end;
		l_Equipped_0.Visible = true;
		l_StringValue_0.Changed:Connect(v144);
		v139.MouseButton1Click:Connect(function()
			if not ((not v69 and not v70) and not l_Locked_0.Visible) or v36 == "" then
				return ;
			else
				v70 = true;
				l_StringValue_0.Value = "";
				v117(v123, v123.CreatorId, v123.ConceptId);
				v70 = false;
				return ;
			end;
		end);
		task.spawn(l_ClientBasedFunctions_0.LoadButtonEffects, v139, 1);
		for v145, v146 in pairs(v131) do
			local v147 = v132:WaitForChild(v145):Clone();
			local v148 = l_Template_0:Clone();
			local l_Locked_1 = v148:WaitForChild("Locked");
			local l_Equipped_1 = v148:WaitForChild("Equipped");
			local v151 = setmetatable(table.clone(v146), {
				__index = v123
			});
			v148.Name = v145;
			v148.Visible = true;
			v148.Parent = v137;
			l_Locked_1.ZIndex = 2;
			l_Locked_1.Visible = not if l_TierSkins_0[l_Value_1] and l_TierSkins_0[l_Value_1][v145] then table.find(v75.Data.SkinsOwned[l_Value_1] or {}, v145) ~= nil else nil;
			if v147:FindFirstChild("Rarity") then
				v147:FindFirstChild("Rarity"):Destroy();
			end;
			v147.Size = UDim2.fromScale(1, 0.75);
			v147.Position = UDim2.fromScale(0.5, 0.5);
			v147.Visible = not l_Locked_1.Visible;
			v147.Parent = v148;
			v75:ListenToChange({
				"SkinsOwned", 
				l_Value_1
			}, function()
				local l_l_Locked_1_0 = l_Locked_1;
				local l_l_Value_1_0 = l_Value_1;
				local l_v145_0 = v145;
				l_l_Locked_1_0.Visible = not if l_TierSkins_0[l_l_Value_1_0] and l_TierSkins_0[l_l_Value_1_0][l_v145_0] then table.find(v75.Data.SkinsOwned[l_l_Value_1_0] or {}, l_v145_0) ~= nil else nil;
				v147.Visible = not l_Locked_1.Visible;
			end);
			local function v156(v155)
				l_Equipped_1.Visible = v155 == v145;
			end;
			l_Equipped_1.Visible = v145 == nil;
			l_StringValue_0.Changed:Connect(v156);
			v148.MouseButton1Click:Connect(function()
				if not ((not v69 and not v70) and not l_Locked_1.Visible) or v36 == v145 then
					return ;
				else
					v70 = true;
					l_StringValue_0.Value = v145;
					v117(v151, v146.CreatorId or v151.CreatorId, v146.ConceptId or v151.ConceptId, v145);
					v70 = false;
					return ;
				end;
			end);
			if v146.IsHidden then
				if v75.Data.HiddenAuraFound[("%*_%*"):format(l_Value_1, v145)] then
					v148.Visible = true;
				else
					v148.Visible = false;
				end;
			end;
			task.spawn(l_ClientBasedFunctions_0.LoadButtonEffects, v148, 1);
		end;
		v137:GetPropertyChangedSignal("Visible"):Connect(function()
			if not v137.Visible then
				l_StringValue_0.Value = "";
			end;
		end);
		v77[l_Value_1] = v137;
	end;
	if l_BoolValue_0.Value then
		l_AuraName_0.Visible = true;
		v125.Locked.Visible = false;
	end;
	if v123.IsHidden then
		if v75.Data.HiddenAuraFound[l_Value_1] then
			l_BoolValue_0.Value = true;
			v125.Locked.Visible = false;
			l_AuraName_0.Visible = true;
		else
			v125.Visible = false;
			l_BoolValue_0.Value = false;
		end;
	end;
	if v123.Unobtainable and not l_BoolValue_0 then
		v125.Visible = false;
	end;
	v75:ListenToChange({
		"HiddenAuraFound", 
		l_Value_1
	}, function(v157)
		l_BoolValue_0.Value = v157;
	end);
	l_BoolValue_0.Changed:Connect(function(v158)
		l_AuraName_0.Text = v123.Value;
		v125.Locked.Visible = not v158;
		l_AuraName_0.Visible = v158;
		if v123.IsHidden then
			if v75.Data.HiddenAuraFound[l_Value_1] then
				v125.Visible = true;
			end;
		elseif v158 then
			v125.Visible = true;
		end;
		v100();
	end);
	l_ClientBasedFunctions_0.LoadButtonEffects(v125, 1);
	v125.MouseButton1Click:Connect(function()
		v117(v123, v123.CreatorId, v123.ConceptId, nil, v123.IsCommunityAura);
	end);
	l_Loading_0.Visible = false;
	v76[l_Value_1] = l_BoolValue_0;
end;
local function v163()
	if l_AuraWiki_0.Enabled then
		l_Lighting_0.ClockTime = 16;
	end;
	if l_AuraWiki_0.Enabled ~= v71 then
		v71 = l_AuraWiki_0.Enabled;
		l_CurrentCamera_0.CameraSubject = not l_AuraWiki_0.Enabled and (l_LocalPlayer_0.Character or l_LocalPlayer_0.CharacterAdded:Wait()):FindFirstChild("Humanoid") or l_WikiDummy_0:WaitForChild("HumanoidRootPart");
	end;
	local v160 = v73 and v73:FindFirstChild("Humanoid");
	if v160 then
		v73:PivotTo(l_l_WikiDummy_0_Pivot_0 * CFrame.new(0, v160.HipHeight, 0));
		if not v73:HasTag("Dummy") then
			v73:AddTag("Dummy");
		end;
	else
		l_WikiDummy_0:PivotTo(l_l_WikiDummy_0_Pivot_0 * CFrame.new(0, l_Humanoid_0.HipHeight, 0));
		if not l_WikiDummy_0:HasTag("Dummy") then
			l_WikiDummy_0:AddTag("Dummy");
		end;
	end;
	l_Humanoid_0:ChangeState(Enum.HumanoidStateType.Running);
	if not v35 then
		l_ViewCutscene_0.Visible = false;
	else
		local v161 = v36 ~= "" and l_TierSkins_0[v35][v36] or l_Utility_0.FindAuraData(v35);
		local v162 = (v36 ~= nil and v36 ~= "") and ("%*_%*"):format(v35, v36) or v35;
		if not v161.ShowOnFilter and (v161.Craftable or l_Utility_0.FindRarityByName(v162, true) <= 0) then
			l_ViewCutscene_0.Visible = false;
		else
			l_ViewCutscene_0.Visible = true;
		end;
	end;
	l_ToolTip_0.Position = UDim2.fromOffset(l_l_LocalPlayer_0_Mouse_0.X + ((l_Holder_0.AbsoluteSize.X * 0.12) * 0.8) * 2, l_ToolTip_0:GetAttribute("Y") or l_l_LocalPlayer_0_Mouse_0.Y);
end;
local function v166()
	for _, v165 in ipairs(v75.Data.DiscoveredAura) do
		if v76[v165] then
			v76[v165].Value = true;
		end;
	end;
end;
for v167, v168 in ipairs(l_RarityDB_0) do
	task.spawn(v159, v168, v167);
	if v168.OwnerId then
		task.spawn(v89, v168.OwnerId);
	end;
end;
l_Auras_0.MouseButton1Click:Connect(function()
	l_ClientBasedFunctions_0.CloseAllWindows();
	if table.find(v75.Data.DiscoveredAura, "Common") ~= nil then
		v117(l_RarityDB_0[1], nil, nil);
	end;
	l_Lighting_0.GlobalShadows = false;
	l_WikiDummy_0.Parent = workspace;
	l_MainInterface_0.Enabled = false;
	l_AuraWiki_0.Enabled = true;
	l_Atmosphere_0.Parent = nil;
	if l_PlayerGui_0:FindFirstChild("TouchGui") then
		l_PlayerGui_0.TouchGui.TouchControlFrame.JumpButton.Visible = false;
		l_Shiftlock_0.Enabled = false;
	end;
end);
local function v169()
	l_Lighting_0.GlobalShadows = true;
	if table.find(v75.Data.DiscoveredAura, "Common") ~= nil then
		v117(l_RarityDB_0[1], nil, nil);
	end;
	l_WikiDummy_0.Parent = l_ReplicatedStorage_0;
	l_AuraWiki_0.Enabled = false;
	l_MainInterface_0.Enabled = true;
	l_Atmosphere_0.Parent = l_Lighting_0;
	if l_PlayerGui_0:FindFirstChild("TouchGui") then
		l_PlayerGui_0.TouchGui.TouchControlFrame.JumpButton.Visible = true;
		l_Shiftlock_0.Enabled = true;
	end;
end;
l_ConsoleIconHandler_0.ButtonGuide:Set(l_BackButton_0, "ButtonB", v169);
l_BackButton_0.MouseButton1Click:Connect(v169);
l_GreenScreen_0.MouseButton1Click:Connect(function()
	if v72 == "Blue" then
		v72 = "None";
		l_GreenScreen_0.Text = "None";
		l_Lighting_0.GlobalShadows = true;
		for _, v171 in l_GreenScreen_0.SelectionCorners:GetChildren() do
			v171.Corner1.BackgroundColor3 = Color3.fromRGB(255, 48, 51);
			v171.Corner2.BackgroundColor3 = Color3.fromRGB(255, 48, 51);
		end;
		l_Lighting_0.SunRays.Enabled = true;
		l_GreenScreen_0.TextColor3 = Color3.fromRGB(255, 48, 51);
		l_WikiGround_0.Parent = workspace;
		l_GreenScreens_0.Parent = l_ReplicatedStorage_0;
		return ;
	elseif v72 == "None" then
		v72 = "Green";
		l_GreenScreen_0.Text = "Green Screen";
		l_Lighting_0.GlobalShadows = false;
		for _, v173 in l_GreenScreen_0.SelectionCorners:GetChildren() do
			v173.Corner1.BackgroundColor3 = Color3.fromRGB(124, 255, 168);
			v173.Corner2.BackgroundColor3 = Color3.fromRGB(124, 255, 168);
		end;
		l_Lighting_0.SunRays.Enabled = false;
		l_GreenScreen_0.TextColor3 = Color3.fromRGB(124, 255, 168);
		for _, v175 in l_GreenScreens_0:GetChildren() do
			v175.Color = Color3.fromRGB(43, 159, 41);
		end;
		l_GreenScreens_0.Parent = workspace;
		l_WikiGround_0.Parent = l_ReplicatedStorage_0;
		return ;
	else
		if v72 == "Green" then
			v72 = "Blue";
			l_GreenScreen_0.Text = "Blue Screen";
			l_Lighting_0.GlobalShadows = false;
			for _, v177 in l_GreenScreen_0.SelectionCorners:GetChildren() do
				v177.Corner1.BackgroundColor3 = Color3.fromRGB(0, 170, 255);
				v177.Corner2.BackgroundColor3 = Color3.fromRGB(0, 170, 255);
			end;
			l_Lighting_0.SunRays.Enabled = false;
			l_GreenScreen_0.TextColor3 = Color3.fromRGB(0, 170, 255);
			for _, v179 in l_GreenScreens_0:GetChildren() do
				v179.Color = Color3.fromRGB(37, 37, 159);
			end;
			l_GreenScreens_0.Parent = workspace;
			l_WikiGround_0.Parent = l_ReplicatedStorage_0;
		end;
		return ;
	end;
end);
l_RunService_0.RenderStepped:Connect(v163);
v75:ListenToChange({
	"DiscoveredAura"
}, v166);
l_ClientBasedFunctions_0.LoadButtonEffects(l_Auras_0);
l_ClientBasedFunctions_0.LoadButtonEffects(l_BackButton_0);
l_ClientBasedFunctions_0.LoadButtonEffects(l_GreenScreen_0);
l_ClientBasedFunctions_0.LoadButtonEffects(l_ViewCutscene_0);
l_Holder_0.ChildAdded:Connect(v100);
l_Holder_0.ChildRemoved:Connect(v100);
l_Holder_0:GetPropertyChangedSignal("AbsoluteSize"):Connect(v100);
l_GreenScreens_0.Parent = l_ReplicatedStorage_0;
v100();
l_ViewCutscene_0.MouseButton1Click:Connect(function()
	if not l_FakeRolling_0.Enabled and v35 then
		l_PlayRollEffect_0:Fire((v36 ~= nil and v36 ~= "") and ("%*_%*"):format(v35, v36) or v35);
	end;
end);
