-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = 0
local v0_2_ = game
local v0_4_ = "RunService"
v0_2_ = v0_2_:GetService(v0_4_)
local v0_1_ = v0_2_.RenderStepped
local v0_3_ = function(a1)
    local v1_2_ = v0_0_
    local v1_3_ = a1 * 10.000000
    local v1_1_ = v1_2_ + v1_3_
    v0_0_ = a1
    v1_1_ = v0_0_
    v1_2_ = 60
    if v1_2_ < v1_1_ then
        v1_1_ = 0
        v0_0_ = a1
    end
    v1_1_ = ipairs
    v1_3_ = script
    v1_2_ = v1_3_.Parent
    v1_1_, v1_2_, v1_3_ = v1_1_(v1_2_:GetChildren())
    for v1_4_, v1_5_ in v1_1_, v1_2_, v1_3_ do
        local v1_8_ = "BasePart"
        local v1_6_ = v1_5_:IsA(v1_8_)
        if v1_6_ then
            local fromHSV = Color3.fromHSV
            v1_8_ = v0_0_
            local v1_7_ = v1_8_ / 60.000000
            v1_8_ = 0.300000
            local v1_9_ = 1
            v1_6_ = fromHSV(v1_7_, v1_8_, v1_9_)
            v1_5_.Color = v1_6_
        end
    end
end
v0_1_:Connect(v0_3_)
