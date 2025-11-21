-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = function(a1, a2)
    local new = Instance.new
    local v1_3_ = "Frame"
    local v1_2_ = new(v1_3_)
    v1_3_ = "Notice"
    v1_2_.Name = v1_3_
    v1_3_ = 25
    v1_2_.ZIndex = v1_3_
    local X = Enum.AutomaticSize.X
    v1_2_.AutomaticSize = X
    local fromRGB = Color3.fromRGB
    local v1_4_ = 0
    local v1_5_ = 0
    local v1_6_ = 0
    v1_3_ = fromRGB(v1_4_, v1_5_, v1_6_)
    v1_2_.BorderColor3 = v1_3_
    v1_3_ = 0
    v1_2_.BorderSizePixel = v1_3_
    v1_3_ = 0.100000
    v1_2_.BackgroundTransparency = v1_3_
    local fromRGB = Color3.fromRGB
    v1_4_ = 255
    v1_5_ = 255
    v1_6_ = 255
    v1_3_ = fromRGB(v1_4_, v1_5_, v1_6_)
    v1_2_.BackgroundColor3 = v1_3_
    v1_3_ = false
    v1_2_.Visible = v1_3_
    v1_3_ = a1.widget
    v1_2_.Parent = v1_3_
    local new = Instance.new
    v1_4_ = "UICorner"
    v1_3_ = new(v1_4_)
    local new = UDim.new
    v1_5_ = 1
    v1_6_ = 0
    v1_4_ = new(v1_5_, v1_6_)
    v1_3_.CornerRadius = v1_4_
    v1_3_.Parent = v1_2_
    local new = Instance.new
    v1_5_ = "UIStroke"
    v1_4_ = new(v1_5_)
    v1_4_.Parent = v1_2_
    local new = Instance.new
    v1_6_ = "TextLabel"
    v1_5_ = new(v1_6_)
    v1_6_ = "NoticeLabel"
    v1_5_.Name = v1_6_
    v1_6_ = 26
    v1_5_.ZIndex = v1_6_
    local new = Vector2.new
    local v1_7_ = 0.500000
    local v1_8_ = 0.500000
    v1_6_ = new(v1_7_, v1_8_)
    v1_5_.AnchorPoint = v1_6_
    local X = Enum.AutomaticSize.X
    v1_5_.AutomaticSize = X
    local new = UDim2.new
    v1_7_ = 1
    v1_8_ = 0
    local v1_9_ = 1
    local v1_10_ = 0
    v1_6_ = new(v1_7_, v1_8_, v1_9_, v1_10_)
    v1_5_.Size = v1_6_
    v1_6_ = 1
    v1_5_.BackgroundTransparency = v1_6_
    local new = UDim2.new
    v1_7_ = 0.500000
    v1_8_ = 0
    v1_9_ = 0.515000
    v1_10_ = 0
    v1_6_ = new(v1_7_, v1_8_, v1_9_, v1_10_)
    v1_5_.Position = v1_6_
    local fromRGB = Color3.fromRGB
    v1_7_ = 0
    v1_8_ = 0
    v1_9_ = 0
    v1_6_ = fromRGB(v1_7_, v1_8_, v1_9_)
    v1_5_.BackgroundColor3 = v1_6_
    local Size14 = Enum.FontSize.Size14
    v1_5_.FontSize = Size14
    local fromRGB = Color3.fromRGB
    v1_7_ = 0
    v1_8_ = 0
    v1_9_ = 0
    v1_6_ = fromRGB(v1_7_, v1_8_, v1_9_)
    v1_5_.TextColor3 = v1_6_
    v1_6_ = "1"
    v1_5_.Text = v1_6_
    v1_6_ = true
    v1_5_.TextWrapped = v1_6_
    v1_6_ = true
    v1_5_.TextWrap = v1_6_
    local Arial = Enum.Font.Arial
    v1_5_.Font = Arial
    v1_5_.Parent = v1_2_
    v1_8_ = script
    v1_7_ = v1_8_.Parent
    v1_6_ = v1_7_.Parent
    v1_7_ = v1_6_.Packages
    v1_8_ = require
    v1_9_ = v1_7_.Janitor
    v1_8_ = v1_8_(v1_9_)
    v1_9_ = require
    v1_10_ = v1_7_.GoodSignal
    v1_9_ = v1_9_(v1_10_)
    v1_10_ = require
    local v1_11_ = v1_6_.Utility
    v1_10_ = v1_10_(v1_11_)
    v1_11_ = a1.noticeChanged
    local v1_13_ = function(a1)
        if not a1 then
            return
        end
        local v2_2_ = 99
        if v2_2_ >= a1 then
            local v2_1_ = false
        end
        local v2_1_ = true
        if v2_1_ then
            v2_2_ = "99+"
        else
            v2_2_ = a1
        end
        local v2_3_ = v1_5_
        v2_3_.Text = v2_2_
        if v2_1_ then
            v2_3_ = v1_5_
            local v2_4_ = 11
            v2_3_.TextSize = v2_4_
        end
        v2_3_ = true
        local v2_4_ = 1
        if a1 < v2_4_ then
            v2_3_ = false
        end
        local v2_5_ = a2
        v2_4_ = v2_5_.getIconByUID
        local v2_6_ = a1
        v2_5_ = v2_6_.parentIconUID
        v2_4_ = v2_4_(v2_5_)
        v2_5_ = true
        local v2_8_ = a1
        local v2_7_ = v2_8_.dropdownIcons
        v2_6_ = #v2_7_
        v2_7_ = 0
        if v2_7_ >= v2_6_ then
            v2_8_ = a1
            v2_7_ = v2_8_.menuIcons
            v2_6_ = #v2_7_
            v2_7_ = 0
            if v2_7_ >= v2_6_ then
                v2_5_ = false
            end
            v2_5_ = true
        end
        v2_7_ = a1
        v2_6_ = v2_7_.isSelected
        if v2_6_ then
            if v2_5_ then
                v2_3_ = false
            else
                if v2_4_ then
                    v2_6_ = v2_4_.isSelected
                    if not v2_6_ then
                        v2_3_ = false
                    end
                end
            end
        else
            if v2_4_ then
                v2_6_ = v2_4_.isSelected
                if not v2_6_ then
                    v2_3_ = false
                end
            end
        end
        v2_7_ = v1_10_
        v2_6_ = v2_7_.setVisible
        v2_7_ = v1_2_
        v2_8_ = v2_3_
        local v2_9_ = "NoticeHandler"
        v2_6_(v2_7_, v2_8_, v2_9_)
    end
    v1_11_:Connect(v1_13_)
    v1_11_ = a1.noticeStarted
    v1_13_ = function(a1, a2)
        if not a1 then
            local v3_2_ = a1
            v3_0_ = v3_2_.deselected
        end
        local v3_3_ = a2
        local v3_2_ = v3_3_.getIconByUID
        local v3_4_ = a1
        v3_3_ = v3_4_.parentIconUID
        v3_2_ = v3_2_(v3_3_)
        if v3_2_ then
            local v3_5_ = a1
            v3_2_:notify(v3_5_)
        end
        v3_4_ = a1
        v3_3_ = v3_4_.janitor
        local v3_6_ = v1_8_
        local v3_5_ = v3_6_.new
        v3_3_ = v3_3_:add(v3_5_())
        local v3_7_ = v1_9_
        v3_6_ = v3_7_.new
        v3_4_ = v3_3_:add(v3_6_())
        local v3_8_ = a1
        v3_7_ = v3_8_.endNotices
        local v3_9_ = function()
            local v4_0_ = v3_4_
            v4_0_:Fire()
        end
        v3_3_:add(v3_7_:Connect(v3_9_))
        v3_9_ = function()
            local v5_0_ = v3_4_
            v5_0_:Fire()
        end
        v3_3_:add(a1:Connect(v3_9_))
        v3_5_ = a2
        if not v3_5_ then
            v3_6_ = v1_10_
            v3_5_ = v3_6_.generateUID
            v3_5_ = v3_5_()
        end
        v3_1_ = v3_5_
        v3_6_ = a1
        v3_5_ = v3_6_.notices
        v3_6_ = {}
        v3_6_.completeSignal = v3_4_
        v3_6_.clearNoticeEvent = a1
        v3_5_[v3_1_] = v3_6_
        v3_5_ = a1
        v3_7_ = "NoticeLabel"
        v3_5_ = v3_5_:getInstance(v3_7_)
        v3_6_ = function()
            local v6_1_ = a1
            local v6_0_ = v6_1_.noticeChanged
            local v6_3_ = a1
            local v6_2_ = v6_3_.totalNotices
            v6_0_:Fire(v6_2_)
        end
        v3_8_ = a1
        v3_7_ = v3_8_.notified
        v3_9_ = v3_1_
        v3_7_:Fire(v3_9_)
        v3_7_ = a1
        v3_8_ = v3_7_.totalNotices
        v3_8_ += 1.000000
        v3_7_.totalNotices = v3_8_
        v3_8_ = a1
        v3_7_ = v3_8_.noticeChanged
        local v3_10_ = a1
        v3_9_ = v3_10_.totalNotices
        v3_7_:Fire(v3_9_)
        v3_9_ = function()
            local v7_0_ = v3_3_
            v7_0_:destroy()
            v7_0_ = a1
            local v7_1_ = v7_0_.totalNotices
            v7_1_ -= 1.000000
            v7_0_.totalNotices = v7_1_
            v7_1_ = a1
            v7_0_ = v7_1_.notices
            v7_1_ = v3_1_
            local v7_2_ = nil
            v7_0_[v7_1_] = v7_2_
            v7_1_ = a1
            v7_0_ = v7_1_.noticeChanged
            local v7_3_ = a1
            v7_2_ = v7_3_.totalNotices
            v7_0_:Fire(v7_2_)
        end
        v3_4_:Once(v3_9_)
    end
    v1_11_:Connect(v1_13_)
    v1_13_ = "ClipToJoinedParent"
    local v1_14_ = true
    v1_2_:SetAttribute(v1_13_, v1_14_)
    v1_13_ = v1_2_
    a1:clipOutside(v1_13_)
    return v1_2_
end
return v0_0_
