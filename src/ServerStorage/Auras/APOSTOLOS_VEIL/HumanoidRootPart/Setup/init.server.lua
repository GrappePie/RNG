local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Assets = ReplicatedStorage:WaitForChild("Assets")

local AuraScripts = Assets:WaitForChild("AuraScripts")

local _APOSTOLOS_VEIL = require(script:WaitForChild("APOSTOLOS_VEIL"))

if script:IsDescendantOf(workspace) then
	if not AuraScripts:FindFirstChild("APOSTOLOS_VEIL") then
		_APOSTOLOS_VEIL.Parent = AuraScripts
	else
		_APOSTOLOS_VEIL:Destroy()
		_APOSTOLOS_VEIL = require(AuraScripts:WaitForChild("APOSTOLOS_VEIL"))
	end

	local HumanoidRootPart = script.Parent

	local BroomCenter1 = HumanoidRootPart:WaitForChild("Broom1"):WaitForChild("BroomCenter1")
	local BroomCenter2 = HumanoidRootPart:WaitForChild("Broom2"):WaitForChild("BroomCenter2")
	local CandleCenter1 = HumanoidRootPart:WaitForChild("CandleCenter1")
	local CandleCenter2 = HumanoidRootPart:WaitForChild("CandleCenter2")
	local CollumnGreen = HumanoidRootPart:WaitForChild("CollumnGreen")
	local CollumnOrange = HumanoidRootPart:WaitForChild("CollumnOrange")
	local GraveCenter1 = HumanoidRootPart:WaitForChild("GraveCenter1")
	local GraveCenter2 = HumanoidRootPart:WaitForChild("GraveCenter2")
	local LaternCenter1 = HumanoidRootPart:WaitForChild("LaternCenter1")
	local LaternCenter2 = HumanoidRootPart:WaitForChild("CandleCenter2")
	local PortalCenter1 = HumanoidRootPart:WaitForChild("PortalCenter1")
	local PortalCenter2 = HumanoidRootPart:WaitForChild("PortalCenter2")
	local PortalCenter3 = HumanoidRootPart:WaitForChild("PortalCenter3")
	local PumpkinCenter1 = HumanoidRootPart:WaitForChild("PumpkinCenter1")
	local PumpkinCenter2 = HumanoidRootPart:WaitForChild("PumpkinCenter2")
	local SwordMainGreen = HumanoidRootPart:WaitForChild("SwordMainGreen")
	local SwordMainGreen2 = HumanoidRootPart:WaitForChild("SwordMainGreen2")
	local SwordMainOrange = HumanoidRootPart:WaitForChild("SwordMainOrange")
	local SwordMainOrange2 = HumanoidRootPart:WaitForChild("SwordMainOrange2")

	local BroomCenter1Weld = HumanoidRootPart:WaitForChild("BroomCenter1Weld")
	local BroomCenter2Weld = HumanoidRootPart:WaitForChild("BroomCenter2Weld")
	local CandleCenter1Weld = HumanoidRootPart:WaitForChild("CandleCenter1Weld")
	local CandleCenter2Weld = HumanoidRootPart:WaitForChild("CandleCenter2Weld")
	local CollumnGreenWeld = HumanoidRootPart:WaitForChild("CollumnGreenWeld")
	local CollumnOrangeWeld = HumanoidRootPart:WaitForChild("CollumnOrangeWeld")
	local GraveCenter1Weld = HumanoidRootPart:WaitForChild("GraveCenter1Weld")
	local GraveCenter2Weld = HumanoidRootPart:WaitForChild("GraveCenter2Weld")
	local LaternCenter1Weld = HumanoidRootPart:WaitForChild("LaternCenter1Weld")
	local LaternCenter2Weld = HumanoidRootPart:WaitForChild("CandleCenter2Weld")
	local PortalCenter1Weld = HumanoidRootPart:WaitForChild("PortalCenter1Weld")
	local PortalCenter2Weld = HumanoidRootPart:WaitForChild("PortalCenter2Weld")
	local PortalCenter3Weld = HumanoidRootPart:WaitForChild("PortalCenter3Weld")
	local PumpkinCenter1Weld = HumanoidRootPart:WaitForChild("PumpkinCenter1Weld")
	local SwordMainGreenWeld = HumanoidRootPart:WaitForChild("SwordMainGreenWeld")
	local SwordMainGreen2Weld = HumanoidRootPart:WaitForChild("SwordMainGreen2Weld")
	local SwordMainOrangeWeld = HumanoidRootPart:WaitForChild("SwordMainOrangeWeld")
	local SwordMainOrange2Weld = HumanoidRootPart:WaitForChild("SwordMainOrange2Weld")
	local PumkinCenter2 = HumanoidRootPart:WaitForChild("PumkinCenter2")

	local BGM = HumanoidRootPart:WaitForChild("BGM")

	BGM.Volume = BGM:GetAttribute("Volume")

	local Humanoid = HumanoidRootPart.Parent:WaitForChild("Humanoid") :: Humanoid

	local Animator = Humanoid:WaitForChild("Animator") :: Animator

	BroomCenter1Weld.Part0 = HumanoidRootPart
	BroomCenter2Weld.Part0 = HumanoidRootPart
	CandleCenter1Weld.Part0 = HumanoidRootPart
	CandleCenter2Weld.Part0 = HumanoidRootPart
	CollumnGreenWeld.Part0 = HumanoidRootPart
	CollumnOrangeWeld.Part0 = HumanoidRootPart
	GraveCenter1Weld.Part0 = HumanoidRootPart
	GraveCenter2Weld.Part0 = HumanoidRootPart
	LaternCenter1Weld.Part0 = HumanoidRootPart
	LaternCenter2Weld.Part0 = HumanoidRootPart
	PortalCenter1Weld.Part0 = HumanoidRootPart
	PortalCenter2Weld.Part0 = HumanoidRootPart
	PortalCenter3Weld.Part0 = HumanoidRootPart
	PumpkinCenter1Weld.Part0 = HumanoidRootPart
	SwordMainGreenWeld.Part0 = HumanoidRootPart
	SwordMainGreen2Weld.Part0 = HumanoidRootPart
	SwordMainOrangeWeld.Part0 = HumanoidRootPart
	SwordMainOrange2Weld.Part0 = HumanoidRootPart
	PumkinCenter2.Part0 = HumanoidRootPart
	BroomCenter1Weld.Part1 = BroomCenter1
	BroomCenter2Weld.Part1 = BroomCenter2
	CandleCenter1Weld.Part1 = CandleCenter1
	CandleCenter2Weld.Part1 = CandleCenter2
	CollumnGreenWeld.Part1 = CollumnGreen
	CollumnOrangeWeld.Part1 = CollumnOrange
	GraveCenter1Weld.Part1 = GraveCenter1
	GraveCenter2Weld.Part1 = GraveCenter2
	LaternCenter1Weld.Part1 = LaternCenter1
	LaternCenter2Weld.Part1 = LaternCenter2
	PortalCenter1Weld.Part1 = PortalCenter1
	PortalCenter2Weld.Part1 = PortalCenter2
	PortalCenter3Weld.Part1 = PortalCenter3
	PumpkinCenter1Weld.Part1 = PumpkinCenter1
	SwordMainGreenWeld.Part1 = SwordMainGreen
	SwordMainGreen2Weld.Part1 = SwordMainGreen2
	SwordMainOrangeWeld.Part1 = SwordMainOrange
	SwordMainOrange2Weld.Part1 = SwordMainOrange2
	PumkinCenter2.Part1 = PumpkinCenter2

	BroomCenter1.Anchored = false
	BroomCenter2.Anchored = false
	CandleCenter1.Anchored = false
	CandleCenter2.Anchored = false
	CollumnGreen.Anchored = false
	CollumnOrange.Anchored = false
	GraveCenter1.Anchored = false
	GraveCenter2.Anchored = false
	LaternCenter1.Anchored = false
	LaternCenter2.Anchored = false
	PortalCenter1.Anchored = false
	PortalCenter2.Anchored = false
	PortalCenter3.Anchored = false
	PumpkinCenter1.Anchored = false
	SwordMainGreen.Anchored = false
	SwordMainGreen2.Anchored = false
	SwordMainOrange.Anchored = false
	SwordMainOrange2.Anchored = false

	BroomCenter1Weld.Name = "BroomCenter1"
	BroomCenter2Weld.Name = "BroomCenter2"
	CandleCenter1Weld.Name = "CandleCenter1"
	CandleCenter2Weld.Name = "CandleCenter2"
	CollumnGreenWeld.Name = "CollumnGreen"
	CollumnOrangeWeld.Name = "CollumnOrange"
	GraveCenter1Weld.Name = "GraveCenter1"
	GraveCenter2Weld.Name = "GraveCenter2"
	LaternCenter1Weld.Name = "LaternCenter1"
	LaternCenter2Weld.Name = "LaternCenter2"
	PortalCenter1Weld.Name = "PortalCenter1"
	PortalCenter2Weld.Name = "PortalCenter2"
	PortalCenter3Weld.Name = "PortalCenter3"
	PumpkinCenter1Weld.Name = "PumpkinCenter1"
	SwordMainGreenWeld.Name = "SwordMainGreen"
	SwordMainGreen2Weld.Name = "SwordMainGreen2"
	SwordMainOrangeWeld.Name = "SwordMainOrange"
	SwordMainOrange2Weld.Name = "SwordMainOrange2"

	BGM:SetAttribute("Player", HumanoidRootPart.Parent.Name)

	BGM:Play()

	pcall(function(): ()
		coroutine.wrap(function(): ()
			task.wait(1.75)
			_APOSTOLOS_VEIL.setup(HumanoidRootPart.Parent)
			print("setup")
			task.wait(1)
			script:Destroy()
		end)()
	end)

	task.wait()
end