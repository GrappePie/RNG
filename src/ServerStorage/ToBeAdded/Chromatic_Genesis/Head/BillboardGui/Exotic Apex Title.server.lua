-- Put this inside of Billboard Gui!

local size = script.Parent.Size

local sine: number = 0
local sineIncrement: number = 0.03

local scaleRotation: number = 6
local scaleSize: number = .954

local speedRotation: number = .85
local speedSize: number = .65   

local rotationTable: GuiObject = script.Parent:GetChildren()
for index, value: Instance in pairs(rotationTable) do
    if not value:IsA("GuiObject") then
        table.remove(rotationTable, index)
    end
end

game:GetService("RunService").Stepped:Connect(function(currentTime, deltaTime)
    script.Parent.Size = UDim2.new(size.Width.Scale + math.sin(sine * speedSize) * scaleSize, 0, size.Height.Scale + math.sin(sine * speedSize) * scaleSize, 0)
    for index, value in pairs(rotationTable) do
        value.Rotation = math.sin(sine * speedRotation) * scaleRotation
    end
    
    sine += sineIncrement
end)
	