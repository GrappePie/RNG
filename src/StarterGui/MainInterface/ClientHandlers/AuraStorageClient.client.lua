local l_Players_0 = game:GetService("Players");
local l_ReplicatedStorage_0 = game:GetService("ReplicatedStorage");
local l_TweenService_0 = game:GetService("TweenService");
local l_LocalPlayer_0 = l_Players_0.LocalPlayer;
local l_Modules_0 = l_ReplicatedStorage_0:WaitForChild("Modules");
local l_Remotes_0 = l_ReplicatedStorage_0:WaitForChild("Remotes");
local l_DB_0 = l_Modules_0:WaitForChild("DB");
local l_TiersUI_0 = l_ReplicatedStorage_0:WaitForChild("TiersUI");
local l_SFXs_0 = l_ReplicatedStorage_0:WaitForChild("Assets"):WaitForChild("SFXs");
local l_AuraStorage_0 = l_Remotes_0:WaitForChild("AuraStorage");
local l_Utility_0 = require(l_Modules_0:WaitForChild("Utility"));
local l_ClientBasedFunctions_0 = require(l_Modules_0:WaitForChild("CoreModules"):WaitForChild("ClientBasedFunctions"));
local l_RemoteFunction_0 = require(l_Modules_0:WaitForChild("RemoteFunction"));
local l_ReplicaController_0 = require(l_ReplicatedStorage_0:WaitForChild("ReplicaController"));
local l_RarityDB_0 = require(l_DB_0:WaitForChild("RarityDB"));
local l_TierSkins_0 = require(l_DB_0:WaitForChild("TierSkins"));
local v16 = l_RemoteFunction_0.new("LockAura\n" .. l_LocalPlayer_0.UserId);
local l_Item_0 = script:WaitForChild("Item");
local l_script_FirstAncestorOfClass_0 = script:FindFirstAncestorOfClass("ScreenGui");
local l_Slots_0 = l_script_FirstAncestorOfClass_0:WaitForChild("ExtraButtons"):WaitForChild("Slots");
local l_AuraInventory_0 = l_script_FirstAncestorOfClass_0:WaitForChild("AuraInventory");
local l_Close_0 = l_AuraInventory_0:WaitForChild("SelectionCorners"):WaitForChild("Title"):WaitForChild("Close");
local l_Index_0 = l_AuraInventory_0:WaitForChild("Index");
local l_TextLabelContainer_0 = l_Index_0:WaitForChild("TextLabelContainer");
local l_AuraName_0 = l_TextLabelContainer_0:WaitForChild("AuraName");
local l_EquipButton_0 = l_Index_0:WaitForChild("EquipButton");
local l_RemoveButton_0 = l_Index_0:WaitForChild("RemoveButton");
local l_LockButton_0 = l_Index_0:WaitForChild("LockButton");
local l_Rarity_0 = l_Index_0:WaitForChild("Rarity");
local l_StorageUpgrade_0 = l_Index_0:WaitForChild("SelectionCorners"):WaitForChild("StorageUpgrade");
local l_InventoryFrame_0 = l_AuraInventory_0:WaitForChild("InventoryFrame");
local l_ItemsHolder_0 = l_InventoryFrame_0:WaitForChild("ItemsHolder");
local _ = l_InventoryFrame_0:WaitForChild("Searching");
local l_Title_0 = l_InventoryFrame_0:WaitForChild("Title");
local l_TextBox_0 = l_InventoryFrame_0:WaitForChild("Searching"):WaitForChild("TextBox");
local _ = l_ItemsHolder_0:WaitForChild("UIGridLayout");
local l_StringValue_0 = Instance.new("StringValue");
local l_SpecialInventory_0 = l_AuraInventory_0:WaitForChild("SpecialInventory");
local l_ItemsHolder_1 = l_SpecialInventory_0:WaitForChild("ItemsHolder");
local _ = l_ItemsHolder_1:WaitForChild("UIGridLayout");
local _ = l_SpecialInventory_0:WaitForChild("Searching");
local l_Title_1 = l_SpecialInventory_0:WaitForChild("Title");
local l_TextBox_1 = l_SpecialInventory_0:WaitForChild("Searching"):WaitForChild("TextBox");
local l_StringValue_1 = Instance.new("StringValue");
local l_RemoveWarningBackgroundFrame_0 = l_AuraInventory_0:WaitForChild("RemoveWarningBackgroundFrame");
local l_RemoveWarningFrame_0 = l_RemoveWarningBackgroundFrame_0:WaitForChild("RemoveWarningFrame");
local l_Remove_0 = l_RemoveWarningFrame_0:WaitForChild("Remove");
local l_Nevermind_0 = l_RemoveWarningFrame_0:WaitForChild("Nevermind");
local v48 = false;
local v49 = true;
local v50 = true;
local v51 = true;
local v52 = nil;
local v53 = nil;
if game:GetService("UserInputService").TouchEnabled then
	l_AuraInventory_0.Size = UDim2.fromScale(0.7, 0.7);
else
	l_AuraInventory_0.Size = UDim2.fromScale(0.5, 0.5);
end;
local v54 = {
	{
		Raity = 0, 
		BorderColor = Color3.new(0.494118, 0.603922, 0.65098)
	}, 
	{
		Raity = 2, 
		BorderColor = Color3.new(1, 1, 1), 
		BackgroundTransparent = true
	}, 
	{
		Raity = 500, 
		BorderColor = Color3.new(1, 1, 1), 
		BackgroundTransparent = true
	}, 
	{
		Raity = 999, 
		BorderColor = Color3.new(0.698039, 0.27451, 1)
	}, 
	{
		Raity = 9999, 
		BorderColor = Color3.new(1, 0.368627, 0)
	}, 
	{
		Raity = 99999, 
		BorderColor = Color3.new(0.345098, 0.607843, 0.839216)
	}, 
	{
		Raity = 999999, 
		BorderColor = Color3.new(1, 0, 1)
	}, 
	{
		Raity = 9999999, 
		BorderColor = Color3.new(0, 0, 0.701961)
	}, 
	{
		Raity = 99999999, 
		BorderColor = Color3.new(0.615686, 0, 0)
	}
};
local v55 = {
	{
		Name = "Oppression", 
		BorderColor = Color3.new(0.2, 0.188235, 0.239216)
	}, 
	{
		Name = "Glitch", 
		BorderColor = Color3.new(0.4, 0.392157, 0.345098)
	}
};
l_ReplicaController_0.RequestData();
while true do
	task.wait();
	if l_ReplicaController_0.InitialDataReceived then
		break;
	end;
end;
local v56 = l_ReplicaController_0.GetReplicaById(l_LocalPlayer_0:GetAttribute("UID"));
local function _(v57)
	for v58, v59 in ipairs(v55) do
		if v59.Name == v57 then
			v59.OrderNumber = v58;
			return v59;
		end;
	end;
end;
local _ = function(v61, v62)
	local v63;
	for v64, v65 in ipairs(v55) do
		if v65.Name == v62 then
			v65.OrderNumber = v64;
			v63 = v65;
			--goto label0 --[[  true, false  ]];
		end;
	end;
	v63 = nil;
	--::label0::;
	if v63 then
		return v63;
	else
		for _, v67 in ipairs(v54) do
			if v67.Raity <= v61 then
				v63 = v67;
			end;
		end;
		return v63;
	end;
end;
dump = function(v69)
	if type(v69) == "table" then
		local v70 = "{ ";
		for v71, v72 in pairs(v69) do
			if type(v71) ~= "number" then
				v71 = "\"" .. v71 .. "\"";
			end;
			v70 = v70 .. "[" .. v71 .. "] = " .. dump(v72) .. ",";
		end;
		return v70 .. "} ";
	else
		return (tostring(v69));
	end;
end;
local function v86(v73, v74)
	if v73 == nil or v74 == nil then return end
	local v75, v76 = l_Utility_0.GetGeneralRarityByName(v73.Name, true);
	local v77, v78 = l_Utility_0.GetGeneralRarityByName(v74.Name, true);
	if v75 == nil or v76 == nil or v77 == nil or v78 == nil then return end
	if (v76 == v78 and v73.Index) and v74.Index then
		return v73.Index < v74.Index;
	elseif v75 == v77 then
		return v78 < v76;
	elseif not (v75 ~= 0) or v75 == 1 then
		return true;
	elseif not (v77 ~= 0) or v75 == 1 then
		return false;
	else
		local l_Name_0 = v73.Name;
		local v80;
		for v81, v82 in ipairs(v55) do
			if v82.Name == l_Name_0 then
				v82.OrderNumber = v81;
				v80 = v82;
				--goto label1 --[[  true, false  ]];
			end;
		end;
		v80 = nil;
		--::label1::;
		l_Name_0 = v74.Name;
		local v83;
		for v84, v85 in ipairs(v55) do
			if v85.Name == l_Name_0 then
				v85.OrderNumber = v84;
				v83 = v85;
				--goto label2 --[[  true, false  ]];
			end;
		end;
		v83 = nil;
		--::label2::;
		if v80 and v83 then
			return v80.OrderNumber < v83.OrderNumber;
		elseif v80 then
			return true;
		elseif v83 then
			return false;
		else
			return v77 < v75;
		end;
	end;
end;
local function v87()
	l_RemoveButton_0.Disabled.Visible = false;
	l_RemoveButton_0.AutoButtonColor = true;
	v50 = true;
end;
local function v88()
	l_RemoveButton_0.Disabled.Visible = true;
	l_RemoveButton_0.AutoButtonColor = false;
	v50 = false;
end;
local function _()
	l_LockButton_0.Disabled.Visible = false;
	l_LockButton_0.AutoButtonColor = true;
	v51 = true;
end;
local function _()
	l_LockButton_0.Disabled.Visible = true;
	l_LockButton_0.AutoButtonColor = false;
	v51 = false;
end;
local function v111()
	local v91 = if v48 then v56.Data.SpecialInventoryAuras[v52 or -1] else v56.Data.InventoryAuras[v52 or -1];
	local v92 = v91 and v91.Name or "";
	local v93 = v92 and v92:split("_") or {
		""
	};
	local v94 = v93[1];
	local v95 = v93[2];
	if not (v94 and l_TiersUI_0:FindFirstChild(v94)) or l_Utility_0.FindAuraIndex(v94) == 0 then
		l_EquipButton_0.Visible = false;
		l_RemoveButton_0.Visible = false;
		l_LockButton_0.Visible = false;
		l_Rarity_0.Visible = false;
		l_AuraName_0.Text = "Empty";
		local v96 = Color3.new(1, 1, 1);
		l_TextLabelContainer_0.BackgroundColor3 = Color3.new();
		for _, v98 in l_TextLabelContainer_0.SelectionCorners:GetChildren() do
			v98.Corner1.BackgroundColor3 = v96;
			v98.Corner2.BackgroundColor3 = v96;
		end;
	else
		local v99 = l_RarityDB_0[l_Utility_0.FindAuraIndex(v94)];
		if v95 then
			v99 = setmetatable(table.clone(l_TierSkins_0[v94][v95]), {
				__index = v99
			});
		end;
		local v100 = l_Utility_0.GetGeneralRarityByName(v92);
		l_AuraName_0.Text = v94;
		l_Rarity_0.Text = v99.Unobtainable and "Unobtainable" or ("1 in %*"):format((l_Utility_0.format_int(v100 * 10)));
		local v101;
		for v102, v103 in ipairs(v55) do
			if v103.Name == v92 then
				v103.OrderNumber = v102;
				v101 = v103;
				--goto label3 --[[  true, false  ]];
			end;
		end;
		v101 = nil;
		--::label3::;
		local v104;
		if v101 then
			v104 = v101;
		else
			for _, v106 in ipairs(v54) do
				if v106.Raity <= v100 then
					v101 = v106;
				end;
			end;
			v104 = v101;
		end;
		l_TextLabelContainer_0.BackgroundColor3 = not v104.BackgroundTransparent and Color3.new(v104.BorderColor.R / 7, v104.BorderColor.G / 7, v104.BorderColor.B / 7) or Color3.new();
		for _, v108 in l_TextLabelContainer_0.SelectionCorners:GetChildren() do
			v108.Corner1.BackgroundColor3 = not v104.BackgroundTransparent and v104.BorderColor or Color3.new(1, 1, 1);
			v108.Corner2.BackgroundColor3 = not v104.BackgroundTransparent and v104.BorderColor or Color3.new(1, 1, 1);
		end;
		l_EquipButton_0.Visible = true;
		v101 = l_EquipButton_0;
		local v109 = "Disabled";
		local v110 = false;
		if v56.Data.EquippedAuraIndex == v52 then
			v110 = v56.Data.IsEquippingSpecial == v48;
		end;
		v101:SetAttribute(v109, v110);
		l_EquipButton_0.Disabled.Visible = l_EquipButton_0:GetAttribute("Disabled");
		l_RemoveButton_0.Visible = not v48;
		l_LockButton_0.Visible = not v48;
		l_Rarity_0.Visible = true;
		if v56.Data[v48 and "SpecialInventoryAuras" or "InventoryAuras"][v52].Locked then
			l_LockButton_0.Text = "Unlock";
			l_RemoveButton_0.Disabled.Visible = true;
			l_RemoveButton_0.AutoButtonColor = false;
			v50 = false;
		else
			l_LockButton_0.Text = "Lock";
			l_RemoveButton_0.Disabled.Visible = false;
			l_RemoveButton_0.AutoButtonColor = true;
			v50 = true;
		end;
	end;
	l_ClientBasedFunctions_0.ChangeTextColor(l_AuraName_0, v95);
end;
local function v117(v112)
	if v112 then
		for _, v114 in ipairs(l_ItemsHolder_1:GetChildren()) do
			if v114:IsA("Frame") and v114:GetAttribute("IsAuraSlot") then
				v114:Destroy();
			end;
		end;
		return ;
	else
		for _, v116 in ipairs(l_ItemsHolder_0:GetChildren()) do
			if v116:IsA("Frame") and v116:GetAttribute("IsAuraSlot") then
				v116:Destroy();
			end;
		end;
		return ;
	end;
end;
local function v154(v118, v119, v120, v121)
	local v122 = if v119 then v56.Data.SpecialInventoryAuras[v118] else v56.Data.InventoryAuras[v118];
	local v123 = v122 and v122.Name;
	local v124 = v123 and v123:split("_") or {
		""
	};
	local v125 = v124[1];
	local v126 = v124[2];
	local v127 = l_Utility_0.GetGeneralRarityByName(v123);
	if not v125 then
		return ;
	else
		local v128 = l_Item_0:Clone();
		local l_BaseFrame_0 = v128:WaitForChild("BaseFrame");
		local l_SelectionCorners_0 = l_BaseFrame_0:WaitForChild("SelectionCorners");
		local l_AuraName_1 = l_BaseFrame_0:WaitForChild("AuraName");
		local l_Locked_0 = l_BaseFrame_0:WaitForChild("Locked");
		local v133 = v119 ~= nil and v119;
		local v134 = v120 ~= nil and v120;
		local v135;
		for v136, v137 in ipairs(v55) do
			if v137.Name == v123 then
				v137.OrderNumber = v136;
				v135 = v137;
				--goto label4 --[[  true, false  ]];
			end;
		end;
		v135 = nil;
		--::label4::;
		local v138;
		if v135 then
			v138 = v135;
		else
			for _, v140 in ipairs(v54) do
				if v140.Raity <= v127 then
					v135 = v140;
				end;
			end;
			v138 = v135;
		end;
		v135 = v128:WaitForChild("NewAura");
		v128.Name = v123;
		v128:SetAttribute("IsAuraSlot", true);
		l_AuraName_1.Text = v125;
		l_Locked_0.Visible = v134;
		l_ClientBasedFunctions_0.ChangeTextColor(l_AuraName_1, v126);
		l_BaseFrame_0.BackgroundColor3 = not v138.BackgroundTransparent and Color3.new(v138.BorderColor.R / 7, v138.BorderColor.G / 7, v138.BorderColor.B / 7) or Color3.new();
		for _, v142 in l_SelectionCorners_0:GetChildren() do
			v142.Corner1.BackgroundColor3 = not v138.BackgroundTransparent and v138.BorderColor or Color3.new(1, 1, 1);
			v142.Corner2.BackgroundColor3 = not v138.BackgroundTransparent and v138.BorderColor or Color3.new(1, 1, 1);
		end;
		v128.Parent = v133 and l_ItemsHolder_1 or l_ItemsHolder_0;
		local function v144(v143)
			v128.Visible = v125:gsub(" ", ""):lower():find(v143:gsub(" ", ""):lower()) ~= nil;
		end;
		local v145 = nil;
		if v121 then
			v135.Visible = true;
			v145 = l_TweenService_0:Create(v135, Tween0o.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, math.huge, true), {
				BackgroundTransparency = 0.8
			});
			v145:Play();
		end;
		local v146 = nil;
		if v133 then
			v128.Visible = v125:gsub(" ", ""):lower():find(l_StringValue_1.Value:gsub(" ", ""):lower()) ~= nil;
			v146 = l_StringValue_1.Changed:Connect(v144);
		else
			v128.Visible = v125:gsub(" ", ""):lower():find(l_StringValue_0.Value:gsub(" ", ""):lower()) ~= nil;
			v146 = l_StringValue_0.Changed:Connect(v144);
		end;
		local v147 = l_ClientBasedFunctions_0.LoadButtonEffects(l_BaseFrame_0);
		local v148 = l_BaseFrame_0.MouseButton1Click:Connect(function()
			if l_RemoveWarningBackgroundFrame_0.Visible then
				return ;
			else
				v52 = v118;
				v48 = v133;
				if v121 then
					v121 = false;
					l_AuraStorage_0:FireServer("Check", v118);
					v135.Visible = false;
				end;
				if v145 then
					v145:Destroy();
					v145 = nil;
				end;
				v111();
				return ;
			end;
		end);
		local v149 = l_RemoveWarningBackgroundFrame_0:GetPropertyChangedSignal("Visible"):Connect(function()
			l_BaseFrame_0:SetAttribute("Disabled", l_RemoveWarningBackgroundFrame_0.Visible);
		end);
		local v151 = l_LockButton_0.MouseButton1Click:Connect(function()
			if v52 == v118 and not v133 then
				if not v51 then
					l_SFXs_0.Error:Play();
					return ;
				else
					local v150 = v16:Fire(v118);
					l_Locked_0.Visible = v150;
					l_LockButton_0.Text = v150 and "Unlock" or "Lock";
					(v150 and v88 or v87)();
				end;
			end;
		end);
		v128.Destroying:Once(function()
			v146:Disconnect();
			v148:Disconnect();
			v149:Disconnect();
			v151:Disconnect();
			v151 = nil;
			v149 = nil;
			v148 = nil;
			v146 = nil;
			v128 = nil;
			l_BaseFrame_0 = nil;
			l_AuraName_1 = nil;
			for _, v153 in ipairs(v147) do
				v153:Disconnect();
			end;
			table.clear(v147);
			v147 = nil;
			if v145 then
				v145:Destroy();
				v145 = nil;
			end;
		end);
		v128:SetAttribute("AuraIndex", v118);
		return ;
	end;
end;
local function v162(v155)
	local v156 = {};
	local v157 = v155 and l_ItemsHolder_1 or l_ItemsHolder_0;
	for _, v159 in v157:GetChildren() do
		if v159:IsA("Frame") and v159.Visible then
			table.insert(v156, {
				Rareity = tonumber(l_Utility_0.GetGeneralRarityByName(v159.Name)), 
				Object = v159, 
				Name = v159.Name
			});
			v159.Parent = script;
		end;
	end;
	table.sort(v156, v86);
	for _, v161 in ipairs(v156) do
		v161.Object.Parent = v157;
	end;
	v156 = v53;
end;
local function v169(v163)
	v117();
	local v164 = {};
	for v165, v166 in ipairs(v163) do
		v164[v165] = {
			Index = v165, 
			Name = v166.Name, 
			IsLocked = v166.Locked, 
			IsItNewAura = v166.IsItNewAura
		};
	end;
	table.sort(v164, v86);
	for _, v168 in ipairs(v164) do
		task.spawn(v154, v168.Index, false, v168.IsLocked, v168.IsItNewAura);
	end;
	v162();
	v164 = v53;
	l_Title_0.Text = ("Normal Auras [%*/%*]"):format(#v163, v56.Data.MaxStorableAuras);
	v111();
end;
local function v176(v170)
	v117(true);
	local v171 = {};
	for v172, v173 in ipairs(v170) do
		v171[v172] = {
			Index = v172, 
			Name = v173.Name, 
			IsItNewAura = v173.IsItNewAura
		};
	end;
	for _, v175 in ipairs(v171) do
		task.spawn(v154, v175.Index, true, false, v175.IsItNewAura);
	end;
	v162(true);
	v171 = v53;
	l_Title_1.Text = "Special Auras";
	v111();
end;
local function v177()
	if v52 and not v48 then
		l_AuraStorage_0:FireServer("Remove", v52);
		if v52 == v56.Data.EquippedAuraIndex then
			v52 = nil;
			v111();
		end;
		l_LockButton_0.Disabled.Visible = false;
		l_LockButton_0.AutoButtonColor = true;
		v51 = true;
		l_RemoveWarningBackgroundFrame_0.Visible = false;
	end;
end;
local function v178()
	if not v50 then
		l_SFXs_0.Error:Play();
		return ;
	else
		if v52 and not v48 then
			l_LockButton_0.Disabled.Visible = true;
			l_LockButton_0.AutoButtonColor = false;
			v51 = false;
			l_RemoveWarningBackgroundFrame_0.Visible = true;
		end;
		return ;
	end;
end;
local function v179()
	l_LockButton_0.Disabled.Visible = false;
	l_LockButton_0.AutoButtonColor = true;
	v51 = true;
	l_RemoveWarningBackgroundFrame_0.Visible = false;
end;
local function v180()
	if v52 and not l_EquipButton_0:GetAttribute("Disabled") then
		l_AuraStorage_0:FireServer("Equip", v52, v48);
	end;
end;
local function _(v181)
	if not v48 then
		l_AuraStorage_0:FireServer("Lock", v181);
	end;
end;
local function v183()
	l_StorageUpgrade_0.Text = ("Expand [%*$]"):format((l_Utility_0.format_int(l_Utility_0.GetUpgradeCoins(v56.Data.StorageExpandUpgrade))));
end;
local function v184()
	if not v49 then
		return ;
	else
		v49 = false;
		--if l_Utility_0.GetUpgradeCoins(v56.Data.StorageExpandUpgrade) <= v56.Data.Coins then
			--l_AuraStorage_0:FireServer("UpgradeStorage");
			l_SFXs_0.Money:Play();
		--[[else
			l_SFXs_0.Error:Play();
		end;]]
		task.wait(0.2);
		v49 = true;
		return ;
	end;
end;
l_Slots_0.MouseButton1Click:Connect(function()
	if not l_AuraInventory_0.Visible then
		l_ClientBasedFunctions_0.CloseAllWindows();
	end;
	l_AuraInventory_0.Visible = not l_AuraInventory_0.Visible;
end);
v169(v56.Data.InventoryAuras);
v56:ListenToChange("InventoryAuras", v169);
v176(v56.Data.SpecialInventoryAuras);
v56:ListenToChange("SpecialInventoryAuras", v176);
v56:ListenToChange("EquippedAuraIndex", v111);
v56:ListenToChange("IsEquippingSpecial", v111);
l_StorageUpgrade_0.Text = ("Expand [%*$]"):format((l_Utility_0.format_int(l_Utility_0.GetUpgradeCoins(v56.Data.StorageExpandUpgrade))));
v56:ListenToChange("StorageExpandUpgrade", v183);
v56:ListenToChange("MaxStorableAuras", function(v185)
	l_Title_0.Text = ("Normal Auras [%*/%*]"):format(#v56.Data.InventoryAuras, v185);
end);
l_TextBox_1.Changed:Connect(function()
	l_StringValue_1.Value = l_TextBox_1.Text;
end);
l_TextBox_0.Changed:Connect(function()
	l_StringValue_0.Value = l_TextBox_0.Text;
end);
l_Close_0.MouseButton1Click:Connect(function()
	l_AuraInventory_0.Visible = false;
end);
l_EquipButton_0.MouseButton1Click:Connect(v180);
l_RemoveButton_0.MouseButton1Click:Connect(v178);
l_Remove_0.MouseButton1Click:Connect(v177);
l_Nevermind_0.MouseButton1Click:Connect(v179);
l_StorageUpgrade_0.MouseButton1Click:Connect(v184);
l_ClientBasedFunctions_0.LoadButtonEffects(l_Slots_0);
l_ClientBasedFunctions_0.LoadButtonEffects(l_EquipButton_0, 1.025);
l_ClientBasedFunctions_0.LoadButtonEffects(l_RemoveButton_0, 1.025);
l_ClientBasedFunctions_0.LoadButtonEffects(l_LockButton_0, 1.025);
l_ClientBasedFunctions_0.LoadButtonEffects(l_Remove_0);
l_ClientBasedFunctions_0.LoadButtonEffects(l_Nevermind_0);
l_ClientBasedFunctions_0.LoadButtonEffects(l_StorageUpgrade_0, 1.025);
l_ClientBasedFunctions_0.LoadButtonEffects(l_Close_0, 1);
