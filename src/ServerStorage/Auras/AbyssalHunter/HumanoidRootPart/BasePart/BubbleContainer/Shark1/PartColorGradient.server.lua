
local TweenService = game:GetService("TweenService") --Gets the TweenService
local TweenPart = script.Parent --Part that you wan to tween

local Tween0ormation = Tween0o.new(

	1, -- Time/length

	Enum.EasingStyle.Linear, -- EasingStyle

	Enum.EasingDirection.In, -- EasingDirection

	-1, -- How many times tween will repeat, negative numbers if you want to loop it

	true, -- Reverse the Tween Session (Turn into the new given Properties, and go turn back into the normal part's properties. Boolvalue)(true or false)

	0 -- Delay between tweens(seconds).

)

-- Properties of the part you want after tweening
local TweenGoals = {

	Transparency = 0;

	Color = Color3.fromRGB(0, 68, 255);


}

local Twee0imation = TweenService:Create(TweenPart, Tween0ormation, TweenGoals)


Twee0imation:Play()
