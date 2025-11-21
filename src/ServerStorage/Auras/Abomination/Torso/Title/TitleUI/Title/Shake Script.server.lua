local random: Random = Random.new()

local object: GuiObject = script.Parent -- Object to shake
local position: UDim2 = object.Position -- Original object position

local shakeScale: number = 0.07    -- Shake Strength
local shakeTime: number = 0.005

game:GetService("RunService").Stepped:Connect(function(currentTime, deltaTime)
    game:GetService("TweenService"):Create(object, Tween0o.new(0.1), {
        Position = UDim2.new(position.X.Scale + random:NextNumber(shakeScale * -1, shakeScale), 0, position.Y.Scale + random:NextNumber(shakeScale * -1, shakeScale), 0)
    }):Play()
end)
	