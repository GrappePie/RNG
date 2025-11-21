-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_1_ = game
local v0_3_ = "Players"
v0_1_ = v0_1_:GetService(v0_3_)
local v0_0_ = v0_1_.LocalPlayer
v0_1_ = function(a1)
    local v1_1_ = false
    local v1_3_ = script
    local v1_2_ = v1_3_.Broken
    v1_2_ = v1_2_:Clone()
    local v1_4_ = script
    v1_3_ = v1_4_.Breaking
    v1_3_ = v1_3_:Clone()
    v1_2_.Parent = a1
    v1_3_.Parent = a1
    v1_4_ = a1.CFrame
    local v1_5_ = a1.Color
    local v1_6_ = a1.Touched
    local v1_8_ = function(a1)
        local v2_1_ = v1_1_
        if v2_1_ then
            return
        end
        local v2_2_ = v0_0_
        v2_1_ = v2_2_.Character
        if v2_1_ then
            local v2_4_ = v0_0_
            local v2_3_ = v2_4_.Character
            v2_1_ = a1:IsDescendantOf(v2_3_)
            if v2_1_ then
                v2_1_ = true
                v1_1_ = a1
            end
        end
        v2_1_ = v1_3_
        v2_1_:Play()
        v2_1_ = v1_5_
        local v2_1_, v2_2_, v2_3_ = v2_1_:ToHSV()
        local v2_4_ = a1
        local fromHSV = Color3.fromHSV
        local v2_6_ = v2_1_
        local v2_7_ = v2_2_ * 0.500000
        local v2_8_ = v2_3_ * 0.500000
        local v2_5_ = fromHSV(v2_6_, v2_7_, v2_8_)
        v2_4_.Color = v2_5_
        local spawn = task.spawn
        v2_5_ = function()
            local v3_2_ = 1
            local v3_0_ = 25
            local v3_1_ = 1
            for v3_2_ = v3_2_, v3_0_, v3_1_ do
                local v3_3_ = a1
                local v3_5_ = v3_3_.CFrame
                local new = CFrame.new
                local random = math.random
                local v3_11_ = random()
                local v3_10_ = v3_11_ * 2.000000
                local v3_9_ = v3_10_ - 1.000000
                local v3_8_ = v3_9_ * 0.300000
                v3_10_ = 0.500000
                local v3_12_ = v3_2_ / 10.000000
                v3_11_ = v3_12_ ^ 0.125000
                v3_9_ = v3_10_ + v3_11_
                local v3_7_ = v3_8_ * v3_9_
                local random = math.random
                v3_12_ = random()
                v3_11_ = v3_12_ * 2.000000
                v3_10_ = v3_11_ - 1.000000
                v3_9_ = v3_10_ * 0.300000
                v3_11_ = 0.500000
                local v3_13_ = v3_2_ / 10.000000
                v3_12_ = v3_13_ ^ 0.125000
                v3_10_ = v3_11_ + v3_12_
                v3_8_ = v3_9_ * v3_10_
                local random = math.random
                v3_13_ = random()
                v3_12_ = v3_13_ * 2.000000
                v3_11_ = v3_12_ - 1.000000
                v3_10_ = v3_11_ * 0.300000
                v3_12_ = 0.500000
                local v3_14_ = v3_2_ / 10.000000
                v3_13_ = v3_14_ ^ 0.125000
                v3_11_ = v3_12_ + v3_13_
                v3_9_ = v3_10_ * v3_11_
                local v3_6_ = new(v3_7_, v3_8_, v3_9_)
                local v3_4_ = v3_5_ * v3_6_
                v3_3_.CFrame = v3_4_
                local wait = task.wait
                v3_5_ = nil / CFrame.new
                wait(v3_5_)
            end
        end
        spawn(v2_5_)
        v2_4_ = wait
        v2_5_ = 4
        v2_4_(v2_5_)
        v2_4_ = v1_2_
        v2_4_:Play()
        v2_4_ = a1
        v2_5_ = 1
        v2_4_.Transparency = v2_5_
        v2_4_ = wait
        v2_5_ = 4
        v2_4_(v2_5_)
        v2_4_ = a1
        v2_5_ = v1_4_
        v2_4_.CFrame = v2_5_
        v2_4_ = a1
        v2_5_ = true
        v2_4_.CanCollide = v2_5_
        v2_4_ = a1
        v2_5_ = 0
        v2_4_.Transparency = v2_5_
        v2_4_ = a1
        v2_5_ = v1_5_
        v2_4_.Color = v2_5_
        v2_4_ = false
        v1_1_ = a1
    end
    v1_6_ = v1_6_:Connect(v1_8_)
    local v1_7_ = a1.AncestryChanged
    local v1_9_ = function()
        local v4_0_ = v1_2_
        v4_0_:Destroy()
        v4_0_ = v1_3_
        v4_0_:Destroy()
        v4_0_ = v1_6_
        v4_0_:Disconnect()
    end
    v1_7_:Once(v1_9_)
end
v0_3_ = script
local v0_2_ = v0_3_.Parent
local v0_2_, v0_3_, v0_4_ = v0_2_:GetChildren()
local v0_9_ = "BasePart"
local v0_7_ = nil:IsA(v0_9_)
if v0_7_ then
    v0_7_ = v0_1_
    local v0_8_ = nil
    v0_7_(v0_8_)
end
v0_4_ = script
v0_3_ = v0_4_.Parent
v0_2_ = v0_3_.ChildAdded
v0_4_ = v0_1_
v0_2_:Connect(v0_4_)
