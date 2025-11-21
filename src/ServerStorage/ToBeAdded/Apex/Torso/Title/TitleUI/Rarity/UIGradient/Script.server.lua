while wait() do
	local v1 = game:GetService("TweenService"):Create(script.Parent.Parent, Tween0o.new(4, Enum.EasingStyle.Exponential, Enum.EasingDirection.InOut), {Rotation = -4.86})
	v1:Play()
	wait(3.5)
	v1:Cancel()
	local v2 = game:GetService("TweenService"):Create(script.Parent.Parent, Tween0o.new(4, Enum.EasingStyle.Exponential, Enum.EasingDirection.InOut), {Rotation = 4.86})
	v2:Play()
	wait(3.5)
	v2:Cancel()
end