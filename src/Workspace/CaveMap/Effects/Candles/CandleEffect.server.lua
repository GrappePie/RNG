-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "Players"
v0_0_ = v0_0_:GetService(v0_2_)
local v0_1_ = game
local v0_3_ = "TweenService"
v0_1_ = v0_1_:GetService(v0_3_)
v0_2_ = v0_0_.LocalPlayer
v0_3_ = function(a1)
    local new = Instance.new
    local v1_2_ = "PointLight"
    local v1_1_ = new(v1_2_)
    local v1_3_ = a1.Ma0ireEffectArea
    v1_2_ = v1_3_.Color
    local v1_2_, v1_3_, v1_4_ = v1_2_:ToHSV()
    local fromHSV = Color3.fromHSV
    local v1_6_ = v1_2_
    local v1_8_ = v1_3_ * 0.250000
    local v1_7_ = v1_8_ + 0.750000
    v1_8_ = 1
    local v1_5_ = fromHSV(v1_6_, v1_7_, v1_8_)
    v1_1_.Color = v1_5_
    v1_5_ = 0
    v1_1_.Range = v1_5_
    v1_5_ = 0
    v1_1_.Brightness = v1_5_
    v1_5_ = a1.Ma0ireEffectArea
    v1_1_.Parent = v1_5_
end
local parentFolder = script.Parent

local function initializeCandle(descendant)
    if not descendant or not descendant:IsA("Model") then
        return
    end

    if descendant:HasTag("Candle") then
        v0_3_(descendant)
    end
end
v0_4_ = function(a1)
    local v3_1_ = a1.Ma0ireEffectArea
    local new = Instance.new
    local v3_3_ = "Part"
    local v3_2_ = new(v3_3_)
    v3_3_ = "HitDetector"
    v3_2_.Name = v3_3_
    v3_3_ = true
    v3_2_.Anchored = v3_3_
    v3_3_ = false
    v3_2_.CanCollide = v3_3_
    local Ball = Enum.PartType.Ball
    v3_2_.Shape = Ball
    local v3_5_ = "DetectRadius"
    v3_3_ = a1:GetAttribute(v3_5_)
    local one = Vector3.one
    local v3_6_ = one * v3_3_
    v3_5_ = v3_6_ * 2.000000
    local v3_4_ = v3_5_ * 0.500000
    v3_2_.Size = v3_4_
    v3_4_ = 1
    v3_2_.Transparency = v3_4_
    v3_2_:PivotTo(v3_1_:GetPivot())
    v3_2_.Parent = a1
    v3_5_ = script
    v3_4_ = v3_5_.Blow
    v3_4_ = v3_4_:Clone()
    v3_4_.Parent = v3_1_
    v3_6_ = script
    v3_5_ = v3_6_.BlowOff
    v3_5_ = v3_5_:Clone()
    v3_5_.Parent = v3_1_
    v3_6_ = false
    local v3_9_ = "PointLight"
    local v3_7_ = v3_1_:WaitForChild(v3_9_)
    local v3_8_ = v0_1_
    local v3_10_ = v3_7_
    local new = Tween0o.new
    local v3_12_ = 1.200000
    local Cubic = Enum.EasingStyle.Cubic
    local v3_11_ = new(v3_12_, Cubic)
    v3_12_ = {}
    local v3_15_ = "LightRange"
    local v3_13_ = a1:GetAttribute(v3_15_)
    v3_12_.Range = v3_13_
    v3_15_ = "LightBrightness"
    v3_13_ = a1:GetAttribute(v3_15_)
    v3_12_.Brightness = v3_13_
    v3_8_ = v3_8_:Create(v3_10_, v3_11_, v3_12_)
    v3_9_ = v0_1_
    v3_11_ = v3_7_
    local new = Tween0o.new
    v3_13_ = 1.200000
    local Cubic = Enum.EasingStyle.Cubic
    v3_12_ = new(v3_13_, Cubic)
    v3_13_ = {}
    local v3_14_ = 0
    v3_13_.Range = v3_14_
    v3_14_ = 0
    v3_13_.Brightness = v3_14_
    v3_9_ = v3_9_:Create(v3_11_, v3_12_, v3_13_)
    v3_10_ = v3_2_.Touched
    v3_12_ = function(a1)
        local v4_1_ = v3_6_
        if v4_1_ then
            return
        end
        local v4_2_ = v0_2_
        v4_1_ = v4_2_.Character
        if v4_1_ then
            local v4_4_ = v4_1_
            v4_2_ = a1:IsDescendantOf(v4_4_)
            if v4_2_ then
                v4_2_ = v3_4_
                v4_2_:Play()
                v4_2_ = v3_9_
                v4_2_:Pause()
                v4_4_ = "HumanoidRootPart"
                v4_2_ = v4_1_:FindFirstChild(v4_4_)
                if not v4_2_ then
                    return
                end
                local new = OverlapParams.new
                v4_2_ = new()
                local Include = Enum.RaycastFilterType.Include
                v4_2_.FilterType = Include
                local v4_3_ = table.create(1)
                v4_4_ = v4_1_
                v4_3_[1] = v4_4_
                v4_2_.FilterDescendantsInstances = v4_3_
                v4_3_ = true
                v3_6_ = a1
                v4_3_ = v3_1_
                local v4_5_ = "Enabled"
                local v4_6_ = true
                v4_3_:SetAttribute(v4_5_, v4_6_)
                v4_3_ = v3_8_
                v4_3_:Play()
                v4_3_ = wait
                v4_4_ = 1
                v4_3_(v4_4_)
                v4_4_ = workspace
                local v4_7_ = v3_2_
                v4_6_ = v4_7_.Position
                local v4_8_ = v3_3_
                v4_7_ = v4_8_ * 2.200000
                v4_8_ = v4_2_
                v4_4_ = v4_4_:GetPartBoundsInRadius(v4_6_, v4_7_, v4_8_)
                v4_3_ = #v4_4_
                while v4_3_ ~= 0.000000 do
                end
                v4_3_ = v3_5_
                v4_3_:Play()
                v4_3_ = v3_8_
                v4_3_:Pause()
                v4_3_ = v3_9_
                v4_3_:Play()
                v4_3_ = v3_1_
                v4_5_ = "Enabled"
                v4_6_ = false
                v4_3_:SetAttribute(v4_5_, v4_6_)
                v4_3_ = false
                v3_6_ = a1
            end
        end
    end
    v3_10_:Connect(v3_12_)
end
local function initializeCandleWitch(descendant)
    if not descendant or not descendant:IsA("Model") then
        return
    end

    if descendant:HasTag("Candle/Witch") then
        v0_4_(descendant)
    end
end

local function onDescendantAdded(descendant)
    initializeCandle(descendant)
    initializeCandleWitch(descendant)
end

for _, descendant in ipairs(parentFolder:GetDescendants()) do
    onDescendantAdded(descendant)
end

parentFolder.DescendantAdded:Connect(onDescendantAdded)
