-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_1_ = game
local v0_3_ = "Players"
v0_1_ = v0_1_:GetService(v0_3_)
local v0_0_ = v0_1_.LocalPlayer
local v0_2_ = script
v0_1_ = v0_2_.Parent
v0_3_ = "Effects"
v0_1_ = v0_1_:WaitForChild(v0_3_)
v0_2_ = {}
v0_3_ = function()
    local v1_0_ = v0_0_
    local v1_2_ = "IsInCave"
    v1_0_ = v1_0_:GetAttribute(v1_2_)
    local v1_1_ = pairs
    v1_2_ = v0_2_
    local v1_1_, v1_2_, v1_3_ = v1_1_(v1_2_)
    for v1_4_, v1_5_ in v1_1_, v1_2_, v1_3_ do
        if v1_0_ then
            local v1_6_ = v1_5_
            if not v1_6_ then
                v1_6_ = nil
            end
        end
        local v1_6_ = nil
        v1_4_.Parent = v1_6_
    end
end
local v0_4_ = ipairs
local v0_4_, v0_5_, v0_6_ = v0_4_(v0_1_:GetDescendants())
for v0_7_, v0_8_ in v0_4_, v0_5_, v0_6_ do
    local v0_11_ = "Model"
    local v0_9_ = v0_8_:IsA(v0_11_)
    if not v0_9_ then
        v0_11_ = "BasePart"
        v0_9_ = v0_8_:IsA(v0_11_)
        if v0_9_ then
            local v0_13_ = "LuminescentWormAreas"
            v0_9_ = v0_8_:IsDescendantOf(v0_1_:WaitForChild(w))
            if v0_9_ then
                v0_9_ = v0_8_.Parent
                v0_2_[v0_8_] = v0_9_
                local v0_12_ = "IsInCave"
                local v0_10_ = v0_0_:GetAttribute(v0_12_)
                if v0_10_ then
                    v0_9_ = v0_2_[v0_8_]
                    if not v0_9_ then
                        v0_9_ = nil
                    end
                end
                v0_9_ = nil
                v0_8_.Parent = v0_9_
            end
        end
    end
    v0_9_ = v0_8_.Parent
    v0_2_[v0_8_] = v0_9_
    local v0_12_ = "IsInCave"
    local v0_10_ = v0_0_:GetAttribute(v0_12_)
    if v0_10_ then
        v0_9_ = v0_2_[v0_8_]
        if not v0_9_ then
            v0_9_ = nil
        end
    end
    v0_9_ = nil
    v0_8_.Parent = v0_9_
end
v0_6_ = "IsInCave"
v0_4_ = v0_0_:GetAttribute(v0_6_)
v0_5_ = pairs
v0_6_ = v0_2_
local v0_5_, v0_6_, v0_7_ = v0_5_(v0_6_)
for v0_8_, v0_9_ in v0_5_, v0_6_, v0_7_ do
    if v0_4_ then
        local v0_10_ = v0_9_
        if not v0_10_ then
            v0_10_ = nil
        end
    end
    local v0_10_ = nil
    v0_8_.Parent = v0_10_
end
v0_7_ = "IsInCave"
v0_5_ = v0_0_:GetAttributeChangedSignal(v0_7_)
v0_7_ = v0_3_
v0_5_:Connect(v0_7_)
