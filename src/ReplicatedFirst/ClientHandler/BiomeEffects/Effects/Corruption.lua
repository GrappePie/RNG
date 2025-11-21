--!strict
local Water_upvr = game:GetService("Workspace"):WaitForChild("Water")
return function()
	for _, v in Water_upvr:GetChildren() do
		v.Color = Color3.fromRGB(46, 26, 88)
	end
	return function()
		for _, v_2 in Water_upvr:GetChildren() do
			v_2.Color = Color3.fromRGB(70, 150, 204)
		end
	end
end