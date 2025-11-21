local RP = script.Parent
local RightArm = RP.Parent["Right Arm"]
local Abyssal, Center, Basepart, Anchor = RP:WaitForChild("Abyssal"), RP:WaitForChild("Center"), RP:WaitForChild("BasePart"), RightArm:WaitForChild("Anchor")

local CenterMotor, BasepartMotor, AbyssalMotor, AnchorMotor = RP:WaitForChild("CenterMotor"), RP:WaitForChild("BasePartMotor"), RP:WaitForChild("AbyssalMotor"), Anchor:WaitForChild("ArmWeld")

local Table = {
	CenterMotor = Center;
	BasepartMotor = Basepart;
	AbyssalMotor = Abyssal;
	AnchorMotor = Anchor
}

local BodyParts = {
	["Center"] = RP;
	["BasePart"] = RP;
	["Abyssal"] = RP;
	["Anchor"] = RightArm
}
local motors = {
	["Center"] = CenterMotor;
	["Abyssal"] = AbyssalMotor;
	["Anchor"] = AnchorMotor;
	["BasePart"] = BasepartMotor
}

for i, v in pairs(Table) do
	local Motor = motors[v.Name]
	Motor.Part1 = v
	v.Anchored = false
	Motor.Part0 = BodyParts[v.Name]
end