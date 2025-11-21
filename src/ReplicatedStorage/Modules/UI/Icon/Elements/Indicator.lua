-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = function(a1, a2)
    local v1_2_ = a1.widget
    local v1_5_ = "Contents"
    local v1_3_ = a1:getInstance(v1_5_)
    local new = Instance.new
    v1_5_ = "Frame"
    local v1_4_ = new(v1_5_)
    v1_5_ = "Indicator"
    v1_4_.Name = v1_5_
    v1_5_ = 9999999.000000
    v1_4_.LayoutOrder = v1_5_
    v1_5_ = 6
    v1_4_.ZIndex = v1_5_
    local new = UDim2.new
    local v1_6_ = 0
    local v1_7_ = 42
    local v1_8_ = 0
    local v1_9_ = 42
    v1_5_ = new(v1_6_, v1_7_, v1_8_, v1_9_)
    v1_4_.Size = v1_5_
    local fromRGB = Color3.fromRGB
    v1_6_ = 0
    v1_7_ = 0
    v1_8_ = 0
    v1_5_ = fromRGB(v1_6_, v1_7_, v1_8_)
    v1_4_.BorderColor3 = v1_5_
    v1_5_ = 1
    v1_4_.BackgroundTransparency = v1_5_
    local new = UDim2.new
    v1_6_ = 1
    v1_7_ = 0
    v1_8_ = 0.500000
    v1_9_ = 0
    v1_5_ = new(v1_6_, v1_7_, v1_8_, v1_9_)
    v1_4_.Position = v1_5_
    v1_5_ = 0
    v1_4_.BorderSizePixel = v1_5_
    local fromRGB = Color3.fromRGB
    v1_6_ = 0
    v1_7_ = 0
    v1_8_ = 0
    v1_5_ = fromRGB(v1_6_, v1_7_, v1_8_)
    v1_4_.BackgroundColor3 = v1_5_
    v1_4_.Parent = v1_3_
    local new = Instance.new
    v1_6_ = "Frame"
    v1_5_ = new(v1_6_)
    v1_6_ = "IndicatorButton"
    v1_5_.Name = v1_6_
    local fromRGB = Color3.fromRGB
    v1_7_ = 0
    v1_8_ = 0
    v1_9_ = 0
    v1_6_ = fromRGB(v1_7_, v1_8_, v1_9_)
    v1_5_.BorderColor3 = v1_6_
    local new = Vector2.new
    v1_7_ = 0.500000
    v1_8_ = 0.500000
    v1_6_ = new(v1_7_, v1_8_)
    v1_5_.AnchorPoint = v1_6_
    v1_6_ = 0
    v1_5_.BorderSizePixel = v1_6_
    local fromRGB = Color3.fromRGB
    v1_7_ = 0
    v1_8_ = 0
    v1_9_ = 0
    v1_6_ = fromRGB(v1_7_, v1_8_, v1_9_)
    v1_5_.BackgroundColor3 = v1_6_
    v1_5_.Parent = v1_4_
    v1_6_ = game
    v1_8_ = "GuiService"
    v1_6_ = v1_6_:GetService(v1_8_)
    v1_7_ = game
    v1_9_ = "GamepadService"
    v1_7_ = v1_7_:GetService(v1_9_)
    local v1_10_ = "ClickRegion"
    v1_8_ = a1:getInstance(v1_10_)
    v1_9_ = function()
        local v2_1_ = v1_6_
        local v2_0_ = v2_1_.SelectedObject
        v2_1_ = v1_8_
        if v2_0_ == v2_1_ then
            v2_1_ = v1_5_
            local v2_2_ = 1
            v2_1_.BackgroundTransparency = v2_2_
            v2_1_ = v1_5_
            local new = UDim2.new
            local v2_3_ = 0.500000
            local v2_4_ = -2
            local v2_5_ = 0.500000
            local v2_6_ = 0
            v2_2_ = new(v2_3_, v2_4_, v2_5_, v2_6_)
            v2_1_.Position = v2_2_
            v2_1_ = v1_5_
            local fromScale = UDim2.fromScale
            v2_3_ = 1.200000
            v2_4_ = 1.200000
            v2_2_ = fromScale(v2_3_, v2_4_)
            v2_1_.Size = v2_2_
            return
        end
        v2_1_ = v1_5_
        local v2_2_ = 0.750000
        v2_1_.BackgroundTransparency = v2_2_
        v2_1_ = v1_5_
        local new = UDim2.new
        local v2_3_ = 0.500000
        local v2_4_ = 2
        local v2_5_ = 0.500000
        local v2_6_ = 0
        v2_2_ = new(v2_3_, v2_4_, v2_5_, v2_6_)
        v2_1_.Position = v2_2_
        v2_1_ = v1_5_
        local fromScale = UDim2.fromScale
        v2_3_ = 1
        v2_4_ = 1
        v2_2_ = fromScale(v2_3_, v2_4_)
        v2_1_.Size = v2_2_
    end
    v1_10_ = a1.janitor
    local v1_14_ = "SelectedObject"
    local v1_12_ = v1_6_:GetPropertyChangedSignal(v1_14_)
    v1_14_ = v1_9_
    v1_10_:add(v1_12_:Connect(v1_14_))
    v1_10_ = v1_9_
    v1_10_()
    local new = Instance.new
    local v1_11_ = "ImageLabel"
    v1_10_ = new(v1_11_)
    v1_11_ = 2
    v1_10_.LayoutOrder = v1_11_
    v1_11_ = 15
    v1_10_.ZIndex = v1_11_
    local new = Vector2.new
    v1_12_ = 0.500000
    local v1_13_ = 0.500000
    v1_11_ = new(v1_12_, v1_13_)
    v1_10_.AnchorPoint = v1_11_
    local new = UDim2.new
    v1_12_ = 0.500000
    v1_13_ = 0
    v1_14_ = 0.500000
    local v1_15_ = 0
    v1_11_ = new(v1_12_, v1_13_, v1_14_, v1_15_)
    v1_10_.Size = v1_11_
    v1_11_ = 1
    v1_10_.BackgroundTransparency = v1_11_
    local new = UDim2.new
    v1_12_ = 0.500000
    v1_13_ = 0
    v1_14_ = 0.500000
    v1_15_ = 0
    v1_11_ = new(v1_12_, v1_13_, v1_14_, v1_15_)
    v1_10_.Position = v1_11_
    v1_11_ = "rbxasset://textures/ui/Controls/XboxController/DPadUp@2x.png"
    v1_10_.Image = v1_11_
    v1_10_.Parent = v1_5_
    local new = Instance.new
    v1_12_ = "UICorner"
    v1_11_ = new(v1_12_)
    local new = UDim.new
    v1_13_ = 1
    v1_14_ = 0
    v1_12_ = new(v1_13_, v1_14_)
    v1_11_.CornerRadius = v1_12_
    v1_11_.Parent = v1_5_
    v1_12_ = game
    v1_14_ = "UserInputService"
    v1_12_ = v1_12_:GetService(v1_14_)
    v1_13_ = function(a1)
        if a1 == nil then
            local v3_1_ = v1_4_
            v3_0_ = v3_1_.Visible
        end
        local v3_2_ = v1_7_
        local v3_1_ = v3_2_.GamepadCursorEnabled
        if v3_1_ then
            v3_0_ = false
        end
        if a1 then
            v3_1_ = a1
            local v3_3_ = table.create(3)
            local v3_4_ = "PaddingRight"
            local v3_5_ = "Size"
            local new = UDim2.new
            local v3_7_ = 0
            local v3_8_ = 0
            local v3_9_ = 1
            local v3_10_ = 0
            -- WARNING: SETLIST_C0, output may be wrong!
            v3_3_ = {v3_4_, new(v3_7_, v3_8_, v3_9_, v3_10_)}
            v3_4_ = "IndicatorPadding"
            v3_1_:modifyTheme(v3_3_, v3_4_)
        else
            v3_2_ = v1_4_
            v3_1_ = v3_2_.Visible
            if v3_1_ then
                v3_1_ = a1
                local v3_3_ = "IndicatorPadding"
                v3_1_:removeModification(v3_3_)
            end
        end
        v3_1_ = a1
        local v3_3_ = table.create(3)
        local v3_4_ = "Indicator"
        local v3_5_ = "Visible"
        local v3_6_ = a1
        v3_3_[1] = v3_4_
        v3_3_[2] = v3_5_
        v3_3_[3] = v3_6_
        v3_1_:modifyTheme(v3_3_)
        v3_2_ = a1
        v3_1_ = v3_2_.updateSize
        v3_1_:Fire()
    end
    v1_14_ = a1.janitor
    local v1_18_ = "GamepadCursorEnabled"
    local v1_16_ = v1_7_:GetPropertyChangedSignal(v1_18_)
    v1_18_ = v1_13_
    v1_14_:add(v1_16_:Connect(v1_18_))
    v1_14_ = a1.indicatorSet
    v1_16_ = function(a1)
        local v4_1_ = false
        if a1 then
            local v4_2_ = v1_10_
            local v4_3_ = v1_12_
            local v4_5_ = a1
            v4_3_ = v4_3_:GetImageForKeyCode(v4_5_)
            v4_2_.Image = v4_3_
            v4_1_ = true
        end
        local v4_2_ = v1_13_
        local v4_3_ = v4_1_
        v4_2_(v4_3_)
    end
    v1_14_:Connect(v1_16_)
    v1_14_ = function()
        local v5_3_ = v1_2_
        local v5_2_ = v5_3_.AbsoluteSize
        local v5_1_ = v5_2_.Y
        local v5_0_ = v5_1_ * 0.960000
        v5_1_ = v1_4_
        local new = UDim2.new
        v5_3_ = 0
        local v5_4_ = v5_0_
        local v5_5_ = 0
        local v5_6_ = v5_0_
        v5_2_ = new(v5_3_, v5_4_, v5_5_, v5_6_)
        v5_1_.Size = v5_2_
    end
    local v1_17_ = "AbsoluteSize"
    v1_15_ = v1_2_:GetPropertyChangedSignal(v1_17_)
    v1_17_ = v1_14_
    v1_15_:Connect(v1_17_)
    v1_17_ = v1_2_.AbsoluteSize
    v1_16_ = v1_17_.Y
    v1_15_ = v1_16_ * 0.960000
    local new = UDim2.new
    v1_17_ = 0
    v1_18_ = v1_15_
    local v1_19_ = 0
    local v1_20_ = v1_15_
    v1_16_ = new(v1_17_, v1_18_, v1_19_, v1_20_)
    v1_4_.Size = v1_16_
    return v1_4_
end
return v0_0_
