-- What the sigma?

local v1 = game:GetService("Players")
local v2 = game:GetService("RunService")
local v3 = game:GetService("ReplicatedStorage")
local v4 = script:FindFirstAncestorOfClass("ScreenGui"):WaitForChild("QuestsFrame")
local v_u_5 = v4:WaitForChild("DailyQuests"):WaitForChild("ScrollingFrame")
local v_u_6 = v_u_5:WaitForChild("Template")
local v7 = v_u_5:WaitForChild("Date")
local v_u_8 = v7:WaitForChild("DateText")
local v_u_9 = v7:WaitForChild("TimeLeft")
local v10 = v4:WaitForChild("Quest0o")
local v_u_11 = v10:WaitForChild("Rewards")
local v_u_12 = v10:WaitForChild("QuestName")
v10:WaitForChild("Description")
local v_u_13 = v10:WaitForChild("RewardNotExists")
local v_u_14 = v10:WaitForChild("RerollButton")
local v_u_15 = v_u_14:WaitForChild("Desc")
local v16 = v_u_5:WaitForChild("FinalQuest")
local v17 = v16:WaitForChild("Select")
local v18 = v16:WaitForChild("Progress")
local v_u_19 = v18:WaitForChild("ProgressText")
local v_u_20 = v18:WaitForChild("BarHolder"):WaitForChild("Bar")
local v_u_21 = v16:WaitForChild("Complete")
local v22 = v1.LocalPlayer
local v23 = v3:WaitForChild("Modules")
local v24 = require(v23:WaitForChild("Switch"))
local v25 = v23:WaitForChild("DB")
require(v23:WaitForChild("Utility"))
local v_u_26 = require(v23:WaitForChild("ClientFunctions"))
local v_u_27 = require(v23:WaitForChild("RemoteFunction")).new("DailyRemote")
local v28 = require(v3:WaitForChild("ReplicaController"))
local v_u_29 = require(v25:WaitForChild("ItemDB"))
require(v25:WaitForChild("Buffs"))
local v30 = v3:WaitForChild("Remotes")
local v31 = v30:WaitForChild("UpdateQuests")
local v32 = v30:WaitForChild("ProductPurchase")
local v_u_33 = v3.Assets.SFXs
v28.RequestData()
repeat
	task.wait()
until v28.InitialDataReceived
local v_u_34 = v28.GetReplicaById(v22:GetAttribute("UID"))
local v_u_35 = nil
local v_u_36 = 0
local v_u_37 = nil
local v_u_38 = {
	["DisplayName"] = "Complete all daily quests",
	["Goal"] = 3,
	["Rewards"] = {
		{
			["Type"] = "Coin",
			["Amount"] = 50000
		},
		{
			["Type"] = "Item",
			["Name"] = "Huge Fortune Potion I",
			["Amount"] = 1
		}
	}
}
local function v_u_47(p39)
	local v40 = (p39 - p39 % 60) / 60
	local v41 = p39 - v40 * 60
	local v42 = (v40 - v40 % 60) / 60
	local v43 = v40 - v42 * 60
	local v44 = (v42 - v42 % 24) / 24
	local v45 = v42 - v44 * 24
	local v46 = {}
	if 0 < v44 then
		table.insert(v46, v44)
		table.insert(v46, "d ")
	end
	if 0 < v45 then
		table.insert(v46, v45)
		table.insert(v46, "h ")
	end
	if 0 < v43 then
		table.insert(v46, v43)
		table.insert(v46, "m ")
	end
	if 0 < v41 then
		table.insert(v46, v41)
		table.insert(v46, "s")
	end
	return table.concat(v46)
end
local v_u_48 = nil
local function v_u_56(p49, p50)
	-- upvalues: (copy) v_u_12, (copy) v_u_11, (copy) v_u_13, (copy) v_u_38, (copy) v_u_34, (copy) v_u_14, (ref) v_u_48, (copy) v_u_29
	v_u_12.Text = "Empty"
	v_u_11.Visible = false
	v_u_13.Visible = true
	for _, v51 in ipairs(v_u_11:GetChildren()) do
		if v51:IsA("Frame") and v51.Visible and v51.Visible then
			v51:Destroy()
		end
	end
	if p49 then
		v_u_11.Visible = true
		v_u_12.Text = p49.DisplayName
		v_u_13.Visible = false
		if p49.DisplayName == v_u_38.DisplayName then
			v_u_14.Visible = false
		else
			if v_u_34.Data.ClaimedQuests[p50] then
				v_u_14.Active = false
				v_u_14.Selectable = false
				v_u_14.TextTransparency = 0.5
			else
				v_u_14.TextTransparency = 0
				v_u_14.Active = true
				v_u_48 = p50
			end
			v_u_14.Visible = true
		end
		for _, v52 in ipairs(p49.Rewards) do
			if v52.Type == "Coin" then
				local v53 = v_u_11:WaitForChild("CoinReward"):Clone()
				v53.Amount.Text = ("%* Coins"):format(v52.Amount)
				v53.Visible = true
				v53.Parent = v_u_11
			elseif v52.Type == "Item" then
				local v54 = v_u_11:WaitForChild("ItemReward"):Clone()
				v54.Amount.TextColor3 = v_u_29[v52.Name].TextColor
				v54.Amount.Text = ("%* x%*"):format(v52.Name, v52.Amount)
				v54.Visible = true
				v54.Parent = v_u_11
			elseif v52.Type == "Buff" then
				local v55 = v_u_11:WaitForChild("BuffReward"):Clone()
				v55.Amount.Text = ("%* %*s"):format(v52.Name, v52.Duration)
				v55.Visible = true
				v55.Parent = v_u_11
			end
		end
	else
		v_u_48 = nil
		v_u_14.Visible = false
	end
end
local function v_u_73(p_u_57)
	-- upvalues: (ref) v_u_35, (copy) v_u_6, (copy) v_u_34, (copy) v_u_5, (copy) v_u_56, (copy) v_u_27, (copy) v_u_26, (copy) v_u_37
	local v_u_58 = v_u_35[p_u_57]
	local v59 = v_u_6:Clone()
	local v60 = v59:WaitForChild("QuestName")
	local v61 = v59:WaitForChild("Select")
	local v_u_62 = v59:WaitForChild("Complete")
	local v_u_63 = v59:WaitForChild("CompletedText")
	local v64 = v59:WaitForChild("Progress")
	local v_u_65 = v64:WaitForChild("ProgressText")
	local v_u_66 = v64:WaitForChild("BarHolder")
	local v_u_67 = v_u_66:WaitForChild("Bar")
	local function v68(_)
		-- upvalues: (copy) v_u_65, (ref) v_u_34, (copy) p_u_57, (copy) v_u_58, (copy) v_u_67, (copy) v_u_62, (copy) v_u_66, (copy) v_u_63
		v_u_65.Text = ("%* / %*"):format(v_u_34.Data.QuestProgress[p_u_57] or 0, v_u_58.Goal)
		v_u_67.Size = UDim2.fromScale((v_u_34.Data.QuestProgress[p_u_57] or 0) / v_u_58.Goal, 0.75)
		if v_u_34.Data.ClaimedQuests[p_u_57] then
			v_u_62.Visible = false
			v_u_65.Visible = false
			v_u_66.Visible = false
			v_u_63.Visible = true
			return
		elseif v_u_34.Data.QuestProgress[p_u_57] == v_u_58.Goal then
			v_u_62.TextColor3 = Color3.new(1, 1, 0)
			v_u_62.TextTransparency = 0
		else
			v_u_62.TextColor3 = Color3.new(1, 1, 1)
			v_u_62.TextTransparency = 0.7
		end
	end
	v68(true)
	v_u_34:ListenToChange({ "QuestProgress", p_u_57 }, v68)
	v_u_34:ListenToChange({ "ClaimedQuests", p_u_57 }, v68)
	v60.Text = v_u_58.DisplayName
	v59.LayoutOrder = p_u_57
	v59.Parent = v_u_5
	v59.Visible = true
	local v_u_69 = v61.MouseButton1Click:Connect(function()
		-- upvalues: (ref) v_u_34, (copy) p_u_57, (ref) v_u_56, (copy) v_u_58
		if not v_u_34.Data.ClaimedQuests[p_u_57] then
			v_u_56(v_u_58, p_u_57)
		end
	end)
	local v_u_70 = v_u_62.MouseButton1Click:Connect(function()
		-- upvalues: (ref) v_u_27, (copy) p_u_57
		v_u_27:Fire("Claim", p_u_57)
	end)
	local v_u_71 = v_u_26.LoadButtonEffects(v61, 1)
	v59.Destroying:Once(function()
		-- upvalues: (ref) v_u_69, (ref) v_u_37, (ref) v_u_70, (ref) v_u_71
		v_u_69:Disconnect()
		v_u_69 = v_u_37
		v_u_70:Disconnect()
		v_u_70 = v_u_37
		for _, v72 in v_u_71 do
			v72:Disconnect()
		end
		table.clear(v_u_71)
		v_u_71 = v_u_37
	end)
end
local function v_u_75()
	-- upvalues: (copy) v_u_56, (copy) v_u_5, (copy) v_u_6
	v_u_56()
	for _, v74 in ipairs(v_u_5:GetChildren()) do
		if v74.Name == "Template" and v74 ~= v_u_6 then
			v74:Destroy()
		end
	end
end
local function v78(p76)
	-- upvalues: (copy) v_u_75, (ref) v_u_35, (ref) v_u_36, (copy) v_u_73
	v_u_75()
	v_u_35 = p76
	v_u_36 = 0
	for v77, _ in ipairs(v_u_35) do
		task.defer(v_u_73, v77)
	end
end
local function v89()
	if v_u_34.Data.QuestExpireTimeStamp == nil then
		return
	end
	-- upvalues: (copy) v_u_34, (ref) v_u_36, (copy) v_u_19, (copy) v_u_38, (copy) v_u_20, (copy) v_u_21, (copy) v_u_8, (copy) v_u_9, (copy) v_u_47, (copy) v_u_15
	local v79 = DateTime.fromUnixTimestamp(v_u_34.Data.QuestExpireTimeStamp)
	local v80 = DateTime.fromUnixTimestamp(v_u_34.Data.QuestExpireTimeStamp - 1):ToLocalTime()
	local v81 = 0
	for _, v82 in v_u_34.Data.ClaimedQuests do
		if v82 then
			v81 = v81 + 1
		end
	end
	if v81 ~= v_u_36 then
		v_u_36 = v81
		if not v81 then
			v81 = 0
			for _, v83 in v_u_34.Data.ClaimedQuests do
				if v83 then
					v81 = v81 + 1
				end
			end
		end
		v_u_19.Text = ("%* / %*"):format(v81, v_u_38.Goal)
		v_u_20.Size = UDim2.fromScale(v81 / v_u_38.Goal, 0.75)
		if v81 == v_u_38.Goal then
			v_u_21.ImageTransparency = 0
		else
			v_u_21.ImageTransparency = 1
		end
	end
	v_u_8.Text = ("Daily Quest [%*-%*-%*]"):format(v80.Year, v80.Month, v80.Day)
	local v84 = v_u_9
	local v85 = v_u_47
	local v86 = v79.UnixTimestamp - DateTime.now().UnixTimestamp
	v84.Text = ("Update in : %*"):format((v85((math.ceil(v86)))))
	local v87 = v_u_15
	local v88 = v_u_34.Data.DailyQuestReroll
	v87.Text = tostring(v88) .. " left"
end
local v_u_90 = v24():case("Reroll", function() end):default(function() end)
v2.RenderStepped:Connect(v89)
v31.OnClientEvent:Connect(v78)
v32.OnClientEvent:Connect(function(p91)
	-- upvalues: (copy) v_u_90
	v_u_90(p91)
end)
v78(v_u_27:Fire("RequestData"))
local v92 = nil
if not v92 then
	v92 = 0
	for _, v93 in v_u_34.Data.ClaimedQuests do
		if v93 then
			v92 = v92 + 1
		end
	end
end
v_u_19.Text = ("%* / %*"):format(v92, v_u_38.Goal)
v_u_20.Size = UDim2.fromScale(v92 / v_u_38.Goal, 0.75)
if v92 == v_u_38.Goal then
	v_u_21.ImageTransparency = 0
else
	v_u_21.ImageTransparency = 1
end
v17.MouseButton1Click:Connect(function()
	-- upvalues: (copy) v_u_56, (copy) v_u_38
	v_u_56(v_u_38)
end)
v_u_14.Activated:Connect(function()
	-- upvalues: (copy) v_u_33, (copy) v_u_27, (ref) v_u_48
	v_u_33.Click:Play()
	v_u_27:Fire("Reroll", v_u_48)
end)
v_u_14.MouseEnter:Connect(function()
	-- upvalues: (copy) v_u_14, (copy) v_u_33
	if v_u_14.Active then
		v_u_33.MouseHover:Play()
	end
end)
v_u_26.LoadButtonEffects(v17)