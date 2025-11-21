local l_Players_0 = game:GetService("Players");
local l_ReplicatedStorage_0 = game:GetService("ReplicatedStorage");
local l_ReplicaController_0 = require(l_ReplicatedStorage_0:WaitForChild("ReplicaController"));
local l_LocalPlayer_0 = l_Players_0.LocalPlayer;
local l_Remotes_0 = l_ReplicatedStorage_0:WaitForChild("Remotes");
local l_Modules_0 = l_ReplicatedStorage_0:WaitForChild("Modules");
local l_ClientBasedFunctions_0 = require(l_Modules_0:WaitForChild("CoreModules"):WaitForChild("ClientBasedFunctions"));
local l_DB_0 = l_Modules_0:WaitForChild("DB");
local l_NewQuestDB_0 = require(l_DB_0:WaitForChild("NewQuestDB"));
local l_ItemDB_0 = require(l_DB_0:WaitForChild("ItemDB"));
local l_MainInterface_0 = l_LocalPlayer_0.PlayerGui:WaitForChild("MainInterface");
local l_Quest_0 = l_MainInterface_0.ExtraButtons:WaitForChild("Quest");
local l_QuestsFrame_0 = l_MainInterface_0:WaitForChild("QuestsFrame");
local l_Close_0 = l_QuestsFrame_0:WaitForChild("SelectionCorners"):WaitForChild("Title"):WaitForChild("Close");
local l_Quests_0 = l_QuestsFrame_0:WaitForChild("Quests");
local l_ScrollingFrame_0 = l_Quests_0:WaitForChild("ScrollingFrame");
local l_Quest0o_0 = l_QuestsFrame_0:WaitForChild("Quest0o");
local _ = l_Quest0o_0:WaitForChild("QuestName");
local _ = l_Quest0o_0:WaitForChild("Description");
local l_RerollButton_0 = l_Quest0o_0:WaitForChild("RerollButton");
local l_Rewards_0 = l_Quest0o_0:WaitForChild("Rewards");
local l_CoinReward_0 = l_Rewards_0:WaitForChild("CoinReward");
local _ = l_CoinReward_0:WaitForChild("Amount");
local _ = l_CoinReward_0:WaitForChild("Hidden");
local l_AuraReward_0 = l_Rewards_0:WaitForChild("AuraReward");
local _ = l_AuraReward_0:WaitForChild("AuraName");
local _ = l_AuraReward_0:WaitForChild("Hidden");
local l_ItemReward_0 = l_Rewards_0:WaitForChild("ItemReward");
local _ = l_ItemReward_0:WaitForChild("Amount");
local _ = l_ItemReward_0:WaitForChild("Hidden");
local l_DailyQuests_0 = l_QuestsFrame_0:WaitForChild("DailyQuests");
local l_Buttons_0 = l_QuestsFrame_0:WaitForChild("Buttons");
local l_Quests_1 = l_Buttons_0:WaitForChild("Quests");
local l_Daily_0 = l_Buttons_0:WaitForChild("Daily");
l_ReplicaController_0.RequestData();
while true do
	task.wait();
	if l_ReplicaController_0.InitialDataReceived then
		break;
	end;
end;
local v34 = l_ReplicaController_0.GetReplicaById(l_LocalPlayer_0:GetAttribute("UID"));
local l_SFXs_0 = l_ReplicatedStorage_0:WaitForChild("Assets"):WaitForChild("SFXs");
local l_Quest_1 = l_Remotes_0:WaitForChild("Quest");
local l_Progress_0 = script.Progress;
local l_Template_0 = script.Template;
local function v78(v39, v40)
	local v41 = l_NewQuestDB_0[v39].QuestList[v40];
	local l_Requirements_0 = v41.Requirements;
	local v43 = v34.Data.Quests[v39];
	local v44 = l_Template_0:Clone();
	v44.Name = ("%*\n%*"):format(v39, v40);
	v44.Parent = l_ScrollingFrame_0;
	local l_Holder_0 = v44:WaitForChild("Holder");
	local l_Title_0 = l_Holder_0:WaitForChild("Title");
	l_Title_0.Text = v41.SubQuestName;
	local l_ClickDetector_0 = v44:WaitForChild("ClickDetector");
	l_ClickDetector_0.MouseButton1Click:Connect(function()
		for _, v49 in l_Rewards_0:GetChildren() do
			if (v49:IsA("Frame") and v49.Visible) and v49.Visible then
				v49:Destroy();
			end;
		end;
		l_Rewards_0.Visible = true;
		l_RerollButton_0.Visible = false;
		local l_Rewards_1 = v41.Rewards;
		local l_Coin_0 = l_Rewards_1.Coin;
		local l_Auras_0 = l_Rewards_1.Auras;
		local l_Items_0 = l_Rewards_1.Items;
		local _ = l_Rewards_1.Custom;
		if l_Coin_0 then
			local v55 = l_CoinReward_0:Clone();
			local l_Amount_2 = v55:WaitForChild("Amount");
			local l_Hidden_3 = v55:WaitForChild("Hidden");
			l_Amount_2.Text = ("%* Coin"):format(l_Coin_0.Amount);
			l_Hidden_3.Visible = l_Coin_0.IsHidden;
			v55.Parent = l_Rewards_0;
			v55.Visible = true;
		end;
		if l_Auras_0 then
			for v58, v59 in l_Auras_0 do
				local v60 = l_AuraReward_0:Clone();
				local l_AuraName_1 = v60:WaitForChild("AuraName");
				local l_Hidden_4 = v60:WaitForChild("Hidden");
				local v63, v64 = v59.AuraName:match("([%w%p%s]+)_([%w%p%s]+)");
				if v63 then
					l_AuraName_1.Text = ("%* : %*"):format(v63, v64);
					l_ClientBasedFunctions_0.ChangeTextColor(l_AuraName_1, v64);
				else
					l_AuraName_1.Text = v59.AuraName;
					l_ClientBasedFunctions_0.ChangeTextColor(l_AuraName_1);
				end;
				l_Hidden_4.Visible = v59.IsHidden;
				v60.LayoutOrder = v58 * 10;
				v60.Parent = l_Rewards_0;
				v60.Visible = true;
			end;
		end;
		if l_Items_0 then
			for v65, v66 in l_Items_0 do
				local v67 = l_ItemReward_0:Clone();
				local l_Amount_3 = v67:WaitForChild("Amount");
				local l_Hidden_5 = v67:WaitForChild("Hidden");
				l_Amount_3.Text = ("%* x%*"):format(v66.ItemName, v66.Amount);
				l_Amount_3.TextColor3 = l_ItemDB_0[v66.ItemName].TextColor;
				l_Hidden_5.Visible = v66.IsHidden;
				v67.LayoutOrder = v65 * 100;
				v67.Parent = l_Rewards_0;
				v67.Visible = true;
			end;
		end;
	end);
	local v70 = #l_Requirements_0;
	local v71 = 0;
	for v72, v73 in l_Requirements_0 do
		local v74 = l_Progress_0:Clone();
		v74.Name = v73.Name;
		v74.LayoutOrder = v72;
		v74.Parent = l_Holder_0;
		v74:WaitForChild("requirement").Text = v73.Description;
		local l_Progressbar_0 = v74:WaitForChild("Progressbar");
		local l_BarHolder_0 = l_Progressbar_0:FindFirstChild("BarHolder");
		if ((v43.Requirements and v43.Requirements[v72]) and v43.Requirements[v72].Value) and v43.Requirements[v72].Value > 0 then
			local l_Value_0 = v43.Requirements[v72].Value;
			if v73.Goal <= l_Value_0 then
				l_BarHolder_0.Size = UDim2.fromScale(1, 0.85);
				l_BarHolder_0:WaitForChild("Bar").BackgroundColor3 = Color3.fromRGB(85, 170, 0);
				l_Progressbar_0:WaitForChild("ProgressText").Text = ("%* / %*"):format(l_Value_0, v73.Goal);
				v71 = v71 + 1;
			else
				l_BarHolder_0.Size = UDim2.fromScale(l_Value_0 / v73.Goal, 0.85);
				l_Progressbar_0:WaitForChild("ProgressText").Text = ("%* / %*"):format(l_Value_0, v73.Goal);
			end;
			l_BarHolder_0.Visible = true;
		else
			l_Progressbar_0:WaitForChild("ProgressText").Text = ("0 / %*"):format(l_Requirements_0[v72].Goal);
		end;
	end;
	v44.Size = UDim2.new(1, 0, 0, (44 + v70 * 40) + v70 * 10);
	if v70 <= v71 then
		l_Title_0:WaitForChild("Completed").Visible = true;
	end;
	l_ClientBasedFunctions_0.LoadButtonEffects(l_ClickDetector_0, 1);
end;
local function v82(v79, v80)
	local l_l_ScrollingFrame_0_FirstChild_0 = l_ScrollingFrame_0:FindFirstChild((("%*\n%*"):format(v79, v80)));
	if l_l_ScrollingFrame_0_FirstChild_0 then
		l_l_ScrollingFrame_0_FirstChild_0:Destroy();
	end;
end;
l_Quests_1.MouseButton1Click:Connect(function()
	l_Quests_0.Visible = true;
	l_DailyQuests_0.Visible = false;
	l_SFXs_0.Click:Play();
end);
l_Quests_1.MouseEnter:Connect(function()
	l_SFXs_0.MouseHover:Play();
end);
l_Daily_0.MouseButton1Click:Connect(function()
	l_Quests_0.Visible = false;
	l_DailyQuests_0.Visible = true;
	l_SFXs_0.Click:Play();
end);
l_Daily_0.MouseEnter:Connect(function()
	l_SFXs_0.MouseHover:Play();
end);
l_Quest_1.OnClientEvent:Connect(function(v83, v84, v85)
	if v83 == "Add" then
		task.defer(v78, v84, v85);
		return ;
	elseif v83 == "Remove" then
		task.defer(v82, v84, v85);
		return ;
	else
		if v83 == "Update" then
			for v86, v87 in v84 do
				local l_QuestIndex_0 = v87.QuestIndex;
				local l_Requirements_1 = l_NewQuestDB_0[v86].QuestList[l_QuestIndex_0].Requirements;
				local v90 = l_ScrollingFrame_0:WaitForChild((("%*\n%*"):format(v86, l_QuestIndex_0)));
				if not v90 then
					v78(v86, l_QuestIndex_0);
				else
					local l_Holder_1 = v90:FindFirstChild("Holder");
					local l_Title_1 = l_Holder_1:FindFirstChild("Title");
					local v93 = #l_Requirements_1;
					local v94 = 0;
					for v95, v96 in l_Requirements_1 do
						local l_Progressbar_1 = l_Holder_1:FindFirstChild(v96.Name):FindFirstChild("Progressbar");
						local l_BarHolder_1 = l_Progressbar_1:FindFirstChild("BarHolder");
						if ((v87.Requirements and v87.Requirements[v95]) and v87.Requirements[v95].Value) and v87.Requirements[v95].Value > 0 then
							local l_Value_1 = v87.Requirements[v95].Value;
							if v96.Goal <= l_Value_1 then
								l_BarHolder_1.Size = UDim2.fromScale(1, 0.85);
								l_BarHolder_1:FindFirstChild("Bar").BackgroundColor3 = Color3.fromRGB(85, 170, 0);
								l_Progressbar_1:FindFirstChild("ProgressText").Text = ("%* / %*"):format(l_Value_1, v96.Goal);
								v94 = v94 + 1;
							else
								l_BarHolder_1.Size = UDim2.fromScale(l_Value_1 / v96.Goal, 0.85);
								l_BarHolder_1:FindFirstChild("Bar").BackgroundColor3 = Color3.fromRGB(255, 255, 255);
								l_Progressbar_1:FindFirstChild("ProgressText").Text = ("%* / %*"):format(l_Value_1, v96.Goal);
							end;
							l_BarHolder_1.Visible = true;
						else
							l_BarHolder_1.Size = UDim2.new(0, -2, 1, -2);
							l_BarHolder_1:FindFirstChild("Bar").BackgroundColor3 = Color3.fromRGB(255, 255, 255);
							l_Progressbar_1:FindFirstChild("ProgressText").Text = ("0 / %*"):format(l_Requirements_1[v95].Goal);
						end;
					end;
					v90.Size = UDim2.new(1, 0, 0, (44 + v93 * 40) + (v93 - 1) * 10);
					if v93 <= v94 then
						l_Title_1:FindFirstChild("Completed").Visible = true;
					else
						l_Title_1:FindFirstChild("Completed").Visible = false;
					end;
				end;
			end;
		end;
		return ;
	end;
end);
for v100, v101 in v34.Data.Quests do
	if not v101.Completed or not v101.Rewarded then
		task.defer(v78, v100, v101.QuestIndex);
	end;
end;
l_Quest_0.MouseButton1Click:Connect(function()
	if not l_QuestsFrame_0.Visible then
		l_ClientBasedFunctions_0.CloseAllWindows();
	end;
	l_QuestsFrame_0.Visible = not l_QuestsFrame_0.Visible;
end);
l_ClientBasedFunctions_0.LoadButtonEffects(l_Quest_0);
l_ClientBasedFunctions_0.LoadButtonEffects(l_Close_0, 1);
l_Close_0.MouseButton1Click:Connect(function()
	l_QuestsFrame_0.Visible = false;
end);
