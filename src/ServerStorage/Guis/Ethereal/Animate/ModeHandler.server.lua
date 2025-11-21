local trs = script.Parent.Parent.Parent:WaitForChild("AURA"):WaitForChild("AbyssalHunter"):WaitForChild("Torso")
if not trs then
repeat until trs
end

local shifter = trs:WaitForChild("Spinner")

if not shifter then
	repeat until shifter
end



--local animations = script.Parent.Animations

--local sanim = animations.Shifter.Animate
--local danim = animations.Destroyer.Animate

local modeValue = 0  -- Initialize a variable to track the mode state

-- Assuming `script.mode` is a BoolValue or IntValue that changes
script.mode.Changed:Connect(function()
	-- Emit events based on changes (assuming these are custom events)
	trs.Switch.Bits:Emit()
	trs.Switch.Impact:Emit()
	trs.Switch.Star:Emit()

	-- Toggle between 1 and 2
	modeValue = (modeValue % 1) + 2

	if modeValue == 1 then
		trs.Title.TitleUI.Mode.Text = "SHIFTER"
		shifter.Wing1.Transparency = 0
		shifter.Wing2.Transparency = 0
		shifter.Wing3.Transparency = 0
		--destroyer.Wing1.Transparency = 1
		--destroyer.Wing2.Transparency = 1
		--destroyer.Wing3.Transparency = 1
	elseif modeValue == 2 then
		trs.Title.TitleUI.Mode.Text = "DESTROYER"
		shifter.Wing1.Transparency = 1
		shifter.Wing2.Transparency = 1
		shifter.Wing3.Transparency = 1
		--destroyer.Wing1.Transparency = 0
		--destroyer.Wing2.Transparency = 0
		--destroyer.Wing3.Transparency = 0
	end

	script.mode.Value = modeValue  -- Update the mode value in `script.mode`
end)
