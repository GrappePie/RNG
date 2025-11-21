-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = function(a1, a2)
    local new = Instance.new
    local v1_3_ = "Frame"
    local v1_2_ = new(v1_3_)
    local v1_5_ = "WidgetUID"
    local v1_6_ = a1.UID
    v1_2_:SetAttribute(v1_5_, v1_6_)
    v1_3_ = "Widget"
    v1_2_.Name = v1_3_
    v1_3_ = 1
    v1_2_.BackgroundTransparency = v1_3_
    v1_3_ = true
    v1_2_.Visible = v1_3_
    v1_3_ = 20
    v1_2_.ZIndex = v1_3_
    v1_3_ = false
    v1_2_.Active = v1_3_
    v1_3_ = true
    v1_2_.ClipsDescendants = v1_3_
    local new = Instance.new
    local v1_4_ = "Frame"
    v1_3_ = new(v1_4_)
    v1_4_ = "IconButton"
    v1_3_.Name = v1_4_
    v1_4_ = true
    v1_3_.Visible = v1_4_
    v1_4_ = 2
    v1_3_.ZIndex = v1_4_
    v1_4_ = 0
    v1_3_.BorderSizePixel = v1_4_
    v1_3_.Parent = v1_2_
    v1_4_ = true
    v1_3_.ClipsDescendants = v1_4_
    v1_4_ = false
    v1_3_.Active = v1_4_
    v1_4_ = a1.deselected
    v1_6_ = function()
        local v2_0_ = v1_3_
        local v2_1_ = true
        v2_0_.ClipsDescendants = v2_1_
    end
    v1_4_:Connect(v1_6_)
    v1_4_ = a1.selected
    v1_6_ = function()
        local defer = task.defer
        local v3_1_ = function()
            local v4_1_ = a1
            local v4_0_ = v4_1_.resizingComplete
            local v4_2_ = function()
                local v5_1_ = a1
                local v5_0_ = v5_1_.isSelected
                if v5_0_ then
                    v5_0_ = v1_3_
                    v5_1_ = false
                    v5_0_.ClipsDescendants = v5_1_
                end
            end
            v4_0_:Once(v4_2_)
        end
        defer(v3_1_)
    end
    v1_4_:Connect(v1_6_)
    local new = Instance.new
    v1_5_ = "UICorner"
    v1_4_ = new(v1_5_)
    local v1_7_ = "Collective"
    local v1_8_ = "IconCorners"
    v1_4_:SetAttribute(v1_7_, v1_8_)
    v1_4_.Parent = v1_3_
    v1_5_ = require
    v1_8_ = script
    v1_7_ = v1_8_.Parent
    v1_6_ = v1_7_.Menu
    v1_5_ = v1_5_(v1_6_)
    v1_6_ = a1
    v1_5_ = v1_5_(v1_6_)
    v1_6_ = v1_5_.MenuUIListLayout
    v1_7_ = v1_5_.MenuGap
    v1_5_.Parent = v1_3_
    local new = Instance.new
    local v1_9_ = "Frame"
    v1_8_ = new(v1_9_)
    v1_9_ = "IconSpot"
    v1_8_.Name = v1_9_
    local fromRGB = Color3.fromRGB
    local v1_10_ = 225
    local v1_11_ = 225
    local v1_12_ = 225
    v1_9_ = fromRGB(v1_10_, v1_11_, v1_12_)
    v1_8_.BackgroundColor3 = v1_9_
    v1_9_ = 0.900000
    v1_8_.BackgroundTransparency = v1_9_
    v1_9_ = true
    v1_8_.Visible = v1_9_
    local new = Vector2.new
    v1_10_ = 0
    v1_11_ = 0.500000
    v1_9_ = new(v1_10_, v1_11_)
    v1_8_.AnchorPoint = v1_9_
    v1_9_ = 5
    v1_8_.ZIndex = v1_9_
    v1_8_.Parent = v1_5_
    v1_9_ = v1_4_:Clone()
    v1_9_.Parent = v1_8_
    v1_10_ = v1_8_:Clone()
    v1_11_ = "IconOverlay"
    v1_10_.Name = v1_11_
    local fromRGB = Color3.fromRGB
    v1_12_ = 255
    local v1_13_ = 255
    local v1_14_ = 255
    v1_11_ = fromRGB(v1_12_, v1_13_, v1_14_)
    v1_10_.BackgroundColor3 = v1_11_
    v1_12_ = v1_8_.ZIndex
    v1_11_ = v1_12_ + 1.000000
    v1_10_.ZIndex = v1_11_
    local new = UDim2.new
    v1_12_ = 1
    v1_13_ = 0
    v1_14_ = 1
    local v1_15_ = 0
    v1_11_ = new(v1_12_, v1_13_, v1_14_, v1_15_)
    v1_10_.Size = v1_11_
    local new = UDim2.new
    v1_12_ = 0
    v1_13_ = 0
    v1_14_ = 0
    v1_15_ = 0
    v1_11_ = new(v1_12_, v1_13_, v1_14_, v1_15_)
    v1_10_.Position = v1_11_
    local new = Vector2.new
    v1_12_ = 0
    v1_13_ = 0
    v1_11_ = new(v1_12_, v1_13_)
    v1_10_.AnchorPoint = v1_11_
    v1_11_ = false
    v1_10_.Visible = v1_11_
    v1_10_.Parent = v1_8_
    local new = Instance.new
    v1_12_ = "TextButton"
    v1_11_ = new(v1_12_)
    v1_14_ = "CorrespondingIconUID"
    v1_15_ = a1.UID
    v1_11_:SetAttribute(v1_14_, v1_15_)
    v1_12_ = "ClickRegion"
    v1_11_.Name = v1_12_
    v1_12_ = 1
    v1_11_.BackgroundTransparency = v1_12_
    v1_12_ = true
    v1_11_.Visible = v1_12_
    v1_12_ = ""
    v1_11_.Text = v1_12_
    v1_12_ = 20
    v1_11_.ZIndex = v1_12_
    v1_12_ = true
    v1_11_.Selectable = v1_12_
    v1_12_ = true
    v1_11_.SelectionGroup = v1_12_
    v1_11_.Parent = v1_8_
    v1_12_ = require
    local v1_17_ = script
    local v1_16_ = v1_17_.Parent
    v1_15_ = v1_16_.Parent
    v1_14_ = v1_15_.Features
    v1_13_ = v1_14_.Gamepad
    v1_12_ = v1_12_(v1_13_)
    v1_13_ = v1_12_.registerButton
    v1_14_ = v1_11_
    v1_13_(v1_14_)
    v1_13_ = v1_4_:Clone()
    v1_13_.Parent = v1_11_
    local new = Instance.new
    v1_15_ = "Frame"
    v1_14_ = new(v1_15_)
    v1_15_ = "Contents"
    v1_14_.Name = v1_15_
    v1_15_ = 1
    v1_14_.BackgroundTransparency = v1_15_
    local fromScale = UDim2.fromScale
    v1_16_ = 1
    v1_17_ = 1
    v1_15_ = fromScale(v1_16_, v1_17_)
    v1_14_.Size = v1_15_
    v1_14_.Parent = v1_8_
    local new = Instance.new
    v1_16_ = "UIListLayout"
    v1_15_ = new(v1_16_)
    v1_16_ = "ContentsList"
    v1_15_.Name = v1_16_
    local Horizontal = Enum.FillDirection.Horizontal
    v1_15_.FillDirection = Horizontal
    local Center = Enum.VerticalAlignment.Center
    v1_15_.VerticalAlignment = Center
    local LayoutOrder = Enum.SortOrder.LayoutOrder
    v1_15_.SortOrder = LayoutOrder
    local SpaceEvenly = Enum.UIFlexAlignment.SpaceEvenly
    v1_15_.VerticalFlex = SpaceEvenly
    local new = UDim.new
    v1_17_ = 0
    local v1_18_ = 3
    v1_16_ = new(v1_17_, v1_18_)
    v1_15_.Padding = v1_16_
    v1_15_.Parent = v1_14_
    local new = Instance.new
    v1_17_ = "Frame"
    v1_16_ = new(v1_17_)
    v1_17_ = "PaddingLeft"
    v1_16_.Name = v1_17_
    v1_17_ = 1
    v1_16_.LayoutOrder = v1_17_
    v1_17_ = 5
    v1_16_.ZIndex = v1_17_
    local fromRGB = Color3.fromRGB
    v1_18_ = 0
    local v1_19_ = 0
    local v1_20_ = 0
    v1_17_ = fromRGB(v1_18_, v1_19_, v1_20_)
    v1_16_.BorderColor3 = v1_17_
    v1_17_ = 1
    v1_16_.BackgroundTransparency = v1_17_
    v1_17_ = 0
    v1_16_.BorderSizePixel = v1_17_
    local fromRGB = Color3.fromRGB
    v1_18_ = 255
    v1_19_ = 255
    v1_20_ = 255
    v1_17_ = fromRGB(v1_18_, v1_19_, v1_20_)
    v1_16_.BackgroundColor3 = v1_17_
    v1_16_.Parent = v1_14_
    local new = Instance.new
    v1_18_ = "Frame"
    v1_17_ = new(v1_18_)
    v1_18_ = "PaddingCenter"
    v1_17_.Name = v1_18_
    v1_18_ = 3
    v1_17_.LayoutOrder = v1_18_
    v1_18_ = 5
    v1_17_.ZIndex = v1_18_
    local new = UDim2.new
    v1_19_ = 0
    v1_20_ = 0
    local v1_21_ = 1
    local v1_22_ = 0
    v1_18_ = new(v1_19_, v1_20_, v1_21_, v1_22_)
    v1_17_.Size = v1_18_
    local fromRGB = Color3.fromRGB
    v1_19_ = 0
    v1_20_ = 0
    v1_21_ = 0
    v1_18_ = fromRGB(v1_19_, v1_20_, v1_21_)
    v1_17_.BorderColor3 = v1_18_
    v1_18_ = 1
    v1_17_.BackgroundTransparency = v1_18_
    v1_18_ = 0
    v1_17_.BorderSizePixel = v1_18_
    local fromRGB = Color3.fromRGB
    v1_19_ = 255
    v1_20_ = 255
    v1_21_ = 255
    v1_18_ = fromRGB(v1_19_, v1_20_, v1_21_)
    v1_17_.BackgroundColor3 = v1_18_
    v1_17_.Parent = v1_14_
    local new = Instance.new
    v1_19_ = "Frame"
    v1_18_ = new(v1_19_)
    v1_19_ = "PaddingRight"
    v1_18_.Name = v1_19_
    v1_19_ = 5
    v1_18_.LayoutOrder = v1_19_
    v1_19_ = 5
    v1_18_.ZIndex = v1_19_
    local fromRGB = Color3.fromRGB
    v1_20_ = 0
    v1_21_ = 0
    v1_22_ = 0
    v1_19_ = fromRGB(v1_20_, v1_21_, v1_22_)
    v1_18_.BorderColor3 = v1_19_
    v1_19_ = 1
    v1_18_.BackgroundTransparency = v1_19_
    v1_19_ = 0
    v1_18_.BorderSizePixel = v1_19_
    local fromRGB = Color3.fromRGB
    v1_20_ = 255
    v1_21_ = 255
    v1_22_ = 255
    v1_19_ = fromRGB(v1_20_, v1_21_, v1_22_)
    v1_18_.BackgroundColor3 = v1_19_
    v1_18_.Parent = v1_14_
    local new = Instance.new
    v1_20_ = "Frame"
    v1_19_ = new(v1_20_)
    v1_20_ = "IconLabelContainer"
    v1_19_.Name = v1_20_
    v1_20_ = 4
    v1_19_.LayoutOrder = v1_20_
    v1_20_ = 3
    v1_19_.ZIndex = v1_20_
    local new = Vector2.new
    v1_21_ = 0
    v1_22_ = 0.500000
    v1_20_ = new(v1_21_, v1_22_)
    v1_19_.AnchorPoint = v1_20_
    local new = UDim2.new
    v1_21_ = 0
    v1_22_ = 0
    local v1_23_ = 0.500000
    local v1_24_ = 0
    v1_20_ = new(v1_21_, v1_22_, v1_23_, v1_24_)
    v1_19_.Size = v1_20_
    v1_20_ = 1
    v1_19_.BackgroundTransparency = v1_20_
    local new = UDim2.new
    v1_21_ = 0.500000
    v1_22_ = 0
    v1_23_ = 0.500000
    v1_24_ = 0
    v1_20_ = new(v1_21_, v1_22_, v1_23_, v1_24_)
    v1_19_.Position = v1_20_
    v1_19_.Parent = v1_14_
    local new = Instance.new
    v1_21_ = "TextLabel"
    v1_20_ = new(v1_21_)
    local v1_25_ = workspace
    v1_24_ = v1_25_.CurrentCamera
    v1_23_ = v1_24_.ViewportSize
    v1_22_ = v1_23_.X
    v1_21_ = v1_22_ + 200.000000
    v1_22_ = "IconLabel"
    v1_20_.Name = v1_22_
    v1_22_ = 4
    v1_20_.LayoutOrder = v1_22_
    v1_22_ = 15
    v1_20_.ZIndex = v1_22_
    local new = Vector2.new
    v1_23_ = 0
    v1_24_ = 0
    v1_22_ = new(v1_23_, v1_24_)
    v1_20_.AnchorPoint = v1_22_
    local new = UDim2.new
    v1_23_ = 0
    v1_24_ = v1_21_
    v1_25_ = 1
    local v1_26_ = 0
    v1_22_ = new(v1_23_, v1_24_, v1_25_, v1_26_)
    v1_20_.Size = v1_22_
    v1_22_ = false
    v1_20_.ClipsDescendants = v1_22_
    v1_22_ = 1
    v1_20_.BackgroundTransparency = v1_22_
    local fromScale = UDim2.fromScale
    v1_23_ = 0
    v1_24_ = 0
    v1_22_ = fromScale(v1_23_, v1_24_)
    v1_20_.Position = v1_22_
    v1_22_ = true
    v1_20_.RichText = v1_22_
    local fromRGB = Color3.fromRGB
    v1_23_ = 255
    v1_24_ = 255
    v1_25_ = 255
    v1_22_ = fromRGB(v1_23_, v1_24_, v1_25_)
    v1_20_.TextColor3 = v1_22_
    local Left = Enum.TextXAlignment.Left
    v1_20_.TextXAlignment = Left
    v1_22_ = ""
    v1_20_.Text = v1_22_
    v1_22_ = true
    v1_20_.TextWrapped = v1_22_
    v1_22_ = true
    v1_20_.TextWrap = v1_22_
    v1_22_ = false
    v1_20_.TextScaled = v1_22_
    v1_22_ = false
    v1_20_.Active = v1_22_
    v1_22_ = true
    v1_20_.AutoLocalize = v1_22_
    v1_20_.Parent = v1_19_
    local new = Instance.new
    v1_23_ = "ImageLabel"
    v1_22_ = new(v1_23_)
    v1_23_ = "IconImage"
    v1_22_.Name = v1_23_
    v1_23_ = 2
    v1_22_.LayoutOrder = v1_23_
    v1_23_ = 15
    v1_22_.ZIndex = v1_23_
    local new = Vector2.new
    v1_24_ = 0
    v1_25_ = 0.500000
    v1_23_ = new(v1_24_, v1_25_)
    v1_22_.AnchorPoint = v1_23_
    local new = UDim2.new
    v1_24_ = 0
    v1_25_ = 0
    v1_26_ = 0.500000
    local v1_27_ = 0
    v1_23_ = new(v1_24_, v1_25_, v1_26_, v1_27_)
    v1_22_.Size = v1_23_
    v1_23_ = 1
    v1_22_.BackgroundTransparency = v1_23_
    local new = UDim2.new
    v1_24_ = 0
    v1_25_ = 11
    v1_26_ = 0.500000
    v1_27_ = 0
    v1_23_ = new(v1_24_, v1_25_, v1_26_, v1_27_)
    v1_22_.Position = v1_23_
    local Stretch = Enum.ScaleType.Stretch
    v1_22_.ScaleType = Stretch
    v1_23_ = false
    v1_22_.Active = v1_23_
    v1_22_.Parent = v1_14_
    v1_23_ = v1_4_:Clone()
    v1_26_ = "Collective"
    v1_27_ = nil
    v1_23_:SetAttribute(v1_26_, v1_27_)
    local new = UDim.new
    v1_25_ = 0
    v1_26_ = 0
    v1_24_ = new(v1_25_, v1_26_)
    v1_23_.CornerRadius = v1_24_
    v1_24_ = "IconImageCorner"
    v1_23_.Name = v1_24_
    v1_23_.Parent = v1_22_
    v1_24_ = game
    v1_26_ = "TweenService"
    v1_24_ = v1_24_:GetService(v1_26_)
    v1_25_ = 0
    v1_26_ = function(a1)
        local defer = task.defer
        local v6_2_ = function()
            local v7_1_ = a1
            local v7_0_ = v7_1_.indicator
            v7_1_ = v7_0_
            if v7_1_ then
                v7_1_ = v7_0_.Visible
            end
            local v7_2_ = v7_1_
            if not v7_2_ then
                local v7_4_ = v1_20_
                local v7_3_ = v7_4_.Text
                if v7_3_ == "" then
                    v7_2_ = false
                end
                v7_2_ = true
            end
            local v7_3_ = false
            local v7_5_ = v1_22_
            local v7_4_ = v7_5_.Image
            if v7_4_ ~= "" then
                v7_5_ = v1_22_
                v7_4_ = v7_5_.Image
                if v7_4_ == nil then
                    v7_3_ = false
                end
                v7_3_ = true
            end
            local Center = Enum.HorizontalAlignment.Center
            local fromScale = UDim2.fromScale
            local v7_6_ = 1
            local v7_7_ = 1
            v7_5_ = fromScale(v7_6_, v7_7_)
            if v7_3_ then
                if not v7_2_ then
                    v7_6_ = v1_19_
                    v7_7_ = false
                    v7_6_.Visible = v7_7_
                    v7_6_ = v1_22_
                    v7_7_ = true
                    v7_6_.Visible = v7_7_
                    v7_6_ = v1_16_
                    v7_7_ = false
                    v7_6_.Visible = v7_7_
                    v7_6_ = v1_17_
                    v7_7_ = false
                    v7_6_.Visible = v7_7_
                    v7_6_ = v1_18_
                    v7_7_ = false
                    v7_6_.Visible = v7_7_
                else
                    if not v7_3_ then
                        if v7_2_ then
                            v7_6_ = v1_19_
                            v7_7_ = true
                            v7_6_.Visible = v7_7_
                            v7_6_ = v1_22_
                            v7_7_ = false
                            v7_6_.Visible = v7_7_
                            v7_6_ = v1_16_
                            v7_7_ = true
                            v7_6_.Visible = v7_7_
                            v7_6_ = v1_17_
                            v7_7_ = false
                            v7_6_.Visible = v7_7_
                            v7_6_ = v1_18_
                            v7_7_ = true
                            v7_6_.Visible = v7_7_
                        else
                            if v7_3_ then
                                if v7_2_ then
                                    v7_6_ = v1_19_
                                    v7_7_ = true
                                    v7_6_.Visible = v7_7_
                                    v7_6_ = v1_22_
                                    v7_7_ = true
                                    v7_6_.Visible = v7_7_
                                    v7_6_ = v1_16_
                                    v7_7_ = true
                                    v7_6_.Visible = v7_7_
                                    v7_6_ = v1_17_
                                    v7_7_ = not v7_1_
                                    v7_6_.Visible = v7_7_
                                    v7_6_ = v1_18_
                                    v7_7_ = not v7_1_
                                    v7_6_.Visible = v7_7_
                                    local Left = Enum.HorizontalAlignment.Left
                                end
                            end
                        end
                    else
                        if v7_3_ then
                            if v7_2_ then
                                v7_6_ = v1_19_
                                v7_7_ = true
                                v7_6_.Visible = v7_7_
                                v7_6_ = v1_22_
                                v7_7_ = true
                                v7_6_.Visible = v7_7_
                                v7_6_ = v1_16_
                                v7_7_ = true
                                v7_6_.Visible = v7_7_
                                v7_6_ = v1_17_
                                v7_7_ = not v7_1_
                                v7_6_.Visible = v7_7_
                                v7_6_ = v1_18_
                                v7_7_ = not v7_1_
                                v7_6_.Visible = v7_7_
                                local Left = Enum.HorizontalAlignment.Left
                            end
                        end
                    end
                end
            else
                if not v7_3_ then
                    if v7_2_ then
                        v7_6_ = v1_19_
                        v7_7_ = true
                        v7_6_.Visible = v7_7_
                        v7_6_ = v1_22_
                        v7_7_ = false
                        v7_6_.Visible = v7_7_
                        v7_6_ = v1_16_
                        v7_7_ = true
                        v7_6_.Visible = v7_7_
                        v7_6_ = v1_17_
                        v7_7_ = false
                        v7_6_.Visible = v7_7_
                        v7_6_ = v1_18_
                        v7_7_ = true
                        v7_6_.Visible = v7_7_
                    else
                        if v7_3_ then
                            if v7_2_ then
                                v7_6_ = v1_19_
                                v7_7_ = true
                                v7_6_.Visible = v7_7_
                                v7_6_ = v1_22_
                                v7_7_ = true
                                v7_6_.Visible = v7_7_
                                v7_6_ = v1_16_
                                v7_7_ = true
                                v7_6_.Visible = v7_7_
                                v7_6_ = v1_17_
                                v7_7_ = not v7_1_
                                v7_6_.Visible = v7_7_
                                v7_6_ = v1_18_
                                v7_7_ = not v7_1_
                                v7_6_.Visible = v7_7_
                                local Left = Enum.HorizontalAlignment.Left
                            end
                        end
                    end
                else
                    if v7_3_ then
                        if v7_2_ then
                            v7_6_ = v1_19_
                            v7_7_ = true
                            v7_6_.Visible = v7_7_
                            v7_6_ = v1_22_
                            v7_7_ = true
                            v7_6_.Visible = v7_7_
                            v7_6_ = v1_16_
                            v7_7_ = true
                            v7_6_.Visible = v7_7_
                            v7_6_ = v1_17_
                            v7_7_ = not v7_1_
                            v7_6_.Visible = v7_7_
                            v7_6_ = v1_18_
                            v7_7_ = not v7_1_
                            v7_6_.Visible = v7_7_
                            local Left = Enum.HorizontalAlignment.Left
                        end
                    end
                end
            end
            v7_6_ = v1_3_
            v7_6_.Size = v7_5_
            v7_6_ = function(a1)
                local v8_3_ = "TargetWidth"
                local v8_1_ = a1:GetAttribute(v8_3_)
                if not v8_1_ then
                    local v8_2_ = a1.AbsoluteSize
                    v8_1_ = v8_2_.X
                end
                return v8_1_
            end
            local v7_9_ = v1_15_
            local v7_8_ = v7_9_.Padding
            v7_7_ = v7_8_.Offset
            v7_8_ = v7_7_
            local v7_11_ = v1_20_
            local v7_10_ = v7_11_.TextBounds
            v7_9_ = v7_10_.X
            v7_10_ = v1_19_
            local new = UDim2.new
            local v7_12_ = 0
            local v7_13_ = v7_9_
            local v7_17_ = v1_20_
            local v7_16_ = v7_17_.Size
            local v7_15_ = v7_16_.Y
            local v7_14_ = v7_15_.Scale
            v7_15_ = 0
            v7_11_ = new(v7_12_, v7_13_, v7_14_, v7_15_)
            v7_10_.Size = v7_11_
            v7_10_ = pairs
            v7_11_ = v1_14_
            v7_10_, v7_11_, v7_12_ = v7_10_(v7_11_:GetChildren())
            for v7_13_, v7_14_ in v7_10_, v7_11_, v7_12_ do
                v7_17_ = "GuiObject"
                v7_15_ = v7_14_:IsA(v7_17_)
                if v7_15_ then
                    v7_15_ = v7_14_.Visible
                    if v7_15_ == true then
                        local v7_18_ = "TargetWidth"
                        v7_16_ = v7_14_:GetAttribute(v7_18_)
                        if not v7_16_ then
                            v7_17_ = v7_14_.AbsoluteSize
                            v7_16_ = v7_17_.X
                        end
                        v7_15_ = v7_16_
                        v7_16_ = v7_15_ + v7_7_
                        v7_8_ += v7_16_
                    end
                end
            end
            v7_10_ = v1_2_
            v7_12_ = "MinimumWidth"
            v7_10_ = v7_10_:GetAttribute(v7_12_)
            v7_11_ = v1_2_
            v7_13_ = "MinimumHeight"
            v7_11_ = v7_11_:GetAttribute(v7_13_)
            v7_12_ = v1_2_
            v7_14_ = "BorderSize"
            v7_12_ = v7_12_:GetAttribute(v7_14_)
            v7_16_ = v1_21_
            v7_14_ = v7_8_
            v7_15_ = v7_10_
            local clamp = math.clamp
            v7_13_ = clamp(v7_14_, v7_15_, v7_16_)
            v7_15_ = a1
            v7_14_ = v7_15_.menuIcons
            v7_15_ = 0
            v7_17_ = #v7_14_
            local v7_18_ = 0
            if v7_18_ >= v7_17_ then
                v7_16_ = false
            end
            v7_16_ = true
            v7_17_ = v7_16_
            if v7_17_ then
                v7_18_ = a1
                v7_17_ = v7_18_.isSelected
            end
            if v7_17_ then
                v7_18_ = pairs
                local v7_19_ = v1_5_
                local v7_18_, v7_19_, v7_20_ = v7_18_(v7_19_:GetChildren())
                for v7_21_, v7_22_ in v7_18_, v7_19_, v7_20_ do
                    local v7_23_ = v1_8_
                    if v7_22_ ~= v7_23_ then
                        local v7_25_ = "GuiObject"
                        v7_23_ = v7_22_:IsA(v7_25_)
                        if v7_23_ then
                            v7_23_ = v7_22_.Visible
                            if v7_23_ then
                                local v7_27_ = "TargetWidth"
                                v7_25_ = v7_22_:GetAttribute(v7_27_)
                                if not v7_25_ then
                                    local v7_26_ = v7_22_.AbsoluteSize
                                    v7_25_ = v7_26_.X
                                end
                                local v7_24_ = v7_25_
                                v7_27_ = v1_6_
                                local v7_26_ = v7_27_.Padding
                                v7_25_ = v7_26_.Offset
                                v7_23_ = v7_24_ + v7_25_
                                v7_15_ += v7_23_
                            end
                        end
                    end
                end
                v7_19_ = v1_8_
                v7_18_ = v7_19_.Visible
                if not v7_18_ then
                    local v7_21_ = v1_8_
                    local v7_24_ = "TargetWidth"
                    local v7_22_ = v7_21_:GetAttribute(v7_24_)
                    if not v7_22_ then
                        local v7_23_ = v7_21_.AbsoluteSize
                        v7_22_ = v7_23_.X
                    end
                    v7_20_ = v7_22_
                    v7_24_ = v1_6_
                    local v7_23_ = v7_24_.Padding
                    v7_22_ = v7_23_.Offset
                    v7_21_ = v7_22_ * 2.000000
                    v7_19_ = v7_20_ + v7_21_
                    v7_18_ = v7_19_ + v7_12_
                    v7_13_ -= v7_18_
                end
                v7_18_ = v7_12_ * 0.500000
                v7_15_ -= v7_18_
                v7_19_ = v7_12_ * 0.750000
                v7_18_ = v7_15_ - v7_19_
                v7_13_ += v7_18_
            end
            v7_18_ = v1_7_
            local v7_19_ = v7_17_
            if v7_19_ then
                local v7_20_ = v1_8_
                v7_19_ = v7_20_.Visible
            end
            v7_18_.Visible = v7_19_
            v7_18_ = v1_2_
            local v7_20_ = "DesiredWidth"
            v7_18_ = v7_18_:GetAttribute(v7_20_)
            if v7_18_ then
                if v7_13_ < v7_18_ then
                    v7_13_ = v7_18_
                end
            end
            v7_20_ = a1
            v7_19_ = v7_20_.updateMenu
            v7_19_:Fire()
            v7_20_ = v7_13_ - v7_15_
            local v7_21_ = v7_10_
            local max = math.max
            v7_19_ = max(v7_20_, v7_21_)
            v7_21_ = v7_12_ * 2.000000
            v7_20_ = v7_19_ - v7_21_
            v7_21_ = v1_5_
            local v7_23_ = "MenuWidth"
            v7_21_ = v7_21_:GetAttribute(v7_23_)
            local v7_22_ = v7_21_
            if v7_22_ then
                local v7_24_ = v7_21_ + v7_20_
                local v7_27_ = v1_6_
                local v7_26_ = v7_27_.Padding
                local v7_25_ = v7_26_.Offset
                v7_23_ = v7_24_ + v7_25_
                v7_22_ = v7_23_ + 10.000000
            end
            if v7_22_ then
                v7_23_ = v1_5_
                local v7_25_ = "MaxWidth"
                v7_23_ = v7_23_:GetAttribute(v7_25_)
                if v7_23_ then
                    v7_25_ = v7_23_
                    local v7_26_ = v7_10_
                    local max = math.max
                    local v7_24_ = max(v7_25_, v7_26_)
                    v7_22_ = v7_24_
                end
                local v7_24_ = v1_5_
                local v7_26_ = "MenuCanvasWidth"
                local v7_27_ = v7_13_
                v7_24_:SetAttribute(v7_26_, v7_27_)
                if v7_22_ < v7_13_ then
                    v7_13_ = v7_22_
                end
            end
            local Quint = Enum.EasingStyle.Quint
            local Out = Enum.EasingDirection.Out
            local v7_28_ = v1_8_
            local v7_31_ = "TargetWidth"
            local v7_29_ = v7_28_:GetAttribute(v7_31_)
            if not v7_29_ then
                local v7_30_ = v7_28_.AbsoluteSize
                v7_29_ = v7_30_.X
            end
            local v7_27_ = v7_29_
            local v7_30_ = v1_8_
            v7_29_ = v7_30_.AbsoluteSize
            v7_28_ = v7_29_.X
            local v7_26_ = v7_20_
            local max = math.max
            local v7_25_ = max(v7_26_, v7_27_, v7_28_)
            v7_29_ = v1_2_
            local v7_32_ = "TargetWidth"
            v7_30_ = v7_29_:GetAttribute(v7_32_)
            if not v7_30_ then
                v7_31_ = v7_29_.AbsoluteSize
                v7_30_ = v7_31_.X
            end
            v7_28_ = v7_30_
            v7_31_ = v1_2_
            v7_30_ = v7_31_.AbsoluteSize
            v7_29_ = v7_30_.X
            v7_27_ = v7_13_
            local max = math.max
            v7_26_ = max(v7_27_, v7_28_, v7_29_)
            local new = Tween0o.new
            v7_28_ = v7_25_ / 750.000000
            v7_29_ = Quint
            v7_30_ = Out
            v7_27_ = new(v7_28_, v7_29_, v7_30_)
            local new = Tween0o.new
            v7_29_ = v7_26_ / 750.000000
            v7_30_ = Quint
            v7_31_ = Out
            v7_28_ = new(v7_29_, v7_30_, v7_31_)
            v7_29_ = v1_24_
            v7_31_ = v1_8_
            v7_32_ = v7_27_
            local v7_33_ = {}
            local new = UDim2.new
            local v7_35_ = 0
            local v7_36_ = v7_12_
            local v7_37_ = 0.500000
            local v7_38_ = 0
            local v7_34_ = new(v7_35_, v7_36_, v7_37_, v7_38_)
            v7_33_.Position = v7_34_
            local new = UDim2.new
            v7_35_ = 0
            v7_36_ = v7_20_
            v7_37_ = 1
            local v7_39_ = -v7_12_
            v7_38_ = v7_39_ * 2.000000
            v7_34_ = new(v7_35_, v7_36_, v7_37_, v7_38_)
            v7_33_.Size = v7_34_
            v7_29_ = v7_29_:Create(v7_31_, v7_32_, v7_33_)
            v7_29_:Play()
            v7_29_ = v1_24_
            v7_31_ = v1_11_
            v7_32_ = v7_27_
            v7_33_ = {}
            local new = UDim2.new
            v7_35_ = 0
            v7_36_ = v7_20_
            v7_37_ = 1
            v7_38_ = 0
            v7_34_ = new(v7_35_, v7_36_, v7_37_, v7_38_)
            v7_33_.Size = v7_34_
            v7_29_ = v7_29_:Create(v7_31_, v7_32_, v7_33_)
            v7_29_:Play()
            local fromOffset = UDim2.fromOffset
            v7_30_ = v7_13_
            v7_31_ = v7_11_
            v7_29_ = fromOffset(v7_30_, v7_31_)
            v7_34_ = v1_2_
            v7_33_ = v7_34_.Size
            v7_32_ = v7_33_.Y
            v7_31_ = v7_32_.Offset
            if v7_31_ == v7_11_ then
                v7_30_ = false
            end
            v7_30_ = true
            if v7_30_ then
                v7_31_ = v1_2_
                v7_31_.Size = v7_29_
            end
            v7_31_ = v1_2_
            v7_33_ = "TargetWidth"
            v7_35_ = v7_29_.X
            v7_34_ = v7_35_.Offset
            v7_31_:SetAttribute(v7_33_, v7_34_)
            v7_31_ = v1_24_
            v7_33_ = v1_2_
            v7_34_ = v7_28_
            v7_35_ = {}
            v7_35_.Size = v7_29_
            v7_31_ = v7_31_:Create(v7_33_, v7_34_, v7_35_)
            v7_31_:Play()
            v7_32_ = v1_25_
            v7_32_ += 1.000000
            v1_25_ = v7_18_
            v7_34_ = 1
            v7_35_ = v7_28_.Time
            v7_32_ = v7_35_ * 100.000000
            v7_33_ = 1
            for v7_34_ = v7_34_, v7_32_, v7_33_ do
                local delay = task.delay
                v7_36_ = v7_34_ / 100.000000
                v7_37_ = function()
                    local v9_1_ = a2
                    local v9_0_ = v9_1_.iconChanged
                    local v9_2_ = a1
                    v9_0_:Fire(v9_2_)
                end
                delay(v7_36_, v7_37_)
            end
            local delay = task.delay
            v7_34_ = v7_28_.Time
            v7_33_ = v7_34_ - 0.200000
            v7_34_ = function()
                local v10_0_ = v1_25_
                v10_0_ -= 1.000000
                v1_25_ = v10_0_
                local defer = task.defer
                local v10_1_ = function()
                    local v11_0_ = v1_25_
                    if v11_0_ == 0.000000 then
                        local v11_1_ = a1
                        v11_0_ = v11_1_.resizingComplete
                        v11_0_:Fire()
                    end
                end
                defer(v10_1_)
            end
            delay(v7_33_, v7_34_)
            v7_32_ = a1
            v7_32_:updateParent()
        end
        defer(v6_2_)
    end
    v1_27_ = require
    local v1_31_ = script
    local v1_30_ = v1_31_.Parent
    local v1_29_ = v1_30_.Parent
    local v1_28_ = v1_29_.Utility
    v1_27_ = v1_27_(v1_28_)
    v1_28_ = v1_27_.createStagger
    v1_29_ = 0.010000
    v1_30_ = v1_26_
    v1_28_ = v1_28_(v1_29_, v1_30_)
    v1_29_ = true
    local v1_32_ = "IconLabel"
    local v1_33_ = "Text"
    local v1_34_ = v1_28_
    a1:setBehaviour(v1_32_, v1_33_, v1_34_)
    v1_32_ = "IconLabel"
    v1_33_ = "FontFace"
    v1_34_ = function(a1)
        local v12_2_ = v1_20_
        local v12_1_ = v12_2_.FontFace
        if v12_1_ == a1 then
            return
        end
        local spawn = task.spawn
        local v12_3_ = function()
            local v13_0_ = v1_28_
            v13_0_()
            v13_0_ = v1_29_
            if v13_0_ then
                v13_0_ = false
                v1_29_ = nil
                local v13_2_ = 1
                v13_0_ = 10
                local v13_1_ = 1
                for v13_2_ = v13_2_, v13_0_, v13_1_ do
                    local wait = task.wait
                    local v13_4_ = 1
                    wait(v13_4_)
                    local v13_3_ = v1_28_
                    v13_3_()
                end
            end
        end
        spawn(v12_3_)
    end
    a1:setBehaviour(v1_32_, v1_33_, v1_34_)
    v1_30_ = function()
        local defer = task.defer
        local v14_1_ = function()
            local v15_0_ = v1_2_
            local v15_2_ = "BorderSize"
            v15_0_ = v15_0_:GetAttribute(v15_2_)
            v15_2_ = a1
            local v15_1_ = v15_2_.alignment
            local v15_4_ = v1_8_
            local v15_3_ = v15_4_.Visible
            if v15_3_ == false then
                v15_2_ = 0
            else
                if v15_1_ == "Right" then
                    v15_2_ = -v15_0_
                    if not v15_2_ then
                        v15_2_ = v15_0_
                    end
                end
                v15_2_ = v15_0_
            end
            v15_3_ = v1_5_
            local new = UDim2.new
            local v15_5_ = 0
            local v15_6_ = v15_2_
            local v15_7_ = 0
            local v15_8_ = 0
            v15_4_ = new(v15_5_, v15_6_, v15_7_, v15_8_)
            v15_3_.Position = v15_4_
            v15_3_ = v1_7_
            local fromOffset = UDim2.fromOffset
            v15_5_ = v15_0_
            v15_6_ = 0
            v15_4_ = fromOffset(v15_5_, v15_6_)
            v15_3_.Size = v15_4_
            v15_3_ = v1_6_
            local new = UDim.new
            v15_5_ = 0
            v15_6_ = 0
            v15_4_ = new(v15_5_, v15_6_)
            v15_3_.Padding = v15_4_
            v15_3_ = v1_28_
            v15_3_()
        end
        defer(v14_1_)
    end
    v1_33_ = "Widget"
    v1_34_ = "BorderSize"
    local v1_35_ = v1_30_
    a1:setBehaviour(v1_33_, v1_34_, v1_35_)
    v1_33_ = "IconSpot"
    v1_34_ = "Visible"
    v1_35_ = v1_30_
    a1:setBehaviour(v1_33_, v1_34_, v1_35_)
    v1_31_ = a1.startMenuUpdate
    v1_33_ = v1_28_
    v1_31_:Connect(v1_33_)
    v1_31_ = a1.updateSize
    v1_33_ = v1_28_
    v1_31_:Connect(v1_33_)
    v1_33_ = "ContentsList"
    v1_34_ = "HorizontalAlignment"
    v1_35_ = v1_28_
    a1:setBehaviour(v1_33_, v1_34_, v1_35_)
    v1_33_ = "Widget"
    v1_34_ = "Visible"
    v1_35_ = v1_28_
    a1:setBehaviour(v1_33_, v1_34_, v1_35_)
    v1_33_ = "Widget"
    v1_34_ = "DesiredWidth"
    v1_35_ = v1_28_
    a1:setBehaviour(v1_33_, v1_34_, v1_35_)
    v1_33_ = "Widget"
    v1_34_ = "MinimumWidth"
    v1_35_ = v1_28_
    a1:setBehaviour(v1_33_, v1_34_, v1_35_)
    v1_33_ = "Widget"
    v1_34_ = "MinimumHeight"
    v1_35_ = v1_28_
    a1:setBehaviour(v1_33_, v1_34_, v1_35_)
    v1_33_ = "Indicator"
    v1_34_ = "Visible"
    v1_35_ = v1_28_
    a1:setBehaviour(v1_33_, v1_34_, v1_35_)
    v1_33_ = "IconImageRatio"
    v1_34_ = "AspectRatio"
    v1_35_ = v1_28_
    a1:setBehaviour(v1_33_, v1_34_, v1_35_)
    v1_33_ = "IconImage"
    v1_34_ = "Image"
    v1_35_ = function(a1)
        local v16_3_ = a1
        local v16_2_ = tonumber
        v16_2_ = v16_2_(v16_3_)
        if v16_2_ then
            v16_2_ = "http://www.roblox.com/asset/?id="
            v16_3_ = a1
            local v16_1_ = v16_2_
            if not v16_1_ then
                v16_1_ = a1
                if not v16_1_ then
                    v16_1_ = ""
                end
            end
        end
        local v16_1_ = a1
        if not v16_1_ then
            v16_1_ = ""
        end
        v16_3_ = v1_22_
        v16_2_ = v16_3_.Image
        if v16_2_ ~= v16_1_ then
            v16_2_ = v1_28_
            v16_2_()
        end
        return v16_1_
    end
    a1:setBehaviour(v1_33_, v1_34_, v1_35_)
    v1_31_ = a1.alignmentChanged
    v1_33_ = function(a1)
        if a1 == "Center" then
            v17_0_ = "Left"
        end
        local v17_1_ = v1_6_
        local HorizontalAlignment = Enum.HorizontalAlignment
        local v17_2_ = HorizontalAlignment[a1]
        v17_1_.HorizontalAlignment = v17_2_
        local defer = task.defer
        v17_2_ = function()
            local v18_0_ = v1_2_
            local v18_2_ = "BorderSize"
            v18_0_ = v18_0_:GetAttribute(v18_2_)
            v18_2_ = a1
            local v18_1_ = v18_2_.alignment
            local v18_4_ = v1_8_
            local v18_3_ = v18_4_.Visible
            if v18_3_ == false then
                v18_2_ = 0
            else
                if v18_1_ == "Right" then
                    v18_2_ = -v18_0_
                    if not v18_2_ then
                        v18_2_ = v18_0_
                    end
                end
                v18_2_ = v18_0_
            end
            v18_3_ = v1_5_
            local new = UDim2.new
            local v18_5_ = 0
            local v18_6_ = v18_2_
            local v18_7_ = 0
            local v18_8_ = 0
            v18_4_ = new(v18_5_, v18_6_, v18_7_, v18_8_)
            v18_3_.Position = v18_4_
            v18_3_ = v1_7_
            local fromOffset = UDim2.fromOffset
            v18_5_ = v18_0_
            v18_6_ = 0
            v18_4_ = fromOffset(v18_5_, v18_6_)
            v18_3_.Size = v18_4_
            v18_3_ = v1_6_
            local new = UDim.new
            v18_5_ = 0
            v18_6_ = 0
            v18_4_ = new(v18_5_, v18_6_)
            v18_3_.Padding = v18_4_
            v18_3_ = v1_28_
            v18_3_()
        end
        defer(v17_2_)
    end
    v1_31_:Connect(v1_33_)
    local new = Instance.new
    v1_32_ = "NumberValue"
    v1_31_ = new(v1_32_)
    v1_32_ = "IconImageScale"
    v1_31_.Name = v1_32_
    v1_31_.Parent = v1_22_
    v1_34_ = "Value"
    v1_32_ = v1_31_:GetPropertyChangedSignal(v1_34_)
    v1_34_ = function()
        local v19_0_ = v1_22_
        local new = UDim2.new
        local v19_3_ = v1_31_
        local v19_2_ = v19_3_.Value
        v19_3_ = 0
        local v19_5_ = v1_31_
        local v19_4_ = v19_5_.Value
        v19_5_ = 0
        local v19_1_ = new(v19_2_, v19_3_, v19_4_, v19_5_)
        v19_0_.Size = v19_1_
    end
    v1_32_:Connect(v1_34_)
    local new = Instance.new
    v1_33_ = "UIAspectRatioConstraint"
    v1_32_ = new(v1_33_)
    v1_33_ = "IconImageRatio"
    v1_32_.Name = v1_33_
    local FitWithinMaxSize = Enum.AspectType.FitWithinMaxSize
    v1_32_.AspectType = FitWithinMaxSize
    local Height = Enum.Domi0tAxis.Height
    v1_32_.Domi0tAxis = Height
    v1_32_.Parent = v1_22_
    local new = Instance.new
    v1_34_ = "UIGradient"
    v1_33_ = new(v1_34_)
    v1_34_ = "IconGradient"
    v1_33_.Name = v1_34_
    v1_34_ = true
    v1_33_.Enabled = v1_34_
    v1_33_.Parent = v1_3_
    local new = Instance.new
    v1_35_ = "UIGradient"
    v1_34_ = new(v1_35_)
    v1_35_ = "IconSpotGradient"
    v1_34_.Name = v1_35_
    v1_35_ = true
    v1_34_.Enabled = v1_35_
    v1_34_.Parent = v1_8_
    return v1_2_
end
return v0_0_
