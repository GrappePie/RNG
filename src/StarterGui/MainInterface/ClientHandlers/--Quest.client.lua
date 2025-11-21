local l_new_0 = UDim2.new;
local l_fromScale_0 = UDim2.fromScale;
local l_insert_0 = table.insert;
local l_remove_0 = table.remove;
local _ = task.cancel;
local _ = task.spawn;
local _ = task.wait;
local l_gsub_0 = string.gsub;
local v8 = Color3.fromRGB(85, 170, 0);
local _ = tonumber;
local l_tostring_0 = tostring;
local l_LocalPlayer_0 = game.Players.LocalPlayer;
local l_ReplicatedStorage_0 = game:GetService("ReplicatedStorage");
local l_UserInputService_0 = game:GetService("UserInputService");
local _ = game:GetService("TweenService");
local l_MainInterface_0 = l_LocalPlayer_0.PlayerGui:WaitForChild("MainInterface");
local l_ExtraButtons_0 = l_MainInterface_0.ExtraButtons;
local l_SFXs_0 = l_ReplicatedStorage_0:WaitForChild("Assets"):WaitForChild("SFXs");
local _ = l_ReplicatedStorage_0:WaitForChild("TiersUI");
local _ = l_ReplicatedStorage_0:WaitForChild("TierSkinUIs");
local l_Modules_0 = l_ReplicatedStorage_0:WaitForChild("Modules");
local l_RemoteFunction_0 = require(l_Modules_0:WaitForChild("RemoteFunction"));
local l_ClientBasedFunctions_0 = require(l_Modules_0:WaitForChild("CoreModules"):WaitForChild("ClientBasedFunctions"));
local l_Quest_0 = require(l_Modules_0:WaitForChild("Quest"));
local l_QuestDB_0 = require(l_Modules_0:WaitForChild("DB"):WaitForChild("QuestDB"));
local l_ItemDB_0 = require(l_Modules_0:WaitForChild("DB"):WaitForChild("ItemDB"));
local l_Dialog_0 = require(l_Modules_0:WaitForChild("Dialog"));
local l_Quest_1 = l_ExtraButtons_0.Quest;
local l_QuestsFrame_0 = l_MainInterface_0:WaitForChild("QuestsFrame");
local _ = l_QuestsFrame_0:WaitForChild("SelectionCorners"):WaitForChild("Title"):WaitForChild("Close");
local l_Quests_0 = l_QuestsFrame_0:WaitForChild("Quests");
local l_ScrollingFrame_0 = l_Quests_0:WaitForChild("ScrollingFrame");
local l_DailyQuests_0 = l_QuestsFrame_0:WaitForChild("DailyQuests");
local l_Quest0o_0 = l_QuestsFrame_0:WaitForChild("Quest0o");
local l_QuestName_0 = l_Quest0o_0:WaitForChild("QuestName");
local l_Description_0 = l_Quest0o_0:WaitForChild("Description");
local l_Rewards_0 = l_Quest0o_0:WaitForChild("Rewards");
local l_Amount_0 = l_Rewards_0:WaitForChild("CoinReward"):WaitForChild("Amount");
local l_AuraReward_0 = l_Rewards_0:WaitForChild("AuraReward");
local _ = l_AuraReward_0:WaitForChild("AuraName");
local _ = l_AuraReward_0:WaitForChild("Hidden");
local l_ItemReward_0 = l_Rewards_0:WaitForChild("ItemReward");
local _ = l_ItemReward_0:WaitForChild("Amount");
local _ = l_ItemReward_0:WaitForChild("Hidden");
local l_UnlockReward_0 = l_Rewards_0:WaitForChild("UnlockReward");
local _ = l_UnlockReward_0:WaitForChild("RewardName");
local l_RewardNotExists_0 = l_Quest0o_0:WaitForChild("RewardNotExists");
local l_Buttons_0 = l_QuestsFrame_0.Buttons;
local l_Quests_1 = l_Buttons_0.Quests;
local l_Daily_0 = l_Buttons_0.Daily;
local l_TouchEnabled_0 = l_UserInputService_0.TouchEnabled;
local l_Template_0 = script.Template;
local l_Progress_0 = script.Progress;
local v53 = {};
local _ = l_RemoteFunction_0.new("questDialogue\n" .. l_LocalPlayer_0.UserId);
if game:GetService("UserInputService").TouchEnabled then
	l_QuestsFrame_0.Size = UDim2.fromScale(0.7, 0.7);
else
	l_QuestsFrame_0.Size = UDim2.fromScale(0.5, 0.5);
end;
local v55 = {
	PROGRESS_SIZE = UDim2.new(1, 0, 0, 30), 
	PROGRESS_TITLE_SIZE = UDim2.new(1, -38, 0, 30), 
	PROGRESS_COMPLETED_SIZE = UDim2.fromOffset(30, 30), 
	HOLDER_PADDING = UDim2.new(1, -14, 1, -14)
};
local v56 = {
	PROGRESS_SIZE = UDim2.new(1, 0, 0, 15), 
	PROGRESS_TITLE_SIZE = UDim2.new(1, -28, 0, 30), 
	PROGRESS_COMPLETED_SIZE = UDim2.fromOffset(20, 20), 
	HOLDER_PADDING = UDim2.new(1, -10, 1, -10)
};
local _ = Tween0o.new(0.25);
local function _(v58)
	for v59, v60 in v53 do
		if l_gsub_0(v60.Name, "\n%d+", "") == v58 then
			return v59;
		end;
	end;
end;
local function v67(v62)
	v53[v62]:Destroy();
	l_remove_0(v53, v62);
	for v63, v64 in v53 do
		if v62 <= v63 then
			v64.LayoutOrder = v64.LayoutOrder - 1;
		end;
	end;
	l_QuestName_0.Text = "Empty";
	l_Description_0.Text = "";
	for _, v66 in l_Rewards_0:GetChildren() do
		if v66:IsA("Frame") and v66.Visible then
			v66:Destroy();
		end;
	end;
end;
local function v73(v68, v69)
	local l_l_ScrollingFrame_0_FirstChild_0 = l_ScrollingFrame_0:FindFirstChild((("%*\n%*"):format(v68, v69)));
	if l_l_ScrollingFrame_0_FirstChild_0 then
		for _, v72 in l_l_ScrollingFrame_0_FirstChild_0.Holder:GetChildren() do
			if v72:IsA("Frame") and v72.Progressbar.BarHolder.Bar.BackgroundColor3 ~= v8 then
				return false;
			end;
		end;
		return true;
	else
		return false;
	end;
end;
l_Quest_0.AddQuestRemote.OnClientEvent:Connect(function(v74, v75, v76)
	local v77 = l_QuestDB_0[v74].quests[v75];
	local v78 = true;
	local v79 = l_Template_0:Clone();
	v79.LayoutOrder = #v53;
	l_insert_0(v53, v79);
	local l_Holder_0 = v79:WaitForChild("Holder");
	l_Holder_0.Size = l_TouchEnabled_0 and v56.HOLDER_PADDING or v55.HOLDER_PADDING;
	local l_Title_0 = l_Holder_0:WaitForChild("Title");
	l_Title_0.Size = l_TouchEnabled_0 and v56.PROGRESS_TITLE_SIZE or v55.PROGRESS_TITLE_SIZE;
	l_Title_0.Text = v77.questName;
	local l_Completed_0 = l_Title_0:WaitForChild("Completed");
	l_Completed_0.Size = l_TouchEnabled_0 and v56.PROGRESS_COMPLETED_SIZE or v55.PROGRESS_COMPLETED_SIZE;
	local l_ClickDetector_0 = v79:WaitForChild("ClickDetector");
	local l_requirements_0 = v77.requirements;
	for v85, v86 in l_requirements_0 do
		local v87 = v86[1];
		local v88 = l_Progress_0:Clone();
		v88.LayoutOrder = v85;
		v88.Size = l_TouchEnabled_0 and v56.PROGRESS_SIZE or v55.PROGRESS_SIZE;
		v88:WaitForChild("requirement").Text = v86[#v86];
		local l_Progressbar_0 = v88:WaitForChild("Progressbar");
		local l_BarHolder_0 = l_Progressbar_0:WaitForChild("BarHolder");
		local l_Bar_0 = l_BarHolder_0:WaitForChild("Bar");
		local l_ProgressText_0 = l_Progressbar_0:WaitForChild("ProgressText");
		local v93 = nil;
		v93 = if not (v87 ~= "item") or v87 == "useItem" then v86[3] else v86[2];
		if v76 then
			v76[v85] = v76[v85] or 0;
			if v76[v85] > 0 then
				if v93 <= v76[v85] then
					l_BarHolder_0.Size = l_fromScale_0(1, 0.75);
					l_Bar_0.BackgroundColor3 = v8;
				else
					l_BarHolder_0.Size = l_fromScale_0(v76[v85] / v93, 0.75);
					v78 = false;
				end;
				l_ProgressText_0.Text = ("%* / %*"):format(v76[v85], v93);
				l_BarHolder_0.Visible = true;
			else
				l_ProgressText_0.Text = ("0 / %*"):format(v93);
				v78 = false;
			end;
		else
			l_ProgressText_0.Text = ("0 / %*"):format(v93);
			v78 = false;
		end;
		v88.Parent = l_Holder_0;
		v88.Name = v85;
	end;
	if v78 then
		l_Completed_0.ImageTransparency = 0;
	end;
	local l_Offset_0 = (l_TouchEnabled_0 and v56.PROGRESS_SIZE or v55.PROGRESS_SIZE).Y.Offset;
	v79.Size = l_new_0(1, 0, 0, (#l_requirements_0 * l_Offset_0 + l_Offset_0) + -(l_TouchEnabled_0 and v56.HOLDER_PADDING or v55.HOLDER_PADDING).Y.Offset);
	v79.Parent = l_ScrollingFrame_0;
	v79.Name = ("%*\n%*"):format(v74, v75);
	l_ClickDetector_0.MouseEnter:Connect(function()
		l_ClickDetector_0.BackgroundTransparency = 0.8;
	end);
	l_ClickDetector_0.MouseLeave:Connect(function()
		l_ClickDetector_0.BackgroundTransparency = 1;
	end);
	l_ClickDetector_0.MouseButton1Click:Connect(function()
		l_QuestName_0.Text = v77.questName;
		l_Description_0.Text = v77.questDescription;
		local l_coins_0 = v77.rewards.coins;
		local l_auras_0 = v77.rewards.auras;
		local l_items_0 = v77.rewards.items;
		local l_unlock_0 = v77.rewards.unlock;
		l_Rewards_0.Visible = false;
		l_RewardNotExists_0.Visible = true;
		for _, v100 in l_Rewards_0:GetChildren() do
			if v100:IsA("Frame") and v100.Visible then
				v100:Destroy();
			end;
		end;
		if l_coins_0 then
			local v101 = l_Amount_0:Clone();
			v101.Text = ("%* Coins"):format(l_coins_0);
			v101.Parent = l_Rewards_0;
			v101.Visible = true;
			l_Rewards_0.Visible = true;
			l_RewardNotExists_0.Visible = false;
		end;
		if l_auras_0 then
			for _, v103 in l_auras_0 do
				local v104 = l_AuraReward_0:Clone();
				if v103 == "Blossom" then
					v104.Visible = true;
					v104:FindFirstChild("Hidden").Visible = true;
				else
					local v105, v106 = string.match(l_auras_0[1], "([%p%w%s]+)_([%p%w%s]+)");
					if v105 then
						v104:FindFirstChild("AuraName").Text = v105;
						l_ClientBasedFunctions_0.ChangeTextColor(v104:FindFirstChild("AuraName"), v106);
					else
						v104:FindFirstChild("AuraName").Text = l_auras_0[1];
						l_ClientBasedFunctions_0.ChangeTextColor(v104:FindFirstChild("AuraName"));
					end;
					v104.Visible = true;
					v104:FindFirstChild("AuraName").Visible = true;
				end;
				v104.Parent = l_Rewards_0;
			end;
			l_Rewards_0.Visible = true;
			l_RewardNotExists_0.Visible = false;
		end;
		if l_items_0 then
			for v107, v108 in l_items_0 do
				local v109 = l_ItemReward_0:Clone();
				v109:FindFirstChild("Amount").TextColor3 = l_ItemDB_0[v107].TextColor;
				v109:FindFirstChild("Amount").Text = ("%* x%*"):format(v107, v108);
				v109:FindFirstChild("Amount").Visible = true;
				v109.Visible = true;
				v109.Parent = l_Rewards_0;
			end;
			l_Rewards_0.Visible = true;
			l_RewardNotExists_0.Visible = false;
		end;
		if l_unlock_0 then
			local v110 = l_UnlockReward_0:Clone();
			if l_unlock_0 == "CaveShortcut" then
				v110:FindFirstChild("RewardName").Text = "Portal";
			elseif l_unlock_0 == "2024 Egg Hunt Event" then
				v110:FindFirstChild("RewardName").Text = "Star Egg";
				local v111 = l_UnlockReward_0:Clone();
				v111:FindFirstChild("RewardName").Text = "Easter Blessing";
				v111.Visible = true;
				v111.Parent = l_Rewards_0;
			elseif l_unlock_0 == "LockEgg" then
				v110:FindFirstChild("RewardName").Text = "Lock Egg";
			end;
			v110.Visible = true;
			v110.Parent = l_Rewards_0;
		end;
		l_Rewards_0.Visible = true;
		l_RewardNotExists_0.Visible = false;
	end);
	local v112 = l_ClientBasedFunctions_0.LoadButtonEffects(l_ClickDetector_0);
	v112.Enter:Disconnect();
	v112.Leave:Disconnect();
end);
l_Quest_0.UpdateProgressRemote.OnClientEvent:Connect(function(v113, v114, v115, v116)
	local v117 = l_ScrollingFrame_0:WaitForChild((("%*\n%*"):format(v113, v114)));
	if not v117 then
		warn((("%* does not have a corresponding quest."):format(l_LocalPlayer_0.Name)));
		return ;
	else
		local v118 = v117.Holder:WaitForChild((l_tostring_0(v115)));
		if not v118 then
			warn((("%* does not have a corresponding progress."):format(l_LocalPlayer_0.Name)));
			return ;
		else
			local v119 = l_QuestDB_0[v113].quests[v114].requirements[v115];
			local v120 = v119[1];
			local l_Progressbar_1 = v118:WaitForChild("Progressbar");
			local l_BarHolder_1 = l_Progressbar_1:WaitForChild("BarHolder");
			local l_Bar_1 = l_BarHolder_1:WaitForChild("Bar");
			local l_ProgressText_1 = l_Progressbar_1:WaitForChild("ProgressText");
			local v125 = nil;
			v125 = if not (v120 ~= "item") or v120 == "useItem" then v119[3] else v119[2];
			if v125 <= v116 then
				l_BarHolder_1.Size = l_fromScale_0(1, 0.75);
				l_Bar_1.BackgroundColor3 = v8;
				if v73(v113, v114) then
					v117.Holder.Title.Completed.ImageTransparency = 0;
				end;
			else
				l_BarHolder_1.Size = l_fromScale_0(v116 / v125, 0.75);
			end;
			l_ProgressText_1.Text = ("%* / %*"):format(v116, v125);
			l_BarHolder_1.Visible = true;
			return ;
		end;
	end;
end);
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
l_Quest_0.RemoveQuestRemote.OnClientEvent:Connect(function(v126)
	local v127;
	for v128, v129 in v53 do
		if l_gsub_0(v129.Name, "\n%d+", "") == v126 then
			v127 = v128;
			--goto label0 --[[  true, false  ]];
		end;
	end;
	v127 = nil;
	--::label0::;
	v67(v127);
end);
l_Quest_0.RewardClaimRemote.OnClientEvent:Connect(function(v130)
	if v130 == "coin" then
		l_SFXs_0.Money:Play();
	end;
end);
l_Quest_1.MouseButton1Click:Connect(function()
	if not l_QuestsFrame_0.Visible then
		l_ClientBasedFunctions_0.CloseAllWindows();
	end;
	l_QuestsFrame_0.Visible = not l_QuestsFrame_0.Visible;
end);
l_ClientBasedFunctions_0.LoadButtonEffects(l_Quest_1);
l_RemoteFunction_0.new("questDialogue\n" .. game.Players.LocalPlayer.UserId).Event = function(v131)
	local _ = l_Dialog_0.DisplayDialog(v131);
	return l_Dialog_0.ChoiceSave.Value;
end;
