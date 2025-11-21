if script.Parent:FindFirstChild("RollMain") then
	return ;
else
	local l_Players_0 = game:GetService("Players");
	local _ = game:GetService("StarterGui");
	local l_RunService_0 = game:GetService("RunService");
	local l_TweenService_0 = game:GetService("TweenService");
	local l_Debris_0 = game:GetService("Debris")
	local l_ReplicatedFirst_0 = game:GetService("ReplicatedFirst");
	local l_UserInputService_0 = game:GetService("UserInputService");
	local l_ReplicatedStorage_0 = game:GetService("ReplicatedStorage");
	local l_MarketplaceService_0 = game:GetService("MarketplaceService");
	local l_LocalPlayer_0 = l_Players_0.LocalPlayer;
	local l_Rolls_0 = l_LocalPlayer_0:WaitForChild("leaderstats"):WaitForChild("Rolls");
	local l_TiersUI_0 = l_ReplicatedStorage_0:WaitForChild("TiersUI");
	local l_TierSkinUIs_0 = l_ReplicatedStorage_0:WaitForChild("TierSkinUIs");
	local l_SFXs_0 = l_ReplicatedStorage_0:WaitForChild("Assets"):WaitForChild("SFXs");
	local l_Remotes_0 = l_ReplicatedStorage_0:WaitForChild("Remotes");
	local l_RollEvent_0 = l_Remotes_0:WaitForChild("RollEvent");
	local l_RollRemote_0 = script.Parent.Parent:WaitForChild("RollRemote");
	local l_UtilityServerToClient_0 = l_Remotes_0:WaitForChild("UtilityServerToClient");
	local l_Do100MEffect_0 = l_Remotes_0:WaitForChild("Do100MEffect");
	local l_Modules_0 = l_ReplicatedStorage_0:WaitForChild("Modules");
	local l_DB_0 = l_Modules_0:WaitForChild("DB");
	local l_CoreModules_0 = l_Modules_0:WaitForChild("CoreModules");
	local l_Core_0 = require(script:FindFirstAncestorOfClass("ScreenGui"):WaitForChild("Notification"):WaitForChild("Core"));
	local _ = require(l_Modules_0:WaitForChild("msgpack"));
	local l_Gamepasses_0 = require(l_DB_0:WaitForChild("Gamepasses"));
	local _ = require(l_DB_0:WaitForChild("RarityDB"));
	local l_SecretItems_0 = require(l_DB_0:WaitForChild("SecretItems"));
	local l_RollSettings_0 = require(l_DB_0:WaitForChild("RollSettings"));
	local l_RecipesDB_0 = require(l_DB_0:WaitForChild("RecipesDB"));
	local l_PotionRecipesDB_0 = require(l_DB_0:WaitForChild("PotionRecipesDB"));
	local l_Utility_0 = require(l_Modules_0:WaitForChild("Utility"));
	local l_RollModule_0 = require(l_Modules_0:WaitForChild("RollModule"));
	local l_ConsoleIconHandler_0 = require(l_Modules_0:WaitForChild("ConsoleIconHandler"));
	local l_ClientBasedFunctions_0 = require(l_CoreModules_0:WaitForChild("ClientBasedFunctions"));
	local l_ReplicaController_0 = require(l_ReplicatedStorage_0:WaitForChild("ReplicaController"));
	local _ = require(script:FindFirstAncestorOfClass("ScreenGui"):WaitForChild("RemoteFunction"));
	local l_script_FirstAncestorOfClass_0 = script:FindFirstAncestorOfClass("ScreenGui");
	local l_BottomFrame_0 = l_script_FirstAncestorOfClass_0:WaitForChild("BottomFrame")
	local l_RollButton_0 = l_BottomFrame_0:WaitForChild("RollButton");
	local l_StackDisplay_0 = l_RollButton_0:WaitForChild("StackDisplay");
	local l_Cooldown_0 = l_RollButton_0:WaitForChild("Cooldown");
	local _ = l_script_FirstAncestorOfClass_0:WaitForChild("SkipButton");
	local l_Youvefound_0 = l_script_FirstAncestorOfClass_0:WaitForChild("Youvefound");
	local _ = l_script_FirstAncestorOfClass_0:WaitForChild("EquipButton");
	local l_QuickRoll_0 = l_BottomFrame_0:WaitForChild("QuickRoll");
	local l_Desc_0 = l_QuickRoll_0:WaitForChild("Desc");
	local l_AutoRoll_0 = l_BottomFrame_0:WaitForChild("AutoRoll");
	local l_Desc_1 = l_AutoRoll_0:WaitForChild("Desc");
	local l_AutoRollReminder_0 = l_script_FirstAncestorOfClass_0:WaitForChild("AutoRollReminder");
	local l_WarningFrame_0 = l_script_FirstAncestorOfClass_0:WaitForChild("WarningFrame");
	local l_Nevermind_0 = l_WarningFrame_0:WaitForChild("Nevermind");
	local l_RealSkip_0 = l_WarningFrame_0:WaitForChild("RealSkip");
	local l_EquipWarningFrame_0 = l_script_FirstAncestorOfClass_0:WaitForChild("EquipWarningFrame");
	local l_Nevermind_1 = l_EquipWarningFrame_0:WaitForChild("Nevermind");
	local l_RealCraft_0 = l_EquipWarningFrame_0:WaitForChild("RealCraft");
	local l_Title_0 = l_EquipWarningFrame_0:WaitForChild("SelectionCorners"):WaitForChild("Title");
	local l_AllAuraLockedFrame_0 = l_script_FirstAncestorOfClass_0:WaitForChild("AllAuraLockedFrame");
	local l_Okay_0 = l_AllAuraLockedFrame_0:WaitForChild("Okay");
	local _ = l_script_FirstAncestorOfClass_0:WaitForChild("Blackboard");
	local l_Background_0 = l_script_FirstAncestorOfClass_0:WaitForChild("Background");
	local l_EquipButton_1 = l_script_FirstAncestorOfClass_0:WaitForChild("EquipButton");
	local l_SkipButton_1 = l_script_FirstAncestorOfClass_0:WaitForChild("SkipButton");
	local l_Star_0 = l_script_FirstAncestorOfClass_0:WaitForChild("Star");
	local l_Break1_0 = l_script_FirstAncestorOfClass_0:WaitForChild("Break1");
	local l_Break2_0 = l_script_FirstAncestorOfClass_0:WaitForChild("Break2");
	local l_ShakeAmount_0 = script:WaitForChild("ShakeAmount");
	local l_StarSpinSpeed_0 = script:WaitForChild("StarSpinSpeed");
	local v64 = require(l_Modules_0:WaitForChild("RemoteFunction")).new("AutorollEnable");
	local l_BindableEvent_0 = Instance.new("BindableEvent");
	local l_BindableEvent_1 = Instance.new("BindableEvent");
	local l_BindableEvent_2 = Instance.new("BindableEvent");
	local _ = l_RunService_0:IsStudio();
	local _ = l_UserInputService_0.TouchEnabled;
	local v70 = nil;
	local l_Position_0 = l_SkipButton_1.Position;
	local l_Position_1 = l_EquipButton_1.Position;
	local v73 = {
		Position = UDim2.fromScale(0.5, 0.5)
	};
	local _ = {
		BackgroundTransparency = 0
	};
	local v75 = {
		BackgroundTransparency = 1
	};
	local v76 = {
		BackgroundTransparency = 0.6
	};
	local v77 = Tween0o.new(0.5, Enum.EasingStyle.Quart);
	local v78 = Tween0o.new(1, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out);
	local v79 = l_TweenService_0:Create(l_AutoRollReminder_0, Tween0o.new(0.5, Enum.EasingStyle.Linear), {
		TextTransparency = 0, 
		TextStrokeTransparency = 0.5
	});
	local v80 = l_TweenService_0:Create(l_AutoRollReminder_0, Tween0o.new(0.5, Enum.EasingStyle.Linear), {
		TextTransparency = 1, 
		TextStrokeTransparency = 1
	});
	local v81 = l_TweenService_0:Create(l_Background_0, v78, v76);
	local v82 = l_TweenService_0:Create(l_Background_0, v78, v75);
	l_ReplicaController_0.RequestData();
	while true do
		task.wait();
		if l_ReplicaController_0.InitialDataReceived then
			break;
		end;
	end;
	local v83 = l_ReplicaController_0.GetReplicaById(l_LocalPlayer_0:GetAttribute("UID"));
	local l_Quad_0 = Enum.EasingStyle.Quad;
	local l_Out_0 = Enum.EasingDirection.Out;
	local v86 = 0;
	local l_ROLL_COOLDOWN_0 = l_RollSettings_0.ROLL_COOLDOWN;
	local v88 = 1;
	local v89 = 0;
	local v90 = false;
	local v91 = false;
	local v92 = false;
	local v93 = false;
	local v94 = true;
	local v95 = nil;
	local v96 = nil;
	local v97 = nil;
	local function v102(v98, v99, v100)
		if (v98 == "PlaySound" and typeof(v99) == "Instance") and typeof(v100) == "Instance" then
			if not v99:IsA("Sound") then
				return ;
			else
				local v101 = v99:Clone();
				v101.Parent = v100;
				v101:Play();
				v101.Ended:Once(function()
					v101:Destroy();
				end);
			end;
		end;
	end;
	local function v102_1(rarity)
		if rarity < (l_LocalPlayer_0:GetAttribute("ServerMessageIgnore") or false) then return end
		local v0 = l_LocalPlayer_0.PlayerGui:WaitForChild("MainInterface");
		local v1 = v0:WaitForChild("HundredMilFrame");
		local newcolorcorrect = game.ReplicatedStorage:WaitForChild("MapVFX"):WaitForChild("100mcolorcorrect"):Clone()
		newcolorcorrect.Parent = game:GetService("Lighting")
		task.delay(5, function()
			newcolorcorrect:Destroy()
		end)
		task.delay(2, function()
			local v3 = v1:Clone();
			v3.Parent = v0;
			l_Debris_0:AddItem(v3, 5);
			v3.Visible = true;
			local v4 = l_TweenService_0:Create(v3, Tween0o.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false), {["Transparency"] = 0});
			local v5 = l_TweenService_0:Create(v3, Tween0o.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false), {["Transparency"] = 1});
			v4:Play();
			v4.Completed:Wait();
			v5:Play();
			v5.Completed:Wait();
			v3.Visible = false;
		end);
	end;
	local function _(v103, v104)
		if v92 then
			return ;
		else
			return function(v105, v106)
				if v105 == l_RollButton_0 then
					v103();
				end;
				if v106 == "DPadLeft" then
					v104(false);
					return ;
				else
					if v106 == "DPadRight" then
						v104(false);
					end;
					return ;
				end;
			end;
		end;
	end;
	romanToInteger = function(v108)
		local v109 = {
			I = 1, 
			V = 5, 
			X = 10, 
			L = 50, 
			C = 100, 
			D = 500, 
			M = 1000
		};
		local v110 = 0;
		local v111 = 0;
		for v112 = #v108, 1, -1 do
			local v113 = v109[string.upper((string.sub(v108, v112, v112)))];
			if not v113 then
				return nil;
			else
				v110 = if v113 < v111 then v110 - v113 else v110 + v113;
				v111 = v113;
			end;
		end;
		return v110;
	end;
	local _ = function()
		for _, v115 in v83.Data.InventoryAuras do
			if not v115.Locked then
				return false;
			end;
		end;
		return true;
	end;
	local function v119(v117)
		local v118 = l_RollRemote_0:InvokeServer("Roll");
		if not v118 then
			while true do
				task.wait();
				v118 = l_RollRemote_0:InvokeServer("Roll");
				if v118 then
					break;
				end;
			end;
		end;
		if not v118.Success then
			while true do
				warn((("[RollMain]: %* (%*)\nRetry in 2s"):format(l_RollSettings_0.Contexts[v118.Response], l_LocalPlayer_0.UserId)));
				task.wait(2);
				v118 = l_RollRemote_0:InvokeServer("Roll", true);
				if v118.Success then
					break;
				end;
			end;
		end;
		v95 = v118;
		if v117 then
			task.spawn(v117);
			return ;
		else
			l_BindableEvent_0:Fire();
			return ;
		end;
	end;
	local function _(v120)
		return l_TiersUI_0:FindFirstChild(v120:split("_")[1]);
	end;
	local function v125(v122)
		local l_l_TiersUI_0_FirstChild_0 = l_TiersUI_0:FindFirstChild(v122:split("_")[1]);
		local l_CurrentRollingText_0 = l_script_FirstAncestorOfClass_0:FindFirstChild("CurrentRollingText");
		if l_CurrentRollingText_0 then
			l_CurrentRollingText_0:Destroy();
		end;
		if l_l_TiersUI_0_FirstChild_0 then
			l_l_TiersUI_0_FirstChild_0 = l_l_TiersUI_0_FirstChild_0:Clone();
			l_l_TiersUI_0_FirstChild_0.Parent = l_script_FirstAncestorOfClass_0;
			l_l_TiersUI_0_FirstChild_0.Position = UDim2.fromScale(0.5, 0.47);
			l_l_TiersUI_0_FirstChild_0.Name = "CurrentRollingText";
			l_SFXs_0.SpinningSound:Play();
			l_TweenService_0:Create(l_l_TiersUI_0_FirstChild_0, v77, v73):Play();
			l_l_TiersUI_0_FirstChild_0.ZIndex = -1
			return l_l_TiersUI_0_FirstChild_0;
		else
			print((("%*'s ui not found."):format(v122)));
			return ;
		end;
	end;
	local function v133(v126)
		local v127 = v125(v95.Aura);
		if v127 then
			local l_Rarity_0 = v127:FindFirstChild("Rarity");
			local v129, v130 = table.unpack(v95.Aura:split("_"));
			if l_Rarity_0 and (v95.FromWhat or v95.Bypassed) then
				l_Rarity_0.Text = "1 in " .. l_Utility_0.format_int(l_Utility_0.FindRarityByName(v95.Aura, true));
			end;
			if l_Rarity_0 and v95.FromWhat then
				local v131 = l_Rarity_0:Clone();
				v131.Size = UDim2.fromScale(1, 1);
				v131.AnchorPoint = Vector2.new(0.5, 0);
				v131.Position = UDim2.fromScale(0.5, 1.1);
				v131.Text = ("[From %*]"):format((string.gsub(v95.FromWhat, "Is", "")));
				v131.Parent = l_Rarity_0;
			end;
			if (v130 and l_TierSkinUIs_0:FindFirstChild(v129)) and l_TierSkinUIs_0:FindFirstChild(v129):FindFirstChild(v130) then
				local v132 = l_TierSkinUIs_0:FindFirstChild(v129):FindFirstChild(v130):Clone();
				v132.Visible = true;
				v132.Parent = v127;
			end;
			v96 = v127;
			if not v126 or l_Utility_0.FindAuraData(v95.Aura).Unobtainable then
				l_ClientBasedFunctions_0.RollingEffect(v95.Rarity, l_script_FirstAncestorOfClass_0, script, v127, v95.Aura);
				return ;
			else
				v96.ZIndex = 1
				v96.Visible = true;
				l_EquipButton_1.Visible = true;
				l_SkipButton_1.Visible = true;
			end;
		end;
	end;
	local function _()
		v81:Play();
		l_Youvefound_0.Visible = true;
		l_RollButton_0.Visible = false;
		l_QuickRoll_0.Visible = false;
	end;
	local function _()
		v82:Play();
		l_Youvefound_0.Visible = false;
		l_RollButton_0.Visible = true;
		l_QuickRoll_0.Visible = true;
		l_SkipButton_1.Visible = false;
		l_EquipButton_1.Visible = false;
		l_WarningFrame_0.Visible = false;
		l_EquipWarningFrame_0.Visible = false;
		if v96 then
			v96:Destroy();
			v96 = v70;
		end;
	end;
	local function _()
		if v83.Data.LeftGear == "Flesh Device" then
			l_StackDisplay_0.Text = "x1.3 Luck Ready";
			v91 = true;
			return ;
		elseif v88 == l_RollSettings_0.BONUS_STACK then
			v88 = 0;
			if v83.Data.LeftGear == "Gravitational Device" then
				l_StackDisplay_0.Text = "x6 Luck Ready";
			else
				l_StackDisplay_0.Text = "x2 Luck Ready";
			end;
			v91 = true;
			return ;
		else
			v88 = v88 + 1;
			l_StackDisplay_0.Text = ("%* / %*"):format(v88 - 1, l_RollSettings_0.BONUS_STACK);
			return ;
		end;
	end;
	v83:ListenToChange("LeftGear", function()
		if v83.Data.LeftGear == "Gravitational Device" then
			if l_StackDisplay_0.Text:find("Luck Ready") then
				l_StackDisplay_0.Text = "x6 Luck Ready";
				return ;
			end;
		elseif v83.Data.LeftGear == "Flesh Device" then
			l_StackDisplay_0.Text = "x1.3 Luck Ready";
			return ;
		elseif l_StackDisplay_0.Text:find("Luck Ready") then
			if l_StackDisplay_0.Text:find("1.3") then
				l_StackDisplay_0.Text = ("%* / %*"):format(v88 - 1, l_RollSettings_0.BONUS_STACK);
				return ;
			else
				l_StackDisplay_0.Text = "x2 Luck Ready";
			end;
		end;
	end);
	local function v141()
		if v92 then
			return ;
		else
			v92 = true;
			local v137 = nil;
			local v138 = coroutine.running();
			local v139 = nil;
			local v140 = nil;
			l_WarningFrame_0.Visible = true;
			v139 = l_Nevermind_0.MouseButton1Click:Once(function()
				v137 = false;
				task.spawn(v138);
			end);
			v140 = l_RealSkip_0.MouseButton1Click:Once(function()
				v137 = true;
				task.spawn(v138);
			end);
			coroutine.yield();
			v139:Disconnect();
			v139 = v70;
			v140:Disconnect();
			v140 = v70;
			l_WarningFrame_0.Visible = false;
			v92 = false;
			return v137;
		end;
	end;
	local function v147(v142)
		if v92 then
			return ;
		else
			v92 = true;
			local v143 = nil;
			local v144 = coroutine.running();
			local v145 = nil;
			local v146 = nil;
			l_EquipWarningFrame_0.Visible = true;
			l_Title_0.Text = ("! %* !"):format(v142 and "Storage Full" or "Warning");
			v145 = l_Nevermind_1.MouseButton1Click:Once(function()
				v143 = false;
				task.spawn(v144);
			end);
			v146 = l_RealCraft_0.MouseButton1Click:Once(function()
				v143 = true;
				task.spawn(v144);
			end);
			coroutine.yield();
			v145:Disconnect();
			v145 = v70;
			v146:Disconnect();
			v146 = v70;
			l_EquipWarningFrame_0.Visible = false;
			v92 = false;
			return v143;
		end;
	end;
	local function v150()
		if v92 then
			return ;
		else
			v92 = true;
			local v148 = coroutine.running();
			local v149 = nil;
			l_AllAuraLockedFrame_0.Visible = true;
			v149 = l_Okay_0.MouseButton1Click:Once(function()
				task.spawn(v148);
			end);
			coroutine.yield();
			v149:Disconnect();
			v149 = v70;
			l_AllAuraLockedFrame_0.Visible = false;
			v92 = false;
			return ;
		end;
	end;
	local function _(v151, v152)
		return {
			Action = v151, 
			IsAutoAction = v152
		};
	end;
	local function v161(v154)
		--if not v93 then
			--return print("[Equip Rejected]: Choices not enabled.");
		if v92 then
			return print("[Equip Rejected]: Player considering warning choices.");
		else
			v93 = false;
			local v155 = v154 == true;
			local v156 = l_LocalPlayer_0:GetAttribute("SwapWarning") or 0;
			local l_l_LocalPlayer_0_Attribute_0 = l_LocalPlayer_0:GetAttribute("Title");
			if l_LocalPlayer_0:GetAttribute("SwapWarningEnabled") and v156 <= l_Utility_0.FindRarityByName(l_l_LocalPlayer_0_Attribute_0, true) then
				if not v147() then
					v93 = true;
					return print("[Equip Rejected]: Player rejected equip.");
				else
					v155 = false;
				end;
			elseif v83.Data.MaxStorableAuras <= #v83.Data.InventoryAuras then
				local v158;
				for _, v160 in v83.Data.InventoryAuras do
					if not v160.Locked then
						v158 = false;
						--goto label0 --[[  true, false  ]];
					end;
				end;
				v158 = true;
				--::label0::;
				if v158 then
					v150();
					v93 = true;
					return print("[Equip Rejected]: Player's storage is full, all aura locked");
				elseif v83.Data.Settings.StorageWarningEnabled then
					if not v147(true) then
						v93 = true;
						return print("[Equip Rejected]: Player rejected equip.");
					else
						v155 = false;
					end;
				end;
			end;
			v82:Play();
			l_Youvefound_0.Visible = false;
			l_RollButton_0.Visible = true;
			l_QuickRoll_0.Visible = true;
			l_SkipButton_1.Visible = false;
			l_EquipButton_1.Visible = false;
			l_WarningFrame_0.Visible = false;
			l_EquipWarningFrame_0.Visible = false;
			if v96 then
				v96:Destroy();
				v96 = v70;
			end;
			l_RollEvent_0:FireServer("Choice", {
				Action = "Equip", 
				IsAutoAction = v155
			});
			return ;
		end;
	end;
	local function v165(v162)
		--if not v93 then
			--return print("[Skip Rejected]: Choices not enabled.");
		if v92 then
			return print("[Skip Rejected]: Player considering warning choices.");
		else
			v93 = false;
			local v163 = v162 == true;
			local v164 = tonumber(l_LocalPlayer_0:GetAttribute("SkipWarning")) or 0;
			if (v83.Data.SmartFilter[v95.Aura] == nil and l_LocalPlayer_0:GetAttribute("SkipWarningEnabled")) and v164 <= v95.Rarity then
				if not v141() then
					v93 = true;
					return print("[Skip Rejected]: Player rejected skip.");
				else
					v163 = false;
				end;
			end;
			v82:Play();
			l_Youvefound_0.Visible = false;
			l_RollButton_0.Visible = true;
			l_QuickRoll_0.Visible = true;
			l_SkipButton_1.Visible = false;
			l_EquipButton_1.Visible = false;
			l_WarningFrame_0.Visible = false;
			l_EquipWarningFrame_0.Visible = false;
			if v96 then
				v96:Destroy();
				v96 = v70;
			end;
			l_RollEvent_0:FireServer("Choice", {
				Action = "Skip", 
				IsAutoAction = v163
			});
			return ;
		end;
	end;
	local function v169()
		local v166 = 1 / l_RollSettings_0.ROLL_COOLDOWN;--l_RollRemote_0:InvokeServer("GetCooltime") / l_RollSettings_0.ROLL_COOLDOWN;
		for v167 = l_RollSettings_0.ROLL_DELAY_START, l_RollSettings_0.ROLL_DELAY_END, l_RollSettings_0.ROLL_DELAY_ICREASE do
			local v168 = l_RollModule_0.GetItem(l_Utility_0.GetRollTable(), 1);
			v125((l_SecretItems_0[v168] or v168).Value);
			task.wait(v167 * v166);
		end;
		l_BindableEvent_1:Fire();
	end;
	local function v178(v170)
		local l_AutoCrafting_0 = v83.Data.AutoCrafting;
		if l_AutoCrafting_0 ~= "" then
			if l_RecipesDB_0[l_AutoCrafting_0] then
				for _, v173 in l_RecipesDB_0[l_AutoCrafting_0].Ingredients do
					if v173[1] == v170 then
						return true;
					end;
				end;
				return ;
			else
				local v174, v175 = string.match(l_AutoCrafting_0, "([%s%w%p]+) ([IVXCM]+)");
				if v174 and l_PotionRecipesDB_0[v174] then
					for _, v177 in l_PotionRecipesDB_0[v174].potions[romanToInteger(v175)].ingredients do
						if v177[1] == v170 then
							return true;
						end;
					end;
				end;
			end;
		end;
	end;
	local function v191(v179)
		local l_AutoCrafting_1 = v83.Data.AutoCrafting;
		if l_RecipesDB_0[l_AutoCrafting_1] then
			local l_CraftingProgress_0 = v83.Data.CraftingProgress;
			local v182 = nil;
			for _, v184 in l_RecipesDB_0[l_AutoCrafting_1].Ingredients do
				if v184[1] == v179 then
					v182 = v184[2];
					break;
				end;
			end;
			v182 = v182 or math.huge;
			if not l_CraftingProgress_0[l_AutoCrafting_1] then
				return true;
			elseif not l_CraftingProgress_0[l_AutoCrafting_1][v179] then
				return true;
			elseif l_CraftingProgress_0[l_AutoCrafting_1][v179] < v182 then
				return true;
			else
				return false;
			end;
		else
			local v185, v186 = string.match(l_AutoCrafting_1, "([%s%w%p]+) ([IVXCM]+)");
			if v185 then
				v186 = romanToInteger(v186);
				local l_PotionCraftingProgress_0 = v83.Data.PotionCraftingProgress;
				local v188 = nil;
				for _, v190 in l_PotionRecipesDB_0[v185].potions[v186].ingredients do
					if v190[1] == v179 then
						v188 = v190[2];
						break;
					end;
				end;
				v188 = v188 or math.huge;
				if not l_PotionCraftingProgress_0[l_AutoCrafting_1] then
					return true;
				elseif not l_PotionCraftingProgress_0[l_AutoCrafting_1][v179] then
					return true;
				elseif l_PotionCraftingProgress_0[l_AutoCrafting_1][v179] < v188 then
					return true;
				else
					return false;
				end;
			else
				return ;
			end;
		end;
	end;
	local function v203(v192)
		if not v94 then
			return print("[Roll Rejected]: Roll not enabled.");
		else
			v94 = false;
			v95 = v70;
			local _ = coroutine.running();
			local v194 = nil;
			local v195 = false;
			if not v192 then
				v81:Play();
				l_Youvefound_0.Visible = true;
				l_RollButton_0.Visible = false;
				l_QuickRoll_0.Visible = false;
			end;
			if v91 then
				v91 = false;
				l_SFXs_0.BonusRollSound:Play();
			end;
			if not l_LocalPlayer_0:GetAttribute("QuickRollEnabled") then
				v194 = task.defer(v169);
			end;
			task.spawn(v119);
			local v196 = false;
			local _ = l_BindableEvent_0.Event:Once(function()
				v196 = true;
			end);
			local v198 = tick();
			while true do
				task.wait();
				if tick() - v198 > 600 then
					--l_LocalPlayer_0:Kick("You've disconnected from the server.");
				end;
				if v196 then
					break;
				end;
			end;
			if v194 and coroutine.status(v194) ~= "dead" then
				local v199 = false;
				do
					local l_v199_0 = v199;
					local v201 = l_BindableEvent_1.Event:Connect(function()
						l_v199_0 = true;
					end);
					local v202 = tick();
					while true do
						task.wait();
						if not (not l_v199_0 and tick() - v202 < 4) then
							break;
						end;
					end;
					v201:Disconnect();
					v201 = v70;
				end;
			end;
			local l_SkipAuraEffect_1;
			if string.len(l_LocalPlayer_0:GetAttribute("SkipAuraEffect")) ~= 0 and tonumber(l_LocalPlayer_0:GetAttribute("SkipAuraEffect")) ~= nil then
				l_SkipAuraEffect_1 = l_LocalPlayer_0:GetAttribute("SkipAuraEffect")/10;
			else
				l_SkipAuraEffect_1 = 100_000_000/10;
			end;
			v133(v95.Rarity <= (l_SkipAuraEffect_1));
			v93 = true;
			if v178(v95.Aura) and v191(v95.Aura) then
				l_RollEvent_0:FireServer("Choice", {
					Action = "AddToCraft", 
					IsAutoAction = true
				});
				if v83.Data.Settings.AutoAddNotification then
					l_Core_0.Create("Your aura has been automatically added.", ("Your %* has been automatically added."):format(v95.Aura), 10, "Badge");
				end;
				v82:Play();
				l_Youvefound_0.Visible = false;
				l_RollButton_0.Visible = true;
				l_QuickRoll_0.Visible = true;
				l_SkipButton_1.Visible = false;
				l_EquipButton_1.Visible = false;
				l_WarningFrame_0.Visible = false;
				l_EquipWarningFrame_0.Visible = false;
				if v96 then
					v96:Destroy();
					v96 = v70;
				end;
				if v83.Data.LeftGear == "Flesh Device" then
					l_StackDisplay_0.Text = "x1.3 Luck Ready";
					v91 = true;
				elseif v88 == l_RollSettings_0.BONUS_STACK then
					v88 = 0;
					if v83.Data.LeftGear == "Gravitational Device" then
						l_StackDisplay_0.Text = "x6 Luck Ready";
					else
						l_StackDisplay_0.Text = "x2 Luck Ready";
					end;
					v91 = true;
				else
					v88 = v88 + 1;
					l_StackDisplay_0.Text = ("%* / %*"):format(v88 - 1, l_RollSettings_0.BONUS_STACK);
				end;
				return true;
			else
				if v83.Data.SmartFilter[v95.Aura] == false then
					v195 = true;
					v161(true);
				elseif v83.Data.SmartFilter[v95.Aura] == true then
					v195 = true;
					v165(true);
				elseif l_LocalPlayer_0:GetAttribute("AutoEquipEnabled") and tonumber(l_LocalPlayer_0:GetAttribute("AutoEquip")) <= v95.Rarity then
					v195 = true;
					v161(true);
				end;
				if v83.Data.LeftGear == "Flesh Device" then
					l_StackDisplay_0.Text = "x1.3 Luck Ready";
					v91 = true;
				elseif v88 == l_RollSettings_0.BONUS_STACK then
					v88 = 0;
					if v83.Data.LeftGear == "Gravitational Device" then
						l_StackDisplay_0.Text = "x6 Luck Ready";
					else
						l_StackDisplay_0.Text = "x2 Luck Ready";
					end;
					v91 = true;
				else
					v88 = v88 + 1;
					l_StackDisplay_0.Text = ("%* / %*"):format(v88 - 1, l_RollSettings_0.BONUS_STACK);
				end;
				return v195;
			end;
		end;
	end;
	local function _()
		if math.random(1, 2) == 1 then
			return -1;
		else
			return 1;
		end;
	end;
	local function v208(v205)
		l_Cooldown_0.Size = UDim2.fromScale(l_TweenService_0:GetValue((v86 - workspace:GetServerTimeNow()) / l_ROLL_COOLDOWN_0, l_Quad_0, l_Out_0), 1);
		local v206 = UDim2.fromScale(l_ShakeAmount_0.Value * (math.random(1, 2) == 1 and -1 or 1), l_ShakeAmount_0.Value * (math.random(1, 2) == 1 and -1 or 1));
		local l_l_Star_0_0 = l_Star_0;
		l_l_Star_0_0.Rotation = l_l_Star_0_0.Rotation + (50 * v205) * l_StarSpinSpeed_0.Value;
		l_SkipButton_1.Position = l_Position_0 + v206;
		l_EquipButton_1.Position = l_Position_1 + v206;
		l_SkipButton_1.Rotation = (l_ShakeAmount_0.Value * 400) * (math.random(1, 2) == 1 and -1 or 1);
		l_EquipButton_1.Rotation = (l_ShakeAmount_0.Value * 400) * (math.random(1, 2) == 1 and -1 or 1);
		l_Break1_0.Position = UDim2.fromScale(0.5, 0.5) + v206;
		l_Break1_0.Rotation = (l_ShakeAmount_0.Value * 50) * (math.random(1, 2) == 1 and -1 or 1);
		l_Break2_0.Position = l_Break1_0.Position;
		l_Break2_0.Rotation = (l_ShakeAmount_0.Value * 50) * (math.random(1, 2) == 1 and -1 or 1);
		if v96 and l_ShakeAmount_0.Value > 0 then
			v96.Position = UDim2.fromScale(0.5, 0.5) + v206;
			v96.Rotation = (l_ShakeAmount_0.Value * 400) * (math.random(1, 2) == 1 and -1 or 1);
		end;
		v89 = v89 + v205;
		l_AutoRollReminder_0.Rotation = 2 * math.sin(v89);
	end;
	local function v211(v209, ...)
		local v210 = {
			...
		};
		if v209 == "SetDelay" then
			v86 = v210[1][1];
			l_ROLL_COOLDOWN_0 = v210[1][2];
			v94 = true;
			l_BindableEvent_2:Fire();
			return ;
		else
			if v209 == "Select" then
				v94 = false;
				v95 = v210[1];
				v81:Play();
				l_Youvefound_0.Visible = true;
				l_RollButton_0.Visible = false;
				l_QuickRoll_0.Visible = false;
				if not l_LocalPlayer_0:GetAttribute("ClientLoaded") then
					l_LocalPlayer_0:GetAttributeChangedSignal("ClientLoaded"):Wait();
				end;
				v133(true);
				l_EquipButton_1.Visible = true;
				l_SkipButton_1.Visible = true;
				v93 = true;
			end;
			return ;
		end;
	end;
	local function v212()
		if v86 < workspace:GetServerTimeNow() and v94 then
			v203();
			return ;
		else
			l_SFXs_0.Error:Play();
			return ;
		end;
	end;
	local function v215()
		local function v213()
			if not l_LocalPlayer_0:GetAttribute("HasQuickRoll") then
				l_SFXs_0.Error:Play();
				l_MarketplaceService_0:PromptGamePassPurchase(l_LocalPlayer_0, l_Gamepasses_0.QuickRoll);
			else
				l_LocalPlayer_0:SetAttribute("QuickRollEnabled", not l_LocalPlayer_0:GetAttribute("QuickRollEnabled"))
			end;
		end;
		local function v214()
			l_QuickRoll_0:WaitForChild("Context").Text = ("Quick roll : %*"):format(l_LocalPlayer_0:GetAttribute("QuickRollEnabled") and "ON" or "OFF");
		end;
		if l_LocalPlayer_0:GetAttribute("HasQuickRoll") then
			l_Desc_0.Visible = false;
		else
			l_LocalPlayer_0:GetAttributeChangedSignal("HasQuickRoll"):Once(function()
				l_Desc_0.Visible = false;
			end);
		end;
		l_QuickRoll_0:SetAttribute("Disabled", not l_LocalPlayer_0:GetAttribute("HasQuickRoll"));
		l_LocalPlayer_0:GetAttributeChangedSignal("HasQuickRoll"):Once(function()
			l_QuickRoll_0:SetAttribute("Disabled", not l_LocalPlayer_0:GetAttribute("HasQuickRoll"));
		end);
		l_QuickRoll_0:WaitForChild("Context").Text = ("Quick roll : %*"):format(l_LocalPlayer_0:GetAttribute("QuickRollEnabled") and "ON" or "OFF");
		l_LocalPlayer_0:GetAttributeChangedSignal("QuickRollEnabled"):Connect(v214);
		l_QuickRoll_0.MouseButton1Click:Connect(v213);
	end;
	local function v221()
		local function v216()
			if v90 then
				if not v94 then
					l_BindableEvent_2.Event:Once(v216);
					return ;
				elseif workspace:GetServerTimeNow() < v86 + 0.1 then
					v97 = task.delay((v86 + 0.1) - workspace:GetServerTimeNow(), v216);
					return ;
				else
					if not v203(l_LocalPlayer_0:GetAttribute("QuickRollEnabled")) then
						if (v83.Data.SmartFilter[v95.Aura] == nil and l_LocalPlayer_0:GetAttribute("SkipWarningEnabled")) and (tonumber(l_LocalPlayer_0:GetAttribute("SkipWarning")) or 0) <= v95.Rarity then
							v81:Play();
							l_Youvefound_0.Visible = true;
							l_RollButton_0.Visible = false;
							l_QuickRoll_0.Visible = false;
						end;
						v165(true);
					end;
					if not v94 then
						l_BindableEvent_2.Event:Wait();
					end;
					v97 = task.delay((v86 + 0.05) - workspace:GetServerTimeNow(), v216);
				end;
			end;
		end;
		local function v217()
			if l_LocalPlayer_0:GetAttribute("GroupRank") < 0 then --< 1 then (For group enabled)
				return ;
			elseif l_AutoRoll_0:GetAttribute("Disabled") then
				l_SFXs_0.Error:Play();
				return ;
			else
				v90 = not v90;
				if v97 and v97 == coroutine.running() then
					task.cancel(v97);
				end;
				l_AutoRoll_0:WaitForChild("Context").Text = ("Auto roll : %*"):format(v90 and "ON" or "OFF");
				if v90 then
					v80:Pause();
					v79:Play();
					v216();
					return ;
				else
					v79:Pause();
					v80:Play();
					return ;
				end;
			end;
		end;
		if l_LocalPlayer_0:GetAttribute("AutorollEnable") then
			l_LocalPlayer_0:SetAttribute("AutorollEnable", nil);
			v217();
		end;
		if l_LocalPlayer_0:GetAttribute("GroupRank") >= 1 then
			l_Desc_1.Visible = false;
		else
			local v218 = nil;
			do
				local l_v218_0 = v218;
				l_v218_0 = l_Rolls_0.Changed:Connect(function(v220)
					if v220 >= 0 then
						l_v218_0:Disconnect();
						l_Desc_1.Visible = false;
					end;
				end);
			end;
		end;
		l_Desc_1.Visible = false
		l_AutoRoll_0:SetAttribute("Disabled", false);
		l_Desc_1:GetPropertyChangedSignal("Visible"):Connect(function()
			l_AutoRoll_0:SetAttribute("Disabled", l_Desc_1.Visible);
		end);
		if l_ReplicatedFirst_0:GetAttribute("AutorollEnabled") then
			v217();
		end;
		l_AutoRoll_0.MouseButton1Click:Connect(v217);
	end;
	v64.Event = function(v222)
		if v222 == "ServerShutDown" then
			return v90;
		else
			return ;
		end;
	end;
	l_RollEvent_0.OnClientEvent:Connect(v211);
	l_RunService_0.RenderStepped:Connect(v208);
	l_RollButton_0.MouseButton1Click:Connect(v212);
	l_ConsoleIconHandler_0.ButtonGuide:Set(l_RollButton_0, "ButtonY", v212);
	l_SkipButton_1.MouseButton1Click:Connect(v165);
	l_EquipButton_1.MouseButton1Click:Connect(v161);
	l_UtilityServerToClient_0.OnClientEvent:Connect(v102);
	l_Do100MEffect_0.OnClientEvent:Connect(v102_1);
	v215();
	v221();
	l_ClientBasedFunctions_0.LoadButtonEffects(l_SkipButton_1);
	l_ClientBasedFunctions_0.LoadButtonEffects(l_EquipButton_1);
	l_ClientBasedFunctions_0.LoadButtonEffects(l_RollButton_0);
	l_ClientBasedFunctions_0.LoadButtonEffects(l_QuickRoll_0);
	l_ClientBasedFunctions_0.LoadButtonEffects(l_AutoRoll_0);
	l_ClientBasedFunctions_0.LoadButtonEffects(l_RealSkip_0);
	l_ClientBasedFunctions_0.LoadButtonEffects(l_Nevermind_0);
	l_ClientBasedFunctions_0.LoadButtonEffects(l_RealCraft_0);
	l_ClientBasedFunctions_0.LoadButtonEffects(l_Nevermind_1);
	if v83.Data.LeftGear == "Flesh Device" then
		l_StackDisplay_0.Text = "x1.3 Luck Ready";
	end;
	return ;
end;
