--!strict
--[[local TweenService = game:GetService("TweenService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_2_upvr = require(Modules:WaitForChild("Utility")) :: any
local module = require(Modules:WaitForChild("UI"):WaitForChild("Quad"))
local var8_upvr = module.Class("TextLabel")({
	BackgroundTransparency = 1;
	AnchorPoint = Vector2.new(0.5, 0);
	Position = UDim2.fromScale(0.5, 0.965);
	Size = UDim2.fromScale(0.15, 0.03);
	FontFace = module.FontBold;
	Text = "";
	TextScaled = true;
	TextColor3 = Color3.fromRGB(220, 220, 220);
	TextTransparency = 1;
	TextStrokeTransparency = 0.6;
})
local var9_upvw
local tbl_upvr_2 = {TweenService:Create(var8_upvr, TweenInfo.new(0.5, Enum.EasingStyle.Linear), {
	TextTransparency = 0.3;
	TextStrokeTransparency = 0.6;
})}
local tbl_upvr = {TweenService:Create(var8_upvr, TweenInfo.new(0.5, Enum.EasingStyle.Linear), {
	TextTransparency = 1;
	TextStrokeTransparency = 1;
})}
local any_WaitForReplica_result1_upvr = module_2_upvr.Replica.WaitForReplica(LocalPlayer)
local var15_upvw = false
local var16_upvw = false
local TriggerRejoin_upvr = require(ReplicatedStorage:WaitForChild("Packets"):WaitForChild("Global")).TriggerRejoin
game:GetService("RunService").RenderStepped:Connect(function()
	if any_WaitForReplica_result1_upvr.Data.AutoRollEnabled then
		if not var15_upvw then
			var15_upvw = true
			for _, v in ipairs(tbl_upvr) do
				v:Pause()
			end
			local ipairs_result1_2, ipairs_result2_2, ipairs_result3_3 = ipairs(tbl_upvr_2)
			for i_2, v_2 in ipairs_result1_2, ipairs_result2_2, ipairs_result3_3 do
				v_2:Play()
			end
		end
		local ipairs_result1_2 = nil
		local var40 = ipairs_result1_2
		if var9_upvw then
			local v_2 = var9_upvw :: number
			local i_2 = v_2 :: any - tick()
			i_2 = 0
			local maximum = math.max(math.floor(i_2), i_2)
			if maximum <= 0 and not var16_upvw then
				var16_upvw = true
				i_2 = TriggerRejoin_upvr
				i_2.send()
			end
			v_2 = module_2_upvr.ToTimeString2(maximum)
			var40 = `{v_2} left until rejoin.`
		else
			var40 = "Player will automatically rejoin."
		end
		var8_upvr.Text = var40
	elseif var15_upvw then
		var15_upvw = false
		for _, v_3 in ipairs(tbl_upvr_2) do
			v_3:Pause()
		end
		for _, v_4 in ipairs(tbl_upvr) do
			v_4:Play()
		end
	end
end)
game:GetService("UserInputService").InputBegan:Connect(function(arg1)
	if arg1.UserInputType == Enum.UserInputType.MouseMovement then
	else
		var9_upvw = nil
	end
end)
LocalPlayer.Idled:Connect(function(arg1)
	var9_upvw = (tick()) + (1200 - arg1 + -120) :: any
end)
module.Mount(module.MainInterface, var8_upvr)]]