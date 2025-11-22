-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "TweenService"
v0_0_ = v0_0_:GetService(v0_2_)
local new = TweenInfo.new
v0_2_ = 2
local Quart = Enum.EasingStyle.Quart
local v0_1_ = new(v0_2_, Quart)
local new = TweenInfo.new
local v0_3_ = 6
local Quart = Enum.EasingStyle.Quart
local In = Enum.EasingDirection.In
v0_2_ = new(v0_3_, Quart, In)
v0_3_ = function(a1, a2)
    local v1_2_ = a2.StarSpinSpeed
    local v1_3_ = a2.Colorboard
    local v1_4_ = a2.Star
    local v1_5_ = a2.BlackBoardAppear
    v1_5_:Play()
    v1_5_ = "http://www.roblox.com/asset/?id=12353440665"
    v1_3_.Image = v1_5_
    v1_5_ = 1
    v1_3_.ImageTransparency = v1_5_
    v1_5_ = a2.ApplyLabelColor
    local v1_6_ = v1_3_
    local v1_7_ = a1
    v1_5_(v1_6_, v1_7_)
    v1_5_ = a2.PlaySFX
    v1_6_ = "MoreRareRollSound"
    v1_5_(v1_6_)
    v1_5_ = a2.ApplyLabelColor
    v1_6_ = v1_4_
    v1_7_ = a1
    v1_5_(v1_6_, v1_7_)
    local fromScale = UDim2.fromScale
    v1_6_ = 1.500000
    v1_7_ = 1.500000
    v1_5_ = fromScale(v1_6_, v1_7_)
    v1_4_.Size = v1_5_
    v1_5_ = true
    v1_4_.Visible = v1_5_
    v1_5_ = v0_0_
    v1_7_ = v1_4_
    local v1_8_ = v0_1_
    local v1_9_ = {}
    local fromScale = UDim2.fromScale
    local v1_11_ = 0.600000
    local v1_12_ = 0.600000
    local v1_10_ = fromScale(v1_11_, v1_12_)
    v1_9_.Size = v1_10_
    v1_5_ = v1_5_:Create(v1_7_, v1_8_, v1_9_)
    v1_5_:Play()
    v1_5_ = 5
    v1_2_.Value = v1_5_
    v1_5_ = v0_0_
    v1_7_ = v1_2_
    v1_8_ = v0_1_
    v1_9_ = {}
    v1_10_ = 1
    v1_9_.Value = v1_10_
    v1_5_ = v1_5_:Create(v1_7_, v1_8_, v1_9_)
    v1_5_:Play()
    local wait = task.wait
    v1_6_ = 2
    wait(v1_6_)
    v1_5_ = v0_0_
    v1_7_ = v1_2_
    v1_8_ = v0_2_
    v1_9_ = {}
    v1_10_ = 4
    v1_9_.Value = v1_10_
    v1_5_ = v1_5_:Create(v1_7_, v1_8_, v1_9_)
    v1_5_:Play()
    v1_5_ = v0_0_
    v1_7_ = v1_4_
    v1_8_ = v0_2_
    v1_9_ = {}
    local fromScale = UDim2.fromScale
    v1_11_ = 1.500000
    v1_12_ = 1.500000
    v1_10_ = fromScale(v1_11_, v1_12_)
    v1_9_.Size = v1_10_
    v1_5_ = v1_5_:Create(v1_7_, v1_8_, v1_9_)
    v1_5_:Play()
    local wait = task.wait
    v1_6_ = 4
    wait(v1_6_)
    v1_5_ = a2.ColorboardAppear
    v1_5_:Play()
    local wait = task.wait
    v1_6_ = 2
    wait(v1_6_)
    v1_5_ = false
    v1_4_.Visible = v1_5_
    v1_5_ = "http://www.roblox.com/asset/?id=1195495135"
    v1_3_.Image = v1_5_
    v1_5_ = a2.SetShake
    v1_6_ = 0.020000
    v1_7_ = v0_1_
    v1_5_(v1_6_, v1_7_)
    v1_5_ = a2.ColorboardDisappear
    v1_5_:Play()
    v1_5_ = a2.BlackBoard
    v1_6_ = 1
    v1_5_.BackgroundTransparency = v1_6_
end
return v0_3_
