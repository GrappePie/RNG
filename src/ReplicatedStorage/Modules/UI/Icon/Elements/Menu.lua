-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = function(a1)
    local new = Instance.new
    local v1_2_ = "ScrollingFrame"
    local v1_1_ = new(v1_2_)
    v1_2_ = "Menu"
    v1_1_.Name = v1_2_
    v1_2_ = 1
    v1_1_.BackgroundTransparency = v1_2_
    v1_2_ = true
    v1_1_.Visible = v1_2_
    v1_2_ = 1
    v1_1_.ZIndex = v1_2_
    local fromScale = UDim2.fromScale
    local v1_3_ = 1
    local v1_4_ = 1
    v1_2_ = fromScale(v1_3_, v1_4_)
    v1_1_.Size = v1_2_
    v1_2_ = true
    v1_1_.ClipsDescendants = v1_2_
    v1_2_ = ""
    v1_1_.TopImage = v1_2_
    v1_2_ = ""
    v1_1_.BottomImage = v1_2_
    local Always = Enum.ScrollBarInset.Always
    v1_1_.HorizontalScrollBarInset = Always
    local new = UDim2.new
    v1_3_ = 0
    v1_4_ = 0
    local v1_5_ = 1
    local v1_6_ = -1
    v1_2_ = new(v1_3_, v1_4_, v1_5_, v1_6_)
    v1_1_.CanvasSize = v1_2_
    v1_2_ = true
    v1_1_.ScrollingEnabled = v1_2_
    local X = Enum.ScrollingDirection.X
    v1_1_.ScrollingDirection = X
    v1_2_ = 20
    v1_1_.ZIndex = v1_2_
    v1_2_ = 3
    v1_1_.ScrollBarThickness = v1_2_
    local fromRGB = Color3.fromRGB
    v1_3_ = 255
    v1_4_ = 255
    v1_5_ = 255
    v1_2_ = fromRGB(v1_3_, v1_4_, v1_5_)
    v1_1_.ScrollBarImageColor3 = v1_2_
    v1_2_ = 0.800000
    v1_1_.ScrollBarImageTransparency = v1_2_
    v1_2_ = 0
    v1_1_.BorderSizePixel = v1_2_
    v1_2_ = false
    v1_1_.Selectable = v1_2_
    v1_2_ = require
    v1_3_ = a1.iconModule
    v1_2_ = v1_2_(v1_3_)
    v1_4_ = v1_2_.container
    v1_3_ = v1_4_.TopbarStandard
    v1_5_ = "UIListLayout"
    v1_6_ = true
    v1_3_ = v1_3_:FindFirstChild(v1_5_, v1_6_)
    v1_3_ = v1_3_:Clone()
    v1_4_ = "MenuUIListLayout"
    v1_3_.Name = v1_4_
    local Center = Enum.VerticalAlignment.Center
    v1_3_.VerticalAlignment = Center
    v1_3_.Parent = v1_1_
    local new = Instance.new
    v1_5_ = "Frame"
    v1_4_ = new(v1_5_)
    v1_5_ = "MenuGap"
    v1_4_.Name = v1_5_
    v1_5_ = 1
    v1_4_.BackgroundTransparency = v1_5_
    v1_5_ = false
    v1_4_.Visible = v1_5_
    local new = Vector2.new
    v1_6_ = 0
    local v1_7_ = 0.500000
    v1_5_ = new(v1_6_, v1_7_)
    v1_4_.AnchorPoint = v1_5_
    v1_5_ = 5
    v1_4_.ZIndex = v1_5_
    v1_4_.Parent = v1_1_
    v1_5_ = false
    v1_6_ = require
    local v1_11_ = script
    local v1_10_ = v1_11_.Parent
    local v1_9_ = v1_10_.Parent
    local v1_8_ = v1_9_.Features
    v1_7_ = v1_8_.Themes
    v1_6_ = v1_6_(v1_7_)
    v1_7_ = function()
        local v2_1_ = a1
        local v2_0_ = v2_1_.menuJanitor
        local v2_3_ = a1
        local v2_2_ = v2_3_.menuIcons
        v2_1_ = #v2_2_
        v2_2_ = v1_5_
        if v2_2_ then
            v2_2_ = 0
            if v2_1_ <= v2_2_ then
                v2_0_:clean()
                v2_2_ = false
                v1_5_ = v2_1_
            end
            return
        end
        v2_2_ = true
        v1_5_ = v2_1_
        local v2_5_ = a1
        local v2_4_ = v2_5_.toggled
        local v2_6_ = function()
            local v3_2_ = a1
            local v3_1_ = v3_2_.menuIcons
            local v3_0_ = #v3_1_
            v3_1_ = 0
            if v3_1_ < v3_0_ then
                v3_1_ = a1
                v3_0_ = v3_1_.updateSize
                v3_0_:Fire()
            end
        end
        v2_0_:add(v2_4_:Connect(v2_6_))
        v2_2_ = a1
        v2_4_ = table.create(1)
        v2_5_ = table.create(3)
        v2_6_ = "Menu"
        local v2_7_ = "Active"
        local v2_8_ = true
        v2_5_[1] = v2_6_
        v2_5_[2] = v2_7_
        v2_5_[3] = v2_8_
        v2_4_[1] = v2_5_
        v2_2_, v2_3_ = v2_2_:modifyTheme(v2_4_)
        local defer = task.defer
        v2_5_ = function()
            local v4_0_ = v2_0_
            local v4_2_ = function()
                local v5_0_ = a1
                local v5_2_ = v2_3_
                v5_0_:removeModification(v5_2_)
            end
            v4_0_:add(v4_2_)
        end
        defer(v2_5_)
        v2_6_ = v1_1_
        v2_5_ = v2_6_.AbsoluteCanvasSize
        v2_4_ = v2_5_.X
        v2_5_ = function()
            local v6_1_ = a1
            local v6_0_ = v6_1_.alignment
            if v6_0_ == "Right" then
                local v6_2_ = v1_1_
                v6_1_ = v6_2_.AbsoluteCanvasSize
                v6_0_ = v6_1_.X
                v6_2_ = v2_4_
                v6_1_ = v6_2_ - v6_0_
                v2_4_ = v6_2_
                v6_2_ = v1_1_
                local new = Vector2.new
                local v6_7_ = v1_1_
                local v6_6_ = v6_7_.CanvasPosition
                local v6_5_ = v6_6_.X
                local v6_4_ = v6_5_ - v6_1_
                v6_5_ = 0
                local v6_3_ = new(v6_4_, v6_5_)
                v6_2_.CanvasPosition = v6_3_
            end
        end
        local v2_9_ = a1
        v2_8_ = v2_9_.selected
        local v2_10_ = v2_5_
        v2_0_:add(v2_8_:Connect(v2_10_))
        v2_8_ = v1_1_
        v2_10_ = "AbsoluteCanvasSize"
        v2_8_ = v2_8_:GetPropertyChangedSignal(v2_10_)
        v2_10_ = v2_5_
        v2_0_:add(v2_8_:Connect(v2_10_))
        v2_6_ = a1
        v2_6_ = v2_6_:getStateGroup()
        v2_8_ = v1_6_
        v2_7_ = v2_8_.getThemeValue
        v2_8_ = v2_6_
        v2_9_ = "IconImage"
        v2_10_ = "Image"
        local v2_11_ = "Deselected"
        v2_7_ = v2_7_(v2_8_, v2_9_, v2_10_, v2_11_)
        v2_9_ = v1_6_
        v2_8_ = v2_9_.getThemeValue
        v2_9_ = v2_6_
        v2_10_ = "IconImage"
        v2_11_ = "Image"
        local v2_12_ = "Selected"
        v2_8_ = v2_8_(v2_9_, v2_10_, v2_11_, v2_12_)
        if v2_7_ == v2_8_ then
            local new = Font.new
            v2_10_ = "rbxasset://fonts/families/FredokaOne.json"
            local Light = Enum.FontWeight.Light
            local Normal = Enum.FontStyle.Normal
            v2_9_ = new(v2_10_, Light, Normal)
            v2_10_ = a1
            v2_12_ = "IconLabel"
            local v2_13_ = "Text"
            local v2_14_ = "Viewing"
            v2_10_:removeModificationWith(v2_12_, v2_13_, v2_14_)
            v2_10_ = a1
            v2_12_ = "IconLabel"
            v2_13_ = "Image"
            v2_14_ = "Viewing"
            v2_10_:removeModificationWith(v2_12_, v2_13_, v2_14_)
            v2_10_ = a1
            v2_12_ = table.create(5)
            v2_13_ = table.create(4)
            v2_14_ = "IconLabel"
            local v2_15_ = "FontFace"
            local v2_16_ = v2_9_
            local v2_17_ = "Selected"
            v2_13_[1] = v2_14_
            v2_13_[2] = v2_15_
            v2_13_[3] = v2_16_
            v2_13_[4] = v2_17_
            v2_14_ = table.create(4)
            v2_15_ = "IconLabel"
            v2_16_ = "Text"
            v2_17_ = "X"
            local v2_18_ = "Selected"
            v2_14_[1] = v2_15_
            v2_14_[2] = v2_16_
            v2_14_[3] = v2_17_
            v2_14_[4] = v2_18_
            v2_15_ = table.create(4)
            v2_16_ = "IconLabel"
            v2_17_ = "TextSize"
            v2_18_ = 20
            local v2_19_ = "Selected"
            v2_15_[1] = v2_16_
            v2_15_[2] = v2_17_
            v2_15_[3] = v2_18_
            v2_15_[4] = v2_19_
            v2_16_ = table.create(4)
            v2_17_ = "IconLabel"
            v2_18_ = "TextStrokeTransparency"
            v2_19_ = 0.800000
            local v2_20_ = "Selected"
            v2_16_[1] = v2_17_
            v2_16_[2] = v2_18_
            v2_16_[3] = v2_19_
            v2_16_[4] = v2_20_
            v2_17_ = table.create(4)
            v2_18_ = "IconImage"
            v2_19_ = "Image"
            v2_20_ = ""
            local v2_21_ = "Selected"
            v2_17_[1] = v2_18_
            v2_17_[2] = v2_19_
            v2_17_[3] = v2_20_
            v2_17_[4] = v2_21_
            v2_12_[1] = v2_13_
            v2_12_[2] = v2_14_
            v2_12_[3] = v2_15_
            v2_12_[4] = v2_16_
            v2_12_[5] = v2_17_
            v2_10_:modifyTheme(v2_12_)
        end
        v2_9_ = a1
        v2_11_ = "IconSpot"
        v2_9_ = v2_9_:getInstance(v2_11_)
        v2_10_ = a1
        v2_12_ = "MenuGap"
        v2_10_ = v2_10_:getInstance(v2_12_)
        v2_11_ = function()
            local v7_1_ = a1
            local v7_0_ = v7_1_.alignment
            if v7_0_ == "Right" then
                v7_1_ = v2_9_
                local v7_2_ = 99999.000000
                v7_1_.LayoutOrder = v7_2_
                v7_1_ = v2_10_
                v7_2_ = 99998.000000
                v7_1_.LayoutOrder = v7_2_
                return
            end
            v7_1_ = v2_9_
            local v7_2_ = -99999.000000
            v7_1_.LayoutOrder = v7_2_
            v7_1_ = v2_10_
            v7_2_ = -99998.000000
            v7_1_.LayoutOrder = v7_2_
        end
        local v2_15_ = a1
        local v2_14_ = v2_15_.alignmentChanged
        local v2_16_ = v2_11_
        v2_0_:add(v2_14_:Connect(v2_16_))
        local v2_13_ = a1
        v2_12_ = v2_13_.alignment
        if v2_12_ == "Right" then
            v2_13_ = 99999.000000
            v2_9_.LayoutOrder = v2_13_
            v2_13_ = 99998.000000
            v2_10_.LayoutOrder = v2_13_
        else
            v2_13_ = -99999.000000
            v2_9_.LayoutOrder = v2_13_
            v2_13_ = -99998.000000
            v2_10_.LayoutOrder = v2_13_
        end
        v2_12_ = v1_1_
        v2_14_ = "MenuCanvasWidth"
        v2_12_ = v2_12_:GetAttributeChangedSignal(v2_14_)
        v2_14_ = function()
            local v8_0_ = v1_1_
            local v8_2_ = "MenuCanvasWidth"
            v8_0_ = v8_0_:GetAttribute(v8_2_)
            local v8_3_ = v1_1_
            v8_2_ = v8_3_.CanvasSize
            local v8_1_ = v8_2_.Y
            v8_2_ = v1_1_
            local new = UDim2.new
            local v8_4_ = 0
            local v8_5_ = v8_0_
            local v8_6_ = v8_1_.Scale
            local v8_7_ = v8_1_.Offset
            v8_3_ = new(v8_4_, v8_5_, v8_6_, v8_7_)
            v8_2_.CanvasSize = v8_3_
        end
        v2_12_:Connect(v2_14_)
        v2_15_ = a1
        v2_14_ = v2_15_.updateMenu
        v2_16_ = function()
            local v9_0_ = v1_1_
            local v9_2_ = "MaxIcons"
            v9_0_ = v9_0_:GetAttribute(v9_2_)
            if not v9_0_ then
                return
            end
            local v9_1_ = {}
            v9_2_ = pairs
            local v9_3_ = v1_1_
            local v9_2_, v9_3_, v9_4_ = v9_2_(v9_3_:GetChildren())
            for v9_5_, v9_6_ in v9_2_, v9_3_, v9_4_ do
                local v9_9_ = "WidgetUID"
                local v9_7_ = v9_6_:GetAttribute(v9_9_)
                if v9_7_ then
                    local v9_8_ = v9_6_.Visible
                    if v9_8_ then
                        local v9_10_ = table.create(2)
                        local v9_11_ = v9_6_
                        local v9_13_ = v9_6_.AbsolutePosition
                        local v9_12_ = v9_13_.X
                        v9_10_[1] = v9_11_
                        v9_10_[2] = v9_12_
                        v9_9_ = v9_1_
                        local insert = table.insert
                        insert(v9_9_, v9_10_)
                    end
                end
            end
            local sort = table.sort
            v9_3_ = v9_1_
            v9_4_ = function(a1, a2)
                local v10_3_ = a1[0]
                local v10_4_ = a2[0]
                if v10_3_ >= v10_4_ then
                    local v10_2_ = false
                end
                local v10_2_ = true
                return v10_2_
            end
            sort(v9_3_, v9_4_)
            v9_2_ = 0
            local v9_5_ = 1
            v9_3_ = v9_0_
            v9_4_ = 1
            for v9_5_ = v9_5_, v9_3_, v9_4_ do
                local v9_6_ = v9_1_[v9_5_]
                if v9_6_ then
                    local v9_7_ = v9_6_[-1]
                    local v9_10_ = v9_7_.AbsoluteSize
                    local v9_9_ = v9_10_.X
                    local v9_12_ = v1_3_
                    local v9_11_ = v9_12_.Padding
                    v9_10_ = v9_11_.Offset
                    local v9_8_ = v9_9_ + v9_10_
                    v9_2_ += v9_8_
                end
            end
            v9_3_ = v1_1_
            v9_5_ = "MenuWidth"
            local v9_6_ = v9_2_
            v9_3_:SetAttribute(v9_5_, v9_6_)
        end
        v2_0_:add(v2_14_:Connect(v2_16_))
        v2_12_ = function()
            local delay = task.delay
            local v11_1_ = 0.100000
            local v11_2_ = function()
                local v12_1_ = a1
                local v12_0_ = v12_1_.startMenuUpdate
                v12_0_:Fire()
            end
            delay(v11_1_, v11_2_)
        end
        v2_13_ = a1
        v2_15_ = "IconButton"
        v2_13_ = v2_13_:getInstance(v2_15_)
        v2_15_ = v2_13_.AbsoluteSize
        v2_14_ = v2_15_.X
        local v2_18_ = v1_1_
        local v2_17_ = v2_18_.ChildAdded
        local v2_19_ = v2_12_
        v2_0_:add(v2_17_:Connect(v2_19_))
        v2_18_ = v1_1_
        v2_17_ = v2_18_.ChildRemoved
        v2_19_ = v2_12_
        v2_0_:add(v2_17_:Connect(v2_19_))
        v2_17_ = v1_1_
        v2_19_ = "MaxIcons"
        v2_17_ = v2_17_:GetAttributeChangedSignal(v2_19_)
        v2_19_ = v2_12_
        v2_0_:add(v2_17_:Connect(v2_19_))
        v2_17_ = v1_1_
        v2_19_ = "MaxWidth"
        v2_17_ = v2_17_:GetAttributeChangedSignal(v2_19_)
        v2_19_ = v2_12_
        v2_0_:add(v2_17_:Connect(v2_19_))
        local delay = task.delay
        v2_16_ = 0.100000
        v2_17_ = function()
            local v13_1_ = a1
            local v13_0_ = v13_1_.startMenuUpdate
            v13_0_:Fire()
        end
        delay(v2_16_, v2_17_)
    end
    v1_8_ = a1.menuChildAdded
    v1_10_ = v1_7_
    v1_8_:Connect(v1_10_)
    v1_8_ = a1.menuSet
    v1_10_ = function(a1)
        local v14_1_ = pairs
        local v14_4_ = a1
        local v14_2_ = v14_4_.menuIcons
        local v14_1_, v14_2_, v14_3_ = v14_1_(v14_2_)
        for v14_4_, v14_5_ in v14_1_, v14_2_, v14_3_ do
            local v14_7_ = v1_2_
            local v14_6_ = v14_7_.getIconByUID
            v14_7_ = v14_5_
            v14_6_ = v14_6_(v14_7_)
        end
        v14_1_ = #a1
        v14_3_ = a1
        v14_2_ = type
        v14_2_ = v14_2_(v14_3_)
        if v14_2_ == "table" then
            v14_2_ = pairs
            v14_3_ = a1
            v14_2_, v14_3_, v14_4_ = v14_2_(v14_3_)
            for v14_5_, v14_6_ in v14_2_, v14_3_, v14_4_ do
                local v14_9_ = a1
            end
        end
    end
    v1_8_:Connect(v1_10_)
    return v1_1_
end
return v0_0_
