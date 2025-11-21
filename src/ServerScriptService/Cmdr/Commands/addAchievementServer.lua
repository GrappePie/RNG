
local AchRemote = game.ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("Achievement")
v_u_16 = require(game.ServerStorage:WaitForChild("ModuleScripts"):WaitForChild("DataStore"))


return function (context, player : Player, achievement : string, fill : boolean)
	if not player then 
		return
	end

	local v_u_33 = _G.PlayerProfiles[player].Replica

	local getstore = v_u_16.GetStore(player, true)
	local changestore = v_u_16.GetChangeStore(player, true)

	if table.find(v_u_33.Data.UnlockedAchievements, achievement) == nil then
		local v69 = getstore.UnlockedAchievements
		table.insert(v69, achievement)
		print(v69)
		changestore:SetValue("UnlockedAchievements", v69)
	else
		return
	end

	if table.find(v_u_33.Data.Achievements, achievement) == nil or table.find(v_u_33.Data.Achievements, achievement) ~= _G.achvdata[achievement].Goal then	
		local heh = getstore.Achievements
		heh[achievement] = _G.achvdata[achievement].Goal
		changestore:SetValue("Achievements", heh)
	end

	AchRemote:FireClient(player, achievement, 123)


	return true
end