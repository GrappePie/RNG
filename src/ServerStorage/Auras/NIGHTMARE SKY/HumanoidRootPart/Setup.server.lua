--!strict
local HumanoidRootPart = script.Parent

local Music = HumanoidRootPart:WaitForChild("Music")

Music.Volume = Music:GetAttribute("Volume") or 1.4

if script:IsDescendantOf(workspace) then
	local _2 =  HumanoidRootPart:WaitForChild("2")
	local Aura = HumanoidRootPart:WaitForChild("Aura")
	local Top = HumanoidRootPart:WaitForChild("Top")
	local shotingtar = HumanoidRootPart:WaitForChild("shoting tar")
	local Debris = Aura:WaitForChild("Debris")
	local Top2 = Top:WaitForChild("Top")

	local Weld2 = _2:WaitForChild("Weld")
	local AuraWeld = Aura:WaitForChild("Weld")
	local TopWeld = Top:WaitForChild("Weld")
	local shotingtarWeld = shotingtar:WaitForChild("Weld")
	local DebrisWeld = Debris:WaitForChild("Weld")
	local Top2Weld = Top2:WaitForChild("Weld")

	Weld2.Part0 = _2
	Weld2.Part1 = HumanoidRootPart
	AuraWeld.Part0 = Aura
	AuraWeld.Part1 = HumanoidRootPart
	TopWeld.Part0 = Top
	TopWeld.Part1 = HumanoidRootPart
	shotingtarWeld.Part0 = shotingtar
	shotingtarWeld.Part1 = HumanoidRootPart
	DebrisWeld.Part0 = Debris
	DebrisWeld.Part1 = HumanoidRootPart
	Top2Weld.Part0 = Top2
	Top2Weld.Part1 = HumanoidRootPart

	Music:SetAttribute("Player", HumanoidRootPart.Parent.Name)

	Music:Play()
end