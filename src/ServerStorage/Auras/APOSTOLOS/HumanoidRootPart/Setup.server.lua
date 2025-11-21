local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Assets = ReplicatedStorage.Assets

local AuraScripts = Assets.AuraScripts

local _APOSTOLOS = require(AuraScripts.APOSTOLOS)

local RBXScriptConnection1: RBXScriptConnection
if script:IsDescendantOf(workspace) then
	local HumanoidRootPart = script.Parent

	local Humanoid = HumanoidRootPart.Parent:FindFirstChild("Humanoid") or nil

	local BGM = HumanoidRootPart:WaitForChild("BGM")

	local Bcross1 = HumanoidRootPart:WaitForChild("Bcross1"):WaitForChild("Bcross1")
	local Bcross2 = HumanoidRootPart:WaitForChild("Bcross2"):WaitForChild("Bcross2")
	local Rcross1 = HumanoidRootPart:WaitForChild("Rcross1"):WaitForChild("Rcross1")
	local Rcross2 = HumanoidRootPart:WaitForChild("Rcross2"):WaitForChild("Rcross2")
	local Floor = HumanoidRootPart:WaitForChild("floor")
	local DarkSword = HumanoidRootPart:WaitForChild("darksword"):WaitForChild("darksword")
	local LightSword = HumanoidRootPart:WaitForChild("lightsword"):WaitForChild("lightsword")
	local SpinCenter = HumanoidRootPart:WaitForChild("spinCenter")

	local Bcross1Weld = HumanoidRootPart:WaitForChild("Bcross1Weld")
	local Bcross2Weld = HumanoidRootPart:WaitForChild("Bcross2Weld")
	local Rcross1Weld = HumanoidRootPart:WaitForChild("Rcross1Weld")
	local Rcross2Weld = HumanoidRootPart:WaitForChild("Rcross2Weld")
	local FloorWeld = HumanoidRootPart:WaitForChild("floorweld")
	local DarkSwordWeld = HumanoidRootPart:WaitForChild("darkswordweld")
	local LightSwordWeld = HumanoidRootPart:WaitForChild("lightswordweld")
	local SpinCenterWeld = HumanoidRootPart:WaitForChild("spincneter")

	Bcross1Weld.Part0 = HumanoidRootPart
	Bcross1Weld.Part1 = Bcross1
	Bcross2Weld.Part0 = HumanoidRootPart
	Bcross2Weld.Part1 = Bcross2
	Rcross1Weld.Part0 = HumanoidRootPart
	Rcross1Weld.Part1 = Rcross1
	Rcross2Weld.Part0 = HumanoidRootPart
	Rcross2Weld.Part1 = Rcross2

	FloorWeld.Part0 = HumanoidRootPart
	FloorWeld.Part1 = Floor

	DarkSwordWeld.Part0 = HumanoidRootPart
	DarkSwordWeld.Part1 = DarkSword
	LightSwordWeld.Part0 = HumanoidRootPart
	LightSwordWeld.Part1 = LightSword

	SpinCenterWeld.Part0 = HumanoidRootPart
	SpinCenterWeld.Part1 = SpinCenter

	Bcross1Weld.Name = "Bcross1"
	Bcross2Weld.Name = "Bcross2"
	Rcross1Weld.Name = "Rcross1"
	Rcross2Weld.Name = "Rcross2"

	FloorWeld.Name = "floor"

	DarkSwordWeld.Name = "darksword"
	LightSwordWeld.Name = "lightsword"

	SpinCenterWeld.Name = "spinCenter"

	if Humanoid ~= nil and Humanoid:IsA("Humanoid") then
		task.wait(1)

		_APOSTOLOS.setup(Humanoid)
		--[[local _createAnimationInstance = function(): (Animation)
			local Animation = Instance.new("Animation")
			Animation.AnimationId = "rbxassetid://101834580597154"
			Animation.Name = "APOSTOLOS VFX"
			Animation.Parent = HumanoidRootPart
			return Animation
		end

		local VFXAnimations = _createAnimationInstance()
		if VFXAnimations then
			local Animator = Humanoid:FindFirstChild("Animator") :: Animator or nil
			if Animator ~= nil then
				local AnimationTrack = Animator:LoadAnimation(VFXAnimations)
				task.wait()
				AnimationTrack.Looped = true
				AnimationTrack:Play()
				RBXScriptConnection1 = BGM.Destroying:Connect(function()
					AnimationTrack:Stop()
					AnimationTrack:Destroy()
					VFXAnimations:Destroy()
					script:Destroy()
					RBXScriptConnection1:Disconnect()
				end)
			else
				local AnimationTrack = Humanoid:LoadAnimation(VFXAnimations)
				task.wait()
				AnimationTrack.Looped = true
				AnimationTrack:Play()
				RBXScriptConnection1 = BGM.Destroying:Connect(function()
					AnimationTrack:Stop()
					AnimationTrack:Destroy()
					VFXAnimations:Destroy()
					script:Destroy()
					RBXScriptConnection1:Disconnect()
				end)
			end
		end]]
	end

	BGM:SetAttribute("Player", HumanoidRootPart.Parent.Name)

	BGM.Volume = BGM:GetAttribute("Volume") or 0.6
	BGM:Play()

	if not HumanoidRootPart:HasTag("AuraInstance") then
		HumanoidRootPart:AddTag("AuraInstance")
	end

	for _, descendant in HumanoidRootPart:GetDescendants() do
		if not descendant:HasTag("AuraInstance") then
			descendant:AddTag("AuraInstance")
		end
	end
end