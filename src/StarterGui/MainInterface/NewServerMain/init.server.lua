local ReplicatedStorage = game.ReplicatedStorage
local RespawnChar = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("RespawnCharacter")
local player = script.Parent.Parent.Parent
local ReplicaRemoteEvents = ReplicatedStorage.ReplicaRemoteEvents
local datastore = require(game.ServerStorage.ModuleScripts.DataStore)
local DailyQuests = require(game.ServerStorage.ModuleScripts.Quests)

repeat task.wait() until player:GetAttribute("Loaded")
warn(player.Name.." has loaded!")

local craftclient = Instance.new("RemoteEvent")
craftclient.Parent = script.Parent.RemoteFunction
craftclient.Name = "Craft\n" .. player.UserId.."Client"
local craftserver = Instance.new("RemoteEvent")
craftserver.Parent = script.Parent.RemoteFunction
craftserver.Name = "Craft\n" .. player.UserId.."Server"

for i, v in script:GetChildren() do
	v.Enabled = true
end

local TweenService = game:GetService("TweenService")
local TeleportService = game:GetService("TeleportService")

local function animateFrame(frame, startPos, endPos, duration)
	frame.Position = startPos

	local tween0o = Tween0o.new(
		duration,
		Enum.EasingStyle.Quad,
		Enum.EasingDirection.InOut,
		0, 
		false, 
		0 
	)
	local goal = {}
	goal.Position = endPos
	local tween = TweenService:Create(frame, tween0o, goal)
	tween:Play()
end

RespawnChar.OnServerEvent:Connect(function(plr)
	if plr.Name == player.Name then
		RespawnChar:FireClient(plr, workspace:GetServerTimeNow())
		
		local playerGui = player:WaitForChild("PlayerGui")
		local teleportFrame = playerGui.MainInterface.Teleport

		if teleportFrame then
			local startPos = UDim2.new(2, 0, -2, 0)
			local endPos = UDim2.new(-2, 0, 2, 0)
			animateFrame(teleportFrame, startPos, endPos, 1.5)
			print("wtf")

			wait(0.8)
			print("weriddd")
			player:SetAttribute("IsInCave", false)
			
			player.Character.HumanoidRootPart.CFrame = CFrame.new(212.5, 89.5 + 3, -361.6)
		end
		return true
	end
end)

local Inventory = require(game.ReplicatedStorage.Modules.Inventory)
v_u_16 = require(game.ServerStorage:WaitForChild("ModuleScripts"):WaitForChild("DataStore"))

ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("Achievement").OnServerEvent:Connect(function(plr, yes, item)
	if plr.Name ~= player.Name then
		print("Not same player")
		return
	end
	
	if yes ~= "Claim" then
		return
	end
	
	local getstore = v_u_16.GetStore(plr, true)
	local changestore = v_u_16.GetChangeStore(plr, true)
	
	local v_u_33 = _G.PlayerProfiles[player].Replica

	if table.find(v_u_33.Data.UnlockedAchievements, item) == nil then
		print("Not unlocked")
		return
	end
	
	--if not v_u_33.Data.UnlockedAchievements[item] then
	--	print("Not unlocked")
	--	return
	--end
	
	--if table.find(v_u_33.Data.AchievementsClaimed, tostring(item)) then
	--	warn("Already claimed")
	--	return
	--end
	
	if v_u_33.Data.AchievementsClaimed[item] then
		warn("Already claimed")
		return
	end
	
	--print(v_u_33.Data.AchievementsClaimed)
	if not _G.achvdata[item] then
		warn("No such achievement")
		return
	end
	
	if not _G.achvdata[item]["Rewards"] then
		warn("No rewards")
		return
	end
	
	warn("Claiming achievement "..item)
	
	getstore.AchievementsClaimed[item] = true
	
	changestore:SetValue("AchievementsClaimed", getstore.AchievementsClaimed)

	for i, v in pairs(_G.achvdata[item]["Rewards"]) do
		if i == "Coins" then
			changestore:SetValue("Coins", getstore.Coins + v)
		elseif i == "Void Coin" then
			changestore:SetValue("DarkCoins", getstore.DarkCoins + v)
		elseif i == "Items" then
			for i, v in pairs(v) do
				Inventory.GiveItems(player, i, v, tostring(i))
			end
		else
			warn("There isn't any rewards implemented???")
			return
		end
	end
	
end)

local AchRemote = game.ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("Achievement")

local Auras = script.Parent.ModMenu.Modifications.QuickSelect.Auras
for i, v in game.ServerStorage.Auras:GetChildren() do
	local Button = Auras.Template:Clone()
	--[[if (v.Name:lower() == "oppression") and (not game:GetService("MarketplaceService"):UserOwnsGamePassAsync(player.UserId, 899518838)) then
		return
	end]]
	Button.Name = v.Name
	Button.Text = v.Name
	Button.Parent = Auras
end
Auras.Template:Destroy()

local Items = script.Parent.ModMenu.Modifications.QuickSelect.Items
local ItemDB = require(game.ReplicatedStorage.Modules.DB.ItemDB)
for i, v in ItemDB do
	local Button = Items.Template:Clone()
	Button.Name = i
	Button.Text = i
	Button.Parent = Items
end
Items.Template:Destroy()

script.Parent.ModMenu.Modifications.QuickSelect.Mirrors["1"].MouseButton1Click:Connect(function()
	TeleportService:SetTeleportGui(ReplicatedStorage.Assets.TPGui)
	TeleportService:Teleport(112540998364564, player, nil, TeleportService:GetArrivingTeleportGui())
end)--[[
script.Parent.ModMenu.Modifications.QuickSelect.Mirrors["2"].MouseButton1Click:Connect(function()
	TeleportService:SetTeleportGui(ReplicatedStorage.Assets.TPGui)
	TeleportService:Teleport(1, player, nil, TeleportService:GetArrivingTeleportGui())
end)
script.Parent.ModMenu.Modifications.QuickSelect.Mirrors["3"].MouseButton1Click:Connect(function()
	TeleportService:SetTeleportGui(ReplicatedStorage.Assets.TPGui)
	TeleportService:Teleport(1, player, nil, TeleportService:GetArrivingTeleportGui())
end)]]

while true do
	task.wait(0.5)
	local data = datastore.GetStore(player, true)
	local changedata = datastore.GetChangeStore(player, true)

	local v_u_33 = _G.PlayerProfiles[player].Replica

	currentachievement = "I can't stop playing this"

	if table.find(v_u_33.Data.Achievements, currentachievement) == nil or table.find(v_u_33.Data.Achievements, currentachievement) ~= _G.achvdata[currentachievement].Goal then
		local heh = data.Achievements
		local v_u_60 = player:GetAttribute("PlayBegin")
		local v61 = (workspace:GetServerTimeNow() - v_u_60 + v_u_33.Data.Playtime) / 60
		if v61 >= _G.achvdata[currentachievement].Goal then
			if table.find(v_u_33.Data.UnlockedAchievements, currentachievement) == nil then
				v_u_33.Data.Achievements[currentachievement] = _G.achvdata[currentachievement].Goal
				local v69 = data.UnlockedAchievements
				table.insert(v69, currentachievement)
				changedata:SetValue("UnlockedAchievements", v69)
				table.insert(data.OwnedTags, currentachievement)
				changedata:SetValue("OwnedTags", data.OwnedTags)

				AchRemote:FireClient(player, currentachievement, 123)
			end
		end
	end
	
	
	
	currentachievement = "Touch the grass"

	if table.find(v_u_33.Data.Achievements, currentachievement) == nil or table.find(v_u_33.Data.Achievements, currentachievement) ~= _G.achvdata[currentachievement].Goal then
		local heh = data.Achievements
		local v_u_60 = player:GetAttribute("PlayBegin")
		local v61 = (workspace:GetServerTimeNow() - v_u_60 + v_u_33.Data.Playtime) / 60
		if v61 >= _G.achvdata[currentachievement].Goal then
			if table.find(v_u_33.Data.UnlockedAchievements, currentachievement) == nil then
				v_u_33.Data.Achievements[currentachievement] = _G.achvdata[currentachievement].Goal
				local v69 = data.UnlockedAchievements
				table.insert(v69, currentachievement)
				changedata:SetValue("UnlockedAchievements", v69)
				table.insert(data.OwnedTags, currentachievement)
				changedata:SetValue("OwnedTags", data.OwnedTags)

				AchRemote:FireClient(player, currentachievement, 123)
			end
		end
	end
	
	currentachievement = "Take a break"

	if table.find(v_u_33.Data.Achievements, currentachievement) == nil or table.find(v_u_33.Data.Achievements, currentachievement) ~= _G.achvdata[currentachievement].Goal then
		local heh = data.Achievements
		local v_u_60 = player:GetAttribute("PlayBegin")
		local v61 = (workspace:GetServerTimeNow() - v_u_60 + v_u_33.Data.Playtime) / 60
		if v61 >= _G.achvdata[currentachievement].Goal then
			if table.find(v_u_33.Data.UnlockedAchievements, currentachievement) == nil then
				v_u_33.Data.Achievements[currentachievement] = _G.achvdata[currentachievement].Goal
				local v69 = data.UnlockedAchievements
				table.insert(v69, currentachievement)
				changedata:SetValue("UnlockedAchievements", v69)
				table.insert(data.OwnedTags, currentachievement)
				changedata:SetValue("OwnedTags", data.OwnedTags)

				AchRemote:FireClient(player, currentachievement, 123)
			end
		end
	end
	
	currentachievement = "Waste of time"

	if table.find(v_u_33.Data.Achievements, currentachievement) == nil or table.find(v_u_33.Data.Achievements, currentachievement) ~= _G.achvdata[currentachievement].Goal then
		local heh = data.Achievements
		local v_u_60 = player:GetAttribute("PlayBegin")
		local v61 = (workspace:GetServerTimeNow() - v_u_60 + v_u_33.Data.Playtime) / 60
		if v61 >= _G.achvdata[currentachievement].Goal then
			if table.find(v_u_33.Data.UnlockedAchievements, currentachievement) == nil then
				v_u_33.Data.Achievements[currentachievement] = _G.achvdata[currentachievement].Goal
				local v69 = data.UnlockedAchievements
				table.insert(v69, currentachievement)
				changedata:SetValue("UnlockedAchievements", v69)
				table.insert(data.OwnedTags, currentachievement)
				changedata:SetValue("OwnedTags", data.OwnedTags)

				AchRemote:FireClient(player, currentachievement, 123)
			end
		end
	end
	
	currentachievement = "Eternal time..."

	if table.find(v_u_33.Data.Achievements, currentachievement) == nil or table.find(v_u_33.Data.Achievements, currentachievement) ~= _G.achvdata[currentachievement].Goal then
		local heh = data.Achievements
		local v_u_60 = player:GetAttribute("PlayBegin")
		local v61 = (workspace:GetServerTimeNow() - v_u_60 + v_u_33.Data.Playtime) / 60
		if v61 >= _G.achvdata[currentachievement].Goal then
			if table.find(v_u_33.Data.UnlockedAchievements, currentachievement) == nil then
				v_u_33.Data.Achievements[currentachievement] = _G.achvdata[currentachievement].Goal
				local v69 = data.UnlockedAchievements
				table.insert(v69, currentachievement)
				changedata:SetValue("UnlockedAchievements", v69)
				table.insert(data.OwnedTags, currentachievement)
				changedata:SetValue("OwnedTags", data.OwnedTags)

				AchRemote:FireClient(player, currentachievement, 123)
			end
		end
	end
end