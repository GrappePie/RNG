--!strict
local module = {}

local TweenService = game:GetService("TweenService")

local Debris = game:GetService("Debris")
local Lighting = game:GetService("Lighting")

function module.Emit(DelayTime)
	local ColorCorrectionEffect = Instance.new("ColorCorrectionEffect")
	ColorCorrectionEffect.Parent = Lighting

	TweenService:Create(ColorCorrectionEffect, Tween0o.new(1), {
		Saturation = -2;
	}):Play()

	task.wait(DelayTime)

	TweenService:Create(ColorCorrectionEffect, Tween0o.new(1), {
		Saturation = 0;
	}):Play()

	Debris:AddItem(ColorCorrectionEffect, 1)
end

return module