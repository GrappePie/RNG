-- Zoek de karakter en de benodigde onderdelen
local humanoidRootPart = script.Parent.Parent
local rotatingPart = script.Parent

-- Creëer een weld als deze nog niet bestaat
local weld = Instance.new("Weld")
weld.Part0 = humanoidRootPart
weld.Part1 = rotatingPart
weld.C0 = humanoidRootPart.CFrame:inverse() * rotatingPart.CFrame
weld.Parent = rotatingPart

-- Draaiende functionaliteit
local rotationSpeed = 1 -- Aanpasbare rotatiesnelheid

game:GetService("RunService").RenderStepped:Connect(function(deltaTime)
	-- Bereken de rotatiehoek
	local angle = rotationSpeed * deltaTime

	-- Update de C1 van de weld om de part te draaien zonder de HumanoidRootPart te beïnvloeden
	weld.C1 = weld.C1 * CFrame.Angles(0, -angle, 0)
end)
