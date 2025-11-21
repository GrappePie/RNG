-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "RunService"
v0_0_ = v0_0_:GetService(v0_2_)
local v0_1_ = function()
    local random = math.random
    local v1_3_ = random()
    local v1_2_ = v1_3_ * 2.000000
    local v1_1_ = v1_2_ - 1.000000
    local v1_0_ = v1_1_ * 0.500000
    return v1_0_
end
v0_2_ = function(a1, a2, a3)
    local v2_5_ = a2 - a1
    local v2_4_ = v2_5_ * a3
    local v2_3_ = a1 + v2_4_
    return v2_3_
end
local v0_3_ = function(a1)
    local v3_3_ = a1.Size
    local v3_2_ = v3_3_ / 2.000000
    local random = math.random
    local v3_6_ = random()
    local v3_5_ = v3_6_ * 2.000000
    local v3_4_ = v3_5_ - 1.000000
    v3_3_ = v3_4_ * 0.500000
    local v3_1_ = v3_2_ * v3_3_
    local new = Instance.new
    v3_3_ = "Part"
    v3_2_ = new(v3_3_)
    v3_5_ = "ColorVarianceWeight"
    v3_3_ = a1:GetAttribute(v3_5_)
    v3_4_ = a1.Color
    v3_4_, v3_5_, v3_6_ = v3_4_:ToHSV()
    local fromHSV = Color3.fromHSV
    local random = math.random
    local v3_13_ = random()
    local v3_12_ = v3_13_ * 2.000000
    local v3_11_ = v3_12_ - 1.000000
    local v3_10_ = v3_11_ * 0.500000
    v3_11_ = v3_3_.X
    local v3_9_ = v3_10_ * v3_11_
    local v3_8_ = v3_4_ + v3_9_
    local random = math.random
    local v3_14_ = random()
    v3_13_ = v3_14_ * 2.000000
    v3_12_ = v3_13_ - 1.000000
    v3_11_ = v3_12_ * 0.500000
    v3_12_ = v3_3_.Y
    v3_10_ = v3_11_ * v3_12_
    v3_9_ = v3_5_ + v3_10_
    local random = math.random
    local v3_15_ = random()
    v3_14_ = v3_15_ * 2.000000
    v3_13_ = v3_14_ - 1.000000
    v3_12_ = v3_13_ * 0.500000
    v3_13_ = v3_3_.Z
    v3_11_ = v3_12_ * v3_13_
    v3_10_ = v3_6_ + v3_11_
    local v3_7_ = fromHSV(v3_8_, v3_9_, v3_10_)
    v3_2_.Color = v3_7_
    local Neon = Enum.Material.Neon
    v3_2_.Material = Neon
    v3_7_ = true
    v3_2_.Anchored = v3_7_
    v3_7_ = false
    v3_2_.CanCollide = v3_7_
    v3_10_ = "Size"
    v3_8_ = a1:GetAttribute(v3_10_)
    v3_10_ = 1
    local random = math.random
    v3_15_ = random()
    v3_14_ = v3_15_ * 2.000000
    v3_13_ = v3_14_ - 1.000000
    v3_12_ = v3_13_ * 0.500000
    v3_15_ = "SizeVarianceWeight"
    v3_13_ = a1:GetAttribute(v3_15_)
    v3_11_ = v3_12_ * v3_13_
    v3_9_ = v3_10_ + v3_11_
    v3_7_ = v3_8_ * v3_9_
    v3_9_ = v3_7_
    v3_10_ = v3_7_
    v3_11_ = v3_7_
    local new = Vector3.new
    v3_8_ = new(v3_9_, v3_10_, v3_11_)
    v3_2_.Size = v3_8_
    v3_9_ = a1.CFrame
    local new = CFrame.new
    v3_14_ = a1.Size
    v3_13_ = v3_14_.X
    v3_12_ = v3_13_ / 2.000000
    local random = math.random
    local v3_16_ = random()
    v3_15_ = v3_16_ * 2.000000
    v3_14_ = v3_15_ - 1.000000
    v3_13_ = v3_14_ * 0.500000
    v3_11_ = v3_12_ * v3_13_
    v3_15_ = a1.Size
    v3_14_ = v3_15_.Y
    v3_13_ = v3_14_ / 2.000000
    local random = math.random
    local v3_17_ = random()
    v3_16_ = v3_17_ * 2.000000
    v3_15_ = v3_16_ - 1.000000
    v3_14_ = v3_15_ * 0.500000
    v3_12_ = v3_13_ * v3_14_
    v3_16_ = a1.Size
    v3_15_ = v3_16_.Z
    v3_14_ = v3_15_ / 2.000000
    local random = math.random
    local v3_18_ = random()
    v3_17_ = v3_18_ * 2.000000
    v3_16_ = v3_17_ - 1.000000
    v3_15_ = v3_16_ * 0.500000
    v3_13_ = v3_14_ * v3_15_
    v3_10_ = new(v3_11_, v3_12_, v3_13_)
    v3_8_ = v3_9_ * v3_10_
    v3_2_.CFrame = v3_8_
    local new = Instance.new
    v3_9_ = "PointLight"
    v3_8_ = new(v3_9_)
    v3_9_ = v3_2_.Color
    v3_9_, v3_10_, v3_11_ = v3_9_:ToHSV()
    local fromHSV = Color3.fromHSV
    v3_13_ = v3_9_
    v3_14_ = v3_10_
    v3_15_ = 1
    v3_12_ = fromHSV(v3_13_, v3_14_, v3_15_)
    v3_8_.Color = v3_12_
    v3_12_ = 7
    v3_8_.Range = v3_12_
    v3_15_ = "LightBrightness"
    v3_13_ = a1:GetAttribute(v3_15_)
    v3_15_ = 1
    local random = math.random
    local v3_20_ = random()
    local v3_19_ = v3_20_ * 2.000000
    v3_18_ = v3_19_ - 1.000000
    v3_17_ = v3_18_ * 0.500000
    v3_20_ = "LightBrightnessVarianceWeight"
    v3_18_ = a1:GetAttribute(v3_20_)
    v3_16_ = v3_17_ * v3_18_
    v3_14_ = v3_15_ + v3_16_
    v3_12_ = v3_13_ * v3_14_
    v3_8_.Brightness = v3_12_
    v3_8_.Parent = v3_2_
    v3_14_ = script
    v3_13_ = v3_14_.Parent
    v3_12_ = v3_13_.Worms
    v3_2_.Parent = v3_12_
    local new = Random.new
    v3_12_ = new()
    v3_13_ = nil
    v3_14_ = nil
    v3_15_ = nil
    v3_16_ = nil
    v3_17_ = v3_12_:NextUnitVector()
    v3_18_ = function()
        local v4_0_ = v3_17_
        v3_16_ = v4_0_
        v4_0_ = 0
        v3_13_ = nil
        local v4_1_ = a1
        local v4_3_ = "Speed"
        v4_1_ = v4_1_:GetAttribute(v4_3_)
        local random = math.random
        local v4_7_ = random()
        local v4_6_ = v4_7_ * 2.000000
        local v4_5_ = v4_6_ - 1.000000
        local v4_4_ = v4_5_ * 0.500000
        v4_5_ = a1
        v4_7_ = "SpeedVarianceWeight"
        v4_5_ = v4_5_:GetAttribute(v4_7_)
        v4_3_ = v4_4_ * v4_5_
        local v4_2_ = v4_3_ + 1.000000
        v4_0_ = v4_1_ * v4_2_
        v3_14_ = v4_3_
        v4_1_ = a1
        v4_3_ = "MovingPeriod"
        v4_1_ = v4_1_:GetAttribute(v4_3_)
        local random = math.random
        v4_7_ = random()
        v4_6_ = v4_7_ * 2.000000
        v4_5_ = v4_6_ - 1.000000
        v4_4_ = v4_5_ * 0.500000
        v4_5_ = a1
        v4_7_ = "MovingPeriodVarianceWeight"
        v4_5_ = v4_5_:GetAttribute(v4_7_)
        v4_3_ = v4_4_ * v4_5_
        v4_2_ = v4_3_ + 1.000000
        v4_0_ = v4_1_ * v4_2_
        v3_15_ = v4_5_
        v4_4_ = v3_2_
        v4_3_ = v4_4_.Position
        v4_2_ = v4_3_.X
        v4_5_ = a1
        v4_4_ = v4_5_.Position
        v4_3_ = v4_4_.X
        v4_1_ = v4_2_ - v4_3_
        local abs = math.abs
        v4_0_ = abs(v4_1_)
        v4_4_ = a1
        v4_3_ = v4_4_.Size
        v4_2_ = v4_3_.X
        v4_1_ = v4_2_ / 2.000000
        if v4_0_ < v4_1_ then
            v4_4_ = v3_2_
            v4_3_ = v4_4_.Position
            v4_2_ = v4_3_.Y
            v4_5_ = a1
            v4_4_ = v4_5_.Position
            v4_3_ = v4_4_.Y
            v4_1_ = v4_2_ - v4_3_
            local abs = math.abs
            v4_0_ = abs(v4_1_)
            v4_4_ = a1
            v4_3_ = v4_4_.Size
            v4_2_ = v4_3_.Y
            v4_1_ = v4_2_ / 2.000000
            if v4_0_ < v4_1_ then
                v4_4_ = v3_2_
                v4_3_ = v4_4_.Position
                v4_2_ = v4_3_.Z
                v4_5_ = a1
                v4_4_ = v4_5_.Position
                v4_3_ = v4_4_.Z
                v4_1_ = v4_2_ - v4_3_
                local abs = math.abs
                v4_0_ = abs(v4_1_)
                v4_4_ = a1
                v4_3_ = v4_4_.Size
                v4_2_ = v4_3_.Z
                v4_1_ = v4_2_ / 2.000000
                if v4_0_ < v4_1_ then
                    v4_0_ = v3_12_
                    v4_0_ = v4_0_:NextUnitVector()
                    v3_17_ = v4_1_
                    return
                end
            end
        end
        v4_5_ = a1
        v4_4_ = v4_5_.Position
        v4_6_ = v3_2_
        v4_5_ = v4_6_.Position
        v4_3_ = v4_4_ - v4_5_
        v4_2_ = v4_3_.Unit
        v4_1_ = v4_2_ * 0.700000
        v4_3_ = v3_12_
        v4_3_ = v4_3_:NextUnitVector()
        v4_2_ = v4_3_ * 0.300000
        v4_0_ = v4_1_ + v4_2_
        v3_17_ = v4_1_
    end
    v3_19_ = v3_18_
    v3_19_()
    v3_20_ = v0_0_
    v3_19_ = v3_20_.RenderStepped
    local v3_21_ = function(a1)
        local v5_1_ = v3_16_
        local v5_2_ = v3_17_
        local v5_4_ = v3_13_
        local v5_5_ = v3_15_
        local v5_3_ = v5_4_ / v5_5_
        local v5_6_ = v5_2_ - v5_1_
        v5_5_ = v5_6_ * v5_3_
        v5_4_ = v5_1_ + v5_5_
        v5_5_ = v3_2_
        local v5_8_ = v3_2_
        local v5_7_ = v5_8_.CFrame
        local v5_11_ = v3_14_
        local v5_10_ = v5_4_ * v5_11_
        local v5_9_ = v5_10_ * a1
        local v5_14_ = v3_13_
        local v5_15_ = v3_15_
        local v5_13_ = v5_14_ / v5_15_
        local v5_12_ = v5_13_ * 3.141593
        local sin = math.sin
        v5_11_ = sin(v5_12_)
        v5_10_ = v5_11_ ^ 0.600000
        v5_8_ = v5_9_ * v5_10_
        v5_6_ = v5_7_ + v5_8_
        v5_5_.CFrame = v5_6_
        v5_6_ = v3_13_
        v5_5_ = v5_6_ + a1
        v3_13_ = v5_2_
        v5_5_ = v3_15_
        v5_6_ = v3_13_
        if v5_5_ <= v5_6_ then
            v5_5_ = v3_18_
            v5_5_()
        end
    end
    v3_19_ = v3_19_:Connect(v3_21_)
    v3_20_ = a1.AncestryChanged
    local v3_22_ = function()
        local v6_0_ = v3_19_
        v6_0_:Disconnect()
        v6_0_ = v3_2_
        v6_0_:Destroy()
    end
    v3_20_:Once(v3_22_)
end
local v0_4_ = function(a1)
    local v7_1_ = 1
    a1.Transparency = v7_1_
    local v7_3_ = 1
    local v7_6_ = "Count"
    local v7_4_ = a1:GetAttribute(v7_6_)
    v7_1_ = v7_4_
    local v7_2_ = 1
    for v7_3_ = v7_3_, v7_1_, v7_2_ do
        local delay = task.delay
        local random = math.random
        local v7_5_ = random()
        v7_6_ = function()
            local v8_0_ = v0_3_
            local v8_1_ = a1
            v8_0_(v8_1_)
        end
        delay(v7_5_, v7_6_)
    end
end

local function initializeWormArea(descendant)
    if not descendant or not descendant:IsA("BasePart") then
        return
    end

    if descendant.Name:sub(1, 8) == "WormArea" then
        v0_4_(descendant)
    end
end

local parentFolder = script.Parent

for _, descendant in ipairs(parentFolder:GetDescendants()) do
    initializeWormArea(descendant)
end

parentFolder.DescendantAdded:Connect(initializeWormArea)
