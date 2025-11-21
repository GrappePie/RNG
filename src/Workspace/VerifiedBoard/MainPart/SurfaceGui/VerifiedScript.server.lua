--!strict
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")

local VerifiedGui = script.Parent
local Ma0rame = VerifiedGui.Frame

local ProfileLinkBox = Ma0rame.TextBox

local HelpLabel = Ma0rame.HelpLabel
local NameLabel = Ma0rame.NameLabel
local UpdateLabel = Ma0rame.UpdateLabel
local ImageLabel = Ma0rame.ImageLabel
local FollowersLabel = Ma0rame.FollowersLabel

local FollowersBar = Ma0rame.FollowersBar.InnerBar

local Users = {
	nil;
	nil;
}

local function startGradientInvertationLoop()
	local gradient = HelpLabel.UIGradient

	coroutine.wrap(function()
		while task.wait(1) do
			if gradient.Rotation ~= 180 then
				gradient.Rotation = 180
			else
				gradient.Rotation = 0
			end
		end
	end)()

	return true
end

-- Start Gradient Loop lololol
startGradientInvertationLoop()

-- Time
local defaultTimeInMinutes = 60
local minutesInAHour = 60

local timeLeft = 0 --defaultTimeInMinutes * minutesInAHour
while task.wait(1) do
	local function randomizeNextUser()
		local _get_followers_by_userId = function(userId)
			local Response = HttpService:GetAsync("https://friends.roproxy.com/v1/users/"..tostring(userId).."/followers/count")
			Response = HttpService:JSONDecode(Response)
			return Response.count
		end
		local chosenUser = Users[Random.new():NextInteger(1, #Users)]
		NameLabel.Text = "Follow @"..game.Players:GetNameFromUserIdAsync(chosenUser).."  for a free Aura! (You may need to refollow or wait 1-3 minutes after following)"
		ImageLabel.Image = (
			"https://www.roblox.com/bust-thumbnail/image?userId=%s&width=720&height=720&format=jpeg"
		):format(tostring(chosenUser))
		FollowersLabel.Text = _get_followers_by_userId(chosenUser).."/10,000 Followers"
		FollowersBar.Size = UDim2.new(_get_followers_by_userId(chosenUser) / 10000, 0, 1, 0)
		ProfileLinkBox.Text = "https://www.roblox.com/users/"..tostring(chosenUser).."/profile"
		return true
	end

	local CurrentTime = os.date("!*t", timeLeft)
	local CurrentTime = {
		hour = tostring(CurrentTime.hour); -- Hours
		min = tostring(CurrentTime.min); -- Minutes
		sec = tostring(CurrentTime.sec); -- Seconds
	} :: {[any]: any}

	local shouldRefresh = timeLeft < 0 or false --(hour == 0 and min == 0 and sec == 0) or false

	local CurrentTime = {
		[1] = CurrentTime.hour;
		[2] = CurrentTime.min;
		[3] = CurrentTime.sec;
	}
	for Index, Time in CurrentTime do
		if string.len(Time) <= 1 then
			Time = "0" .. Time
			CurrentTime[Index] = Time
		end
	end -- convertToHMS works too but eh

	timeLeft -= 1

	if shouldRefresh then
		timeLeft = defaultTimeInMinutes * minutesInAHour
		randomizeNextUser()
	end

	UpdateLabel.Text = ("Updates in %s:%s:%s"):format(CurrentTime[1], CurrentTime[2], CurrentTime[3])
end