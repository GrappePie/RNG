--!strict
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local MarketplaceService = game:GetService("MarketplaceService")
local Player = Players.LocalPlayer

if Player:GetAttribute("ModMenuAccess") == nil then
	Player:GetAttributeChangedSignal("ModMenuAccess"):Wait()
end

if Player:GetAttribute("ModMenuAccess") then
	local ScreenGui = script:FindFirstAncestorOfClass("ScreenGui")
	local ModMenuButton = ScreenGui:WaitForChild("ExtraButtons"):WaitForChild("ModMenu")
	local ModMenu = ScreenGui:WaitForChild("ModMenu")
	local CloseButton = ModMenu:WaitForChild("Top"):WaitForChild("Close")
	local Modifications = ModMenu:WaitForChild("Modifications")
	local ScrollingBoxFrame = Modifications:WaitForChild("QuickSelect"):WaitForChild("ScrollingFrame")
	local QuickSelectFrame1 = Modifications:WaitForChild("QuickSelect"):WaitForChild("Auras")
	local QuickSelectFrame4 = Modifications:WaitForChild("QuickSelect"):WaitForChild("Items")
	local QuickSelectFrame2 = Modifications:WaitForChild("QuickSelect"):WaitForChild("Biomes")
	local QuickSelectFrame3 = Modifications:WaitForChild("QuickSelect"):WaitForChild("Mirrors")
	local Template = ScrollingBoxFrame:WaitForChild("Template")
	local Search = Modifications:WaitForChild("Searching"):WaitForChild("TextBox")
	local Procedure = ModMenu:WaitForChild("Procedure")
	local LoadingImage = Procedure:WaitForChild("LoadingImage")
	local ConfigHolder = Modifications:WaitForChild("Configuration"):WaitForChild("Holder")
	ConfigHolder:WaitForChild("UIPadding")
	local ConfigUIListLayout = ConfigHolder:WaitForChild("UIListLayout")
	local GiveAura = ConfigHolder:WaitForChild("GiveAura")
	local GiveItem = ConfigHolder:WaitForChild("GiveItem")
	local GiveAllItems = ConfigHolder:WaitForChild("GiveAllItems")
	local ChangeBiome = ConfigHolder:WaitForChild("ChangeBiome")
	--local OpenCmdr = ConfigHolder:WaitForChild("OpenCmdr")
	local Mirrors = ConfigHolder:WaitForChild("Mirrors")
	local ResetData = ConfigHolder:WaitForChild("ResetData")
	local Titles = { ConfigHolder:WaitForChild("Title1"), ConfigHolder:WaitForChild("Title2") }
	local Modules = ReplicatedStorage:WaitForChild("Modules")
	local Remotes = ReplicatedStorage:WaitForChild("Remotes")
	local ResetDataRemote = Remotes:WaitForChild("ResetData") :: RemoteEvent
	local QuestRemote = Remotes:WaitForChild("Quest")
	local Utility = require(Modules:WaitForChild("Utility"))
	local Core = require(ScreenGui:WaitForChild("Notification"):WaitForChild("Core")) :: any
	local RemoteModMenu = require(ScreenGui:WaitForChild("RemoteFunction")).new("ModificationsMenu") :: any
	local ClientBaseFunctions = require(Modules:WaitForChild("CoreModules"):WaitForChild("ClientBasedFunctions"))
	local Server0o = ReplicatedStorage:WaitForChild("Server0o")
	local AuraClickCounter = 0
	local ItemClickCounter = 0
	local AllItemsClickCounter = 0
	local BiomeClickCount = 0
	local MirrorsClickCounter = 0
	local player: any
	local item: any

	QuestRemote.OnClientEvent:Connect(function(Reward, Message, RewarderID)
		if Reward == nil then return end
		if Reward == "Following" then
			task.defer(Core.Create, "Follow Board Reward", (Message):format(RewarderID), 5, "Normal")
		end
	end)

	if Player:GetAttribute("ModMenuUntoggled") then
		ModMenuButton.Visible = true
	end

	Player:GetAttributeChangedSignal("ModMenuUntoggled"):Connect(function()
		local newValue = Player:GetAttribute("ModMenuUntoggled")
		ModMenuButton.Visible = not Player:GetAttribute("ModMenuUntoggled")
	end)

	if UserInputService.TouchEnabled then
		ConfigHolder.Parent.Size = UDim2.fromScale(0.62, 0.75)
		Search.Parent.Size = UDim2.fromScale(0.62, 0.11)
		Search.Position = UDim2.fromScale(0.1, 0.5)
		Search.Size = UDim2.fromScale(0.9, 0.8)
		ChangeBiome.Size = UDim2.fromScale(0.95, 0.06)
		for _, v in Titles do
			v.Size = UDim2.fromScale(0.95, 0.075)
		end
		ConfigUIListLayout.Padding = UDim.new(0, 7)
	end

	local function GetPlayer(Username: string): (number | boolean)
		local Player = Players:FindFirstChild(Username)
		if Player and Player:IsA("Player") then
			return Player.UserId
		end
		local success, userId = pcall(Players.GetUserIdFromNameAsync, Players, Username)
		if success then
			return userId
		end
		if userId:find("Unknown user") then
			return false
		end
		task.defer(Core.Create, "Player Load Failed.", "Failed to load player\'s user id.", 5, "Warn")
		return false
	end
	local function e(_)
		if Search.Text == "" then
			item = nil
		else
			local FoundPlayer = GetPlayer(Search.Text) :: any
			if FoundPlayer then
				Search.TextColor3 = Color3.fromRGB(73, 161, 255)
			else
				Search.TextColor3 = Color3.fromRGB(255, 62, 62)
				if FoundPlayer == false then
					task.defer(Core.Create, "Invalid User Name", "Please check that if it's right.", 5, "Warn")
				end
			end
			player = FoundPlayer
		end
	end
	local function _Add_User_To_ScrollingBox(Player: Player)
		--if Player ~= Player then
		local User = Template:Clone()
		User.Text = Utility.GetSmartName(Player)
		User.Parent = ScrollingBoxFrame
		User.Visible = true
		local MouseButton1Down = User.MouseButton1Down:Connect(function()
			Search.Text = Player.Name
			e(true)
		end)
		Player.AncestryChanged:Once(function()
			User:Destroy()
			MouseButton1Down:Disconnect()
		end)
		--end
	end
	local function ResetStatuses()
		player = nil
		item = nil
		Search.TextColor3 = Color3.new(1, 1, 1)
	end
	local function _AuraGiver()
		ItemClickCounter = 0
		AllItemsClickCounter = 0
		BiomeClickCount = 0
		MirrorsClickCounter = 0
		if AuraClickCounter == 0 then
			AuraClickCounter += 1
			ScrollingBoxFrame.Visible = false
			QuickSelectFrame2.Visible = false
			QuickSelectFrame3.Visible = false
			QuickSelectFrame4.Visible = false
			ResetStatuses()
			QuickSelectFrame1.Visible = true
		elseif AuraClickCounter >= 1 then
			local FullPlayer = game.Players:GetPlayerByUserId(player)
			if item and player and not Procedure.Visible then
				if (item:lower() == "oppression") then
					if not (MarketplaceService:UserOwnsGamePassAsync(game.Players.LocalPlayer.UserId, 899518838) or MarketplaceService:UserOwnsGamePassAsync(game.Players.LocalPlayer.UserId, 908740614)) then
						task.defer(Core.Create, "Warning", "Purchase the Oppression Aura Gamepass to be able to give oppression out.", 5, "Warn")
						MarketplaceService:PromptGamePassPurchase(game.Players.LocalPlayer, 908740614)
						return
					end
				end
				if (item:lower() == "oppression") and (not MarketplaceService:UserOwnsGamePassAsync(player, 908740614)) then
					task.defer(Core.Create, "Warning", "This player does not own the Oppression Aura Gamepass. Please try someone else or do yourself instead.", 5, "Warn")
					return
				end
				print(Players:GetPlayerByUserId(player), item)
				local errorOccurred = false
				Procedure.Visible = true
				task.delay(3, function()
					if errorOccurred then
						task.defer(Core.Create, "Aura Giver Failed", "Failed to give Aura, please rejoin or try again later to fix this issue.", 5, "Warn")
					else
						task.defer(Core.Create, "Aura Giver Success", ("Gave aura %* to %*(@%*) successfully."):format(item, FullPlayer.DisplayName, FullPlayer.Name), 5, "Normal")
					end
					Procedure.Visible = false
				end)
				local success, err = RemoteModMenu:Fire("AuraGiver", player, item)
				if success then
					errorOccurred = false
				else
					errorOccurred = true
				end
			elseif not (item or player) then
				task.defer(Core.Create, "Warning", "Input the aura and/or player first.", 2, "Warn")
			end
		end
	end
	local function _ItemGiver()
		AuraClickCounter = 0
		AllItemsClickCounter = 0
		BiomeClickCount = 0
		MirrorsClickCounter = 0
		if ItemClickCounter == 0 then
			ItemClickCounter += 1
			ScrollingBoxFrame.Visible = false
			QuickSelectFrame1.Visible = false
			QuickSelectFrame2.Visible = false
			QuickSelectFrame3.Visible = false
			ResetStatuses()
			QuickSelectFrame4.Visible = true
		elseif ItemClickCounter >= 1 then
			local FullPlayer = game.Players:GetPlayerByUserId(player)
			if item and player and not Procedure.Visible then
				print(Players:GetPlayerByUserId(player), item)
				local errorOccurred = false
				Procedure.Visible = true
				task.delay(3, function()
					if errorOccurred then
						task.defer(Core.Create, "Item Giver Failed", "Failed to give Aura, please rejoin or try again later to fix this issue.", 5, "Warn")
					else
						task.defer(Core.Create, "Item Giver Success", ("Gave item %* to %*(@%*) successfully."):format(item, FullPlayer.DisplayName, FullPlayer.Name), 5, "Normal")
					end
					Procedure.Visible = false
				end)
				local success, err = RemoteModMenu:Fire("ItemGiver", player, item)
				if success then
					errorOccurred = false
				else
					errorOccurred = true
				end
			elseif not (item or player) then
				task.defer(Core.Create, "Warning", "Input the aura and/or player first.", 2, "Warn")
			end
		end
	end
	local function _AllItemsGiver()
		AuraClickCounter = 0
		ItemClickCounter = 0
		BiomeClickCount = 0
		MirrorsClickCounter = 0
		if AllItemsClickCounter == 0 then
			AllItemsClickCounter += 1
			QuickSelectFrame1.Visible = false
			QuickSelectFrame2.Visible = false
			QuickSelectFrame3.Visible = false
			QuickSelectFrame4.Visible = false
			ResetStatuses()
			ScrollingBoxFrame.Visible = true			
		elseif AllItemsClickCounter >= 1 then
			local FullPlayer = game.Players:GetPlayerByUserId(player)
			if player and not Procedure.Visible then
				print(Players:GetPlayerByUserId(player), item)
				local errorOccurred = false
				Procedure.Visible = true
				task.delay(3, function()
					if errorOccurred then
						task.defer(Core.Create, "Item Giver Failed", "Failed to give Aura, please rejoin or try again later to fix this issue.", 5, "Warn")
					else
						task.defer(Core.Create, "Item Giver Success", ("Gave all items to %*(@%*) successfully."):format(FullPlayer.DisplayName, FullPlayer.Name), 5, "Normal")
					end
					Procedure.Visible = false
				end)
				local success, err = RemoteModMenu:Fire("AllItemsGiver", player, item or 1)
				if success then
					errorOccurred = false
				else
					errorOccurred = true
				end
			elseif not (player) then
				task.defer(Core.Create, "Warning", "Input the aura and/or player first.", 2, "Warn")
			end
		end
	end
	local function _BiomeChanger()
		AuraClickCounter = 0
		ItemClickCounter = 0
		AllItemsClickCounter = 0
		MirrorsClickCounter = 0
		if BiomeClickCount == 0 then
			BiomeClickCount += 1
			ScrollingBoxFrame.Visible = false
			QuickSelectFrame1.Visible = false
			QuickSelectFrame3.Visible = false
			QuickSelectFrame4.Visible = false
			ResetStatuses()
			QuickSelectFrame2.Visible = true
		elseif BiomeClickCount >= 1 then
			if item and not Procedure.Visible then
				local errorOccurred = false
				Procedure.Visible = true
				task.delay(3, function()
					if errorOccurred then
						task.defer(Core.Create, "Biome Change Failed", "Failed to change the Biome, please rejoin or try again later to fix this issue.", 5, "Warn")
					else
						task.defer(Core.Create, "Biome Change Success", ("Biomed changed to %* successfully."):format(item), 5, "Normal")
					end
					Procedure.Visible = false
				end)
				local success, err = RemoteModMenu:Fire("BiomeChanger", nil, item)
				if success then
					errorOccurred = false
				else
					errorOccurred = true
				end
			elseif not item then
				task.defer(Core.Create, "Warning", "Enter the biome first.", 2, "Warn")
			end
		end
	end
	local function _Mirrors()
		AuraClickCounter = 0
		BiomeClickCount = 0
		if BiomeClickCount == 0 then
			MirrorsClickCounter += 1
			ScrollingBoxFrame.Visible = false
			QuickSelectFrame1.Visible = false
			QuickSelectFrame2.Visible = false
			QuickSelectFrame4.Visible = false
			ResetStatuses()
			QuickSelectFrame3.Visible = true
		end
	end
	local function _ResetData()
		ResetDataRemote:FireServer()
	end
	--[[local function _OpenCmdr()
		if not Procedure.Visible then
			local CmdrClient = require(ReplicatedStorage:WaitForChild("CmdrClient"))
			local errorOccurred = false
			Procedure.Visible = true
			task.delay(1, function()
				if errorOccurred then
					task.defer(Core.Create, "Cmdr Open Failed", "Failed to change the Biome, please rejoin or try again later to fix this issue.", 5, "Warn")
				else
					task.defer(Core.Create, "Cmdr Open Success", ("Cmdr opened successfully."):format(), 5, "Normal")
				end
				Procedure.Visible = false
			end)
			local success, err = pcall(function()CmdrClient:Toggle()end)
			if success then
				errorOccurred = false
			else
				errorOccurred = true
			end
		end
	end]]

	RunService.RenderStepped:Connect(function(dt: number)
		local LoadingImage = LoadingImage
		LoadingImage.Rotation = LoadingImage.Rotation + dt * 120
	end)
	Search.FocusLost:Connect(e)
	Search.Focused:Connect(ResetStatuses)
	GiveAura.MouseButton1Click:Connect(_AuraGiver)
	GiveItem.MouseButton1Click:Connect(_ItemGiver)
	GiveAllItems.MouseButton1Click:Connect(_AllItemsGiver)
	ChangeBiome.MouseButton1Down:Connect(_BiomeChanger)
	Mirrors.MouseButton1Click:Connect(_Mirrors)
	ResetData.MouseButton1Click:Connect(_ResetData)
	--OpenCmdr.MouseButton1Click:Connect(_OpenCmdr)
	Players.PlayerAdded:Connect(_Add_User_To_ScrollingBox)

	for _, v in QuickSelectFrame2:GetChildren() do
		if v:IsA("TextButton") then
			v.MouseButton1Click:Connect(function()
				item = v.Name
			end)
		end
	end

	--[[ModMenuButton.MouseButton1Click:Connect(function()
		if not ModMenu.Visible then
			ClientBaseFunctions.CloseAllWindows()
		end
		ModMenu.Visible = not ModMenu.Visible
	end)]]
	--[[CloseButton.MouseButton1Click:Connect(function()
		ModMenu.Visible = false
	end)]]

	task.wait(3)

	for _, v in QuickSelectFrame1:GetChildren() do
		if v:IsA("TextButton") then
			if v.Name ~= "Template" then
				v.MouseButton1Click:Connect(function()
					item = v.Name
					QuickSelectFrame1.Visible = false
					QuickSelectFrame2.Visible = false
					QuickSelectFrame3.Visible = false
					QuickSelectFrame4.Visible = false
					ScrollingBoxFrame.Visible = true
				end)
			end
		end
	end
	for _, v in QuickSelectFrame4:GetChildren() do
		if v:IsA("TextButton") then
			if v.Name ~= "Template" then
				v.MouseButton1Click:Connect(function()
					item = v.Name
					QuickSelectFrame1.Visible = false
					QuickSelectFrame2.Visible = false
					QuickSelectFrame3.Visible = false
					QuickSelectFrame4.Visible = false
					ScrollingBoxFrame.Visible = true
				end)
			end
		end
	end
	for _, v in ipairs(Players:GetPlayers()) do
		task.defer(_Add_User_To_ScrollingBox, v)
	end

	Template.Visible = false
end