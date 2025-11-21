--!strict
if script:IsDescendantOf(workspace) then
	local HumanoidRootPart = script.Parent

	local AuraModel = HumanoidRootPart:WaitForChild("Aura")

	if AuraModel ~= nil then
		local Animations = AuraModel:WaitForChild("Animations")
		local AuraModel2 = AuraModel:WaitForChild("AuraModel")
		local BodyAuraParticles = AuraModel:WaitForChild("BodyAuraParticles")
		local Scripts = AuraModel:WaitForChild("Scripts")

		local BottomPart = AuraModel2:WaitForChild("BottomPart")
		local GlobeStuff = AuraModel2:WaitForChild("GlobeStuff")

		local BottomModelsNFloor = BottomPart:WaitForChild("BottomModelsNFloor")
		local Globe = GlobeStuff:WaitForChild("Globe")

		local BottomPartCircles = BottomModelsNFloor:WaitForChild("Circles")

		local GlobeHull = Globe:WaitForChild("Hull")

		local BottomPartMotors = BottomPart:WaitForChild("Motors")
		local GlobeStuffMotors = GlobeStuff:WaitForChild("Motors")

		local BottomToHumanoidRootPartMotor = BottomPartMotors:WaitForChild("BottomToHumanoidRootPartMotor")
		local GlobeToHumanoidRootPartMotor = GlobeStuffMotors:WaitForChild("GlobeToHumanoidRootPartMotor")

		BottomToHumanoidRootPartMotor.Part0 = HumanoidRootPart
		BottomToHumanoidRootPartMotor.Part1 = BottomPartCircles
		GlobeToHumanoidRootPartMotor.Part0 = HumanoidRootPart
		GlobeToHumanoidRootPartMotor.Part1 = GlobeHull
	end

	task.wait()

	script:Destroy()
end