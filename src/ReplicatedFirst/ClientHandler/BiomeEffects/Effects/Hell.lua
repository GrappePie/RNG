--!strict
local Workspace = game:GetService("Workspace")
local DirtMountain_upvr = Workspace:WaitForChild("Map"):WaitForChild("newMap"):WaitForChild("DirtMountain")
local Water_upvr = DirtMountain_upvr:WaitForChild("Water")
local Lava_upvr = script:WaitForChild("Lava")
local Waters_upvr = Workspace:WaitForChild("Waters")
return function()
	Water_upvr.Parent = script
	Lava_upvr.Parent = DirtMountain_upvr
	for _, v in Waters_upvr:GetChildren() do
		v.Color = Color3.fromRGB(175, 79, 23)
		v.Material = Enum.Material.Neon
	end
	return function()
		Lava_upvr.Parent = script
		Water_upvr.Parent = DirtMountain_upvr
		for _, v_2 in Waters_upvr:GetChildren() do
			v_2.Color = Color3.fromRGB(91, 172, 207)
			v_2.Material = Enum.Material.Plastic
		end
	end
end