-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "TweenService"
v0_0_ = v0_0_:GetService(v0_2_)
local v0_1_ = function(a1, a2)
    local v1_2_ = a2.Colorboard
    local v1_3_ = a2.BlackBoardAppear
    v1_3_:Play()
    v1_3_ = "http://www.roblox.com/asset/?id=12353440665"
    v1_2_.Image = v1_3_
    v1_3_ = 1
    v1_2_.ImageTransparency = v1_3_
    v1_3_ = a2.ApplyLabelColor
    local v1_4_ = v1_2_
    local v1_5_ = a1
    v1_3_(v1_4_, v1_5_)
    v1_3_ = a2.PlaySFX
    v1_4_ = "RareRollSound"
    v1_3_(v1_4_)
    local wait = task.wait
    v1_4_ = 2
    wait(v1_4_)
    v1_3_ = a2.ColorboardAppear
    v1_3_:Play()
    local wait = task.wait
    v1_4_ = 2
    wait(v1_4_)
    v1_3_ = "http://www.roblox.com/asset/?id=1195495135"
    v1_2_.Image = v1_3_
    v1_3_ = a2.ColorboardDisappear
    v1_3_:Play()
    v1_3_ = a2.BlackBoard
    v1_4_ = 1
    v1_3_.BackgroundTransparency = v1_4_
    v1_3_ = a2.SetShake
    v1_4_ = 0.020000
    local new = TweenInfo.new
    local v1_6_ = 2
    local Quart = Enum.EasingStyle.Quart
    v1_3_(new(v1_6_, Quart))
end
return v0_1_
