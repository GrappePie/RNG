-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "RunService"
v0_0_ = v0_0_:GetService(v0_2_)
local v0_1_ = game
local v0_3_ = "TweenService"
v0_1_ = v0_1_:GetService(v0_3_)
v0_3_ = game
local v0_5_ = "Players"
v0_3_ = v0_3_:GetService(v0_5_)
v0_2_ = v0_3_.LocalPlayer
local new = Instance.new
local v0_4_ = "Folder"
v0_3_ = new(v0_4_)
v0_4_ = "FireEffects"
v0_3_.Name = v0_4_
v0_5_ = script
v0_4_ = v0_5_.Parent
v0_3_.Parent = v0_4_
v0_4_ = script
local v0_6_ = "Part"
v0_4_ = v0_4_:WaitForChild(v0_6_)
v0_5_ = function()
    local random = math.random
    local v1_2_ = random()
    local v1_1_ = v1_2_ - 0.500000
    local v1_0_ = v1_1_ * 2.000000
    return v1_0_
end
v0_6_ = nil
v0_4_.Parent = v0_6_
v0_6_ = function(a1)
    local v2_1_ = a1.Transparency
    if v2_1_ == 1.000000 then
        return
    end
    v2_1_ = 1
    a1.Transparency = v2_1_
    v2_1_ = v0_4_
    v2_1_ = v2_1_:Clone()
    v2_1_.Parent = a1
    local v2_4_ = a1.CFrame
    v2_1_:PivotTo(v2_4_)
    local v2_3_ = a1.Parent
    local v2_2_ = v2_3_.Name
    if v2_2_ ~= "Candle" then
        v2_4_ = 0.550000
        v2_1_:ScaleTo(v2_4_)
        return
    end
    v2_4_ = 0.300000
    v2_1_:ScaleTo(v2_4_)
    v2_4_ = "Part"
    v2_2_ = v2_1_:WaitForChild(v2_4_)
    v2_4_ = "Smoke"
    v2_2_ = v2_2_:WaitForChild(v2_4_)
    v2_2_:Destroy()
    v2_2_ = ipairs
    v2_2_, v2_3_, v2_4_ = v2_2_(v2_1_:GetDescendants())
    for v2_5_, v2_6_ in v2_2_, v2_3_, v2_4_ do
        local v2_9_ = "ParticleEmitter"
        local v2_7_ = v2_6_:IsA(v2_9_)
        if v2_7_ then
            local new = ColorSequence.new
            v2_9_ = a1.Parent
            local v2_11_ = "Body"
            v2_9_ = v2_9_:WaitForChild(v2_11_)
            local v2_8_ = v2_9_.Color
            v2_7_ = new(v2_8_)
            v2_6_.Color = v2_7_
        end
    end
    v2_2_ = function()
        local v3_0_ = ipairs
        local v3_1_ = v2_1_
        local v3_0_, v3_1_, v3_2_ = v3_0_(v3_1_:GetDescendants())
        for v3_3_, v3_4_ in v3_0_, v3_1_, v3_2_ do
            local v3_7_ = "ParticleEmitter"
            local v3_5_ = v3_4_:IsA(v3_7_)
            if v3_5_ then
                v3_5_ = a1
                v3_7_ = "Enabled"
                v3_5_ = v3_5_:GetAttribute(v3_7_)
                v3_4_.Enabled = v3_5_
            end
        end
    end
    v2_3_ = v2_2_
    v2_3_()
    local v2_5_ = "Enabled"
    v2_3_ = a1:GetAttributeChangedSignal(v2_5_)
    v2_5_ = v2_2_
    v2_3_:Connect(v2_5_)
end
local v0_9_ = script
local v0_8_ = v0_9_.Parent
local v0_7_ = v0_8_.Parent
v0_7_, v0_8_, v0_9_ = v0_7_:GetDescendants()
local v0_14_ = "BasePart"
local v0_12_ = nil:IsA(v0_14_)
if v0_12_ then
    v0_14_ = "FireEffectArea"
    v0_12_ = nil:HasTag(v0_14_)
    if v0_12_ then
        v0_12_ = v0_6_
        local v0_13_ = nil
        v0_12_(v0_13_)
    end
end
local v0_10_ = script
v0_9_ = v0_10_.Parent
v0_8_ = v0_9_.Parent
v0_7_ = v0_8_.DescendantAdded
v0_9_ = function(a1)
    local v4_3_ = "BasePart"
    local v4_1_ = a1:IsA(v4_3_)
    if v4_1_ then
        v4_3_ = "FireEffectArea"
        v4_1_ = a1:HasTag(v4_3_)
        if v4_1_ then
            v4_1_ = v0_6_
            local v4_2_ = a1
            v4_1_(v4_2_)
        end
    end
end
v0_7_:Connect(v0_9_)
