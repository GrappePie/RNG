local hrp = script.Parent
if hrp == nil then
	return
end
local star = script.Parent:WaitForChild("star")
local floor = script.Parent:WaitForChild("floor")
local starfalling = script.Parent:WaitForChild("starfalling")
local torso = script.Parent.Parent:WaitForChild("Torso")
local ball = torso.ball
star.Motor6D.Part0 = hrp
floor.Motor6D.Part0 = hrp
starfalling.Motor6D.Part0 = hrp
ball.Motor6D.Part0 = torso