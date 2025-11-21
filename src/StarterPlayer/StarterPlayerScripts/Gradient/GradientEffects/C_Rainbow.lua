--!strict
local RunService = game:GetService("RunService")

return function(instance)
	local integer = 0

	local RBXScriptConnection1 = RunService.RenderStepped:Connect(function(deltaTime: number)
		integer += (deltaTime * 50)
		integer %= 50

		local color3 = Color3.fromHSV(integer / 50, 1, 1)
		instance.Color = ColorSequence.new(
			Color3.fromRGB(
				math.clamp(
					color3.R * (225 + 125),
					0,
					255
				),
				math.clamp(
					color3.G * (225 + 125),
					0,
					255
				),
				math.clamp(
					color3.B * (225 + 125),
					0,
					255
				)
			),
			color3
		)
	end)

	local RBXScriptConnection2
	RBXScriptConnection2 = instance.Destroying:Once(function()
		RBXScriptConnection1:Disconnect()
		RBXScriptConnection2:Disconnect()
	end)
end