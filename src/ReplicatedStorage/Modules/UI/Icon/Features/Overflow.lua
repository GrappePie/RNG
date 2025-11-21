-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = {}
local v0_1_ = {}
local v0_2_ = {}
local v0_3_ = nil
local v0_5_ = workspace
local v0_4_ = v0_5_.CurrentCamera
v0_5_ = {}
local v0_6_ = {}
local v0_7_ = require
local v0_11_ = script
local v0_10_ = v0_11_.Parent
local v0_9_ = v0_10_.Parent
local v0_8_ = v0_9_.Utility
v0_7_ = v0_7_(v0_8_)
v0_8_ = nil
v0_9_ = function(a1)
    v0_8_ = a1
    local v1_2_ = v0_8_
    local v1_1_ = v1_2_.iconsDictionary
    v0_3_ = v1_1_
    v1_1_ = nil
    v1_2_ = pairs
    local v1_5_ = v0_8_
    local v1_3_ = v1_5_.container
    local v1_2_, v1_3_, v1_4_ = v1_2_(v1_3_)
    for v1_5_, v1_6_ in v1_2_, v1_3_, v1_4_ do
        if v1_1_ == nil then
            local v1_7_ = v1_6_.ScreenInsets
            local TopbarSafeInsets = Enum.ScreenInsets.TopbarSafeInsets
            if v1_7_ == TopbarSafeInsets then
                v1_1_ = v1_6_
            end
        end
        local v1_7_ = pairs
        local v1_8_ = v1_6_.Holders
        local v1_7_, v1_8_, v1_9_ = v1_7_(v1_8_:GetChildren())
        for v1_10_, v1_11_ in v1_7_, v1_8_, v1_9_ do
            local v1_14_ = "IsAHolder"
            local v1_12_ = v1_11_:GetAttribute(v1_14_)
            if v1_12_ then
                v1_12_ = v0_1_
                local v1_13_ = v1_11_.Name
                v1_12_[v1_13_] = v1_11_
            end
        end
    end
    v1_2_ = false
    v1_4_ = v0_7_
    v1_3_ = v1_4_.createStagger
    v1_4_ = 0.100000
    v1_5_ = function(a1)
        local v2_1_ = v1_2_
        if not v2_1_ then
            return
        end
        if not a1 then
            local v2_2_ = v0_0_
            v2_1_ = v2_2_.updateAvailableIcons
            v2_2_ = "Center"
            v2_1_(v2_2_)
        end
        local v2_2_ = v0_0_
        v2_1_ = v2_2_.updateBoundary
        v2_2_ = "Left"
        v2_1_(v2_2_)
        v2_2_ = v0_0_
        v2_1_ = v2_2_.updateBoundary
        v2_2_ = "Right"
        v2_1_(v2_2_)
    end
    v1_3_ = v1_3_(v1_4_, v1_5_)
    local delay = task.delay
    v1_5_ = 1
    local v1_6_ = function()
        local v3_0_ = true
        v1_2_ = v3_0_
        v3_0_ = v1_3_
        v3_0_()
    end
    delay(v1_5_, v1_6_)
    v1_5_ = v0_8_
    v1_4_ = v1_5_.iconAdded
    v1_6_ = v1_3_
    v1_4_:Connect(v1_6_)
    v1_5_ = v0_8_
    v1_4_ = v1_5_.iconRemoved
    v1_6_ = v1_3_
    v1_4_:Connect(v1_6_)
    v1_5_ = v0_8_
    v1_4_ = v1_5_.iconChanged
    v1_6_ = v1_3_
    v1_4_:Connect(v1_6_)
    v1_4_ = v0_4_
    v1_6_ = "ViewportSize"
    v1_4_ = v1_4_:GetPropertyChangedSignal(v1_6_)
    v1_6_ = function()
        local v4_0_ = v1_3_
        local v4_1_ = true
        v4_0_(v4_1_)
    end
    v1_4_:Connect(v1_6_)
    v1_6_ = "AbsoluteSize"
    v1_4_ = v1_1_:GetPropertyChangedSignal(v1_6_)
    v1_6_ = function()
        local v5_0_ = v1_3_
        local v5_1_ = true
        v5_0_(v5_1_)
    end
    v1_4_:Connect(v1_6_)
end
v0_0_.start = v0_9_
v0_9_ = function(a1, a2)
    local v6_2_ = a1.widget
    local v6_5_ = "TargetWidth"
    local v6_3_ = v6_2_:GetAttribute(v6_5_)
    if not v6_3_ then
        local v6_4_ = v6_2_.AbsoluteSize
        v6_3_ = v6_4_.X
    end
    return v6_3_
end
v0_0_.getWidth = v0_9_
v0_9_ = function(a1)
    local v7_2_ = v0_2_
    local v7_1_ = v7_2_[a1]
    if not v7_1_ then
        local v7_3_ = v0_0_
        v7_2_ = v7_3_.updateAvailableIcons
        v7_3_ = a1
        v7_2_ = v7_2_(v7_3_)
        v7_1_ = v7_2_
    end
    return v7_1_
end
v0_0_.getAvailableIcons = v0_9_
v0_9_ = function(a1)
    local v8_1_ = 0
    local v8_3_ = v0_1_
    local v8_2_ = v8_3_[a1]
    v8_3_ = v8_2_.UIListLayout
    local v8_4_ = {}
    local v8_5_ = pairs
    local v8_6_ = v0_3_
    local v8_5_, v8_6_, v8_7_ = v8_5_(v8_6_)
    for v8_8_, v8_9_ in v8_5_, v8_6_, v8_7_ do
        local v8_10_ = v8_9_.parentIconUID
        local v8_11_ = not v8_10_
        if not v8_11_ then
            local v8_12_ = v0_6_
            v8_11_ = v8_12_[v8_10_]
        end
        local v8_13_ = v0_6_
        local v8_14_ = v8_9_.UID
        local v8_12_ = v8_13_[v8_14_]
        if v8_11_ then
            v8_13_ = v8_9_.alignment
            if v8_13_ == a1 then
                if not v8_12_ then
                    v8_14_ = v8_4_
                    local v8_15_ = v8_9_
                    local insert = table.insert
                    insert(v8_14_, v8_15_)
                    v8_1_ += 1.000000
                end
            end
        end
    end
    v8_5_ = 0
    if v8_1_ <= v8_5_ then
        v8_5_ = {}
        return v8_5_
    end
    local sort = table.sort
    v8_6_ = v8_4_
    v8_7_ = function(a1, a2)
        local v9_3_ = a1.widget
        local v9_2_ = v9_3_.LayoutOrder
        local v9_4_ = a2.widget
        v9_3_ = v9_4_.LayoutOrder
        v9_4_ = a1.parentIconUID
        local v9_5_ = a2.parentIconUID
        if v9_4_ == v9_5_ then
            if v9_2_ < v9_3_ then
                local v9_6_ = true
                return v9_6_
            end
            if v9_3_ < v9_2_ then
                local v9_6_ = false
                return v9_6_
            end
            local v9_9_ = a1.widget
            local v9_8_ = v9_9_.AbsolutePosition
            local v9_7_ = v9_8_.X
            local v9_10_ = a2.widget
            v9_9_ = v9_10_.AbsolutePosition
            v9_8_ = v9_9_.X
            if v9_7_ >= v9_8_ then
                local v9_6_ = false
            end
            local v9_6_ = true
            return v9_6_
        end
        if v9_5_ then
            local v9_6_ = false
            return v9_6_
        end
        if v9_4_ then
            local v9_6_ = true
            return v9_6_
        end
    end
    sort(v8_6_, v8_7_)
    v8_5_ = v0_2_
    v8_5_[a1] = v8_4_
    return v8_4_
end
v0_0_.updateAvailableIcons = v0_9_
v0_9_ = function(a1, a2)
    if a1 ~= "Left" then
        local v10_2_ = false
    end
    local v10_2_ = true
    local v10_4_ = v0_1_
    local v10_3_ = v10_4_[a1]
    local v10_5_ = v10_3_.AbsolutePosition
    v10_4_ = v10_5_.X
    local v10_6_ = v10_3_.AbsoluteSize
    v10_5_ = v10_6_.X
    v10_6_ = v10_3_.UIListLayout
    local v10_8_ = v10_6_.Padding
    local v10_7_ = v10_8_.Offset
    if v10_2_ then
        v10_8_ = v10_4_
        if not v10_8_ then
            v10_8_ = v10_4_ + v10_5_
        end
    end
    v10_8_ = v10_4_ + v10_5_
    local v10_9_ = {}
    if v10_2_ then
        local v10_11_ = v0_7_
        local v10_10_ = v10_11_.reverseTable
        v10_11_ = a2
        v10_10_(v10_11_)
    end
    local v10_12_ = #a2
    local v10_10_ = 1
    local v10_11_ = -1
    for v10_12_ = v10_12_, v10_10_, v10_11_ do
        local v10_13_ = a2[v10_12_]
        local v10_15_ = v0_0_
        local v10_14_ = v10_15_.getWidth
        v10_15_ = v10_13_
        v10_14_ = v10_14_(v10_15_)
        if not v10_2_ then
            v10_8_ -= v10_14_
        end
        v10_15_ = v10_13_.UID
        v10_9_[v10_15_] = v10_8_
        if v10_2_ then
            v10_8_ += v10_14_
        end
        if v10_2_ then
            v10_15_ = v10_7_
            if not v10_15_ then
                v10_15_ = -v10_7_
            end
        end
        v10_15_ = -v10_7_
        v10_8_ += v10_15_
    end
    return v10_9_
end
v0_0_.getRealXPositions = v0_9_
v0_9_ = function(a1)
    local v11_2_ = v0_1_
    local v11_1_ = v11_2_[a1]
    v11_2_ = v11_1_.UIListLayout
    local v11_4_ = v11_1_.AbsolutePosition
    local v11_3_ = v11_4_.X
    local v11_5_ = v11_1_.AbsoluteSize
    v11_4_ = v11_5_.X
    local v11_6_ = v11_2_.Padding
    v11_5_ = v11_6_.Offset
    local v11_7_ = v11_2_.Padding
    v11_6_ = v11_7_.Offset
    local v11_8_ = v0_0_
    v11_7_ = v11_8_.updateAvailableIcons
    v11_8_ = a1
    v11_7_ = v11_7_(v11_8_)
    v11_8_ = 0
    local v11_9_ = 0
    local v11_10_ = pairs
    local v11_11_ = v11_7_
    local v11_10_, v11_11_, v11_12_ = v11_10_(v11_11_)
    for v11_13_, v11_14_ in v11_10_, v11_11_, v11_12_ do
        local v11_17_ = v0_0_
        local v11_16_ = v11_17_.getWidth
        v11_17_ = v11_14_
        v11_16_ = v11_16_(v11_17_)
        local v11_15_ = v11_16_ + v11_6_
        v11_8_ += v11_15_
    end
    v11_10_ = 0
    if v11_9_ <= v11_10_ then
        return
    end
    if a1 ~= "Central" then
        v11_10_ = false
    end
    v11_10_ = true
    if a1 ~= "Left" then
        v11_11_ = false
    end
    v11_11_ = true
    v11_12_ = not v11_11_
    local v11_14_ = v0_5_
    local v11_13_ = v11_14_[a1]
    if not v11_13_ then
        if not v11_10_ then
            v11_14_ = #v11_7_
            local v11_15_ = 0
            if v11_15_ < v11_14_ then
                if v11_11_ then
                    v11_14_ = -9999999.000000
                else
                    v11_14_ = 9999999.000000
                end
                local v11_16_ = v0_8_
                v11_15_ = v11_16_.new
                v11_15_ = v11_15_()
                v11_13_ = v11_15_
                local v11_17_ = 6069276526.000000
                local v11_18_ = "Deselected"
                v11_13_:setImage(v11_17_, v11_18_)
                v11_18_ = "Overflow"
                local v11_19_ = a1
                v11_17_ = v11_18_
                v11_13_:setName(v11_17_)
                v11_17_ = v11_14_
                v11_13_:setOrder(v11_17_)
                v11_17_ = a1
                v11_13_:setAlignment(v11_17_)
                v11_17_ = false
                v11_13_:autoDeselect(v11_17_)
                v11_15_ = true
                v11_13_.isAnOverflow = v11_15_
                v11_17_ = "OverflowStart"
                v11_18_ = v11_13_
                v11_13_:select(v11_17_, v11_18_)
                v11_17_ = false
                v11_13_:setEnabled(v11_17_)
                v11_15_ = v0_5_
                v11_15_[a1] = v11_13_
                v11_15_ = v0_6_
                v11_16_ = v11_13_.UID
                v11_17_ = true
                v11_15_[v11_16_] = v11_17_
            end
        end
    end
    if a1 == "Left" then
        v11_14_ = "Right"
    else
        v11_14_ = "Left"
    end
    local v11_16_ = v0_0_
    local v11_15_ = v11_16_.updateAvailableIcons
    v11_16_ = v11_14_
    v11_15_ = v11_15_(v11_16_)
    if v11_11_ then
        v11_16_ = v11_15_[-1]
        if not v11_16_ then
            v11_16_ = v11_12_
            if v11_16_ then
                local v11_17_ = #v11_15_
                v11_16_ = v11_15_[v11_17_]
            end
        end
    end
    v11_16_ = v11_12_
    if v11_16_ then
        local v11_17_ = #v11_15_
        v11_16_ = v11_15_[v11_17_]
    end
    local v11_18_ = v0_5_
    local v11_17_ = v11_18_[v11_14_]
    if v11_11_ then
        v11_18_ = v11_3_ + v11_4_
        if not v11_18_ then
            v11_18_ = v11_3_
        end
    end
    v11_18_ = v11_3_
    if v11_16_ then
        local v11_19_ = v11_16_.widget
        local v11_21_ = v0_0_
        local v11_20_ = v11_21_.getRealXPositions
        v11_21_ = v11_14_
        local v11_22_ = v11_15_
        v11_20_ = v11_20_(v11_21_, v11_22_)
        v11_22_ = v11_16_.UID
        v11_21_ = v11_20_[v11_22_]
        local v11_23_ = v0_0_
        v11_22_ = v11_23_.getWidth
        v11_23_ = v11_16_
        v11_22_ = v11_22_(v11_23_)
        if v11_11_ then
            v11_23_ = v11_21_ - v11_5_
            if not v11_23_ then
                local v11_24_ = v11_21_ + v11_22_
                v11_23_ = v11_24_ + v11_5_
            end
        end
        local v11_24_ = v11_21_ + v11_22_
        v11_23_ = v11_24_ + v11_5_
        v11_18_ = v11_23_
    end
    local v11_20_ = v0_0_
    local v11_19_ = v11_20_.getAvailableIcons
    v11_20_ = "Center"
    v11_19_ = v11_19_(v11_20_)
    if v11_11_ then
        v11_20_ = 1
    else
        v11_20_ = #v11_19_
    end
    local v11_21_ = v11_19_[v11_20_]
    if v11_21_ then
        local v11_22_ = v11_21_.hasRelocatedInOverflow
        if not v11_22_ then
            if v11_11_ then
                local v11_23_ = #v11_7_
                v11_22_ = v11_7_[v11_23_]
                if not v11_22_ then
                    v11_22_ = v11_12_
                    if v11_22_ then
                        v11_22_ = v11_7_[-1]
                    end
                end
            end
            v11_22_ = v11_12_
            if v11_22_ then
                v11_22_ = v11_7_[-1]
            end
            local v11_25_ = v11_21_.widget
            local v11_24_ = v11_25_.AbsolutePosition
            local v11_23_ = v11_24_.X
            local v11_26_ = v11_22_.widget
            v11_25_ = v11_26_.AbsolutePosition
            v11_24_ = v11_25_.X
            v11_26_ = v0_0_
            v11_25_ = v11_26_.getWidth
            v11_26_ = v11_22_
            v11_25_ = v11_25_(v11_26_)
            if v11_11_ then
                v11_26_ = v11_23_ - v11_5_
                if not v11_26_ then
                    local v11_29_ = v0_0_
                    local v11_28_ = v11_29_.getWidth
                    v11_29_ = v11_21_
                    v11_28_ = v11_28_(v11_29_)
                    local v11_27_ = v11_23_ + v11_28_
                    v11_26_ = v11_27_ + v11_5_
                end
            end
            local v11_29_ = v0_0_
            local v11_28_ = v11_29_.getWidth
            v11_29_ = v11_21_
            v11_28_ = v11_28_(v11_29_)
            local v11_27_ = v11_23_ + v11_28_
            v11_26_ = v11_27_ + v11_5_
            if v11_11_ then
                v11_27_ = v11_24_ + v11_25_
                if not v11_27_ then
                    v11_27_ = v11_24_
                end
            end
            v11_27_ = v11_24_
            if v11_11_ then
                if v11_26_ < v11_27_ then
                    local v11_30_ = "Left"
                    v11_21_:align(v11_30_)
                    v11_28_ = true
                    v11_21_.hasRelocatedInOverflow = v11_28_
                    if v11_12_ then
                        if v11_27_ < v11_26_ then
                            v11_30_ = "Right"
                            v11_21_:align(v11_30_)
                            v11_28_ = true
                            v11_21_.hasRelocatedInOverflow = v11_28_
                        end
                    end
                end
            else
                if v11_12_ then
                    if v11_27_ < v11_26_ then
                        local v11_30_ = "Right"
                        v11_21_:align(v11_30_)
                        v11_28_ = true
                        v11_21_.hasRelocatedInOverflow = v11_28_
                    end
                end
            end
        end
    end
    if v11_13_ then
        local v11_22_ = v11_18_
        local v11_25_ = "Menu"
        local v11_23_ = v11_13_:getInstance(v11_25_)
        local v11_24_ = v11_3_ + v11_4_
        v11_25_ = v11_4_
        if v11_23_ then
            if v11_17_ then
                local v11_26_ = v11_17_.widget
                local v11_28_ = v11_26_.AbsolutePosition
                local v11_27_ = v11_28_.X
                local v11_29_ = v0_0_
                v11_28_ = v11_29_.getWidth
                v11_29_ = v11_17_
                v11_28_ = v11_28_(v11_29_)
                if v11_11_ then
                    v11_29_ = v11_27_ - v11_5_
                    if not v11_29_ then
                        local v11_30_ = v11_27_ + v11_28_
                        v11_29_ = v11_30_ + v11_5_
                    end
                end
                local v11_30_ = v11_27_ + v11_28_
                v11_29_ = v11_30_ + v11_5_
                local v11_32_ = "Menu"
                v11_30_ = v11_17_:getInstance(v11_32_)
                local v11_33_ = v11_23_.AbsoluteCanvasSize
                v11_32_ = v11_33_.X
                local v11_34_ = v11_30_.AbsoluteCanvasSize
                v11_33_ = v11_34_.X
                if v11_33_ > v11_32_ then
                    local v11_31_ = false
                end
                local v11_31_ = true
                v11_33_ = v11_4_ / 2.000000
                v11_32_ = v11_3_ + v11_33_
                if v11_11_ then
                    v11_34_ = v11_5_ / 2.000000
                    v11_33_ = v11_32_ - v11_34_
                    if not v11_33_ then
                        v11_34_ = v11_5_ / 2.000000
                        v11_33_ = v11_32_ + v11_34_
                    end
                end
                v11_34_ = v11_5_ / 2.000000
                v11_33_ = v11_32_ + v11_34_
                v11_22_ = v11_33_
                if v11_31_ then
                    v11_22_ = v11_29_
                end
                if v11_11_ then
                    v11_32_ = v11_22_ - v11_3_
                    if not v11_32_ then
                        v11_32_ = v11_24_ - v11_22_
                    end
                end
                v11_32_ = v11_24_ - v11_22_
                v11_25_ = v11_32_
            end
        end
        local v11_26_ = v11_23_
        if v11_26_ then
            local v11_28_ = "MaxWidth"
            v11_26_ = v11_23_:GetAttribute(v11_28_)
        end
        local v11_28_ = v0_7_
        local v11_27_ = v11_28_.round
        v11_28_ = v11_25_
        v11_27_ = v11_27_(v11_28_)
        v11_25_ = v11_27_
        if v11_23_ then
            if v11_26_ ~= v11_25_ then
                local v11_29_ = "MaxWidth"
                local v11_30_ = v11_25_
                v11_23_:SetAttribute(v11_29_, v11_30_)
            end
        end
    end
    local v11_22_ = false
    local v11_24_ = v0_0_
    local v11_23_ = v11_24_.getRealXPositions
    v11_24_ = a1
    local v11_25_ = v11_7_
    v11_23_ = v11_23_(v11_24_, v11_25_)
    local v11_26_ = #v11_7_
    v11_24_ = 1
    v11_25_ = -1
    for v11_26_ = v11_26_, v11_24_, v11_25_ do
        local v11_27_ = v11_7_[v11_26_]
        local v11_29_ = v0_0_
        local v11_28_ = v11_29_.getWidth
        v11_29_ = v11_27_
        v11_28_ = v11_28_(v11_29_)
        local v11_30_ = v11_27_.UID
        v11_29_ = v11_23_[v11_30_]
        if v11_11_ then
            v11_30_ = v11_29_ + v11_28_
            if v11_18_ > v11_30_ then
                if v11_12_ then
                    if v11_29_ <= v11_18_ then
                        v11_22_ = true
                    end
                end
            end
        end
        if v11_12_ then
            if v11_29_ <= v11_18_ then
                v11_22_ = true
            end
        end
    end
    v11_26_ = #v11_7_
    v11_24_ = 1
    v11_25_ = -1
    for v11_26_ = v11_26_, v11_24_, v11_25_ do
        local v11_27_ = v11_7_[v11_26_]
        local v11_29_ = v0_6_
        local v11_30_ = v11_27_.UID
        local v11_28_ = v11_29_[v11_30_]
        if not v11_28_ then
            if v11_22_ then
                v11_29_ = v11_27_.parentIconUID
                if not v11_29_ then
                    local v11_31_ = v11_13_
                    v11_27_:joinMenu(v11_31_)
                else
                    if not v11_22_ then
                        v11_29_ = v11_27_.parentIconUID
                        if v11_29_ then
                            v11_27_:leave()
                        end
                    end
                end
            else
                if not v11_22_ then
                    v11_29_ = v11_27_.parentIconUID
                    if v11_29_ then
                        v11_27_:leave()
                    end
                end
            end
        end
    end
    v11_24_ = v11_13_.isEnabled
    if v11_24_ ~= v11_22_ then
        v11_26_ = v11_22_
        v11_13_:setEnabled(v11_26_)
    end
    v11_24_ = v11_13_.isEnabled
    if v11_24_ then
        v11_24_ = v11_13_.overflowAlreadyOpened
        if not v11_24_ then
            v11_24_ = true
            v11_13_.overflowAlreadyOpened = v11_24_
            v11_13_:select()
        end
    end
end
v0_0_.updateBoundary = v0_9_
return v0_0_
