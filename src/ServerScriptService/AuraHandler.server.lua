local datastore = require(game:GetService("ServerStorage").ModuleScripts.DataStore)

game.ReplicatedStorage.Modules.RemoteFunction.AuraClientNew.OnServerInvoke = function(plr, aura)
	if not game.ServerStorage.Auras:FindFirstChild(aura) then
		warn("Need aura "..aura)
		local clonedaura = game.ServerStorage.Auras["Common"]:Clone()
		clonedaura.Parent = plr.AuraInstances
		return clonedaura.Name
	end
	local clonedaura = game.ServerStorage.Auras[aura]:Clone()
	clonedaura.Parent = plr.AuraInstances
	
	return clonedaura.Name
end

game.ReplicatedStorage.Remotes.ChangeTitle.OnServerEvent:Connect(function(player, title)
	local data = datastore.GetStore(player, true)
	local changedata = datastore.GetChangeStore(player, true)
	
	if not table.find(data.OwnedTags, title) then
		warn("Doesnt own the title")
		player:Kick("You don't own that title! NICE HACKS BUD")
	end
	
	player:SetAttribute("PlayerTag", title)
	data.PlayerTag = title
end)