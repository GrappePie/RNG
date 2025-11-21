local tweenservice = game:GetService("TweenService")


local head = script.Parent:WaitForChild("Head")
local hrp = script.Parent:WaitForChild("HumanoidRootPart")
local arm = script.Parent:WaitForChild("Right Arm")
local trs = script.Parent:WaitForChild("Torso")

local title = head.TitleUI.Title
local frame = head.TitleUI.Frame
local rarity = head.TitleUI.Rarity

local core = hrp.Core
local mc = hrp.MagicCircle
local stars = hrp.Stars

local s1 = stars.Att1
local s2 = stars.Att2
local s3 = stars.Att3
local s4 = stars.Att4

--local glassa = hrp.Hourglass1
--local glassb = hrp.Hourglass2

while true do
	local overturecolor = script.OvertureColor.Value
	rarity.TextColor3 = overturecolor
	title.TextColor3 = overturecolor
	frame.BackgroundColor3 = overturecolor
	hrp.Ambient.Color = ColorSequence.new(overturecolor)
	hrp.Bits.Color = ColorSequence.new(overturecolor)
	hrp.Glow.Color = ColorSequence.new(overturecolor)
	hrp.Lightning.Color = ColorSequence.new(overturecolor)

	core.Base.Color = ColorSequence.new(overturecolor)
	core.BaseShock.Color = ColorSequence.new(overturecolor)
	core.Outline.Color = ColorSequence.new(overturecolor)
	core.Shock.Color = ColorSequence.new(overturecolor)
	core.Shock2.Color = ColorSequence.new(overturecolor)
	core.Spin.Color = ColorSequence.new(overturecolor)
	core.Spin2.Color = ColorSequence.new(overturecolor)
	core.Bottom.Base.Color = ColorSequence.new(overturecolor)
	core.Bottom.BaseShock.Color = ColorSequence.new(overturecolor)
	core.Bottom.Ding.Color = ColorSequence.new(overturecolor)
	core.Bottom.Shock.Color = ColorSequence.new(overturecolor)
	core.Bottom.Shock2.Color = ColorSequence.new(overturecolor)
	core.Bottom.Spin.Color = ColorSequence.new(overturecolor)
	core.Bottom.Spin2.Color = ColorSequence.new(overturecolor)

	core.Mid.Shock.Color = ColorSequence.new(overturecolor)
	core.Mid.Shock2.Color = ColorSequence.new(overturecolor)
	core.Mid2.Shock.Color = ColorSequence.new(overturecolor)
	core.Mid2.Shock2.Color = ColorSequence.new(overturecolor)

	mc.Base.Color = ColorSequence.new(overturecolor)
	mc.Back.Base.Color = ColorSequence.new(overturecolor)
	mc.BaseShock.Color = ColorSequence.new(overturecolor)
	mc.Hours.Color = ColorSequence.new(overturecolor)
	mc.Minutes.Color = ColorSequence.new(overturecolor)
	mc.Outline.Color = ColorSequence.new(overturecolor)
	mc.Shock.Color = ColorSequence.new(overturecolor)
	mc.Shock2.Color = ColorSequence.new(overturecolor)
	mc.Spin.Color = ColorSequence.new(overturecolor)
	mc.Spin2.Color = ColorSequence.new(overturecolor)

	s1.Trail.Color = ColorSequence.new(overturecolor)
	s1.Ambient.Color = ColorSequence.new(overturecolor)
	s1.Star.Color = ColorSequence.new(overturecolor)
	s1.StarsEmit.Color = ColorSequence.new(overturecolor)
	s2.Trail.Color = ColorSequence.new(overturecolor)
	s2.Ambient.Color = ColorSequence.new(overturecolor)
	s2.Star.Color = ColorSequence.new(overturecolor)
	s2.StarsEmit.Color = ColorSequence.new(overturecolor)
	s3.Trail.Color = ColorSequence.new(overturecolor)
	s3.Ambient.Color = ColorSequence.new(overturecolor)
	s3.Star.Color = ColorSequence.new(overturecolor)
	s3.StarsEmit.Color = ColorSequence.new(overturecolor)
	s4.Trail.Color = ColorSequence.new(overturecolor)
	s4.Ambient.Color = ColorSequence.new(overturecolor)
	s4.Star.Color = ColorSequence.new(overturecolor)
	s4.StarsEmit.Color = ColorSequence.new(overturecolor)

	--[[
	glassa.BG.Color = ColorSequence.new(overturecolor)
	glassa.BG2.Color = ColorSequence.new(overturecolor)
	glassb.BG.Color = ColorSequence.new(overturecolor)
	glassb.BG2.Color = ColorSequence.new(overturecolor)
	glassa.Bits.Color = ColorSequence.new(overturecolor)
	glassb.Bits.Color = ColorSequence.new(overturecolor)
	glassa.Ambient.Color = ColorSequence.new(overturecolor)
	glassb.Ambient.Color = ColorSequence.new(overturecolor)
	]]

	task.wait()
end