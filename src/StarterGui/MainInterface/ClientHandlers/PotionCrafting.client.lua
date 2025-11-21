local l_Players_0 = game:GetService("Players");
local l_ReplicatedStorage_0 = game:GetService("ReplicatedStorage");
local l_SFXs_0 = l_ReplicatedStorage_0:WaitForChild("Assets"):WaitForChild("SFXs");
local l_TiersUI_0 = l_ReplicatedStorage_0:WaitForChild("TiersUI");
local l_Remotes_0 = l_ReplicatedStorage_0:WaitForChild("Remotes");
local l_Bindables_0 = l_ReplicatedStorage_0:WaitForChild("Bindables");
local l_PotionCrafting_0 = l_Remotes_0:WaitForChild("PotionCrafting");
local l_PotionCraftingSomethingFailed_0 = l_Remotes_0:WaitForChild("PotionCraftingSomethingFailed");
local l_Modules_0 = l_ReplicatedStorage_0:WaitForChild("Modules");
local l_DB_0 = l_Modules_0:WaitForChild("DB");
local l_ItemDB_0 = require(l_DB_0:WaitForChild("ItemDB"));
local l_RecipesDB_0 = require(l_DB_0:WaitForChild("RecipesDB"));
local l_PotionRecipesDB_0 = require(l_DB_0:WaitForChild("PotionRecipesDB"));
local l_Utility_0 = require(l_Modules_0:WaitForChild("Utility"));
local l_ConsoleIconHandler_0 = require(l_ReplicatedStorage_0.Modules:WaitForChild("ConsoleIconHandler"));
local l_Core_0 = require(script:FindFirstAncestorOfClass("ScreenGui"):WaitForChild("Notification"):WaitForChild("Core"));
local l_LocalPlayer_0 = l_Players_0.LocalPlayer;
ReplicaController = require(l_ReplicatedStorage_0:WaitForChild("ReplicaController"));
ReplicaController.RequestData();
while true do
	task.wait();
	if ReplicaController.InitialDataReceived then
		break;
	end;
end;
local v17 = ReplicaController.GetReplicaById(l_LocalPlayer_0:GetAttribute("UID"));
local l_ClientBasedFunctions_0 = require(l_Modules_0:WaitForChild("CoreModules"):WaitForChild("ClientBasedFunctions"));
local l_AutoCraftChange_0 = l_Remotes_0:WaitForChild("AutoCraftChange");
local _ = l_Bindables_0:WaitForChild("AutoCraftChanged");
local v21 = {};
local v22 = {};
local v23 = "";
local v24 = 0;
local v25 = "";
local v26 = false;
local l_ProximityPrompt_0 = workspace:WaitForChild("CaveMap"):WaitForChild("WitchCave"):WaitForChild("Cauldron"):WaitForChild("Liquid"):WaitForChild("Attachment"):WaitForChild("ProximityPrompt");
local function v35(v28)
	local v29 = {
		{
			1000, 
			"M"
		}, 
		{
			900, 
			"CM"
		}, 
		{
			500, 
			"D"
		}, 
		{
			400, 
			"CD"
		}, 
		{
			100, 
			"C"
		}, 
		{
			90, 
			"XC"
		}, 
		{
			50, 
			"L"
		}, 
		{
			40, 
			"XL"
		}, 
		{
			10, 
			"X"
		}, 
		{
			9, 
			"IX"
		}, 
		{
			5, 
			"V"
		}, 
		{
			4, 
			"IV"
		}, 
		{
			1, 
			"I"
		}
	};
	local v30 = "";
	for _, v32 in ipairs(v29) do
		local v33 = v32[1];
		local v34 = v32[2];
		while v33 <= v28 do
			v30 = v30 .. v34;
			v28 = v28 - v33;
		end;
	end;
	return v30;
end;
local _ = function(v36, v37, v38)
	for _, v40 in l_PotionRecipesDB_0[v36].potions[v37].ingredients do
		if v38 == v40[1] then
			return v40[2];
		end;
	end;
end;
local function v45(v42, v43, v44)
	if not v17.Data.PotionCraftingProgress then
		return 0;
	elseif not v17.Data.PotionCraftingProgress[("%* %*"):format(v42, (v35(v43)))] then
		return 0;
	elseif not v17.Data.PotionCraftingProgress[("%* %*"):format(v42, (v35(v43)))][v44] then
		return 0;
	else
		return v17.Data.PotionCraftingProgress[("%* %*"):format(v42, (v35(v43)))][v44];
	end;
end;
local function v50(v46)
	local v47 = nil;
	if v46:IsA("Model") then
		local l_v46_ExtentsSize_0 = v46:GetExtentsSize();
		v47 = math.max(l_v46_ExtentsSize_0.X, l_v46_ExtentsSize_0.Y, l_v46_ExtentsSize_0.Z);
	elseif v46:IsA("BasePart") then
		local l_Size_0 = v46.Size;
		v47 = math.max(l_Size_0.X, l_Size_0.Y, l_Size_0.Z);
	end;
	return CFrame.new(Vector3.new(0, (math.ceil(v47) / 3) * 2, (math.ceil(v47))), (Vector3.new()));
end;
local function v59(v51)
	local l_Potion0omationFrame_0 = v51.Potion0omationFrame;
	local l_ViewportFrame_0 = l_Potion0omationFrame_0.ViewportHolder.ViewportFrame;
	local v54 = l_ViewportFrame_0:FindFirstChild("Camera") or Instance.new("Camera", l_ViewportFrame_0);
	l_ViewportFrame_0.CurrentCamera = v54;
	local l_PotionDescription_0 = l_Potion0omationFrame_0.PotionDescription;
	local l_PotionName_0 = l_Potion0omationFrame_0.PotionName;
	l_PotionDescription_0.Text = l_PotionRecipesDB_0[v23].description;
	l_PotionName_0.Text = ("%* %*"):format(v23, (v35(v24)));
	local v57 = l_PotionRecipesDB_0[v23].potions[v24].viewportModel:Clone();
	local v58 = l_ViewportFrame_0:FindFirstChildWhichIsA("Model") or l_ViewportFrame_0:FindFirstChildWhichIsA("BasePart");
	if v58 then
		v58:Destroy();
	end;
	if v57:IsA("Model") then
		v57:PivotTo(CFrame.new());
	else
		v57.Position = Vector3.new();
	end;
	v57.Parent = l_ViewportFrame_0;
	v54.CFrame = v50(v57);
end;
local function v68(v60, v61, v62)
	local v63 = ("%* %*"):format(v60, (v35(v61)));
	if not v17.Data.PotionCraftingProgress[v63] then
		return false;
	elseif not v17.Data.PotionCraftingProgress[v63][v62] then
		return false;
	else
		local v64 = v17.Data.PotionCraftingProgress[v63][v62];
		local v65;
		for _, v67 in l_PotionRecipesDB_0[v60].potions[v61].ingredients do
			if v62 == v67[1] then
				v65 = v67[2];
				--goto label0 --[[  true, false  ]];
			end;
		end;
		v65 = nil;
		--::label0::;
		return not (v64 < v65);
	end;
end;
local function v74(v69, v70)
	local v71 = 0;
	for v72, v73 in v69 do
		if ((v72 ~= "0" and v72 ~= 0) and not v73.Locked) and v73.Name == v70 then
			v71 = v71 + 1;
		end;
	end;
	return v71;
end;
romanToInteger = function(v75)
	local v76 = {
		I = 1, 
		V = 5, 
		X = 10, 
		L = 50, 
		C = 100, 
		D = 500, 
		M = 1000
	};
	local v77 = 0;
	local v78 = 0;
	for v79 = #v75, 1, -1 do
		local v80 = v76[string.upper((string.sub(v75, v79, v79)))];
		if not v80 then
			return nil;
		else
			v77 = if v80 < v78 then v77 - v80 else v77 + v80;
			v78 = v80;
		end;
	end;
	return v77;
end;
local l_MainInterface_0 = l_LocalPlayer_0.PlayerGui.MainInterface;
potionCraftFrame = l_MainInterface_0.PotionCraftFrame;
potionCraftFrame.Parent = l_MainInterface_0;
local l_Item_0 = script.Item;
local l_Holder_0 = potionCraftFrame.Holder;
local l_InnerFrame_0 = potionCraftFrame.InnerFrame;
local l_Close_0 = potionCraftFrame.SelectionCorners.Close;
local l_Craft_0 = l_InnerFrame_0.Holder.Craft;
local l_Auto_0 = l_InnerFrame_0.Holder.Auto;
for v88, v89 in l_PotionRecipesDB_0 do
	local v90 = l_Item_0:Clone();
	v90:WaitForChild("Title").Text = v88;
	v90:WaitForChild("Desc").Text = v89.description;
	v90.LayoutOrder = v89[1];
	v90.Name = v88;
	local function v95()
		if v23 ~= v88 then
			v23 = v88;
			v24 = 1;
			for _, v92 in v22 do
				v92.Visible = false;
			end;
			for _, v94 in v21 do
				v94.Visible = false;
			end;
			v21[("%* I"):format(v23)].Visible = true;
			v22[v23].Visible = true;
			v59(potionCraftFrame);
		end;
		if v17.Data.AutoCrafting == ("%* %*"):format(v23, (v35(v24))) then
			l_Utility_0.ChangeCornerColor(l_Auto_0, Color3.fromRGB(43, 255, 32));
			l_Auto_0.TextColor3 = Color3.fromRGB(43, 255, 32);
		else
			l_Utility_0.ChangeCornerColor(l_Auto_0, Color3.fromRGB(255, 255, 255));
			l_Auto_0.TextColor3 = Color3.fromRGB(255, 255, 255);
		end;
		l_SFXs_0.MouseHover:Play();
	end;
	v90.MouseEnter:Connect(v95);
	v90.SelectionChanged:Connect(function(v96)
		if v96 then
			v95();
		end;
	end);
	v90.Parent = l_Holder_0;
	v90.Visible = true;
	local v97 = l_InnerFrame_0.PotionLevels:Clone();
	v97.Name = ("PotionLevels\n%*"):format(v88);
	v97.Parent = l_InnerFrame_0;
	v97.Visible = v89[1] == 1;
	v22[v88] = v97;
	local l_PotionButton_0 = script.PotionButton;
	local l_Ingredients_0 = l_InnerFrame_0.Holder.Ingredients;
	for v100, v101 in v89.potions do
		local v102 = l_PotionButton_0:Clone();
		local v103 = l_Ingredients_0:Clone();
		v103.Name = ("Ingredients\n%*\n%*"):format(v88, (v35(v100)));
		v102:WaitForChild("TextLabel").Text = ("%* %*"):format(v88, (v35(v100)));
		v102.LayoutOrder = v100;
		v102.Name = ("%* %*"):format(v88, (v35(v100)));
		v102.MouseButton1Click:Connect(function()
			if not (v23 == v88) or v24 ~= v100 then
				v23 = v88;
				v24 = v100;
				for _, v105 in v21 do
					v105.Visible = false;
				end;
				v21[("%* %*"):format(v23, (v35(v24)))].Visible = true;
				v59(potionCraftFrame);
				l_SFXs_0.Click:Play();
			end;
			if v17.Data.AutoCrafting == ("%* %*"):format(v23, (v35(v24))) then
				l_Utility_0.ChangeCornerColor(l_Auto_0, Color3.fromRGB(43, 255, 32));
				l_Auto_0.TextColor3 = Color3.fromRGB(43, 255, 32);
				return ;
			else
				l_Utility_0.ChangeCornerColor(l_Auto_0, Color3.fromRGB(255, 255, 255));
				l_Auto_0.TextColor3 = Color3.fromRGB(255, 255, 255);
				return ;
			end;
		end);
		v102.MouseEnter:Connect(function()
			l_SFXs_0.MouseHover:Play();
		end);
		local l_Ingredient_0 = script.Ingredient;
		v102.Parent = v97;
		v102.Visible = true;
		v103.Parent = l_InnerFrame_0.Holder;
		v21[("%* %*"):format(v88, (v35(v100)))] = v103;
		if v89[1] == 1 and v100 == 1 then
			v23 = v88;
			v24 = v100;
			v103.Visible = true;
			v59(potionCraftFrame);
		end;
		local v107 = l_ClientBasedFunctions_0.LoadButtonEffects(v102);
		v107.Enter:Disconnect();
		v107.Leave:Disconnect();
		for v108, v109 in v101.ingredients do
			local v110 = v109[1];
			local v111 = v109[2];
			local v112 = v45(v88, v100, v110);
			local v113 = l_Ingredient_0:Clone();
			v113.Text = v110;
			v113.Amount.Text = ("%* / %*"):format(v112, v111);
			v17:ListenToChange({
				"PotionCraftingProgress", 
				("%* %*"):format(v88, (v35(v100))), 
				v110
			}, function(v114)
				if v111 <= v114 then
					v113.Completed.Visible = true;
					v113.Add.Visible = false;
					v113.AddAmount.Visible = false;
					v113.Amount.Visible = false;
					return ;
				else
					v113.Amount.Text = ("%* / %*"):format(v114, v111);
					return ;
				end;
			end);
			if v111 <= v112 then
				v113.Completed.Visible = true;
				v113.Add.Visible = false;
				v113.AddAmount.Visible = false;
				v113.Amount.Visible = false;
			else
				v113.Completed.Visible = false;
				v113.Add.Visible = true;
				v113.AddAmount.Visible = true;
				v113.Amount.Visible = true;
			end;
			v113.LayoutOrder = v108;
			v113.Name = v110;
			v113.Add.MouseButton1Click:Connect(function()
				if not l_Utility_0.IsValidNumberText(v113.AddAmount.Text) then
					l_SFXs_0.Error:Play();
					return ;
				elseif tonumber(v113.AddAmount.Text) < 1 then
					l_SFXs_0.Error:Play();
					return ;
				else
					if l_ItemDB_0[v110] then
						if not v17.Data.Inventory[v110] or v17.Data.Inventory[v110] and v17.Data.Inventory[v110].amount < v113.AddAmount.Text + 0 then
							l_SFXs_0.Error:Play();
							return ;
						end;
					elseif l_TiersUI_0:FindFirstChild(v110) and v74(v17.Data.InventoryAuras, v110) < v113.AddAmount.Text + 0 then
						l_SFXs_0.Error:Play();
						return ;
					end;
					l_PotionCrafting_0:FireServer("Add", v88, v100, v110, v113.AddAmount.Text);
					l_SFXs_0.Click:Play();
					return ;
				end;
			end);
			v113.Parent = v103;
			v113.Add.MouseEnter:Connect(function()
				l_SFXs_0.MouseHover:Play();
			end);
		end;
	end;
end;
l_Close_0.MouseButton1Click:Connect(function()
	potionCraftFrame.Visible = false;
end);
l_ConsoleIconHandler_0.ButtonGuide:Set(l_Close_0, "ButtonB", function()
	potionCraftFrame.Visible = false;
end);
l_Craft_0.MouseButton1Click:Connect(function()
	for _, v116 in l_PotionRecipesDB_0[v23].potions[v24].ingredients do
		if not v68(v23, v24, v116[1]) then
			l_SFXs_0.Error:Play();
			return ;
		end;
	end;
	l_PotionCrafting_0:FireServer("Craft", v23, v24);
	for _, v118 in (v21[("%* %*"):format(v23, (v35(v24)))]:GetChildren()) do
		if v118:IsA("TextLabel") then
			local v119 = {
				v23, 
				v24, 
				v118.Name
			};
			v118.Completed.Visible = false;
			v118.Add.Visible = true;
			v118.AddAmount.Visible = true;
			v118.Amount.Visible = true;
			local l_Amount_0 = v118.Amount;
			local v121 = "0 / %*";
			local v122, v123, v124 = table.unpack(v119);
			local v125;
			for _, v127 in l_PotionRecipesDB_0[v122].potions[v123].ingredients do
				if v124 == v127[1] then
					v125 = v127[2];
					--goto label1 --[[  true, false  ]];
				end;
			end;
			v125 = nil;
			--::label1::;
			l_Amount_0.Text = v121:format(v125);
		end;
	end;
	l_SFXs_0.PotionCrafting:Play();
end);
if v17.Data.AutoCrafting ~= "" then
	local v128, v129 = string.match(v17.Data.AutoCrafting, "([%s%w%p]+) ([IVXCM]+)");
	if v128 then
		v129 = romanToInteger(v129);
		local l_l_Holder_0_FirstChild_0 = l_Holder_0:FindFirstChild(v128);
		if l_l_Holder_0_FirstChild_0 then
			v25 = v17.Data.AutoCrafting;
			l_Utility_0.ChangeCornerColor(l_l_Holder_0_FirstChild_0, Color3.fromRGB(43, 255, 32));
			local l_FirstChild_0 = l_InnerFrame_0:FindFirstChild("PotionLevels\n" .. v128):FindFirstChild((("%* %*"):format(v128, (v35(v129)))));
			l_Utility_0.ChangeCornerColor(l_FirstChild_0, Color3.fromRGB(43, 255, 32));
			l_FirstChild_0.TextLabel.TextColor3 = Color3.fromRGB(43, 255, 32);
			if v17.Data.AutoCrafting == ("%* %*"):format(v23, (v35(v24))) then
				l_Utility_0.ChangeCornerColor(l_Auto_0, Color3.fromRGB(43, 255, 32));
				l_Auto_0.TextColor3 = Color3.fromRGB(43, 255, 32);
			end;
		end;
	end;
end;
v17:ListenToChange("AutoCrafting", function(_)
	if l_RecipesDB_0[v17.Data.AutoCrafting] then
		if v25 ~= "" then
			local v133, _ = string.match(v25, "([%s%w%p]+) ([IVXCM]+)");
			l_Utility_0.ChangeCornerColor(l_Auto_0, Color3.fromRGB(255, 255, 255));
			l_Utility_0.ChangeCornerColor(l_Holder_0:FindFirstChild(v133), Color3.fromRGB(43, 255, 32));
			l_Auto_0.TextColor3 = Color3.fromRGB(255, 255, 255);
			v25 = "";
			return ;
		end;
	else
		v25 = v17.Data.AutoCrafting;
	end;
end);
l_Auto_0.MouseButton1Click:Connect(function()
	if v17.Data.AutoCrafting ~= "" then
		local v135, _ = string.match(v17.Data.AutoCrafting, "([%s%w%p]+) ([IVXCM]+)");
		if l_PotionRecipesDB_0[v135] then
			local l_FirstChild_1 = l_InnerFrame_0:FindFirstChild("PotionLevels\n" .. v135):FindFirstChild(v17.Data.AutoCrafting);
			l_Utility_0.ChangeCornerColor(l_Holder_0:FindFirstChild(v135), Color3.fromRGB(255, 255, 255));
			l_Utility_0.ChangeCornerColor(l_FirstChild_1, Color3.fromRGB(255, 255, 255));
			l_FirstChild_1.TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255);
		end;
	end;
	if v17.Data.AutoCrafting == ("%* %*"):format(v23, (v35(v24))) then
		l_Utility_0.ChangeCornerColor(l_Auto_0, Color3.fromRGB(255, 255, 255));
		l_Auto_0.TextColor3 = Color3.fromRGB(255, 255, 255);
		l_AutoCraftChange_0:FireServer("");
	else
		local l_FirstChild_2 = l_InnerFrame_0:FindFirstChild("PotionLevels\n" .. v23):FindFirstChild((("%* %*"):format(v23, (v35(v24)))));
		l_Utility_0.ChangeCornerColor(l_Auto_0, Color3.fromRGB(43, 255, 32));
		l_Utility_0.ChangeCornerColor(l_Holder_0:FindFirstChild(v23), Color3.fromRGB(43, 255, 32));
		l_Utility_0.ChangeCornerColor(l_FirstChild_2, Color3.fromRGB(43, 255, 32));
		l_Auto_0.TextColor3 = Color3.fromRGB(43, 255, 32);
		l_FirstChild_2.TextLabel.TextColor3 = Color3.fromRGB(43, 255, 32);
		l_AutoCraftChange_0:FireServer((("%* %*"):format(v23, (v35(v24)))));
	end;
	l_SFXs_0.Click:Play();
end);
l_PotionCraftingSomethingFailed_0.OnClientEvent:Connect(function(v139, v140, v141)
	local _ = nil;
	l_Core_0.Create("The ingredient addition has failed.", string.format(v139, if v141 then v74(v17.Data.InventoryAuras, v140) else if v17.Data.Inventory[v140] then v17.Data.Inventory[v140].amount else 0), 10, "Warn");
end);
l_ClientBasedFunctions_0.LoadButtonEffects(l_Close_0);
l_ClientBasedFunctions_0.LoadButtonEffects(l_Craft_0);
local function v143()
	if potionCraftFrame.Visible and l_LocalPlayer_0:GetAttribute("IsInCave") == false then
		potionCraftFrame.Visible = false;
	end;
end;
l_ProximityPrompt_0.Triggered:Connect(function(v144)
	if v144 == l_LocalPlayer_0 and not v26 then
		v26 = true;
		l_SFXs_0.Click:Play();
		if not potionCraftFrame.Visible then
			l_ClientBasedFunctions_0.CloseAllWindows();
			potionCraftFrame.Visible = true;
		else
			potionCraftFrame.Visible = false;
		end;
		v26 = false;
	end;
end);
l_LocalPlayer_0:GetAttributeChangedSignal("IsInCave"):Connect(v143);
