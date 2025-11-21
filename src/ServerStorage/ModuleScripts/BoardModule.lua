--!strict
local DataStoreService = game:GetService("DataStoreService")
local DonationsDS = DataStoreService:GetDataStore("Donations_MODDED")

local board
board = {
	
}

function board:LoadLeaderboard(Board)
	local LeaderboardFolder = game.Workspace.Map.Leaderboards
	local Leaderboards = {
		DonationLeaderboard = LeaderboardFolder:FindFirstChild("DonationLeaderboard"),
		Leaderboard1 = LeaderboardFolder:FindFirstChild("Leaderboard1"),
		Leaderboard2 = LeaderboardFolder:FindFirstChild("Leaderboard2")
	}
	local function loadDonations()
		local DonationLeaderboard = Leaderboards.DonationLeaderboard
		local MainLBFrame = DonationLeaderboard.Leaderboard.SurfaceGui.Frame
		local Template = MainLBFrame.Template
		for _, value in DonationsDS:GetChildren() do
			
		end
	end
end

return board
