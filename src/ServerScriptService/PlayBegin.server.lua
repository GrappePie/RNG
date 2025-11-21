local ReplicatedStorage = game.ReplicatedStorage
local Remotes = ReplicatedStorage.Remotes
local PlayBegin = Remotes.PlayBegin
local auracontroll = require(game.ReplicatedStorage.Modules.AuraControll)
local datastore = require(game:GetService("ServerStorage").ModuleScripts.DataStore)

PlayBegin.OnServerEvent:Connect(function(player)
	player:LoadCharacter()

	player:SetAttribute("PlayBegin", workspace:GetServerTimeNow())
	--player:SetAttribute("Loaded", true)-- Set after loading data :)
	--player:SetAttribute("ModMenuUntoggled", false)
	player:SetAttribute("Active", true)
	player:SetAttribute("GlobalMessageSFX", true)
	--player:SetAttribute("UiSFXEnabled", true)
	--player:SetAttribute("PlayerTag", "The Developer")
	player:SetAttribute("GroupRank", 0)
	player:SetAttribute("QuickRespawn", false)
	player:SetAttribute("Verified", true)
	player:SetAttribute("Donated", 0)
	player:SetAttribute("Title", "")

	local AuraInstances = Instance.new("Folder")
	AuraInstances.Name = "AuraInstances"
	AuraInstances.Parent = player
	
	local data = datastore.GetStore(player, true)
	
	if data.PlayerTag ~= "" then
		player:SetAttribute("PlayerTag", data.PlayerTag)
	end
	
	wait(1)
	if data.EquippedAuraIndex ~= nil then
		auracontroll.EquipAura(player.Character, tostring(data.InventoryAuras[data.EquippedAuraIndex].Name))
	end
	--for i,v in game.ServerStorage.Guis:GetChildren() do
	--	local ha = v:Clone()
	--	ha.Parent = player.PlayerGui
	--end
end)