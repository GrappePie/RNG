local _Innovator = require(script:WaitForChild("Innovator"))

if script:IsDescendantOf(workspace) then
	local HumanoidRootPart = script.Parent
	local Humanoid = HumanoidRootPart.Parent:WaitForChild("Humanoid") :: Humanoid

	local Animator = Humanoid:WaitForChild("Animator") :: Animator

	local Sound = HumanoidRootPart:WaitForChild("Sound")

	local Floor = HumanoidRootPart:WaitForChild("Floor")
	local Ring = HumanoidRootPart:WaitForChild("Ring")
	local TopCube = HumanoidRootPart:WaitForChild("TopCube")

	local FloorWeld = HumanoidRootPart:WaitForChild("FloorWeld")
	local RingWeld = HumanoidRootPart:WaitForChild("RingWeld")
	local TopCubeWeld = HumanoidRootPart:WaitForChild("TopCubeWeld")

	FloorWeld.Part0 = HumanoidRootPart
	FloorWeld.Part1 = Floor
	RingWeld.Part0 = HumanoidRootPart
	RingWeld.Part1 = Ring
	TopCubeWeld.Part0 = HumanoidRootPart
	TopCubeWeld.Part1 = TopCube

	Sound:SetAttribute("Player", HumanoidRootPart.Parent.Name)

	Sound.Volume = Sound:GetAttribute("Volume") or 0.5
	Sound:Play()

	FloorWeld.Name = "Floor"
	RingWeld.Name = "Ring"
	TopCubeWeld.Name = "TopCube"

	pcall(function(): ()
		coroutine.wrap(function(): ()
				task.wait(0.75)
				_Innovator.setup(Animator)
				task.wait(1)
				script:Destroy()
		end)()
	end)

	if not HumanoidRootPart:HasTag("AuraInstance") then
		HumanoidRootPart:AddTag("AuraInstance")
	end

	for _, descendant in HumanoidRootPart:GetDescendants() do
		if not descendant:HasTag("AuraInstance") then
			descendant:AddTag("AuraInstance")
		end
	end

	task.wait()
end