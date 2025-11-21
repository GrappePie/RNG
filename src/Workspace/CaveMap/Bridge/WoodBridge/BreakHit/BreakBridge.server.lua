-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "Players"
v0_0_ = v0_0_:GetService(v0_2_)
local v0_1_ = game
local v0_3_ = "TweenService"
v0_1_ = v0_1_:GetService(v0_3_)
v0_2_ = game
local v0_4_ = "RunService"
v0_2_ = v0_2_:GetService(v0_4_)
v0_3_ = function()
    local random = math.random
    local v1_3_ = random()
    local v1_2_ = v1_3_ * 2.000000
    local v1_1_ = v1_2_ - 1.000000
    local v1_0_ = v1_1_ * 0.500000
    return v1_0_
end
v0_4_ = function(a1, a2, a3)
    local v2_5_ = a2 - a1
    local v2_4_ = v2_5_ * a3
    local v2_3_ = a1 + v2_4_
    return v2_3_
end
local v0_5_ = v0_0_.LocalPlayer
local v0_6_ = false
local v0_10_ = script
local v0_9_ = v0_10_.Parent
local v0_8_ = v0_9_.Parent
local v0_7_ = v0_8_.Planks
v0_9_ = script
v0_8_ = v0_9_.Parent
v0_9_ = 1
v0_8_.Transparency = v0_9_
v0_10_ = script
v0_9_ = v0_10_.Parent
v0_8_ = v0_9_.Touched
v0_10_ = function(a1)
    local v3_1_ = v0_6_
    if v3_1_ then
        return
    end
    local v3_2_ = v0_5_
    v3_1_ = v3_2_.Character
    if v3_1_ then
        local v3_4_ = v0_5_
        local v3_3_ = v3_4_.Character
        v3_1_ = a1:IsDescendantOf(v3_3_)
        if not v3_1_ then
            return
        end
    end
    return
end
v0_8_:Connect(v0_10_)
