-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = function(a1)
    local v1_3_ = "ClickRegion"
    local v1_1_ = a1:getInstance(v1_3_)
    local new = Instance.new
    v1_3_ = "CanvasGroup"
    local v1_2_ = new(v1_3_)
    v1_3_ = "Caption"
    v1_2_.Name = v1_3_
    local new = Vector2.new
    local v1_4_ = 0.500000
    local v1_5_ = 0
    v1_3_ = new(v1_4_, v1_5_)
    v1_2_.AnchorPoint = v1_3_
    v1_3_ = 1
    v1_2_.BackgroundTransparency = v1_3_
    v1_3_ = 0
    v1_2_.BorderSizePixel = v1_3_
    v1_3_ = 1
    v1_2_.GroupTransparency = v1_3_
    local fromOffset = UDim2.fromOffset
    v1_4_ = 0
    v1_5_ = 0
    v1_3_ = fromOffset(v1_4_, v1_5_)
    v1_2_.Position = v1_3_
    v1_3_ = true
    v1_2_.Visible = v1_3_
    v1_3_ = 30
    v1_2_.ZIndex = v1_3_
    v1_2_.Parent = v1_1_
    local new = Instance.new
    v1_4_ = "Frame"
    v1_3_ = new(v1_4_)
    v1_4_ = "Box"
    v1_3_.Name = v1_4_
    local XY = Enum.AutomaticSize.XY
    v1_3_.AutomaticSize = XY
    local fromRGB = Color3.fromRGB
    v1_5_ = 101
    local v1_6_ = 102
    local v1_7_ = 104
    v1_4_ = fromRGB(v1_5_, v1_6_, v1_7_)
    v1_3_.BackgroundColor3 = v1_4_
    local fromOffset = UDim2.fromOffset
    v1_5_ = 4
    v1_6_ = 7
    v1_4_ = fromOffset(v1_5_, v1_6_)
    v1_3_.Position = v1_4_
    v1_4_ = 12
    v1_3_.ZIndex = v1_4_
    v1_3_.Parent = v1_2_
    local new = Instance.new
    v1_5_ = "TextLabel"
    v1_4_ = new(v1_5_)
    v1_5_ = "Header"
    v1_4_.Name = v1_5_
    local new = Font.new
    v1_6_ = "rbxasset://fonts/families/GothamSSm.json"
    local Medium = Enum.FontWeight.Medium
    local Normal = Enum.FontStyle.Normal
    v1_5_ = new(v1_6_, Medium, Normal)
    v1_4_.FontFace = v1_5_
    v1_5_ = "Caption"
    v1_4_.Text = v1_5_
    local fromRGB = Color3.fromRGB
    v1_6_ = 255
    v1_7_ = 255
    local v1_8_ = 255
    v1_5_ = fromRGB(v1_6_, v1_7_, v1_8_)
    v1_4_.TextColor3 = v1_5_
    v1_5_ = 14
    v1_4_.TextSize = v1_5_
    local None = Enum.TextTruncate.None
    v1_4_.TextTruncate = None
    v1_5_ = false
    v1_4_.TextWrapped = v1_5_
    local Left = Enum.TextXAlignment.Left
    v1_4_.TextXAlignment = Left
    local X = Enum.AutomaticSize.X
    v1_4_.AutomaticSize = X
    v1_5_ = 1
    v1_4_.BackgroundTransparency = v1_5_
    v1_5_ = 1
    v1_4_.LayoutOrder = v1_5_
    local fromOffset = UDim2.fromOffset
    v1_6_ = 0
    v1_7_ = 16
    v1_5_ = fromOffset(v1_6_, v1_7_)
    v1_4_.Size = v1_5_
    v1_5_ = 18
    v1_4_.ZIndex = v1_5_
    v1_4_.Parent = v1_3_
    local new = Instance.new
    v1_6_ = "UIListLayout"
    v1_5_ = new(v1_6_)
    v1_6_ = "Layout"
    v1_5_.Name = v1_6_
    local new = UDim.new
    v1_7_ = 0
    v1_8_ = 8
    v1_6_ = new(v1_7_, v1_8_)
    v1_5_.Padding = v1_6_
    local LayoutOrder = Enum.SortOrder.LayoutOrder
    v1_5_.SortOrder = LayoutOrder
    v1_5_.Parent = v1_3_
    local new = Instance.new
    v1_7_ = "UICorner"
    v1_6_ = new(v1_7_)
    v1_7_ = "CaptionCorner"
    v1_6_.Name = v1_7_
    v1_6_.Parent = v1_3_
    local new = Instance.new
    v1_8_ = "UIPadding"
    v1_7_ = new(v1_8_)
    v1_8_ = "Padding"
    v1_7_.Name = v1_8_
    local new = UDim.new
    local v1_9_ = 0
    local v1_10_ = 12
    v1_8_ = new(v1_9_, v1_10_)
    v1_7_.PaddingBottom = v1_8_
    local new = UDim.new
    v1_9_ = 0
    v1_10_ = 12
    v1_8_ = new(v1_9_, v1_10_)
    v1_7_.PaddingLeft = v1_8_
    local new = UDim.new
    v1_9_ = 0
    v1_10_ = 12
    v1_8_ = new(v1_9_, v1_10_)
    v1_7_.PaddingRight = v1_8_
    local new = UDim.new
    v1_9_ = 0
    v1_10_ = 12
    v1_8_ = new(v1_9_, v1_10_)
    v1_7_.PaddingTop = v1_8_
    v1_7_.Parent = v1_3_
    local new = Instance.new
    v1_9_ = "Frame"
    v1_8_ = new(v1_9_)
    v1_9_ = "Hotkeys"
    v1_8_.Name = v1_9_
    local Y = Enum.AutomaticSize.Y
    v1_8_.AutomaticSize = Y
    v1_9_ = 1
    v1_8_.BackgroundTransparency = v1_9_
    v1_9_ = 3
    v1_8_.LayoutOrder = v1_9_
    local fromScale = UDim2.fromScale
    v1_10_ = 1
    local v1_11_ = 0
    v1_9_ = fromScale(v1_10_, v1_11_)
    v1_8_.Size = v1_9_
    v1_9_ = false
    v1_8_.Visible = v1_9_
    v1_8_.Parent = v1_3_
    local new = Instance.new
    v1_10_ = "UIListLayout"
    v1_9_ = new(v1_10_)
    v1_10_ = "Layout1"
    v1_9_.Name = v1_10_
    local new = UDim.new
    v1_11_ = 0
    local v1_12_ = 6
    v1_10_ = new(v1_11_, v1_12_)
    v1_9_.Padding = v1_10_
    local Vertical = Enum.FillDirection.Vertical
    v1_9_.FillDirection = Vertical
    local Center = Enum.HorizontalAlignment.Center
    v1_9_.HorizontalAlignment = Center
    local None = Enum.UIFlexAlignment.None
    v1_9_.HorizontalFlex = None
    local Automatic = Enum.ItemLineAlignment.Automatic
    v1_9_.ItemLineAlignment = Automatic
    local None = Enum.UIFlexAlignment.None
    v1_9_.VerticalFlex = None
    local LayoutOrder = Enum.SortOrder.LayoutOrder
    v1_9_.SortOrder = LayoutOrder
    v1_9_.Parent = v1_8_
    local new = Instance.new
    v1_11_ = "ImageLabel"
    v1_10_ = new(v1_11_)
    v1_11_ = "Key1"
    v1_10_.Name = v1_11_
    v1_11_ = "rbxasset://textures/ui/Controls/key_single.png"
    v1_10_.Image = v1_11_
    v1_11_ = 0.700000
    v1_10_.ImageTransparency = v1_11_
    local Slice = Enum.ScaleType.Slice
    v1_10_.ScaleType = Slice
    local new = Rect.new
    v1_12_ = 5
    local v1_13_ = 5
    local v1_14_ = 23
    local v1_15_ = 24
    v1_11_ = new(v1_12_, v1_13_, v1_14_, v1_15_)
    v1_10_.SliceCenter = v1_11_
    local X = Enum.AutomaticSize.X
    v1_10_.AutomaticSize = X
    v1_11_ = 1
    v1_10_.BackgroundTransparency = v1_11_
    v1_11_ = 1
    v1_10_.LayoutOrder = v1_11_
    local fromOffset = UDim2.fromOffset
    v1_12_ = 0
    v1_13_ = 30
    v1_11_ = fromOffset(v1_12_, v1_13_)
    v1_10_.Size = v1_11_
    v1_11_ = 15
    v1_10_.ZIndex = v1_11_
    v1_10_.Parent = v1_8_
    local new = Instance.new
    v1_12_ = "UIPadding"
    v1_11_ = new(v1_12_)
    v1_12_ = "Inset"
    v1_11_.Name = v1_12_
    local new = UDim.new
    v1_13_ = 0
    v1_14_ = 8
    v1_12_ = new(v1_13_, v1_14_)
    v1_11_.PaddingLeft = v1_12_
    local new = UDim.new
    v1_13_ = 0
    v1_14_ = 8
    v1_12_ = new(v1_13_, v1_14_)
    v1_11_.PaddingRight = v1_12_
    v1_11_.Parent = v1_10_
    local new = Instance.new
    v1_13_ = "TextLabel"
    v1_12_ = new(v1_13_)
    v1_13_ = false
    v1_12_.AutoLocalize = v1_13_
    v1_13_ = "LabelContent"
    v1_12_.Name = v1_13_
    local new = Font.new
    v1_14_ = "rbxasset://fonts/families/GothamSSm.json"
    local Medium = Enum.FontWeight.Medium
    local Normal = Enum.FontStyle.Normal
    v1_13_ = new(v1_14_, Medium, Normal)
    v1_12_.FontFace = v1_13_
    v1_13_ = ""
    v1_12_.Text = v1_13_
    local fromRGB = Color3.fromRGB
    v1_14_ = 189
    v1_15_ = 190
    local v1_16_ = 190
    v1_13_ = fromRGB(v1_14_, v1_15_, v1_16_)
    v1_12_.TextColor3 = v1_13_
    v1_13_ = 14
    v1_12_.TextSize = v1_13_
    local X = Enum.AutomaticSize.X
    v1_12_.AutomaticSize = X
    v1_13_ = 1
    v1_12_.BackgroundTransparency = v1_13_
    local fromOffset = UDim2.fromOffset
    v1_14_ = 0
    v1_15_ = -1
    v1_13_ = fromOffset(v1_14_, v1_15_)
    v1_12_.Position = v1_13_
    local fromScale = UDim2.fromScale
    v1_14_ = 1
    v1_15_ = 1
    v1_13_ = fromScale(v1_14_, v1_15_)
    v1_12_.Size = v1_13_
    v1_13_ = 16
    v1_12_.ZIndex = v1_13_
    v1_12_.Parent = v1_10_
    local new = Instance.new
    v1_14_ = "ImageLabel"
    v1_13_ = new(v1_14_)
    v1_14_ = "Caret"
    v1_13_.Name = v1_14_
    v1_14_ = "rbxasset://LuaPackages/Packages/_Index/UIBlox/UIBlox/AppImageAtlas/img_set_1x_1.png"
    v1_13_.Image = v1_14_
    local fromRGB = Color3.fromRGB
    v1_15_ = 101
    v1_16_ = 102
    local v1_17_ = 104
    v1_14_ = fromRGB(v1_15_, v1_16_, v1_17_)
    v1_13_.ImageColor3 = v1_14_
    local new = Vector2.new
    v1_15_ = 260
    v1_16_ = 440
    v1_14_ = new(v1_15_, v1_16_)
    v1_13_.ImageRectOffset = v1_14_
    local new = Vector2.new
    v1_15_ = 16
    v1_16_ = 8
    v1_14_ = new(v1_15_, v1_16_)
    v1_13_.ImageRectSize = v1_14_
    local new = Vector2.new
    v1_15_ = 0
    v1_16_ = 0.500000
    v1_14_ = new(v1_15_, v1_16_)
    v1_13_.AnchorPoint = v1_14_
    v1_14_ = 1
    v1_13_.BackgroundTransparency = v1_14_
    local new = UDim2.new
    v1_15_ = 0
    v1_16_ = 0
    v1_17_ = 0
    local v1_18_ = 4
    v1_14_ = new(v1_15_, v1_16_, v1_17_, v1_18_)
    v1_13_.Position = v1_14_
    v1_14_ = 180
    v1_13_.Rotation = v1_14_
    local fromOffset = UDim2.fromOffset
    v1_15_ = 16
    v1_16_ = 8
    v1_14_ = fromOffset(v1_15_, v1_16_)
    v1_13_.Size = v1_14_
    v1_14_ = 12
    v1_13_.ZIndex = v1_14_
    v1_13_.Parent = v1_2_
    local new = Instance.new
    v1_15_ = "ImageLabel"
    v1_14_ = new(v1_15_)
    v1_15_ = "DropShadow"
    v1_14_.Name = v1_15_
    v1_15_ = "rbxasset://LuaPackages/Packages/_Index/UIBlox/UIBlox/AppImageAtlas/img_set_1x_1.png"
    v1_14_.Image = v1_15_
    local fromRGB = Color3.fromRGB
    v1_16_ = 0
    v1_17_ = 0
    v1_18_ = 0
    v1_15_ = fromRGB(v1_16_, v1_17_, v1_18_)
    v1_14_.ImageColor3 = v1_15_
    local new = Vector2.new
    v1_16_ = 217
    v1_17_ = 486
    v1_15_ = new(v1_16_, v1_17_)
    v1_14_.ImageRectOffset = v1_15_
    local new = Vector2.new
    v1_16_ = 25
    v1_17_ = 25
    v1_15_ = new(v1_16_, v1_17_)
    v1_14_.ImageRectSize = v1_15_
    v1_15_ = 0.450000
    v1_14_.ImageTransparency = v1_15_
    local Slice = Enum.ScaleType.Slice
    v1_14_.ScaleType = Slice
    local new = Rect.new
    v1_16_ = 12
    v1_17_ = 12
    v1_18_ = 13
    local v1_19_ = 13
    v1_15_ = new(v1_16_, v1_17_, v1_18_, v1_19_)
    v1_14_.SliceCenter = v1_15_
    v1_15_ = 1
    v1_14_.BackgroundTransparency = v1_15_
    local fromOffset = UDim2.fromOffset
    v1_16_ = 0
    v1_17_ = 5
    v1_15_ = fromOffset(v1_16_, v1_17_)
    v1_14_.Position = v1_15_
    local new = UDim2.new
    v1_16_ = 1
    v1_17_ = 0
    v1_18_ = 0
    v1_19_ = 48
    v1_15_ = new(v1_16_, v1_17_, v1_18_, v1_19_)
    v1_14_.Size = v1_15_
    v1_14_.Parent = v1_2_
    v1_17_ = "AbsoluteSize"
    v1_15_ = v1_3_:GetPropertyChangedSignal(v1_17_)
    v1_17_ = function()
        local v2_0_ = v1_14_
        local new = UDim2.new
        local v2_2_ = 1
        local v2_3_ = 0
        local v2_4_ = 0
        local v2_8_ = v1_3_
        local v2_7_ = v2_8_.AbsoluteSize
        local v2_6_ = v2_7_.Y
        local v2_5_ = v2_6_ + 8.000000
        local v2_1_ = new(v2_2_, v2_3_, v2_4_, v2_5_)
        v2_0_.Size = v2_1_
    end
    v1_15_:Connect(v1_17_)
    v1_15_ = a1.captionJanitor
    v1_18_ = v1_2_
    v1_16_, v1_17_ = a1:clipOutside(v1_18_)
    local None = Enum.AutomaticSize.None
    v1_17_.AutomaticSize = None
    v1_18_ = function()
        local v3_1_ = v1_2_
        local v3_0_ = v3_1_.AbsoluteSize
        v3_1_ = v1_17_
        local fromOffset = UDim2.fromOffset
        local v3_3_ = v3_0_.X
        local v3_4_ = v3_0_.Y
        local v3_2_ = fromOffset(v3_3_, v3_4_)
        v3_1_.Size = v3_2_
    end
    local v1_23_ = "AbsoluteSize"
    local v1_21_ = v1_2_:GetPropertyChangedSignal(v1_23_)
    v1_23_ = v1_18_
    v1_15_:add(v1_21_:Connect(v1_23_))
    v1_19_ = v1_2_.AbsoluteSize
    local fromOffset = UDim2.fromOffset
    v1_21_ = v1_19_.X
    local v1_22_ = v1_19_.Y
    local v1_20_ = fromOffset(v1_21_, v1_22_)
    v1_17_.Size = v1_20_
    v1_19_ = false
    v1_21_ = v1_2_.Box
    v1_20_ = v1_21_.Header
    v1_21_ = game
    v1_23_ = "UserInputService"
    v1_21_ = v1_21_:GetService(v1_23_)
    v1_22_ = function(a1)
        local v4_2_ = v1_21_
        local v4_1_ = v4_2_.KeyboardEnabled
        local v4_3_ = v1_2_
        local v4_5_ = "CaptionText"
        v4_3_ = v4_3_:GetAttribute(v4_5_)
        v4_2_ = v4_3_ or ""
        if v4_2_ ~= "_hotkey_" then
            v4_3_ = false
        end
        v4_3_ = true
        if not v4_1_ then
            if v4_3_ then
                local v4_4_ = a1
                v4_4_:setCaption()
                return
            end
        end
        local v4_4_ = v1_20_
        v4_4_.Text = v4_2_
        v4_4_ = v1_20_
        v4_5_ = not v4_3_
        v4_4_.Visible = v4_5_
        if a1 then
            v4_4_ = v1_12_
            v4_5_ = a1.Name
            v4_4_.Text = v4_5_
            v4_4_ = v1_8_
            v4_5_ = true
            v4_4_.Visible = v4_5_
        end
        if not v4_1_ then
            v4_4_ = v1_8_
            v4_5_ = false
            v4_4_.Visible = v4_5_
        end
    end
    local v1_25_ = "CaptionText"
    v1_23_ = v1_2_:GetAttributeChangedSignal(v1_25_)
    v1_25_ = v1_22_
    v1_23_:Connect(v1_25_)
    local Quad = Enum.EasingStyle.Quad
    local new = TweenInfo.new
    v1_25_ = 0.200000
    local v1_26_ = Quad
    local In = Enum.EasingDirection.In
    local v1_24_ = new(v1_25_, v1_26_, In)
    local new = TweenInfo.new
    v1_26_ = 0.200000
    local v1_27_ = Quad
    local Out = Enum.EasingDirection.Out
    v1_25_ = new(v1_26_, v1_27_, Out)
    v1_26_ = game
    local v1_28_ = "TweenService"
    v1_26_ = v1_26_:GetService(v1_28_)
    v1_27_ = game
    local v1_29_ = "RunService"
    v1_27_ = v1_27_:GetService(v1_29_)
    v1_28_ = function(a1)
        if a1 ~= nil then
            local v5_1_ = a1
        else
            local v5_1_ = v1_19_
        end
        if nil then
            local v5_2_ = 10
        else
            local v5_2_ = 2
        end
        local new = UDim2.new
        local v5_4_ = 0.500000
        local v5_5_ = 0
        local v5_6_ = 1
        local v5_7_ = nil
        return new(v5_4_, v5_5_, v5_6_, v5_7_)
    end
    v1_29_ = function(a1)
        local v6_1_ = v1_19_
        if not v6_1_ then
            return
        end
        if a1 ~= nil then
            v6_1_ = a1
        else
            v6_1_ = v1_19_
        end
        local v6_3_ = not v6_1_
        if v6_3_ ~= nil then
            local v6_4_ = v6_3_
        else
            local v6_4_ = v1_19_
        end
        if nil then
            local v6_5_ = 10
        else
            local v6_5_ = 2
        end
        local new = UDim2.new
        local v6_7_ = 0.500000
        local v6_8_ = 0
        local v6_9_ = 1
        local v6_10_ = nil
        local v6_6_ = new(v6_7_, v6_8_, v6_9_, v6_10_)
        local v6_2_ = v6_6_
        if v6_1_ ~= nil then
            local v6_4_ = v6_1_
        else
            local v6_4_ = v1_19_
        end
        if nil then
            local v6_5_ = 10
        else
            local v6_5_ = 2
        end
        local new = UDim2.new
        v6_7_ = 0.500000
        v6_8_ = 0
        v6_9_ = 1
        v6_10_ = nil
        v6_6_ = new(v6_7_, v6_8_, v6_9_, v6_10_)
        v6_3_ = v6_6_
        if v6_1_ then
            v6_7_ = v1_13_
            v6_6_ = v6_7_.Position
            local v6_5_ = v6_6_.Y
            local v6_4_ = v6_5_.Offset
            v6_5_ = v1_13_
            local fromOffset = UDim2.fromOffset
            v6_7_ = 0
            v6_8_ = v6_4_
            v6_6_ = fromOffset(v6_7_, v6_8_)
            v6_5_.Position = v6_6_
            v6_5_ = v1_2_
            local XY = Enum.AutomaticSize.XY
            v6_5_.AutomaticSize = XY
            v6_5_ = v1_2_
            local fromOffset = UDim2.fromOffset
            v6_7_ = 32
            v6_8_ = 53
            v6_6_ = fromOffset(v6_7_, v6_8_)
            v6_5_.Size = v6_6_
        else
            local v6_5_ = v1_2_
            local v6_4_ = v6_5_.AbsoluteSize
            v6_5_ = v1_2_
            local Y = Enum.AutomaticSize.Y
            v6_5_.AutomaticSize = Y
            v6_5_ = v1_2_
            local fromOffset = UDim2.fromOffset
            v6_7_ = v6_4_.X
            v6_8_ = v6_4_.Y
            v6_6_ = fromOffset(v6_7_, v6_8_)
            v6_5_.Size = v6_6_
        end
        local v6_4_ = nil
        local v6_5_ = function()
            local v7_5_ = v1_1_
            local v7_4_ = v7_5_.AbsolutePosition
            local v7_3_ = v7_4_.X
            local v7_6_ = v1_2_
            v7_5_ = v7_6_.AbsolutePosition
            v7_4_ = v7_5_.X
            local v7_2_ = v7_3_ - v7_4_
            v7_6_ = v1_1_
            v7_5_ = v7_6_.AbsoluteSize
            v7_4_ = v7_5_.X
            v7_3_ = v7_4_ / 2.000000
            local v7_1_ = v7_2_ + v7_3_
            v7_5_ = v1_13_
            v7_4_ = v7_5_.AbsoluteSize
            v7_3_ = v7_4_.X
            v7_2_ = v7_3_ / 2.000000
            local v7_0_ = v7_1_ - v7_2_
            v7_4_ = v1_13_
            v7_3_ = v7_4_.Position
            v7_2_ = v7_3_.Y
            v7_1_ = v7_2_.Offset
            local fromOffset = UDim2.fromOffset
            v7_3_ = v7_0_
            v7_4_ = v7_1_
            v7_2_ = fromOffset(v7_3_, v7_4_)
            v7_3_ = v6_4_
            if v7_3_ ~= v7_0_ then
                v6_4_ = v7_3_
                v7_3_ = v1_13_
                local fromOffset = UDim2.fromOffset
                v7_5_ = 0
                v7_6_ = v7_1_
                v7_4_ = fromOffset(v7_5_, v7_6_)
                v7_3_.Position = v7_4_
                local wait = task.wait
                wait()
            end
            v7_3_ = v1_13_
            v7_3_.Position = v7_2_
        end
        v6_6_ = v1_17_
        v6_6_.Position = v6_2_
        v6_6_ = v6_5_
        v6_6_()
        if v6_1_ then
            v6_6_ = v1_24_
            if not v6_6_ then
                v6_6_ = v1_25_
            end
        end
        v6_6_ = v1_25_
        v6_7_ = v1_26_
        v6_9_ = v1_17_
        v6_10_ = v6_6_
        local v6_11_ = {}
        v6_11_.Position = v6_3_
        v6_7_ = v6_7_:Create(v6_9_, v6_10_, v6_11_)
        v6_9_ = v1_27_
        v6_8_ = v6_9_.Heartbeat
        v6_10_ = v6_5_
        v6_8_ = v6_8_:Connect(v6_10_)
        v6_7_:Play()
        v6_9_ = v6_7_.Completed
        v6_11_ = function()
            local v8_0_ = v6_8_
            v8_0_:Disconnect()
        end
        v6_9_:Once(v6_11_)
    end
    local v1_34_ = "AbsoluteSize"
    local v1_32_ = v1_1_:GetPropertyChangedSignal(v1_34_)
    v1_34_ = function()
        local v9_0_ = v1_29_
        v9_0_()
    end
    v1_15_:add(v1_32_:Connect(v1_34_))
    local v1_30_ = v1_29_
    local v1_31_ = false
    v1_30_(v1_31_)
    v1_32_ = a1.toggleKeyAdded
    v1_34_ = v1_22_
    v1_15_:add(v1_32_:Connect(v1_34_))
    v1_30_ = pairs
    v1_31_ = a1.bindedToggleKeys
    v1_30_, v1_31_, v1_32_ = v1_30_(v1_31_)
    for v1_33_, v1_34_ in v1_30_, v1_31_, v1_32_ do
        local v1_35_ = v1_21_.KeyboardEnabled
        local v1_39_ = "CaptionText"
        local v1_37_ = v1_2_:GetAttribute(v1_39_)
        local v1_36_ = v1_37_ or ""
        if v1_36_ ~= "_hotkey_" then
            v1_37_ = false
        end
        v1_37_ = true
        if not v1_35_ then
            if v1_37_ then
                a1:setCaption()
            else
                v1_20_.Text = v1_36_
                local v1_38_ = not v1_37_
                v1_20_.Visible = v1_38_
                if v1_33_ then
                    v1_38_ = v1_33_.Name
                    v1_12_.Text = v1_38_
                    v1_38_ = true
                    v1_8_.Visible = v1_38_
                end
                if not v1_35_ then
                    v1_38_ = false
                    v1_8_.Visible = v1_38_
                end
            end
        else
            v1_20_.Text = v1_36_
            local v1_38_ = not v1_37_
            v1_20_.Visible = v1_38_
            if v1_33_ then
                v1_38_ = v1_33_.Name
                v1_12_.Text = v1_38_
                v1_38_ = true
                v1_8_.Visible = v1_38_
            end
            if not v1_35_ then
                v1_38_ = false
                v1_8_.Visible = v1_38_
            end
        end
    end
    v1_32_ = a1.fakeToggleKeyChanged
    v1_34_ = v1_22_
    v1_15_:add(v1_32_:Connect(v1_34_))
    v1_30_ = a1.fakeToggleKey
    if v1_30_ then
        v1_31_ = v1_21_.KeyboardEnabled
        local v1_35_ = "CaptionText"
        local v1_33_ = v1_2_:GetAttribute(v1_35_)
        v1_32_ = v1_33_ or ""
        if v1_32_ ~= "_hotkey_" then
            v1_33_ = false
        end
        v1_33_ = true
        if not v1_31_ then
            if v1_33_ then
                a1:setCaption()
            else
                v1_20_.Text = v1_32_
                v1_34_ = not v1_33_
                v1_20_.Visible = v1_34_
                if v1_30_ then
                    v1_34_ = v1_30_.Name
                    v1_12_.Text = v1_34_
                    v1_34_ = true
                    v1_8_.Visible = v1_34_
                end
                if not v1_31_ then
                    v1_34_ = false
                    v1_8_.Visible = v1_34_
                end
            end
        else
            v1_20_.Text = v1_32_
            v1_34_ = not v1_33_
            v1_20_.Visible = v1_34_
            if v1_30_ then
                v1_34_ = v1_30_.Name
                v1_12_.Text = v1_34_
                v1_34_ = true
                v1_8_.Visible = v1_34_
            end
            if not v1_31_ then
                v1_34_ = false
                v1_8_.Visible = v1_34_
            end
        end
    end
    v1_31_ = function(a1)
        local v10_1_ = v1_19_
        if v10_1_ == a1 then
            return
        end
        local v10_2_ = a1
        v10_1_ = v10_2_.joinedFrame
        if v10_1_ then
            local match = string.match
            local v10_3_ = v10_1_.Name
            local v10_4_ = "Dropdown"
            v10_2_ = match(v10_3_, v10_4_)
            if v10_2_ then
                v10_0_ = false
            end
        end
        v1_19_ = a1
        if a1 then
            v10_2_ = 0
        else
            v10_2_ = 1
        end
        if a1 then
            local v10_3_ = v1_24_
            if not v10_3_ then
                v10_3_ = v1_25_
            end
        end
        local v10_3_ = v1_25_
        local v10_4_ = v1_26_
        local v10_6_ = v1_2_
        local v10_7_ = v10_3_
        local v10_8_ = {}
        v10_8_.GroupTransparency = v10_2_
        v10_4_ = v10_4_:Create(v10_6_, v10_7_, v10_8_)
        v10_4_:Play()
        local v10_5_ = v1_29_
        v10_5_()
        v10_6_ = v1_21_
        v10_5_ = v10_6_.KeyboardEnabled
        v10_7_ = v1_2_
        local v10_9_ = "CaptionText"
        v10_7_ = v10_7_:GetAttribute(v10_9_)
        v10_6_ = v10_7_ or ""
        if v10_6_ ~= "_hotkey_" then
            v10_7_ = false
        end
        v10_7_ = true
        if not v10_5_ then
            if v10_7_ then
                v10_8_ = a1
                v10_8_:setCaption()
                return
            end
        end
        v10_8_ = v1_20_
        v10_8_.Text = v10_6_
        v10_8_ = v1_20_
        v10_9_ = not v10_7_
        v10_8_.Visible = v10_9_
        if not v10_5_ then
            v10_8_ = v1_8_
            v10_9_ = false
            v10_8_.Visible = v10_9_
        end
    end
    v1_32_ = require
    local v1_33_ = a1.iconModule
    v1_32_ = v1_32_(v1_33_)
    local v1_35_ = a1.stateChanged
    local v1_37_ = function(a1)
        if a1 == "Viewing" then
            local v11_2_ = v1_32_
            local v11_1_ = v11_2_.captionLastClosedClock
            if v11_1_ then
                local clock = os.clock
                local v11_3_ = clock()
                v11_2_ = v11_3_ - v11_1_
                if not v11_2_ then
                    v11_2_ = 999
                end
            end
            v11_2_ = 999
            local v11_4_ = 0.300000
            if v11_2_ < v11_4_ then
                local v11_3_ = 0
            else
                local v11_3_ = 0.500000
            end
            local delay = task.delay
            local v11_5_ = nil
            local v11_6_ = function()
                local v12_1_ = a1
                local v12_0_ = v12_1_.activeState
                if v12_0_ == "Viewing" then
                    v12_0_ = v1_31_
                    v12_1_ = true
                    v12_0_(v12_1_)
                end
            end
            delay(v11_5_, v11_6_)
            return
        end
        local v11_1_ = v1_32_
        local clock = os.clock
        local v11_2_ = clock()
        v11_1_.captionLastClosedClock = v11_2_
        v11_1_ = v1_31_
        v11_2_ = false
        v11_1_(v11_2_)
    end
    v1_15_:add(v1_35_:Connect(v1_37_))
    return v1_2_
end
return v0_0_
