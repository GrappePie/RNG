script.Parent.RNG.Text = "-9.99 RNG"

local _spawnFacesRandomly = function(): ()
	local Face = script.Parent.TextLabel
	local Colors = {
		Color3.new(0.333333, 1, 1),
		Color3.new(1, 1, 0)
	}
	Face.TextTransparency = 1
	while task.wait(Random.new():NextNumber(0, 0.05)) do
		coroutine.wrap(function()
			local Face = Face:Clone()
			local Fade = game:GetService("TweenService"):Create(Face, Tween0o.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0), {Rotation = Random.new():NextNumber(90, 360), TextTransparency = 1})
			Face.TextTransparency = 0
			Face.TextColor3 = Colors[Random.new():NextInteger(1, #Colors)]
			Face.Position = UDim2.new(Random.new():NextNumber(0, 1), 0, Random.new():NextNumber(0, 1), 0)
			Face.Parent = script.Parent
			Fade:Play()
			Fade.Completed:Wait()
			Face:Destroy()
			return
		end)()
	end
end

_spawnFacesRandomly()