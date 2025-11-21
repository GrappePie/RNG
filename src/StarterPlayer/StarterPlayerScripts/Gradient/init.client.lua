--!strict
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local LabelEffects = script:WaitForChild("LabelEffects")
local GradientEffects = script:WaitForChild("GradientEffects")

local RootGradients = ReplicatedStorage:WaitForChild("RootGradients")

local function applyGradient(uiGradient)
	if not game.IsA(uiGradient, "UIGradient") then return end

	local labelEffect, gradientConnection, attributeConnection
	local label = uiGradient.Parent
	if label and (label:IsA("TextLabel") or label:IsA("TextBox")) then 
		label = label 
	else 
		label = nil 
	end

	local function updateGradient()
		local gradientName = uiGradient:GetAttribute("Follow")
		if gradientConnection then
			gradientConnection:Disconnect()
		end
		if labelEffect then
			labelEffect()
		end

		if gradientName then
			local rootGradient = RootGradients:WaitForChild(gradientName)

			local labelEffectModule = LabelEffects:FindFirstChild(gradientName) or LabelEffects:FindFirstChild("None")

			local _labelEffectModule = require(labelEffectModule) :: any

			for property, _ in pairs(
					{
						Color = true,
						Offset = true,
						Rotation = true,
						Transparency = true
					}
				)
			do
				uiGradient[property] = rootGradient[property]
			end

			gradientConnection = rootGradient.Changed:Connect(function(property)
				if property == "Color" or property == "Offset" or property == "Rotation" or property == "Transparency" then
					uiGradient[property] = rootGradient[property]
				end
			end)

			if labelEffectModule and label then
				labelEffect = _labelEffectModule(label)
			end
		end
	end

	updateGradient()
	attributeConnection = uiGradient:GetAttributeChangedSignal("Follow"):Connect(updateGradient)

	uiGradient.Destroying:Once(function()
		if gradientConnection then
			gradientConnection:Disconnect()
		end
		attributeConnection:Disconnect()
		attributeConnection = nil
	end)
end

for _, rootGradient in ipairs(RootGradients:GetChildren()) do
	local effectModule = GradientEffects:FindFirstChild(rootGradient.Name)
	if effectModule and effectModule:IsA("ModuleScript") then
		local _effectModule = require(effectModule) :: any
		task.defer(_effectModule, rootGradient)
	end
end

for _, descendant in ipairs(game:GetDescendants()) do
	task.defer(applyGradient, descendant)
end

game.DescendantAdded:Connect(applyGradient)