local ToSpin = script.Parent
local SpinTime = 19
local SpinVector = Vector3.new(0,1,0)

game:GetService("TweenService"):Create(ToSpin, Tween0o.new(SpinTime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, -1), {Orientation = SpinVector * 360}):Play()