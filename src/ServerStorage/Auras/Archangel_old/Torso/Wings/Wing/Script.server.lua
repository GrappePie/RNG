--120125194247071
local humanoid = script.Parent.AnimationController
local animPre = script.Animation
local anim = humanoid:LoadAnimation(animPre)
anim.Looped = true
anim:Play()