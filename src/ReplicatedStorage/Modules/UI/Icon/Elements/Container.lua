-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = function(a1)
    local v1_1_ = game
    local v1_3_ = "GuiService"
    v1_1_ = v1_1_:GetService(v1_3_)
    local v1_2_ = a1.isOldTopbar
    v1_3_ = {}
    local v1_4_ = v1_1_:GetGuiInset()
    local v1_5_ = v1_1_:IsTenFootInterface()
    if v1_2_ then
        local v1_6_ = 12
    else
        local v1_7_ = v1_4_.Y
        local v1_6_ = v1_7_ - 46.000000
    end
    if v1_5_ then
        local v1_6_ = 10
    end
    local new = Instance.new
    local v1_8_ = "ScreenGui"
    local v1_7_ = new(v1_8_)
    local v1_10_ = "StartInset"
    local v1_11_ = nil
    v1_7_:SetAttribute(v1_10_, v1_11_)
    v1_8_ = "TopbarStandard"
    v1_7_.Name = v1_8_
    v1_8_ = true
    v1_7_.Enabled = v1_8_
    local Sibling = Enum.ZIndexBehavior.Sibling
    v1_7_.ZIndexBehavior = Sibling
    v1_8_ = true
    v1_7_.IgnoreGuiInset = v1_8_
    v1_8_ = false
    v1_7_.ResetOnSpawn = v1_8_
    local TopbarSafeInsets = Enum.ScreenInsets.TopbarSafeInsets
    v1_7_.ScreenInsets = TopbarSafeInsets
    v1_8_ = v1_7_.Name
    v1_3_[v1_8_] = v1_7_
    v1_8_ = a1.baseDisplayOrder
    v1_7_.DisplayOrder = v1_8_
    v1_8_ = a1.baseDisplayOrderChanged
    v1_10_ = function()
        local v2_0_ = v1_7_
        local v2_2_ = a1
        local v2_1_ = v2_2_.baseDisplayOrder
        v2_0_.DisplayOrder = v2_1_
    end
    v1_8_:Connect(v1_10_)
    local new = Instance.new
    local v1_9_ = "Frame"
    v1_8_ = new(v1_9_)
    if v1_2_ then
        v1_9_ = 2
    else
        v1_9_ = 0
    end
    v1_10_ = -2
    if v1_5_ then
        v1_9_ += 13.000000
        v1_10_ = 50
    end
    v1_11_ = "Holders"
    v1_8_.Name = v1_11_
    v1_11_ = 1
    v1_8_.BackgroundTransparency = v1_11_
    local new = UDim2.new
    local v1_12_ = 0
    local v1_13_ = 0
    local v1_14_ = 0
    local v1_15_ = v1_9_
    v1_11_ = new(v1_12_, v1_13_, v1_14_, v1_15_)
    v1_8_.Position = v1_11_
    local new = UDim2.new
    v1_12_ = 1
    v1_13_ = 0
    v1_14_ = 1
    v1_15_ = v1_10_
    v1_11_ = new(v1_12_, v1_13_, v1_14_, v1_15_)
    v1_8_.Size = v1_11_
    v1_11_ = true
    v1_8_.Visible = v1_11_
    v1_11_ = 1
    v1_8_.ZIndex = v1_11_
    v1_8_.Parent = v1_7_
    v1_11_ = v1_7_:Clone()
    v1_12_ = v1_11_.Holders
    v1_13_ = game
    v1_15_ = "GuiService"
    v1_13_ = v1_13_:GetService(v1_15_)
    v1_14_ = function()
        local v3_0_ = v1_12_
        local new = UDim2.new
        local v3_2_ = 1
        local v3_3_ = 0
        local v3_4_ = 0
        local v3_8_ = v1_13_
        local v3_7_ = v3_8_.TopbarInset
        local v3_6_ = v3_7_.Height
        v3_7_ = v1_10_
        local v3_5_ = v3_6_ + v3_7_
        local v3_1_ = new(v3_2_, v3_3_, v3_4_, v3_5_)
        v3_0_.Size = v3_1_
    end
    v1_15_ = "TopbarCentered"
    v1_11_.Name = v1_15_
    local None = Enum.ScreenInsets.None
    v1_11_.ScreenInsets = None
    v1_15_ = a1.baseDisplayOrderChanged
    local v1_17_ = function()
        local v4_0_ = v1_11_
        local v4_2_ = a1
        local v4_1_ = v4_2_.baseDisplayOrder
        v4_0_.DisplayOrder = v4_1_
    end
    v1_15_:Connect(v1_17_)
    v1_15_ = v1_11_.Name
    v1_3_[v1_15_] = v1_11_
    v1_17_ = "TopbarInset"
    v1_15_ = v1_13_:GetPropertyChangedSignal(v1_17_)
    v1_17_ = v1_14_
    v1_15_:Connect(v1_17_)
    local new = UDim2.new
    local v1_16_ = 1
    v1_17_ = 0
    local v1_18_ = 0
    local v1_21_ = v1_13_.TopbarInset
    local v1_20_ = v1_21_.Height
    local v1_19_ = v1_20_ + v1_10_
    v1_15_ = new(v1_16_, v1_17_, v1_18_, v1_19_)
    v1_12_.Size = v1_15_
    v1_15_ = v1_7_:Clone()
    v1_17_ = v1_15_.Name
    v1_18_ = "Clipped"
    v1_16_ = v1_17_
    v1_15_.Name = v1_16_
    v1_16_ = v1_15_.DisplayOrder
    v1_16_ += 1.000000
    v1_15_.DisplayOrder = v1_16_
    v1_16_ = a1.baseDisplayOrderChanged
    v1_18_ = function()
        local v5_0_ = v1_15_
        local v5_3_ = a1
        local v5_2_ = v5_3_.baseDisplayOrder
        local v5_1_ = v5_2_ + 1.000000
        v5_0_.DisplayOrder = v5_1_
    end
    v1_16_:Connect(v1_18_)
    v1_16_ = v1_15_.Name
    v1_3_[v1_16_] = v1_15_
    v1_16_ = v1_11_:Clone()
    v1_18_ = v1_16_.Name
    v1_19_ = "Clipped"
    v1_17_ = v1_18_
    v1_16_.Name = v1_17_
    v1_17_ = v1_16_.DisplayOrder
    v1_17_ += 1.000000
    v1_16_.DisplayOrder = v1_17_
    v1_17_ = a1.baseDisplayOrderChanged
    v1_19_ = function()
        local v6_0_ = v1_16_
        local v6_3_ = a1
        local v6_2_ = v6_3_.baseDisplayOrder
        local v6_1_ = v6_2_ + 1.000000
        v6_0_.DisplayOrder = v6_1_
    end
    v1_17_:Connect(v1_19_)
    v1_17_ = v1_16_.Name
    v1_3_[v1_17_] = v1_16_
    if v1_2_ then
        local defer = task.defer
        v1_18_ = function()
            local v7_0_ = function()
                local v8_1_ = v1_13_
                local v8_0_ = v8_1_.MenuIsOpen
                if v8_0_ then
                    v8_1_ = a1
                    v8_0_ = v8_1_.setTopbarEnabled
                    v8_1_ = false
                    local v8_2_ = true
                    v8_0_(v8_1_, v8_2_)
                    return
                end
                v8_1_ = a1
                v8_0_ = v8_1_.setTopbarEnabled
                v8_0_()
            end
            local v7_1_ = v1_13_
            local v7_3_ = "MenuIsOpen"
            v7_1_ = v7_1_:GetPropertyChangedSignal(v7_3_)
            v7_3_ = v7_0_
            v7_1_:Connect(v7_3_)
            local v7_2_ = v1_13_
            v7_1_ = v7_2_.MenuIsOpen
            if v7_1_ then
                v7_2_ = a1
                v7_1_ = v7_2_.setTopbarEnabled
                v7_2_ = false
                v7_3_ = true
                v7_1_(v7_2_, v7_3_)
                return
            end
            v7_2_ = a1
            v7_1_ = v7_2_.setTopbarEnabled
            v7_1_()
        end
        defer(v1_18_)
    end
    local new = Instance.new
    v1_18_ = "ScrollingFrame"
    v1_17_ = new(v1_18_)
    v1_20_ = "IsAHolder"
    v1_21_ = true
    v1_17_:SetAttribute(v1_20_, v1_21_)
    v1_18_ = "Left"
    v1_17_.Name = v1_18_
    local fromOffset = UDim2.fromOffset
    v1_19_ = nil
    v1_20_ = 0
    v1_18_ = fromOffset(v1_19_, v1_20_)
    v1_17_.Position = v1_18_
    local new = UDim2.new
    v1_19_ = 1
    v1_20_ = -24
    v1_21_ = 1
    local v1_22_ = 0
    v1_18_ = new(v1_19_, v1_20_, v1_21_, v1_22_)
    v1_17_.Size = v1_18_
    v1_18_ = 1
    v1_17_.BackgroundTransparency = v1_18_
    v1_18_ = true
    v1_17_.Visible = v1_18_
    v1_18_ = 1
    v1_17_.ZIndex = v1_18_
    v1_18_ = false
    v1_17_.Active = v1_18_
    v1_18_ = true
    v1_17_.ClipsDescendants = v1_18_
    local None = Enum.ScrollBarInset.None
    v1_17_.HorizontalScrollBarInset = None
    local new = UDim2.new
    v1_19_ = 0
    v1_20_ = 0
    v1_21_ = 1
    v1_22_ = -1
    v1_18_ = new(v1_19_, v1_20_, v1_21_, v1_22_)
    v1_17_.CanvasSize = v1_18_
    local X = Enum.AutomaticSize.X
    v1_17_.AutomaticCanvasSize = X
    local X_0 = Enum.ScrollingDirection.X
    v1_17_.ScrollingDirection = X_0
    v1_18_ = 0
    v1_17_.ScrollBarThickness = v1_18_
    v1_18_ = 0
    v1_17_.BorderSizePixel = v1_18_
    v1_18_ = false
    v1_17_.Selectable = v1_18_
    v1_18_ = false
    v1_17_.ScrollingEnabled = v1_18_
    local Never = Enum.ElasticBehavior.Never
    v1_17_.ElasticBehavior = Never
    v1_17_.Parent = v1_8_
    local new = Instance.new
    v1_19_ = "UIListLayout"
    v1_18_ = new(v1_19_)
    local new = UDim.new
    v1_20_ = 0
    v1_21_ = nil
    v1_19_ = new(v1_20_, v1_21_)
    v1_18_.Padding = v1_19_
    local Horizontal = Enum.FillDirection.Horizontal
    v1_18_.FillDirection = Horizontal
    local LayoutOrder = Enum.SortOrder.LayoutOrder
    v1_18_.SortOrder = LayoutOrder
    local Bottom = Enum.VerticalAlignment.Bottom
    v1_18_.VerticalAlignment = Bottom
    local Left = Enum.HorizontalAlignment.Left
    v1_18_.HorizontalAlignment = Left
    v1_18_.Parent = v1_17_
    v1_19_ = v1_17_:Clone()
    v1_20_ = false
    v1_19_.ScrollingEnabled = v1_20_
    v1_20_ = v1_19_.UIListLayout
    local Center = Enum.HorizontalAlignment.Center
    v1_20_.HorizontalAlignment = Center
    v1_20_ = "Center"
    v1_19_.Name = v1_20_
    v1_19_.Parent = v1_12_
    v1_20_ = v1_17_:Clone()
    v1_21_ = v1_20_.UIListLayout
    local Right = Enum.HorizontalAlignment.Right
    v1_21_.HorizontalAlignment = Right
    v1_21_ = "Right"
    v1_20_.Name = v1_21_
    local new = Vector2.new
    v1_22_ = 1
    local v1_23_ = 0
    v1_21_ = new(v1_22_, v1_23_)
    v1_20_.AnchorPoint = v1_21_
    local new = UDim2.new
    v1_22_ = 1
    v1_23_ = -12
    local v1_24_ = 0
    local v1_25_ = 0
    v1_21_ = new(v1_22_, v1_23_, v1_24_, v1_25_)
    v1_20_.Position = v1_21_
    v1_20_.Parent = v1_8_
    return v1_3_
end
return v0_0_
