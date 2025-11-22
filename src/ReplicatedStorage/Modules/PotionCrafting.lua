local l_Players_0 = game:GetService("Players");
local l_RunService_0 = game:GetService("RunService");
local l_ReplicatedStorage_0 = game:GetService("ReplicatedStorage");
local l_ServerStorage_0 = game:GetService("ServerStorage");
local l_Modules_0 = l_ReplicatedStorage_0:WaitForChild("Modules");
local l_DB_0 = l_Modules_0:WaitForChild("DB");
local l_PotionRecipesDB_0 = require(l_DB_0:WaitForChild("PotionRecipesDB"));
local l_showPotionCraftingGui_0 = script.Remotes.showPotionCraftingGui;
local l_SFXs_0 = l_ReplicatedStorage_0:WaitForChild("Assets"):WaitForChild("SFXs");
local v9 = l_RunService_0:IsServer();
local _ = l_RunService_0:IsClient();
local v11 = nil;
local v12 = nil;
local v13 = nil;
local v14 = nil;
local v15 = nil;
local v16 = nil;
local v17 = nil;
local v18 = nil;
local v19 = nil;
local v20 = nil;
local v21 = nil;
local v22 = nil;
local v23 = nil;
local v24 = nil;
local v25 = nil;
local v26 = nil;
local v27 = nil;
local v28 = nil;
local v29 = nil;
local function v37(v30)
	local v31 = {
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
	local v32 = "";
	for _, v34 in ipairs(v31) do
		local v35 = v34[1];
		local v36 = v34[2];
		while v35 <= v30 do
			v32 = v32 .. v36;
			v30 = v30 - v35;
		end;
	end;
	return v32;
end;
local _ = function(v38, v39, v40, v41)
	for _, v43 in l_PotionRecipesDB_0[v38][v39].potions[v40].ingredients do
		if v41 == v43[1] then
			return v43[2];
		end;
	end;
end;
local function v49(v45)
	local v46 = nil;
	if v45:IsA("Model") then
		local l_v45_ExtentsSize_0 = v45:GetExtentsSize();
		v46 = math.max(l_v45_ExtentsSize_0.X, l_v45_ExtentsSize_0.Y, l_v45_ExtentsSize_0.Z);
	elseif v45:IsA("BasePart") then
		local l_Size_0 = v45.Size;
		v46 = math.max(l_Size_0.X, l_Size_0.Y, l_Size_0.Z);
	end;
	return CFrame.new(Vector3.new(0, (math.ceil(v46) / 3) * 2, (math.ceil(v46))), (Vector3.new()));
end;
if v9 then
	v11 = l_ServerStorage_0:WaitForChild("ModuleScripts");
	v22 = require(v11:WaitForChild("AuraStorage"));
	v12 = require(v11:WaitForChild("DataStore"));
	v13 = require(v11:WaitForChild("Item"));
	v23 = require(l_Modules_0:WaitForChild("Inventory"));
	v14 = l_ServerStorage_0:WaitForChild("Tiers");
	v15 = require(l_DB_0:WaitForChild("ItemDB"));
	v16 = function(v50)
		local _ = v12.GetStore(v50, true);
	end;
	v17 = function(v52, v53)
		l_showPotionCraftingGui_0:FireClient(v52, v53);
	end;
	onAdded = function(v54, v55, v56, v57, v58)
		local v59 = v12.GetStore(v54, true);
		v59.PotionCraftingProgress[v55] = v59.PotionCraftingProgress[v55] or {};
		v59.PotionCraftingProgress[v55][("%* %*"):format(v56, (v37(v57)))] = v59.PotionCraftingProgress[v55][("%* %*"):format(v56, (v37(v57)))] or {};
		v59.PotionCraftingProgress[v55][("%* %*"):format(v56, (v37(v57)))][v58] = v59.PotionCraftingProgress[v55][("%* %*"):format(v56, (v37(v57)))][v58] or 0;
		local v60;
		for _, v62 in l_PotionRecipesDB_0[v55][v56].potions[v57].ingredients do
			if v58 == v62[1] then
				v60 = v62[2];
				--goto label0 --[[  true, false  ]];
			end;
		end;
		v60 = nil;
		--::label0::;
		local v63 = v59.PotionCraftingProgress[v55][("%* %*"):format(v56, (v37(v57)))][v58];
		local v64 = false;
		local v65 = "";
		if v60 <= v63 then
			return false, (("[ PotionCrafting ] Already Completed. %*"):format(v58));
		else
			if v14:FindFirstChild(v58) then
				local v66 = v22.FindAura(v54, v58);
				if v66 then
					v22.DeleteAura(v54, v66, false);
					v64 = true;
				else
					v65 = ("[ PotionCrafting ] %* does not have %*."):format(v54, v58);
				end;
			elseif v15[v58] then
				if v23.IsExists(v54, v58) then
					v13.RemoveItems(v54, v58, 1, "Crafted");
					v64 = true;
				else
					v65 = ("[ PotionCrafting ] %* does not have %*."):format(v54, v58);
				end;
			end;
			if v64 then
				v59:SetValue("PotionCraftingProgress", v59.PotionCraftingProgress);
				v59:SetValue({
					"PotionCraftingProgress", 
					v55, 
					("%* %*"):format(v56, (v37(v57))), 
					v58
				}, v59.PotionCraftingProgress[v55][("%* %*"):format(v56, (v37(v57)))][v58] + 1);
			end;
			return v64, v65;
		end;
	end;
	onCreateButton1Click = function(v67, v68, v69, v70)
		local v71 = v12.GetStore(v67, true);
		local v72 = nil;
		if not v71.PotionCraftingProgress[v68] then
			return false;
		elseif not v71.PotionCraftingProgress[v68][("%* %*"):format(v69, (v37(v70)))] then
			return false;
		else
			v72 = v71.PotionCraftingProgress[v68][("%* %*"):format(v69, (v37(v70)))];
			for _, v74 in l_PotionRecipesDB_0[v68][v69].potions[v70].ingredients do
				if not v72[v74[1]] then
					return false;
				elseif v72[v74[1]] < v74[2] then
					return false;
				end;
			end;
			v71.PotionCraftingProgress[v68][("%* %*"):format(v69, (v37(v70)))] = v29;
			v71:SetValue("PotionCraftingProgress", v71.PotionCraftingProgress);
			v13.GiveItems(v67, ("%* %*"):format(v69, (v37(v70))), 1, "Crafted");
			return true;
		end;
	end;
else
	v18 = l_Players_0.LocalPlayer;
	v19 = require(l_ReplicatedStorage_0:WaitForChild("ReplicaController"));
	v19.RequestData();
	while true do
		task.wait();
		if v19.InitialDataReceived then
			break;
		end;
	end;
	local v75 = v19.GetReplicaById(v18:GetAttribute("UID"));
	v20 = require(l_Modules_0:WaitForChild("RemoteFunction")).new("PotionCrafting\n" .. v18.UserId);
	v21 = require(l_Modules_0:WaitForChild("CoreModules"):WaitForChild("ClientBasedFunctions"));
	v24 = {};
	v25 = {};
	v26 = {};
	v27 = "";
	v28 = 0;
	local function v80(v76, v77, v78, v79)
		if not v75.Data.PotionCraftingProgress[v76] then
			return 0;
		elseif not v75.Data.PotionCraftingProgress[v76][("%* %*"):format(v77, (v37(v78)))] then
			return 0;
		elseif not v75.Data.PotionCraftingProgress[v76][("%* %*"):format(v77, (v37(v78)))][v79] then
			return 0;
		else
			return v75.Data.PotionCraftingProgress[v76][("%* %*"):format(v77, (v37(v78)))][v79];
		end;
	end;
	local function v91(v81, v82)
		local v83 = l_PotionRecipesDB_0[v82];
		local l_PotionInfomationFrame_0 = v81.PotionInfomationFrame;
		local l_ViewportFrame_0 = l_PotionInfomationFrame_0.ViewportHolder.ViewportFrame;
		local v86 = l_ViewportFrame_0:FindFirstChild("Camera") or Instance.new("Camera", l_ViewportFrame_0);
		l_ViewportFrame_0.CurrentCamera = v86;
		local l_PotionDescription_0 = l_PotionInfomationFrame_0.PotionDescription;
		local l_PotionName_0 = l_PotionInfomationFrame_0.PotionName;
		l_PotionDescription_0.Text = v83[v27].description;
		l_PotionName_0.Text = ("%* %*"):format(v27, (v37(v28)));
		local v89 = v83[v27].potions[v28].viewportModel:Clone();
		local v90 = l_ViewportFrame_0:FindFirstChildWhichIsA("Model") or l_ViewportFrame_0:FindFirstChildWhichIsA("BasePart");
		if v90 then
			v90:Destroy();
		end;
		if v89:IsA("Model") then
			v89:PivotTo(CFrame.new());
		else
			v89.Position = Vector3.new();
		end;
		v89.Parent = l_ViewportFrame_0;
		v86.CFrame = v49(v89);
	end;
	l_showPotionCraftingGui_0.OnClientEvent:Connect(function(v92)
		local l_LocalPlayer_0 = l_Players_0.LocalPlayer;
		local v94 = l_PotionRecipesDB_0[v92];
		local l_MainInterface_0 = l_LocalPlayer_0.PlayerGui.MainInterface;
		local v96 = v24[v92 .. "\nPotionCraftingFrame"];
		if not v96 then
			v96 = l_LocalPlayer_0.PlayerGui.MainInterface.PotionCraftFrame:Clone();
			v96.Name = v92 .. "\nPotionCraftingFrame";
			v96.Visible = true;
			v96.Parent = l_MainInterface_0;
			local l_Item_0 = script.Item;
			local l_Holder_0 = v96.Holder;
			local l_InnerFrame_0 = v96.InnerFrame;
			for v100, v101 in v94 do
				local v102 = l_Item_0:Clone();
				v102:WaitForChild("Title").Text = v100;
				v102:WaitForChild("Desc").Text = v101.description;
				v102.LayoutOrder = v101[1];
				v102.Name = v100;
				v102.MouseEnter:Connect(function()
					if v27 ~= v100 then
						v27 = v100;
						v28 = 1;
						for _, v104 in v26 do
							v104.Visible = false;
						end;
						for _, v106 in v25 do
							v106.Visible = false;
						end;
						v25[("%* I"):format(v27)].Visible = true;
						v26[v27].Visible = true;
						v91(v96, v92);
					end;
					l_SFXs_0.MouseHover:Play();
				end);
				v102.Parent = l_Holder_0;
				v102.Visible = true;
				local v107 = l_InnerFrame_0.PotionLevels:Clone();
				v107.Name = ("PotionLevels\n%*"):format(v100);
				v107.Parent = l_InnerFrame_0;
				v107.Visible = v101[1] == 1;
				v26[v100] = v107;
				local l_PotionButton_0 = script.PotionButton;
				local l_Ingredients_0 = l_InnerFrame_0.Holder.Ingredients;
				for v110, v111 in v101.potions do
					local v112 = l_PotionButton_0:Clone();
					local v113 = l_Ingredients_0:Clone();
					v113.Name = ("Ingredients\n%*\n%*"):format(v100, (v37(v110)));
					v112:WaitForChild("TextLabel").Text = ("%* %*"):format(v100, (v37(v110)));
					v112.LayoutOrder = v110;
					v112.Name = ("%* %*"):format(v100, (v37(v110)));
					v112.MouseButton1Click:Connect(function()
						if not (v27 == v100) or v28 ~= v110 then
							v27 = v100;
							v28 = v110;
							for _, v115 in v25 do
								v115.Visible = false;
							end;
							v25[("%* %*"):format(v27, (v37(v28)))].Visible = true;
							v91(v96, v92);
							l_SFXs_0.Click:Play();
						end;
					end);
					v112.MouseEnter:Connect(function()
						l_SFXs_0.MouseHover:Play();
					end);
					local l_Ingredient_0 = script.Ingredient;
					v112.Parent = v107;
					v112.Visible = true;
					v113.Parent = l_InnerFrame_0.Holder;
					v25[("%* %*"):format(v100, (v37(v110)))] = v113;
					if v101[1] == 1 and v110 == 1 then
						v27 = v100;
						v28 = v110;
						v113.Visible = true;
						v91(v96, v92);
					end;
					local v117 = v21.LoadButtonEffects(v112);
					v117.Enter:Disconnect();
					v117.Leave:Disconnect();
					for v118, v119 in v111.ingredients do
						local v120 = v119[1];
						local v121 = v119[2];
						local v122 = v80(v92, v100, v110, v120);
						local v123 = l_Ingredient_0:Clone();
						v123.Text = v120;
						v123.Amount.Text = ("%* / %*"):format(v122, v121);
						v75:ListenToChange({
							"PotionCraftingProgress", 
							v92, 
							("%* %*"):format(v100, (v37(v110))), 
							v120
						}, function(v124)
							if v121 <= v124 then
								v123.Completed.Visible = true;
								v123.Add.Visible = false;
								v123.Amount.Visible = false;
								return ;
							else
								v123.Amount.Text = ("%* / %*"):format(v124, v121);
								return ;
							end;
						end);
						if v121 <= v122 then
							v123.Completed.Visible = true;
							v123.Add.Visible = false;
							v123.Amount.Visible = false;
						else
							v123.Completed.Visible = false;
							v123.Add.Visible = true;
							v123.Amount.Visible = true;
						end;
						v123.LayoutOrder = v118;
						v123.Name = v120;
						v123.Add.MouseButton1Click:Connect(function()
							local v125, v126 = v20:Fire("Add", v92, v100, v110, v120);
							if not v125 then
								print(v126);
								l_SFXs_0.Error:Play();
								return ;
							else
								l_SFXs_0.Click:Play();
								return ;
							end;
						end);
						v123.Parent = v113;
						v123.Add.MouseEnter:Connect(function()
							l_SFXs_0.MouseHover:Play();
						end);
					end;
				end;
			end;
			local l_Close_0 = v96.SelectionCorners.Close;
			local l_Craft_0 = l_InnerFrame_0.Holder.Craft;
			l_Close_0.MouseButton1Click:Connect(function()
				v96.Visible = false;
			end);
			l_Craft_0.MouseButton1Click:Connect(function()
				if v20:Fire("Craft", v92, v27, v28) then
					for _, v130 in (v25[("%* %*"):format(v27, (v37(v28)))]:GetChildren()) do
						if v130:IsA("TextLabel") then
							local v131 = {
								v92, 
								v27, 
								v28, 
								v130.Name
							};
							v130.Completed.Visible = false;
							v130.Add.Visible = true;
							v130.Amount.Visible = true;
							local l_Amount_0 = v130.Amount;
							local v133 = "%* / %*";
							local v134 = v80(table.unpack(v131));
							local v135, v136, v137, v138 = table.unpack(v131);
							local v139;
							for _, v141 in l_PotionRecipesDB_0[v135][v136].potions[v137].ingredients do
								if v138 == v141[1] then
									v139 = v141[2];
									--goto label1 --[[  true, false  ]];
								end;
							end;
							v139 = nil;
							--::label1::;
							l_Amount_0.Text = v133:format(v134, v139);
						end;
					end;
					l_SFXs_0.PotionCrafting:Play();
					return ;
				else
					l_SFXs_0.Error:Play();
					return ;
				end;
			end);
			v21.LoadButtonEffects(l_Close_0);
			v21.LoadButtonEffects(l_Craft_0);
			v24[v92 .. "\nPotionCraftingFrame"] = v96;
			v96.Visible = true;
		else
			v96.Visible = true;
		end;
		l_LocalPlayer_0:GetAttributeChangedSignal("IsInCave"):Connect(function()
			if v96.Visible and l_LocalPlayer_0:GetAttribute("IsInCave") == false then
				v96.Visible = false;
			end;
		end);
	end);
end;
return {
	initPotionCrafting = v16, 
	showPotionCraftingGui = v17, 
	onAdded = onAdded, 
	onCreateButton1Click = onCreateButton1Click
};
