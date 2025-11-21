-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "RunService"
v0_0_ = v0_0_:GetService(v0_2_)
local v0_1_ = 0
v0_2_ = v0_0_.Heartbeat
local v0_4_ = function(a1)
    local v1_1_ = v0_1_
    local v1_3_ = 1000
    local v1_2_ = v1_3_ * a1
    v1_1_ += v1_2_
    v0_1_ = a1
    v1_2_ = script
    v1_1_ = v1_2_.Parent
    local Angles = CFrame.Angles
    v1_3_ = v0_1_
    local v1_4_ = 0
    local v1_5_ = 0
    v1_2_ = Angles(v1_3_, v1_4_, v1_5_)
    v1_1_.C1 = v1_2_
end
v0_2_:Connect(v0_4_)
