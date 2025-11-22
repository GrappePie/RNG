-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_1_ = script
local v0_0_ = v0_1_.Parent
local v0_2_ = "TextLabel"
v0_0_ = v0_0_:IsA(v0_2_)
if not v0_0_ then
    return
end
v0_0_ = game
v0_2_ = "RunService"
v0_0_ = v0_0_:GetService(v0_2_)
v0_1_ = game
local v0_3_ = "TweenService"
v0_1_ = v0_1_:GetService(v0_3_)
local new = TweenInfo.new
v0_3_ = 0.010000
local Quart = Enum.EasingStyle.Quart
local Out = Enum.EasingDirection.Out
v0_2_ = new(v0_3_, Quart, Out)
local clock = os.clock
local new = ColorSequenceKeypoint.new
local new_0 = ColorSequence.new
local new_1 = Random.new
local v0_6_ = new_1()
local v0_7_ = nil
local v0_9_ = script
local v0_8_ = v0_9_.Parent
local v0_10_ = script
v0_9_ = v0_10_.Parent
local v0_11_ = "Shadow"
v0_9_ = v0_9_:WaitForChild(v0_11_)
v0_11_ = script
v0_10_ = v0_11_.Parent
local v0_12_ = "Visual"
v0_10_ = v0_10_:WaitForChild(v0_12_)
v0_11_ = v0_8_.Text
v0_9_.Text = v0_11_
v0_11_ = v0_8_.Text
v0_10_.Text = v0_11_
v0_11_ = function(a1)
    local fromScale = UDim2.fromScale
    local v1_4_ = a1.X
    local v1_3_ = v1_4_.Scale
    v1_4_ = v0_6_
    local v1_6_ = -0.010000
    local v1_7_ = 0.010000
    v1_4_ = v1_4_:NextNumber(v1_6_, v1_7_)
    local v1_2_ = v1_3_ + v1_4_
    local v1_5_ = a1.Y
    v1_4_ = v1_5_.Scale
    v1_5_ = v0_6_
    v1_7_ = -0.010000
    local v1_8_ = 0.010000
    v1_5_ = v1_5_:NextNumber(v1_7_, v1_8_)
    v1_3_ = v1_4_ + v1_5_
    return fromScale(v1_2_, v1_3_)
end
v0_12_ = function(a1, a2)
    local v2_3_ = a1.Time
    local v2_4_ = a2.Time
    if v2_3_ >= v2_4_ then
        local v2_2_ = false
    end
    local v2_2_ = true
    return v2_2_
end
local v0_13_ = function(a1)
    local v3_1_ = a1.Position
    local v3_3_ = clock
    v3_3_ = v3_3_()
    local v3_5_ = v0_6_
    v3_5_ = v3_5_:NextNumber()
    local v3_4_ = v3_5_ * 0.010000
    local v3_2_ = v3_3_ + v3_4_
    v3_3_ = nil
    v3_5_ = v0_0_
    v3_4_ = v3_5_.RenderStepped
    local v3_6_ = function()
        local v4_0_ = a1
        local v4_2_ = game
        v4_0_ = v4_0_:IsDescendantOf(v4_2_)
        if not v4_0_ then
            v4_0_ = v3_3_
            v4_0_:Disconnect()
            v4_0_ = v0_7_
            v3_3_ = nil
            return
        end
        local v4_1_ = clock
        v4_1_ = v4_1_()
        v4_2_ = v3_2_
        v4_0_ = v4_1_ - v4_2_
        v4_1_ = 0.010000
        if v4_1_ < v4_0_ then
            v4_0_ = v0_1_
            v4_2_ = a1
            local v4_3_ = v0_2_
            local v4_4_ = {}
            local v4_6_ = v3_1_
            local fromScale = UDim2.fromScale
            local v4_10_ = v4_6_.X
            local v4_9_ = v4_10_.Scale
            v4_10_ = v0_6_
            local v4_12_ = -0.010000
            local v4_13_ = 0.010000
            v4_10_ = v4_10_:NextNumber(v4_12_, v4_13_)
            local v4_8_ = v4_9_ + v4_10_
            local v4_11_ = v4_6_.Y
            v4_10_ = v4_11_.Scale
            v4_11_ = v0_6_
            v4_13_ = -0.010000
            local v4_14_ = 0.010000
            v4_11_ = v4_11_:NextNumber(v4_13_, v4_14_)
            v4_9_ = v4_10_ + v4_11_
            local v4_7_ = fromScale(v4_8_, v4_9_)
            local v4_5_ = v4_7_
            v4_4_.Position = v4_5_
            v4_0_ = v4_0_:Create(v4_2_, v4_3_, v4_4_)
            v4_0_:Play()
        end
    end
    v3_4_ = v3_4_:Connect(v3_6_)
    v3_3_ = v3_4_
end
local v0_14_ = function(a1)
    local v5_2_ = a1.Color
    local v5_1_ = v5_2_.Keypoints
    v5_2_ = #v5_1_
    local v5_3_ = clock
    v5_3_ = v5_3_()
    local v5_4_ = nil
    local v5_6_ = v0_0_
    local v5_5_ = v5_6_.RenderStepped
    local v5_7_ = function()
        local v6_0_ = a1
        local v6_2_ = game
        v6_0_ = v6_0_:IsDescendantOf(v6_2_)
        if not v6_0_ then
            v6_0_ = v5_4_
            v6_0_:Disconnect()
            v6_0_ = v0_7_
            v5_4_ = nil
            return
        end
        v6_2_ = clock
        v6_2_ = v6_2_()
        local v6_3_ = v5_3_
        local v6_1_ = v6_2_ - v6_3_
        v6_0_ = v6_1_ % 0.625000
        v6_1_ = v6_0_ / 0.625000
        v6_2_ = table.create(1)
        v6_3_ = v5_1_
        local v6_4_ = nil
        local v6_5_ = nil
        local v6_10_ = nil.Time
        local v6_9_ = v6_10_ + v6_1_
        local v6_8_ = v6_9_ % 1.000000
        v6_10_ = v6_2_
        local v6_11_ = new
        local v6_12_ = v6_8_
        local v6_13_ = nil.Value
        local insert = table.insert
        insert(v6_11_(v6_12_, v6_13_))
        local sort = table.sort
        v6_4_ = v6_2_
        v6_5_ = v0_12_
        sort(v6_4_, v6_5_)
        v6_3_ = new
        v6_4_ = 0
        local v6_6_ = v6_2_[-1]
        v6_5_ = v6_6_.Value
        v6_3_ = v6_3_(v6_4_, v6_5_)
        v6_2_[-1] = v6_3_
        v6_3_ = v5_2_
        v6_4_ = new
        v6_5_ = 1
        v6_8_ = v5_2_
        local v6_7_ = v6_2_[v6_8_]
        v6_6_ = v6_7_.Value
        v6_4_ = v6_4_(v6_5_, v6_6_)
        v6_2_[v6_3_] = v6_4_
        v6_3_ = a1
        v6_4_ = new_0
        v6_5_ = v6_2_
        v6_4_ = v6_4_(v6_5_)
        v6_3_.Color = v6_4_
    end
    v5_5_ = v5_5_:Connect(v5_7_)
    v5_4_ = v5_5_
end
local v0_17_ = "Text"
local v0_15_ = v0_8_:GetPropertyChangedSignal(v0_17_)
v0_17_ = function()
    local v7_0_ = v0_9_
    local v7_2_ = v0_8_
    local v7_1_ = v7_2_.Text
    v7_0_.Text = v7_1_
    v7_0_ = v0_10_
    v7_2_ = v0_8_
    v7_1_ = v7_2_.Text
    v7_0_.Text = v7_1_
end
v0_15_:Connect(v0_17_)
v0_17_ = "UIGradient"
v0_15_ = v0_9_:WaitForChild(v0_17_)
v0_17_ = v0_15_.Color
local v0_16_ = v0_17_.Keypoints
v0_17_ = #v0_16_
local v0_18_ = clock
v0_18_ = v0_18_()
local v0_19_ = nil
local v0_20_ = v0_0_.RenderStepped
local v0_22_ = function()
    local v8_0_ = v0_15_
    local v8_2_ = game
    v8_0_ = v8_0_:IsDescendantOf(v8_2_)
    if not v8_0_ then
        v8_0_ = v0_19_
        v8_0_:Disconnect()
        v8_0_ = v0_7_
        v0_19_ = nil
        return
    end
    v8_2_ = clock
    v8_2_ = v8_2_()
    local v8_3_ = v0_18_
    local v8_1_ = v8_2_ - v8_3_
    v8_0_ = v8_1_ % 0.625000
    v8_1_ = v8_0_ / 0.625000
    v8_2_ = table.create(1)
    v8_3_ = v0_16_
    local v8_4_ = nil
    local v8_5_ = nil
    local v8_10_ = nil.Time
    local v8_9_ = v8_10_ + v8_1_
    local v8_8_ = v8_9_ % 1.000000
    v8_10_ = v8_2_
    local v8_11_ = new
    local v8_12_ = v8_8_
    local v8_13_ = nil.Value
    local insert = table.insert
    insert(v8_11_(v8_12_, v8_13_))
    local sort = table.sort
    v8_4_ = v8_2_
    v8_5_ = v0_12_
    sort(v8_4_, v8_5_)
    v8_3_ = new
    v8_4_ = 0
    local v8_6_ = v8_2_[-1]
    v8_5_ = v8_6_.Value
    v8_3_ = v8_3_(v8_4_, v8_5_)
    v8_2_[-1] = v8_3_
    v8_3_ = v0_17_
    v8_4_ = new
    v8_5_ = 1
    v8_8_ = v0_17_
    local v8_7_ = v8_2_[v8_8_]
    v8_6_ = v8_7_.Value
    v8_4_ = v8_4_(v8_5_, v8_6_)
    v8_2_[v8_3_] = v8_4_
    v8_3_ = v0_15_
    v8_4_ = new_0
    v8_5_ = v8_2_
    v8_4_ = v8_4_(v8_5_)
    v8_3_.Color = v8_4_
end
v0_20_ = v0_20_:Connect(v0_22_)
v0_19_ = v0_20_
v0_17_ = "UIGradient"
v0_15_ = v0_10_:WaitForChild(v0_17_)
v0_17_ = v0_15_.Color
v0_16_ = v0_17_.Keypoints
v0_17_ = #v0_16_
v0_18_ = clock
v0_18_ = v0_18_()
v0_19_ = nil
v0_20_ = v0_0_.RenderStepped
v0_22_ = function()
    local v9_0_ = v0_15_
    local v9_2_ = game
    v9_0_ = v9_0_:IsDescendantOf(v9_2_)
    if not v9_0_ then
        v9_0_ = v0_19_
        v9_0_:Disconnect()
        v9_0_ = v0_7_
        v0_19_ = nil
        return
    end
    v9_2_ = clock
    v9_2_ = v9_2_()
    local v9_3_ = v0_18_
    local v9_1_ = v9_2_ - v9_3_
    v9_0_ = v9_1_ % 0.625000
    v9_1_ = v9_0_ / 0.625000
    v9_2_ = table.create(1)
    v9_3_ = v0_16_
    local v9_4_ = nil
    local v9_5_ = nil
    local v9_10_ = nil.Time
    local v9_9_ = v9_10_ + v9_1_
    local v9_8_ = v9_9_ % 1.000000
    v9_10_ = v9_2_
    local v9_11_ = new
    local v9_12_ = v9_8_
    local v9_13_ = nil.Value
    local insert = table.insert
    insert(v9_11_(v9_12_, v9_13_))
    local sort = table.sort
    v9_4_ = v9_2_
    v9_5_ = v0_12_
    sort(v9_4_, v9_5_)
    v9_3_ = new
    v9_4_ = 0
    local v9_6_ = v9_2_[-1]
    v9_5_ = v9_6_.Value
    v9_3_ = v9_3_(v9_4_, v9_5_)
    v9_2_[-1] = v9_3_
    v9_3_ = v0_17_
    v9_4_ = new
    v9_5_ = 1
    v9_8_ = v0_17_
    local v9_7_ = v9_2_[v9_8_]
    v9_6_ = v9_7_.Value
    v9_4_ = v9_4_(v9_5_, v9_6_)
    v9_2_[v9_3_] = v9_4_
    v9_3_ = v0_15_
    v9_4_ = new_0
    v9_5_ = v9_2_
    v9_4_ = v9_4_(v9_5_)
    v9_3_.Color = v9_4_
end
v0_20_ = v0_20_:Connect(v0_22_)
v0_19_ = v0_20_
v0_15_ = v0_9_.Position
v0_17_ = clock
v0_17_ = v0_17_()
v0_19_ = v0_6_:NextNumber()
v0_18_ = v0_19_ * 0.010000
v0_16_ = v0_17_ + v0_18_
v0_17_ = nil
v0_18_ = v0_0_.RenderStepped
v0_20_ = function()
    local v10_0_ = v0_9_
    local v10_2_ = game
    v10_0_ = v10_0_:IsDescendantOf(v10_2_)
    if not v10_0_ then
        v10_0_ = v0_17_
        v10_0_:Disconnect()
        v10_0_ = v0_7_
        v0_17_ = nil
        return
    end
    local v10_1_ = clock
    v10_1_ = v10_1_()
    v10_2_ = v0_16_
    v10_0_ = v10_1_ - v10_2_
    v10_1_ = 0.010000
    if v10_1_ < v10_0_ then
        v10_0_ = v0_1_
        v10_2_ = v0_9_
        local v10_3_ = v0_2_
        local v10_4_ = {}
        local v10_6_ = v0_15_
        local fromScale = UDim2.fromScale
        local v10_10_ = v10_6_.X
        local v10_9_ = v10_10_.Scale
        v10_10_ = v0_6_
        local v10_12_ = -0.010000
        local v10_13_ = 0.010000
        v10_10_ = v10_10_:NextNumber(v10_12_, v10_13_)
        local v10_8_ = v10_9_ + v10_10_
        local v10_11_ = v10_6_.Y
        v10_10_ = v10_11_.Scale
        v10_11_ = v0_6_
        v10_13_ = -0.010000
        local v10_14_ = 0.010000
        v10_11_ = v10_11_:NextNumber(v10_13_, v10_14_)
        v10_9_ = v10_10_ + v10_11_
        local v10_7_ = fromScale(v10_8_, v10_9_)
        local v10_5_ = v10_7_
        v10_4_.Position = v10_5_
        v10_0_ = v10_0_:Create(v10_2_, v10_3_, v10_4_)
        v10_0_:Play()
    end
end
v0_18_ = v0_18_:Connect(v0_20_)
v0_17_ = v0_18_
v0_15_ = v0_10_.Position
v0_17_ = clock
v0_17_ = v0_17_()
v0_19_ = v0_6_:NextNumber()
v0_18_ = v0_19_ * 0.010000
v0_16_ = v0_17_ + v0_18_
v0_17_ = nil
v0_18_ = v0_0_.RenderStepped
v0_20_ = function()
    local v11_0_ = v0_10_
    local v11_2_ = game
    v11_0_ = v11_0_:IsDescendantOf(v11_2_)
    if not v11_0_ then
        v11_0_ = v0_17_
        v11_0_:Disconnect()
        v11_0_ = v0_7_
        v0_17_ = nil
        return
    end
    local v11_1_ = clock
    v11_1_ = v11_1_()
    v11_2_ = v0_16_
    v11_0_ = v11_1_ - v11_2_
    v11_1_ = 0.010000
    if v11_1_ < v11_0_ then
        v11_0_ = v0_1_
        v11_2_ = v0_10_
        local v11_3_ = v0_2_
        local v11_4_ = {}
        local v11_6_ = v0_15_
        local fromScale = UDim2.fromScale
        local v11_10_ = v11_6_.X
        local v11_9_ = v11_10_.Scale
        v11_10_ = v0_6_
        local v11_12_ = -0.010000
        local v11_13_ = 0.010000
        v11_10_ = v11_10_:NextNumber(v11_12_, v11_13_)
        local v11_8_ = v11_9_ + v11_10_
        local v11_11_ = v11_6_.Y
        v11_10_ = v11_11_.Scale
        v11_11_ = v0_6_
        v11_13_ = -0.010000
        local v11_14_ = 0.010000
        v11_11_ = v11_11_:NextNumber(v11_13_, v11_14_)
        v11_9_ = v11_10_ + v11_11_
        local v11_7_ = fromScale(v11_8_, v11_9_)
        local v11_5_ = v11_7_
        v11_4_.Position = v11_5_
        v11_0_ = v11_0_:Create(v11_2_, v11_3_, v11_4_)
        v11_0_:Play()
    end
end
v0_18_ = v0_18_:Connect(v0_20_)
v0_17_ = v0_18_
