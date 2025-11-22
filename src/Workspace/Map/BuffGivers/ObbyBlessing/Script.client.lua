--!strict
local Bits = script.Parent:WaitForChild("Bits")
local Sound = script.Parent:WaitForChild("Sound")

Bits:GetPropertyChangedSignal("Enabled"):Connect(function()
	if not Bits.Enabled then
		Sound:Play()
	end
end)

--Instance.new("Part"):Destroy()