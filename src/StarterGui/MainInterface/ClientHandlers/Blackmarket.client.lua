local l_Players_0 = game:GetService("Players");
local _ = game:GetService("StarterGui");
local l_RunService_0 = game:GetService("RunService");
local _ = game:GetService("TweenService");
local l_ReplicatedStorage_0 = game:GetService("ReplicatedStorage");
local l_CollectionService_0 = game:GetService("CollectionService");
local l_LocalPlayer_0 = l_Players_0.LocalPlayer;
local l_ShopUI_0 = l_LocalPlayer_0:WaitForChild("PlayerGui"):WaitForChild("MainInterface"):WaitForChild("ShopUI");
local l_ExchangerUI_0 = l_ShopUI_0.Parent:WaitForChild("ExchangerUI");
local l_SFXs_0 = l_ReplicatedStorage_0:WaitForChild("Assets"):WaitForChild("SFXs");
local l_ViewportFrame_0 = l_ShopUI_0:WaitForChild("ViewportFrame");
local l_ItemName_0 = l_ShopUI_0:WaitForChild("ItemName");
local l_Stocks_0 = l_ShopUI_0:WaitForChild("Stocks");
local l_TextLabel_0 = l_ShopUI_0:WaitForChild("ItemDesc"):WaitForChild("TextLabel");
local l_ShopTypeIcon_0 = l_ShopUI_0:WaitForChild("ShopTypeIcon");
local l_Price_0 = l_ShopUI_0:WaitForChild("Price");
local l_Descendants_0 = l_Price_0:WaitForChild("SelectionCorners"):GetDescendants();
local l_Title_0 = l_ShopUI_0:WaitForChild("SelectionCorners"):WaitForChild("Title");
local l_Close_0 = l_Title_0:WaitForChild("Close");
local l_PurchaseButton_0 = l_ShopUI_0:WaitForChild("PurchaseButton");
local l_Amount_0 = l_PurchaseButton_0:WaitForChild("Amount");
local l_Disabled_0 = l_PurchaseButton_0:WaitForChild("Disabled");
local l_Processing_0 = l_PurchaseButton_0:WaitForChild("Processing");
local _ = l_Processing_0:WaitForChild("Frame"):WaitForChild("UIGradient");
local l_MessageUI_0 = l_ShopUI_0:WaitForChild("MessageUI");
local l_Message_0 = l_MessageUI_0:WaitForChild("Message");
local l_Description_0 = l_Message_0:WaitForChild("Description");
local l_Close_1 = l_Message_0:WaitForChild("Close");
local l_ScrollingFrame_0 = l_ShopUI_0:WaitForChild("Selection"):WaitForChild("ScrollingFrame");
local l_Server0o_0 = l_ReplicatedStorage_0:WaitForChild("Server0o");
local v30 = nil;
local l_Modules_0 = l_ReplicatedStorage_0:WaitForChild("Modules");
local l_Dialog_0 = require(l_Modules_0:WaitForChild("Dialog"));
local l_msgpack_0 = require(l_Modules_0:WaitForChild("msgpack"));
local l_Utility_0 = require(l_Modules_0:WaitForChild("Utility"));
local l_ClientFunctions_0 = require(l_Modules_0:WaitForChild("ClientFunctions"));
local v36 = require(l_Modules_0:WaitForChild("RemoteFunction")).new("Blackmarket");
local l_DB_0 = l_Modules_0:WaitForChild("DB");
local l_ItemDB_0 = require(l_DB_0:WaitForChild("ItemDB"));
local l_BlackmarketDialogs_0 = require(l_DB_0:WaitForChild("BlackmarketDialogs"));
local v40 = l_Utility_0.GetReplica();
local l_Assets_0 = l_ReplicatedStorage_0:WaitForChild("Assets");
local l_Spawn_0 = l_Assets_0:WaitForChild("VFXS"):WaitForChild("Spawn");
local l_LeaveTime_0 = l_Assets_0:WaitForChild("Attachments"):WaitForChild("LeaveTime");
local v44 = nil;
local v45 = nil;
local v46 = l_RunService_0:IsStudio();
local v47 = false;
local v48 = l_CollectionService_0:GetTagged("Blackmarket")[1];
local v49 = nil;
local v50 = nil;
local v51 = 0;
local v52 = nil;
local l_Camera_0 = Instance.new("Camera");
local v61 = l_Utility_0.switch():case("Coin", function(_, v55)
	return v55 <= v40.Data.Coins;
end):case("DarkCoin", function(_, v57)
	return v57 <= v40.Data.DarkCoins;
end):case("Item", function(_, v59, v60)
	return v40.Data.Inventory[v60] and v59 <= v40.Data.Inventory[v60].amount;
end);
l_Camera_0.Parent = l_ViewportFrame_0;
l_ViewportFrame_0.CurrentCamera = l_Camera_0;
local function v66(v62, v63)
	for _, v65 in ipairs(v62:GetDescendants()) do
		if v65:IsA("ParticleEmitter") and v65.Color ~= ColorSequence.new(Color3.new()) then
			v65.Color = ColorSequence.new(v63);
		end;
	end;
end;
local function v67(v68, v69)
	for v70, v71 in pairs(v68) do
		if v70 == "ViewportData" then
			v68[v70] = v69;
		elseif typeof(v71) == "table" then
			v67(v71, v69);
		end;
	end;
end;
local function v77(v72, v73)
	local v74 = l_BlackmarketDialogs_0[v72][v73 or "Interact"];
	local v75 = table.clone(#v74 >= 1 and v74[Random.new():NextInteger(1, #v74)] or v74);
	if v48 then
		local l_Head_0 = v48:WaitForChild("Head");
		v67(v75, {
			Model = v48, 
			CFrame = CFrame.lookAt((l_Head_0.CFrame * CFrame.new(0, 0, -3)).Position, l_Head_0.Position)
		});
	end;
	return v75;
end;
local _ = function(v78)
	for _, v80 in ipairs(v30.Products) do
		if v80.UID == v78 then
			return v80;
		end;
	end;
	return v44;
end;
local function v85(v82)
	if v52 then
		v52:Destroy();
		v52 = v44;
	end;
	local l_PreviewModel_0 = l_ItemDB_0[v82].PreviewModel;
	if l_PreviewModel_0 then
		local v84 = l_PreviewModel_0:Clone();
		v84:PivotTo(CFrame.new());
		v84.Parent = l_ViewportFrame_0;
		l_Camera_0.CFrame = CFrame.lookAt((CFrame.Angles(0.7853981633974483, 0.7853981633974483, 0) * CFrame.new(0, 0, -(v84:IsA("BasePart") and v84.Size.Magnitude / 2 or v84:GetExtentsSize().Magnitude / 2) - 1)).Position, Vector3.zero);
		v52 = v84;
	end;
end;
local function v94()
	if v45 then
		local l_v45_0 = v45;
		local v87;
		for _, v89 in ipairs(v30.Products) do
			if v89.UID == l_v45_0 then
				v87 = v89;
			end;
		end;
		--v87 = v44;
		local v90 = v87.Price * math.min((l_Utility_0.IsValidNumberText(l_Amount_0.Text) and tonumber(l_Amount_0.Text) > 0) and tonumber(l_Amount_0.Text) or 1, v87.MaxPurchaseLimit and math.min(v87.MaxPurchaseLimit, v87.QuantityLeft) or v87.QuantityLeft);
		local v91 = (v87.CurrencyType == "Coin" and Color3.fromRGB(255, 238, 112) or v87.CurrencyType == "DarkCoin" and Color3.fromRGB(78, 17, 148)) or v87.CurrencyType == "Item" and l_ItemDB_0[v87.ProductName].TextColor;
		for _, v93 in ipairs(l_Descendants_0) do
			if v93:IsA("Frame") then
				v93.BackgroundColor3 = v91;
			end;
		end;
		l_Price_0.TextColor3 = v91;
		l_Price_0.Text = (v87.CurrencyType == "Coin" and ("%* Coin(s)"):format(v90) or v87.CurrencyType == "DarkCoin" and ("%* Point(s)"):format(v90)) or v87.CurrencyType == "Item" and ("x%* %*(s)"):format(v90, v87.CurrencyName);
	end;
end;
local function v99(v95)
	local v96;
	print(v30.Products)
	for _, v98 in ipairs(v30.Products) do
		if v98.UID == v95 then
			v96 = v98;
		end;
	end;
	--v96 = v44;
	l_ItemName_0.Text = v96.ProductName;
	print(l_ItemDB_0[v96.ProductName])
	l_TextLabel_0.Text = l_ItemDB_0[v96.ProductName].Description;
	l_Stocks_0.Text = ("[Stock: %*/%*]"):format(v96.QuantityLeft, v96.Quantity);
	l_Disabled_0.Visible = v96.QuantityLeft <= 0;
	v85(v96.ProductName);
	v94();
	l_Amount_0:ReleaseFocus();
end;
local function _(v100)
	l_Description_0.Text = v100;
	l_MessageUI_0.Visible = true;
end;
local function v109()
	if v45 and not v47 then
		l_Amount_0.TextEditable = false;
		v47 = true;
		local l_v45_1 = v45;
		local v103;
		--print(v30.Products)
		for _, v105 in ipairs(v30.Products) do
			if v105.UID == l_v45_1 then
				v103 = v105;
			end;
		end;
		--v103 = v44;
		l_v45_1 = (l_Utility_0.IsValidNumberText(l_Amount_0.Text) and tonumber(l_Amount_0.Text) > 0) and tonumber(l_Amount_0.Text) or 1;
		local v106 = v103.Price * math.min(l_v45_1, v103.MaxPurchaseLimit and math.min(v103.MaxPurchaseLimit, v103.QuantityLeft) or v103.QuantityLeft);
		if v103.QuantityLeft <= 0 then
			l_ShopUI_0.Visible = false;
			l_Dialog_0.DisplayDialog((v77(v30.Type, "NoProduct")));
			l_ShopUI_0.Visible = true;
		elseif v61(v103.CurrencyType, v106, v103.CurrencyName) then
			l_Processing_0.Visible = true;
			local v107 = v36:Fire(l_msgpack_0.encode({
				ProductUID = v103.UID, 
				Amount = l_v45_1
			}));
			if v107 then
				local v108 = l_msgpack_0.decode(v107);
				if not v108[1] then
					if v108[3] == 402 then
						l_ShopUI_0.Visible = false;
						l_Dialog_0.DisplayDialog((v77(v30.Type, "NoProduct")));
						l_ShopUI_0.Visible = true;
					else
						l_Description_0.Text = v108[2];
						l_MessageUI_0.Visible = true;
					end;
				else
					print(v108)
					print(v108[2])
					print(v108[2].Amount)
					v51 = 0;
					l_Utility_0.Notify("Purchase Completed", ("You successfully purchased %* %*(s)."):format(v108[2].Amount, v103.ProductName), 7, "Normal");
					l_SFXs_0:WaitForChild("Money"):Play();
					l_ShopUI_0.Visible = false;
					l_Dialog_0.DisplayDialog((v77(v30.Type, "AfterBought")));
					l_ShopUI_0.Visible = true;
				end;
			else
				l_Description_0.Text = "The server is not responding.";
				l_MessageUI_0.Visible = true;
			end;
			l_Processing_0.Visible = false;
		else
			v51 = v51 + 1;
			l_ShopUI_0.Visible = false;
			if v51 > 50 and l_BlackmarketDialogs_0[v30.Type].NoCurrencySpecial then
				l_Dialog_0.DisplayDialog((v77(v30.Type, "NoCurrencySpecial")));
			else
				l_Dialog_0.DisplayDialog((v77(v30.Type, "NoCurrency")));
			end;
			l_ShopUI_0.Visible = true;
		end;
		task.wait(1);
		v47 = false;
		l_Amount_0.TextEditable = true;
	end;
end;
local function v118(v110)
	local v111 = l_ScrollingFrame_0:WaitForChild(v110.ProductTier):Clone();
	local l_Button_0 = v111:WaitForChild("CanvasGroup"):WaitForChild("Button");
	local l_TextFrame_0 = l_Button_0:WaitForChild("TextFrame");
	local v114 = nil;
	v111:AddTag("ActiveProduct");
	l_TextFrame_0.Text = v110.ProductName;
	v111.Parent = l_ScrollingFrame_0;
	v111.Visible = true;
	v114 = l_ClientFunctions_0.LoadButtonEffects(l_Button_0, 1);
	local v115 = l_Button_0.MouseButton1Down:Connect(function()
		v45 = v110.UID;
		v99(v110.UID);
	end);
	l_Button_0.Destroying:Once(function()
		v115:Disconnect();
		for _, v117 in ipairs(v114) do
			v117:Disconnect();
		end;
		table.clear(v114);
	end);
end;
local function v127()
	local l_l_Server0o_0_Attribute_0 = l_Server0o_0:GetAttribute("Blackmarket");
	if l_l_Server0o_0_Attribute_0 ~= nil then
		local v120 = v30 == nil;
		v30 = l_msgpack_0.decode(l_l_Server0o_0_Attribute_0);
		if v30 == nil then
			return ;
		end
		for _, v122 in ipairs(l_ShopTypeIcon_0:GetChildren()) do
			if v122:IsA("ImageLabel") then
				v122.Visible = false;
			end;
		end;
		if v120 then
			for _, v124 in ipairs(v30.Products) do
				task.defer(v118, v124);
			end;
			v51 = 0;
		end;
		l_Title_0.Text = v30.ShopName;
		l_ShopTypeIcon_0:WaitForChild(v30.Type).Visible = true;
		if v45 then
			v99(v45);
		else
			v45 = v30.Products[1].UID;
			v99(v30.Products[1].UID);
		end;
		v94();
		return ;
	else
		v30 = v44;
		v45 = v44;
		l_ShopUI_0.Visible = false;
		for _, v126 in ipairs(l_ScrollingFrame_0:GetChildren()) do
			if v126:HasTag("ActiveProduct") then
				v126:Destroy();
			end;
		end;
		return ;
	end;
end;
local function v132()
	if v30 and l_ShopUI_0.Visible then
		local v128 = CFrame.new(table.unpack(v30.SpawnLocation));
		local l_Character_0 = l_LocalPlayer_0.Character;
		local v130 = l_Character_0 and l_Character_0:WaitForChild("HumanoidRootPart");
		local v131 = v130 and (v130.Position - v128.Position).Magnitude;
		if not v131 or v131 > 17 then
			l_ShopUI_0.Visible = false;
		end;
	end;
end;
local function v134(v133)
	if v52 then
		v52:PivotTo(v52:GetPivot() * CFrame.Angles(0, math.rad(15 * v133), 0));
	end;
	if v50 and v30 then
		v50:WaitForChild("LeaveTime"):WaitForChild("TextLabel").Text = ("Leaves in %*"):format((l_Utility_0.ConvertToDHMS((math.floor((math.max(v30.DespawnTime - workspace:GetServerTimeNow(), 0)))))));
	end;
end;
local function v135()
	l_PurchaseButton_0:SetAttribute("Disabled", l_Processing_0.Visible or l_Disabled_0.Visible);
end;
local function v138(v136)
	if v136 == l_LocalPlayer_0 and v49.Enabled then
		v49.Enabled = false;
		local v137 = l_Dialog_0.DisplayDialog((v77(v30.Type)));
		if v137 == "Open" then
			l_ExchangerUI_0.Visible = false;
			l_ShopUI_0.Visible = true;
		elseif v137 == "Exchange" then
			l_ShopUI_0.Visible = false;
			l_ExchangerUI_0.Visible = true;
		end;
		v49.Enabled = true;
	end;
end;
local function v147(v139)
	local v140 = v139 or l_CollectionService_0:GetTagged("Blackmarket")[1];
	if not v140 then
		return ;
	else
		local l_ProximityPrompt_0 = Instance.new("ProximityPrompt");
		local v142 = l_LeaveTime_0:Clone();
		if v140.Name == "Jester" then
			v142:FindFirstChildWhichIsA("UIGradient", true).Color = ColorSequence.new(Color3.fromRGB(234, 112, 255), Color3.fromRGB(123, 46, 255));
		elseif v140.Name == "Mari" then
			v142:FindFirstChildWhichIsA("UIGradient", true).Color = ColorSequence.new(Color3.fromRGB(168, 168, 168), Color3.fromRGB(79, 79, 79));
		end;
		l_ProximityPrompt_0.ObjectText = "Talk";
		l_ProximityPrompt_0.ActionText = v140.Name;
		l_ProximityPrompt_0.MaxActivationDistance = 15;
		l_ProximityPrompt_0.Parent = v140;
		v49 = l_ProximityPrompt_0;
		v142.Parent = v140.PrimaryPart;
		v50 = v142;
		for _, v144 in ipairs(v140:GetDescendants()) do
			if v144:IsA("BasePart") then
				v144.CanCollide = false;
				v144.CanQuery = false;
			end;
		end;
		if math.abs(v140:GetAttribute("Spawn") - workspace:GetServerTimeNow()) <= 5 then
			local v145 = l_Spawn_0:Clone();
			if v140.Name == "Jester" then
				v66(v145, Color3.fromRGB(155, 97, 255));
			elseif v140.Name == "Mari" then
				v66(v145, Color3.fromRGB(204, 204, 204));
			end;
			v145.CFrame = v140:GetPivot() * CFrame.new(0, -3, 0);
			v145.Parent = workspace;
		end;
		local v146 = l_ProximityPrompt_0.Triggered:Connect(v138);
		l_ProximityPrompt_0.Destroying:Once(function()
			v146:Disconnect();
			v49 = v44;
			v48 = v44;
			l_Dialog_0.CancelDialog();
		end);
		return ;
	end;
end;
v127();
l_Server0o_0:GetAttributeChangedSignal("Blackmarket"):Connect(v127);
v147(v48);
l_ClientFunctions_0.LoadButtonEffects(l_PurchaseButton_0, 1);
l_ClientFunctions_0.LoadButtonEffects(l_Close_0, 1);
l_ClientFunctions_0.LoadButtonEffects(l_Close_1, 1);
l_PurchaseButton_0.MouseButton1Click:Connect(v109);
l_Disabled_0.MouseButton1Click:Connect(v109);
l_Close_0.MouseButton1Click:Connect(function()
	l_ShopUI_0.Visible = false;
end);
l_Close_1.MouseButton1Click:Connect(function()
	l_MessageUI_0.Visible = false;
end);
l_Amount_0.Changed:Connect(function(v148)
	if v148 == "Text" then
		if not l_Utility_0.IsValidNumberText(l_Amount_0.Text) then
			l_Amount_0.Text = l_Amount_0.Text:gsub("%D", "");
		end;
		if tonumber(l_Amount_0.Text) and tonumber(l_Amount_0.Text) <= 0 then
			l_Amount_0.Text = l_Amount_0.Text:gsub("0", "");
		end;
		v94();
	end;
end);
l_Amount_0.FocusLost:Connect(function()
	local l_v45_2 = v45;
	local v150;
	for _, v152 in ipairs(v30.Products) do
		if v152.UID == l_v45_2 then
			v150 = v152;
		end;
	end;
	--v150 = v44;
	local l_QuantityLeft_0 = v150.QuantityLeft;
	if tonumber(l_Amount_0.Text) and l_QuantityLeft_0 < tonumber(l_Amount_0.Text) then
		l_Amount_0.Text = l_QuantityLeft_0;
	end;
end);
l_CollectionService_0:GetInstanceAddedSignal("Blackmarket"):Connect(function(v154)
	if not v154:IsDescendantOf(workspace) then
		return ;
	else
		v48 = v154;
		v147(v154);
		return ;
	end;
end);
l_Disabled_0.Changed:Connect(v135);
l_Processing_0.Changed:Connect(v135);
if not v46 then
	l_RunService_0.Heartbeat:Connect(v132);
end;
l_RunService_0.RenderStepped:Connect(v134);
