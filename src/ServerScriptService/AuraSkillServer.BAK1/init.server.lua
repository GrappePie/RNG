local datastore = require(game:GetService("ServerStorage").ModuleScripts.DataStore)	
local skills = script.Skills
game.ReplicatedStorage.Remotes.AuraAbilityRemote.OnServerEvent:Connect(function(plr, what, what1, what2)
	--local data = datastore.GetStore(plr, true)
	local EquippedAura = plr:GetAttribute("Title")
	if skills:FindFirstChild(EquippedAura) then
		plr:SetAttribute("AuraCooltime", workspace:GetServerTimeNow()+5)
		plr:SetAttribute("AuraDelaytime", 5)
		game.ReplicatedStorage.Remotes.AuraAbilityRemote:FireClient(plr, EquippedAura)
		local heh = require(skills:FindFirstChild(EquippedAura).Server)
		heh.Ability(plr)
	end
end)