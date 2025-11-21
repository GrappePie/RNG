--!strict
local primaryPart = script.Parent
local character = primaryPart.Parent

local function weldParts(weld: WeldConstraint, part0: BasePart, part1: BasePart)
	weld.Part0 = part0
	weld.Part1 = part1
end

local function weldAttachments(weld: any, attachment0: Attachment, attachment1: Attachment)
	weld.Attachment0 = attachment0
	weld.Attachment1 = attachment1
end

primaryPart:WaitForChild("Music"):Play()

weldParts(
	primaryPart:WaitForChild("NewAuraWeld"),
	primaryPart,
	primaryPart:WaitForChild("NewAura")
)

weldParts(
	primaryPart:WaitForChild("ThroneWeld"),
	primaryPart,
	primaryPart:WaitForChild("Throne"):WaitForChild("Base")
)

weldParts(
	character:WaitForChild("Right Arm"):WaitForChild("SpearWeld"),
	character:WaitForChild("Right Arm"),
	character:WaitForChild("Right Arm"):WaitForChild("Spear")
)

weldParts(
	character:WaitForChild("Head"):WaitForChild("CrownWeld"),
	character:WaitForChild("Head"),
	character:WaitForChild("Head"):WaitForChild("Crown")
)

local orbAttachment = primaryPart:WaitForChild("Orb"):WaitForChild("Orb")
local flareBottomAttachment = primaryPart:WaitForChild("FlareBottom")

weldAttachments(primaryPart:WaitForChild("Shadow1"), orbAttachment, flareBottomAttachment)
weldAttachments(primaryPart:WaitForChild("Shadow2"), orbAttachment, flareBottomAttachment)
weldAttachments(primaryPart:WaitForChild("Shadow3"), orbAttachment, flareBottomAttachment)

local timeElapsed = 0
local orb = primaryPart:WaitForChild("Orb")
local orbCrown = primaryPart:WaitForChild("OrbCrown")

local renderSteppedConnection = game:GetService("RunService").RenderStepped:Connect(function(deltaTime: number)
	timeElapsed += deltaTime * 60

	local orbOffset = CFrame.new(0, 26 + 2 * math.sin(timeElapsed / 50), 14)
		* CFrame.Angles(
			math.rad(math.sin(timeElapsed / 50) * 5),
			math.rad(-0.7 * timeElapsed),
			math.rad(math.sin(timeElapsed / 45) * 5)
		)
	orb.CFrame = orb.CFrame:Lerp(primaryPart.CFrame * orbOffset, 0.2)

	local crownOffset = CFrame.new(0, 26 + 2 * math.sin(timeElapsed / 50), 14)
		* CFrame.Angles(
			math.rad(math.sin(timeElapsed / 40) * 2),
			math.rad(timeElapsed),
			math.rad(math.sin(timeElapsed / 55) * 2)
		)
	orbCrown.CFrame = orbCrown.CFrame:Lerp(primaryPart.CFrame * crownOffset, 0.2)
end)

local ancestryChangedConnection
ancestryChangedConnection = script.AncestryChanged:Once(function()
	renderSteppedConnection:Disconnect()
	ancestryChangedConnection:Disconnect()
end)