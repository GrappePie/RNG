
local TweenService = game:GetService("TweenService") --Gets the TweenService
local TweenPart = script.Parent --Part that you wan to tween

local TweenInformation = TweenInfo.new(

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

	Color = Color3.fromRGB(0, 13, 50);


}

local TweenAnimation = TweenService:Create(TweenPart, TweenInformation, TweenGoals)


TweenAnimation:Play()
