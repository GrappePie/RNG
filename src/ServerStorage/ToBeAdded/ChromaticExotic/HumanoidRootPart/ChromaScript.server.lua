local hrp = script.Parent
local body = hrp:WaitForChild("Body")
local hed = hrp.Parent:WaitForChild("Head")
local floor = hrp:WaitForChild("Floor")
local orbA = hrp:WaitForChild("Orb1")
local orbB = hrp:WaitForChild("Orb2")
local orbC = hrp:WaitForChild("Orb3")
local top = hrp:WaitForChild("Top")
 -- Adjust this factor to make the colors darker or lighter

local function getColorFromTime()
	local i = tick() % 6 -- Use a longer period for smoother transitions
	local t = (i % 1) -- Normalize the time to a value between 0 and 1

	-- Define a lighter hue range to ensure colors stay lighter
	local h = (t * 0.6) -- Hue value ranging from 0 to 0.6 (avoiding darker hues)
	local s = 0.69 -- Saturation (fully saturated)
	local v = 0.49 -- Brightness (fully bright)

	return Color3.fromHSV(h, s, v)

end

while true do
	local color = getColorFromTime()
	local colorSequence = ColorSequence.new(color)

	body.Attachment.WindCircle.Color = colorSequence
	body.Dots.Color = colorSequence
	body.Glow.Color = colorSequence
	body.Lightning.Color = colorSequence
	body.Circle.Circle.Color = colorSequence
	body.Circle.Circle2.Color = colorSequence
	body.Circle.CircleBeat.Color = colorSequence
	body.Circle.Dot.Color = colorSequence
	body.Circle.ParticleEmitter.Color = colorSequence

	-- floor
	floor.Attachment.Smoke.Color = colorSequence
	floor.Attachment.Smoke2.Color = colorSequence
	floor.Attachment.Circle.Color = colorSequence
	floor.Circle.Circle.Color = colorSequence
	floor.Circle.Circle2.Color = colorSequence
	floor.Circle.Glow.Color = colorSequence
	floor.Circle.ParticleEmitter.Color = colorSequence
	floor.Circle.ParticleEmitter2.Color = colorSequence
	floor.Line.Color = colorSequence

	-- orbs
	orbA.Attachment.Trail.Color = colorSequence
	orbA.Attachment2.Trail.Color = colorSequence
	orbA.Attachment.Trail2.Color = colorSequence
	orbA.Attachment2.Trail2.Color = colorSequence
	orbA.Aura.Color = colorSequence
	orbA.Circle.Circle.Color = colorSequence
	orbA.Circle.Circle2.Color = colorSequence
	orbA.Circle.CircleBeat.Color = colorSequence
	orbA.Circle.Dot.Color = colorSequence
	orbA.Circle.Glow.Color = colorSequence
	orbA.Circle.ParticleEmitter.Color = colorSequence
	orbA.Trail.Color = colorSequence

	orbB.Attachment.Trail.Color = colorSequence
	orbB.Attachment2.Trail.Color = colorSequence
	orbB.Attachment.Trail2.Color = colorSequence
	orbB.Attachment2.Trail2.Color = colorSequence
	orbB.Aura.Color = colorSequence
	orbB.Circle.Circle.Color = colorSequence
	orbB.Circle.Circle2.Color = colorSequence
	orbB.Circle.CircleBeat.Color = colorSequence
	orbB.Circle.Dot.Color = colorSequence
	orbB.Circle.Glow.Color = colorSequence
	orbB.Circle.ParticleEmitter.Color = colorSequence
	orbB.Trail.Color = colorSequence

	orbC.Attachment.Trail.Color = colorSequence
	orbC.Attachment2.Trail.Color = colorSequence
	orbC.Attachment.Trail2.Color = colorSequence
	orbC.Attachment2.Trail2.Color = colorSequence
	orbC.Aura.Color = colorSequence
	orbC.Circle.Circle.Color = colorSequence
	orbC.Circle.Circle2.Color = colorSequence
	orbC.Circle.CircleBeat.Color = colorSequence
	orbC.Circle.Dot.Color = colorSequence
	orbC.Circle.Glow.Color = colorSequence
	orbC.Circle.ParticleEmitter.Color = colorSequence
	orbC.Trail.Color = colorSequence

	-- top
	top.Star.Color = colorSequence

	task.wait(0.1) -- Adjust the wait time as needed for smoother transitions
end
