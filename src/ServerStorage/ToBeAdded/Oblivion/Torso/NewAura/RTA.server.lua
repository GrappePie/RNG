script.Parent.Touched:Connect(function(part)
	if part.Parent:FindFirstChild("Humanoid") then
		local player = game.Players:GetPlayerFromCharacter(part.Parent)
		game:GetService("BadgeService"):AwardBadge(player.UserId, 2383237981853088) -- Put your badge id
	end
end)

--Note1: Create you badge now! it's free! you can create 5 badge for free now!
--Note2: if not work comment in this model 

                      --Script by Roblox Studio Indonesia--