local HttpService = game:GetService("HttpService")
local PlayerService = game:GetService("Players")

local DataStore = require(game.ServerStorage.ModuleScripts.DataStore)

local giveAuraServer = require(game.ServerScriptService.Cmdr.Commands.giveAuraServer)

local QuestRemote = game.ReplicatedStorage.Remotes.Quest

local msg = script:GetAttribute("Message")

function PlayerisFollowing(Follower: number, BeingFollowed: number, cursor: string)
	if cursor == nil then cursor = "" end

	local Str = "https://friends.roproxy.com/v1/users/"..Follower.."/followings?cursor="..cursor.."&sortOrder=Asc&limit=100"
	local response = HttpService:RequestAsync({
		Url = Str,
		Method = "GET"
	})

	if response.Success then
		local Body = HttpService:JSONDecode(response.Body)
		local nextPageCursor = Body.nextPageCursor

		if string.find(response.Body, tostring(BeingFollowed)) then
			return true
		end

		if nextPageCursor ~= nil then
			PlayerisFollowing(Follower, BeingFollowed, nextPageCursor)
		end
	end

	return false
end

local UserIDs = {
	1;
}

local reward = function(Player: Player, AuraName: string, UserID: number): ()
	local PlayerChangeStore = DataStore.GetChangeStore(Player, true)

	giveAuraServer("Server", Player, AuraName, false)

	pcall(function()
		PlayerChangeStore:SetValue("ClaimedFollowReward", true)
	end)

	QuestRemote:FireClient(Player, "Following", msg, PlayerService:GetNameFromUserIdAsync(UserID))
end

PlayerService.PlayerAdded:Connect(function(Player)

	Player:GetAttributeChangedSignal("Active"):Connect(function()
		if Player:GetAttribute("Active") == true then
			local PlayerData = DataStore.GetStore(Player, true)
			if not PlayerData.ClaimedFollowReward then
				for _, UserID in UserIDs do
					local isFollowingUser = PlayerisFollowing(Player.UserId, UserID)
					if isFollowingUser then
						reward(Player, "Oppression", UserID)
					end
				end
			end
		end
	end)
end)