local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = game:GetService("Players").LocalPlayer
local BeforeLoad_upvr = script:WaitForChild("BeforeLoad")
local UI = ReplicatedStorage:WaitForChild("Modules"):WaitForChild("UI")
BeforeLoad_upvr.Parent = LocalPlayer:WaitForChild("PlayerGui")
LocalPlayer:GetAttributeChangedSignal("PlayBegin"):Once(function() -- Line 27
	--[[ Upvalues[1]:
		[1]: BeforeLoad_upvr (readonly)
	]]
	BeforeLoad_upvr:Destroy()
end)
if game:GetService("RunService"):IsStudio() then
	repeat
		task.wait()
	until game:IsLoaded()
	task.wait(5)
	require(ReplicatedStorage:WaitForChild("Packets"):WaitForChild("Global")).PlayBegin.send()
	require(UI:WaitForChild("Quad")).MainInterface.Enabled = true
else
	game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
	BeforeLoad_upvr:Destroy()
	require(UI:WaitForChild("LoadingUI")):Start()
end