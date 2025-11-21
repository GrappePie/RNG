-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = function(a1)
    local new = Instance.new
    local v1_2_ = "Frame"
    local v1_1_ = new(v1_2_)
    v1_2_ = "Dropdown"
    v1_1_.Name = v1_2_
    local XY = Enum.AutomaticSize.XY
    v1_1_.AutomaticSize = XY
    v1_2_ = 1
    v1_1_.BackgroundTransparency = v1_2_
    v1_2_ = 0
    v1_1_.BorderSizePixel = v1_2_
    local new = Vector2.new
    local v1_3_ = 0.500000
    local v1_4_ = 0
    v1_2_ = new(v1_3_, v1_4_)
    v1_1_.AnchorPoint = v1_2_
    local new = UDim2.new
    v1_3_ = 0.500000
    v1_4_ = 0
    local v1_5_ = 1
    local v1_6_ = 10
    v1_2_ = new(v1_3_, v1_4_, v1_5_, v1_6_)
    v1_1_.Position = v1_2_
    v1_2_ = -2
    v1_1_.ZIndex = v1_2_
    v1_2_ = true
    v1_1_.ClipsDescendants = v1_2_
    v1_2_ = a1.widget
    v1_1_.Parent = v1_2_
    local new = Instance.new
    v1_3_ = "UICorner"
    v1_2_ = new(v1_3_)
    v1_3_ = "DropdownCorner"
    v1_2_.Name = v1_3_
    local new = UDim.new
    v1_4_ = 0
    v1_5_ = 10
    v1_3_ = new(v1_4_, v1_5_)
    v1_2_.CornerRadius = v1_3_
    v1_2_.Parent = v1_1_
    local new = Instance.new
    v1_4_ = "ScrollingFrame"
    v1_3_ = new(v1_4_)
    v1_4_ = "DropdownScroller"
    v1_3_.Name = v1_4_
    local X = Enum.AutomaticSize.X
    v1_3_.AutomaticSize = X
    v1_4_ = 1
    v1_3_.BackgroundTransparency = v1_4_
    v1_4_ = 0
    v1_3_.BorderSizePixel = v1_4_
    local new = Vector2.new
    v1_5_ = 0
    v1_6_ = 0
    v1_4_ = new(v1_5_, v1_6_)
    v1_3_.AnchorPoint = v1_4_
    local new = UDim2.new
    v1_5_ = 0
    v1_6_ = 0
    local v1_7_ = 0
    local v1_8_ = 0
    v1_4_ = new(v1_5_, v1_6_, v1_7_, v1_8_)
    v1_3_.Position = v1_4_
    v1_4_ = -1
    v1_3_.ZIndex = v1_4_
    v1_4_ = true
    v1_3_.ClipsDescendants = v1_4_
    v1_4_ = true
    v1_3_.Visible = v1_4_
    local ScrollBar = Enum.ScrollBarInset.ScrollBar
    v1_3_.VerticalScrollBarInset = ScrollBar
    local Right = Enum.VerticalScrollBarPosition.Right
    v1_3_.VerticalScrollBarPosition = Right
    v1_4_ = false
    v1_3_.Active = v1_4_
    v1_4_ = true
    v1_3_.ScrollingEnabled = v1_4_
    local Y = Enum.AutomaticSize.Y
    v1_3_.AutomaticCanvasSize = Y
    v1_4_ = 5
    v1_3_.ScrollBarThickness = v1_4_
    local fromRGB = Color3.fromRGB
    v1_5_ = 255
    v1_6_ = 255
    v1_7_ = 255
    v1_4_ = fromRGB(v1_5_, v1_6_, v1_7_)
    v1_3_.ScrollBarImageColor3 = v1_4_
    v1_4_ = 0.800000
    v1_3_.ScrollBarImageTransparency = v1_4_
    local new = UDim2.new
    v1_5_ = 0
    v1_6_ = 0
    v1_7_ = 0
    v1_8_ = 0
    v1_4_ = new(v1_5_, v1_6_, v1_7_, v1_8_)
    v1_3_.CanvasSize = v1_4_
    v1_4_ = false
    v1_3_.Selectable = v1_4_
    v1_4_ = true
    v1_3_.Active = v1_4_
    v1_3_.Parent = v1_1_
    local new = Instance.new
    v1_5_ = "UIPadding"
    v1_4_ = new(v1_5_)
    v1_5_ = "DropdownPadding"
    v1_4_.Name = v1_5_
    local new = UDim.new
    v1_6_ = 0
    v1_7_ = 8
    v1_5_ = new(v1_6_, v1_7_)
    v1_4_.PaddingTop = v1_5_
    local new = UDim.new
    v1_6_ = 0
    v1_7_ = 8
    v1_5_ = new(v1_6_, v1_7_)
    v1_4_.PaddingBottom = v1_5_
    v1_4_.Parent = v1_3_
    local new = Instance.new
    v1_6_ = "UIListLayout"
    v1_5_ = new(v1_6_)
    v1_6_ = "DropdownList"
    v1_5_.Name = v1_6_
    local Vertical = Enum.FillDirection.Vertical
    v1_5_.FillDirection = Vertical
    local LayoutOrder = Enum.SortOrder.LayoutOrder
    v1_5_.SortOrder = LayoutOrder
    local Center = Enum.HorizontalAlignment.Center
    v1_5_.HorizontalAlignment = Center
    local SpaceEvenly = Enum.UIFlexAlignment.SpaceEvenly
    v1_5_.HorizontalFlex = SpaceEvenly
    v1_5_.Parent = v1_3_
    v1_6_ = a1.dropdownJanitor
    v1_7_ = require
    v1_8_ = a1.iconModule
    v1_7_ = v1_7_(v1_8_)
    v1_8_ = a1.dropdownChildAdded
    local v1_10_ = function(a1)
        local v2_3_ = table.create(10)
        local v2_4_ = table.create(3)
        local v2_5_ = "Widget"
        local v2_6_ = "BorderSize"
        local v2_7_ = 0
        v2_4_[1] = v2_5_
        v2_4_[2] = v2_6_
        v2_4_[3] = v2_7_
        v2_5_ = table.create(3)
        v2_6_ = "IconCorners"
        v2_7_ = "CornerRadius"
        local new = UDim.new
        local v2_9_ = 0
        local v2_10_ = 4
        -- WARNING: SETLIST_C0, output may be wrong!
        v2_5_ = {v2_6_, new(v2_9_, v2_10_)}
        v2_6_ = table.create(3)
        v2_7_ = "Widget"
        local v2_8_ = "MinimumWidth"
        v2_9_ = 190
        v2_6_[1] = v2_7_
        v2_6_[2] = v2_8_
        v2_6_[3] = v2_9_
        v2_7_ = table.create(3)
        v2_8_ = "Widget"
        v2_9_ = "MinimumHeight"
        v2_10_ = 56
        v2_7_[1] = v2_8_
        v2_7_[2] = v2_9_
        v2_7_[3] = v2_10_
        v2_8_ = table.create(3)
        v2_9_ = "IconLabel"
        v2_10_ = "TextSize"
        local v2_11_ = 19
        v2_8_[1] = v2_9_
        v2_8_[2] = v2_10_
        v2_8_[3] = v2_11_
        v2_9_ = table.create(3)
        v2_10_ = "PaddingLeft"
        v2_11_ = "Size"
        local fromOffset = UDim2.fromOffset
        local v2_13_ = 25
        local v2_14_ = 0
        -- WARNING: SETLIST_C0, output may be wrong!
        v2_9_ = {v2_10_, fromOffset(v2_13_, v2_14_)}
        v2_10_ = table.create(3)
        v2_11_ = "Notice"
        local v2_12_ = "Position"
        local new = UDim2.new
        v2_14_ = 1
        local v2_15_ = -24
        local v2_16_ = 0
        local v2_17_ = 5
        -- WARNING: SETLIST_C0, output may be wrong!
        v2_10_ = {v2_11_, new(v2_14_, v2_15_, v2_16_, v2_17_)}
        v2_11_ = table.create(3)
        v2_12_ = "ContentsList"
        v2_13_ = "HorizontalAlignment"
        local Left = Enum.HorizontalAlignment.Left
        v2_11_[1] = v2_12_
        v2_11_[2] = v2_13_
        v2_11_[3] = Left
        v2_12_ = table.create(3)
        v2_13_ = "Selection"
        v2_14_ = "Size"
        local new = UDim2.new
        v2_16_ = 1
        v2_17_ = -8
        local v2_18_ = 1
        local v2_19_ = -8
        -- WARNING: SETLIST_C0, output may be wrong!
        v2_12_ = {v2_13_, new(v2_16_, v2_17_, v2_18_, v2_19_)}
        v2_13_ = table.create(3)
        v2_14_ = "Selection"
        v2_15_ = "Position"
        local new = UDim2.new
        v2_17_ = 0
        v2_18_ = 4
        v2_19_ = 0
        local v2_20_ = 4
        -- WARNING: SETLIST_C0, output may be wrong!
        v2_13_ = {v2_14_, new(v2_17_, v2_18_, v2_19_, v2_20_)}
        v2_3_[1] = v2_4_
        v2_3_[2] = v2_5_
        v2_3_[3] = v2_6_
        v2_3_[4] = v2_7_
        v2_3_[5] = v2_8_
        v2_3_[6] = v2_9_
        v2_3_[7] = v2_10_
        v2_3_[8] = v2_11_
        v2_3_[9] = v2_12_
        v2_3_[10] = v2_13_
        local v2_1_, v2_2_ = a1:modifyTheme(v2_3_)
        local defer = task.defer
        v2_4_ = function()
            local v3_1_ = a1
            local v3_0_ = v3_1_.joinJanitor
            local v3_2_ = function()
                local v4_0_ = a1
                local v4_2_ = v2_2_
                v4_0_:removeModification(v4_2_)
            end
            v3_0_:add(v3_2_)
        end
        defer(v2_4_)
    end
    v1_8_:Connect(v1_10_)
    v1_8_ = a1.dropdownSet
    v1_10_ = function(a1)
        local v5_1_ = pairs
        local v5_4_ = a1
        local v5_2_ = v5_4_.dropdownIcons
        local v5_1_, v5_2_, v5_3_ = v5_1_(v5_2_)
        for v5_4_, v5_5_ in v5_1_, v5_2_, v5_3_ do
            local v5_7_ = v1_7_
            local v5_6_ = v5_7_.getIconByUID
            v5_7_ = v5_5_
            v5_6_ = v5_6_(v5_7_)
        end
        v5_1_ = #a1
        v5_3_ = a1
        v5_2_ = type
        v5_2_ = v5_2_(v5_3_)
        if v5_2_ == "table" then
            v5_2_ = pairs
            v5_3_ = a1
            v5_2_, v5_3_, v5_4_ = v5_2_(v5_3_)
            for v5_5_, v5_6_ in v5_2_, v5_3_, v5_4_ do
                local v5_9_ = a1
            end
        end
    end
    v1_8_:Connect(v1_10_)
    v1_8_ = require
    local v1_12_ = script
    local v1_11_ = v1_12_.Parent
    v1_10_ = v1_11_.Parent
    local v1_9_ = v1_10_.Utility
    v1_8_ = v1_8_(v1_9_)
    v1_9_ = function()
        local v6_1_ = v1_8_
        local v6_0_ = v6_1_.setVisible
        v6_1_ = v1_1_
        local v6_3_ = a1
        local v6_2_ = v6_3_.isSelected
        v6_3_ = "InternalDropdown"
        v6_0_(v6_1_, v6_2_, v6_3_)
    end
    v1_12_ = a1.toggled
    local v1_14_ = v1_9_
    v1_6_:add(v1_12_:Connect(v1_14_))
    v1_10_ = v1_8_.setVisible
    v1_11_ = v1_1_
    v1_12_ = a1.isSelected
    local v1_13_ = "InternalDropdown"
    v1_10_(v1_11_, v1_12_, v1_13_)
    v1_10_ = 0
    v1_11_ = false
    v1_12_ = function()
        local v7_0_ = v1_10_
        v7_0_ += 1.000000
        v1_10_ = v7_0_
        v7_0_ = v1_11_
        if v7_0_ then
            return
        end
        v7_0_ = v1_10_
        local v7_1_ = true
        v1_11_ = v7_1_
        local defer = task.defer
        local v7_2_ = function()
            local v8_0_ = false
            v1_11_ = v8_0_
            v8_0_ = v1_10_
            local v8_1_ = v7_0_
            if v8_0_ ~= v8_1_ then
                v8_0_ = v1_12_
                v8_0_()
            end
        end
        defer(v7_2_)
        v7_1_ = v1_1_
        local v7_3_ = "MaxIcons"
        v7_1_ = v7_1_:GetAttribute(v7_3_)
        if not v7_1_ then
            return
        end
        v7_2_ = {}
        v7_3_ = pairs
        local v7_4_ = v1_3_
        local v7_3_, v7_4_, v7_5_ = v7_3_(v7_4_:GetChildren())
        for v7_6_, v7_7_ in v7_3_, v7_4_, v7_5_ do
            local v7_10_ = "GuiObject"
            local v7_8_ = v7_7_:IsA(v7_10_)
            if v7_8_ then
                v7_10_ = table.create(2)
                local v7_11_ = v7_7_
                local v7_13_ = v7_7_.AbsolutePosition
                local v7_12_ = v7_13_.Y
                v7_10_[1] = v7_11_
                v7_10_[2] = v7_12_
                local v7_9_ = v7_2_
                local insert = table.insert
                insert(v7_9_, v7_10_)
            end
        end
        local sort = table.sort
        v7_4_ = v7_2_
        v7_5_ = function(a1, a2)
            local v9_3_ = a1[0]
            local v9_4_ = a2[0]
            if v9_3_ >= v9_4_ then
                local v9_2_ = false
            end
            local v9_2_ = true
            return v9_2_
        end
        sort(v7_4_, v7_5_)
        v7_3_ = 0
        v7_4_ = false
        local v7_7_ = 1
        v7_5_ = v7_1_
        local v7_6_ = 1
        for v7_7_ = v7_7_, v7_5_, v7_6_ do
            local v7_8_ = v7_2_[v7_7_]
            if v7_8_ then
                local v7_9_ = v7_8_[-1]
                local v7_11_ = v7_9_.AbsoluteSize
                local v7_10_ = v7_11_.Y
                v7_3_ += v7_10_
                local v7_13_ = "WidgetUID"
                v7_11_ = v7_9_:GetAttribute(v7_13_)
                local v7_12_ = v7_11_
                if v7_12_ then
                    v7_13_ = v1_7_
                    v7_12_ = v7_13_.getIconByUID
                    v7_13_ = v7_11_
                    v7_12_ = v7_12_(v7_13_)
                end
                if v7_12_ then
                    v7_13_ = nil
                    if not v7_4_ then
                        v7_4_ = true
                        local v7_14_ = a1
                        local v7_16_ = "ClickRegion"
                        v7_14_ = v7_14_:getInstance(v7_16_)
                        v7_13_ = v7_14_
                    end
                    local v7_16_ = "ClickRegion"
                    local v7_14_ = v7_12_:getInstance(v7_16_)
                    v7_14_.NextSelectionUp = v7_13_
                end
            end
        end
        v7_7_ = v1_4_
        v7_6_ = v7_7_.PaddingTop
        v7_5_ = v7_6_.Offset
        v7_3_ += v7_5_
        v7_7_ = v1_4_
        v7_6_ = v7_7_.PaddingBottom
        v7_5_ = v7_6_.Offset
        v7_3_ += v7_5_
        v7_5_ = v1_3_
        local fromOffset = UDim2.fromOffset
        v7_7_ = 0
        local v7_8_ = v7_3_
        v7_6_ = fromOffset(v7_7_, v7_8_)
        v7_5_.Size = v7_6_
    end
    local v1_17_ = "AbsoluteCanvasSize"
    local v1_15_ = v1_3_:GetPropertyChangedSignal(v1_17_)
    v1_17_ = v1_12_
    v1_6_:add(v1_15_:Connect(v1_17_))
    v1_15_ = v1_3_.ChildAdded
    v1_17_ = v1_12_
    v1_6_:add(v1_15_:Connect(v1_17_))
    v1_15_ = v1_3_.ChildRemoved
    v1_17_ = v1_12_
    v1_6_:add(v1_15_:Connect(v1_17_))
    v1_17_ = "MaxIcons"
    v1_15_ = v1_1_:GetAttributeChangedSignal(v1_17_)
    v1_17_ = v1_12_
    v1_6_:add(v1_15_:Connect(v1_17_))
    v1_15_ = a1.childThemeModified
    v1_17_ = v1_12_
    v1_6_:add(v1_15_:Connect(v1_17_))
    v1_13_ = v1_12_
    v1_13_()
    return v1_1_
end
return v0_0_
