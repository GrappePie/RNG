--!strict
local Workspace = game:GetService("Workspace")
local DirtMountain_upvr = Workspace:WaitForChild("Map"):WaitForChild("DirtMountain")
local Water_upvr = DirtMountain_upvr:WaitForChild("Water")
local Ice_upvr = script:WaitForChild("Ice")
local Waters_upvr = Workspace:WaitForChild("Waters")
return function()
	Water_upvr.Parent = script
	Ice_upvr.Parent = DirtMountain_upvr
	for _, v in Waters_upvr:GetChildren() do
		v.Color = Color3.fromRGB(157, 194, 243)
		v.Material = Enum.Material.Ice
	end
	return function()
		Ice_upvr.Parent = script
		Water_upvr.Parent = DirtMountain_upvr
		for _, v_2 in Waters_upvr:GetChildren() do
			v_2.Color = Color3.fromRGB(91, 172, 207)
			v_2.Material = Enum.Material.Plastic
		end
	end
end