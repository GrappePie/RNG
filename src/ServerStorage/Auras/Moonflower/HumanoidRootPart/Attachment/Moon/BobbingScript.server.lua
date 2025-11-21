-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = 0
local v0_3_ = script
local v0_2_ = v0_3_.Parent
local v0_1_ = v0_2_.Position
v0_2_ = nil
local v0_4_ = game
local v0_6_ = "RunService"
v0_4_ = v0_4_:GetService(v0_6_)
v0_3_ = v0_4_.RenderStepped
local v0_5_ = function(a1)
    local v1_2_ = script
    local v1_1_ = v1_2_.Parent
    if not v1_1_ then
        v1_1_ = v0_2_
        v1_1_:Disconnect()
        return
    end
    v1_1_ = v0_0_
    v1_2_ = a1 * 0.628319
    v1_1_ += v1_2_
    v0_0_ = v1_1_
    v1_1_ = v0_0_
    v1_1_ %= 6.283185
    v0_0_ = v1_1_
    v1_2_ = script
    v1_1_ = v1_2_.Parent
    local v1_3_ = v0_1_
    local v1_5_ = Vector3.new(0.000000, 1.000000, 0.000000)
    local v1_7_ = v0_0_
    local sin = math.sin
    local v1_6_ = sin(v1_7_)
    local v1_4_ = v1_5_ * v1_6_
    v1_2_ = v1_3_ + v1_4_
    v1_1_.Position = v1_2_
end
v0_3_ = v0_3_:Connect(v0_5_)
v0_2_ = v0_3_
