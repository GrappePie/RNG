-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "ReplicatedStorage"
v0_0_ = v0_0_:GetService(v0_2_)
local v0_3_ = "Modules"
local v0_1_ = v0_0_:WaitForChild(v0_3_)
v0_2_ = require
local v0_5_ = "Utility"
v0_2_ = v0_2_(v0_1_:WaitForChild(v0_5_))
v0_5_ = "UI"
v0_3_ = v0_1_:WaitForChild(v0_5_)
local v0_6_ = "Components"
local v0_4_ = v0_3_:WaitForChild(v0_6_)
v0_5_ = require
local v0_8_ = "Quad"
v0_5_ = v0_5_(v0_3_:WaitForChild(v0_8_))
v0_6_ = require
local v0_9_ = "AuraLabel"
v0_6_ = v0_6_(v0_4_:WaitForChild(v0_9_))
local v0_7_ = require
local v0_10_ = "Corner"
v0_7_ = v0_7_(v0_4_:WaitForChild(v0_10_))
v0_8_ = require
local v0_11_ = "Shadow"
v0_8_ = v0_8_(v0_4_:WaitForChild(v0_11_))
v0_9_ = table.create(3)
local new = ColorSequence.new
local fromRGB = Color3.fromRGB
local v0_12_ = 170
local v0_13_ = 255
local v0_14_ = 157
v0_11_ = fromRGB(v0_12_, v0_13_, v0_14_)
local fromRGB = Color3.fromRGB
v0_13_ = 107
v0_14_ = 255
local v0_15_ = 96
v0_10_ = new(fromRGB(v0_13_, v0_14_, v0_15_))
local new = ColorSequence.new
local fromRGB_0 = Color3.fromRGB
v0_13_ = 255
v0_14_ = 172
v0_15_ = 223
v0_12_ = fromRGB_0(v0_13_, v0_14_, v0_15_)
local fromRGB = Color3.fromRGB
v0_14_ = 255
v0_15_ = 83
local v0_16_ = 86
v0_11_ = new(fromRGB(v0_14_, v0_15_, v0_16_))
local new = ColorSequence.new
local new_0 = Color3.new
v0_14_ = 1
v0_15_ = 1
v0_16_ = 1
-- WARNING: SETLIST_C0, output may be wrong!
v0_9_ = {v0_10_, new(new_0(v0_14_, v0_15_, v0_16_))}
v0_10_ = v0_5_.Lang
v0_11_ = v0_5_.Round
v0_12_ = v0_5_.Class
v0_13_ = v0_5_.Mount
v0_14_ = v0_5_.Store
v0_15_ = v0_5_.Event
v0_16_ = v0_5_.Tween
local v0_17_ = v0_5_.Signal
local v0_18_ = v0_12_
local v0_19_ = "Frame"
v0_18_ = v0_18_(v0_19_)
v0_19_ = v0_12_
local v0_20_ = "UIStroke"
v0_19_ = v0_19_(v0_20_)
v0_20_ = v0_12_
local v0_21_ = "CanvasGroup"
v0_20_ = v0_20_(v0_21_)
v0_21_ = v0_12_
local v0_22_ = "ImageLabel"
v0_21_ = v0_21_(v0_22_)
v0_22_ = v0_12_
local v0_23_ = "TextLabel"
v0_22_ = v0_22_(v0_23_)
v0_23_ = v0_12_
local v0_24_ = "UIGradient"
v0_23_ = v0_23_(v0_24_)
v0_24_ = v0_12_
local v0_25_ = "ImageButton"
v0_24_ = v0_24_(v0_25_)
v0_25_ = v0_12_
local v0_26_ = "TextButton"
v0_25_ = v0_25_(v0_26_)
v0_26_ = v0_12_
local v0_27_ = v0_6_
v0_26_ = v0_26_(v0_27_)
v0_27_ = v0_12_
local v0_28_ = v0_7_
v0_27_ = v0_27_(v0_28_)
v0_28_ = v0_12_
local v0_29_ = v0_8_
v0_28_ = v0_28_(v0_29_)
v0_29_ = v0_14_.GetStore
local v0_30_ = "FilterUIs"
v0_29_ = v0_29_(v0_30_)
v0_30_ = v0_12_.Extend
v0_30_ = v0_30_()
local new = Color3.new
local v0_31_ = new()
v0_18_.BackgroundColor3 = v0_31_
v0_31_ = 0
v0_18_.BorderSizePixel = v0_31_
v0_31_ = 0
v0_20_.BorderSizePixel = v0_31_
local new = Color3.new
local v0_32_ = 1
local v0_33_ = 1
local v0_34_ = 1
v0_31_ = new(v0_32_, v0_33_, v0_34_)
v0_19_.Color = v0_31_
local Border = Enum.ApplyStrokeMode.Border
v0_19_.ApplyStrokeMode = Border
v0_31_ = 1.500000
v0_19_.Thickness = v0_31_
v0_31_ = 0.500000
v0_19_.Transparency = v0_31_
v0_31_ = 90
v0_23_.Rotation = v0_31_
v0_31_ = function(a1, a2)
    if a2 == false then
        local v1_3_ = v0_9_
        local v1_2_ = v1_3_[-1]
        return v1_2_
    end
    if a2 == true then
        local v1_3_ = v0_9_
        local v1_2_ = v1_3_[0]
        return v1_2_
    end
    local v1_3_ = v0_9_
    local v1_2_ = v1_3_[1]
    return v1_2_
end
v0_32_ = function(a1, a2)
    local v2_3_ = a2
    local v2_2_ = typeof
    v2_2_ = v2_2_(v2_3_)
    if v2_2_ ~= "boolean" then
        local new = Color3.new
        return new()
    end
    local fromRGB = Color3.fromRGB
    v2_3_ = 50
    local v2_4_ = 50
    local v2_5_ = 50
    return fromRGB(v2_3_, v2_4_, v2_5_)
end
v0_33_ = function(a1, a2)
    local v3_3_ = a2
    local v3_2_ = typeof
    v3_2_ = v3_2_(v3_3_)
    if v3_2_ ~= "boolean" then
        v3_2_ = "Disabled"
        return v3_2_
    end
    if a2 == false then
        v3_2_ = "Keep"
        return v3_2_
    end
    v3_2_ = "Skip"
    return v3_2_
end
v0_34_ = function(a1, a2)
    local v4_3_ = a2
    local v4_2_ = typeof
    v4_2_ = v4_2_(v4_3_)
    if v4_2_ ~= "boolean" then
        v4_2_ = "http://www.roblox.com/asset/?id=6026568240"
        return v4_2_
    end
    if a2 == false then
        v4_2_ = "http://www.roblox.com/asset/?id=6022668909"
        return v4_2_
    end
    v4_2_ = "http://www.roblox.com/asset/?id=6022668885"
    return v4_2_
end
local v0_35_ = function(a1, a2)
    local v5_4_ = "Index"
    local v5_5_ = ""
    a2:Default(v5_4_, v5_5_)
    v5_4_ = "Order"
    v5_5_ = 1
    a2:Default(v5_4_, v5_5_)
    v5_4_ = "AuraName"
    v5_5_ = "Common"
    a2:Default(v5_4_, v5_5_)
    v5_4_ = "Mode"
    v5_5_ = 0
    a2:Default(v5_4_, v5_5_)
    v5_4_ = "Callback"
    v5_5_ = function()
    end
    a2:Default(v5_4_, v5_5_)
    v5_4_ = "Locked"
    v5_5_ = true
    a2:Default(v5_4_, v5_5_)
    v5_4_ = "Visible"
    v5_5_ = true
    a2:Default(v5_4_, v5_5_)
end
v0_30_.Init = v0_35_
v0_35_ = function(a1, a2)
    local v7_2_ = v0_18_
    local v7_3_ = table.create(8)
    local v7_4_ = a1
    local v7_5_ = "_Holder"
    v7_4_ = v7_4_(v7_5_)
    v7_3_[1] = v7_4_
    local v7_12_ = 0.600000
    v7_3_.BackgroundTransparency = v7_12_
    local fromScale = UDim2.fromScale
    local v7_13_ = 1
    local v7_14_ = 0.110000
    v7_12_ = fromScale(v7_13_, v7_14_)
    v7_3_.Size = v7_12_
    v7_12_ = a2
    v7_13_ = "Order"
    v7_12_ = v7_12_(v7_13_)
    v7_3_.LayoutOrder = v7_12_
    v7_12_ = a2
    v7_13_ = "Visible"
    v7_12_ = v7_12_(v7_13_)
    v7_3_.Visible = v7_12_
    v7_4_ = v0_25_
    v7_5_ = {}
    local v7_6_ = 3
    v7_5_.ZIndex = v7_6_
    v7_6_ = "Locked"
    v7_5_.Text = v7_6_
    v7_6_ = true
    v7_5_.TextScaled = v7_6_
    v7_6_ = a2
    local v7_7_ = "Locked"
    v7_6_ = v7_6_(v7_7_)
    v7_5_.Visible = v7_6_
    local new = Color3.new
    v7_6_ = new()
    v7_5_.BackgroundColor3 = v7_6_
    v7_6_ = 0.700000
    v7_5_.BackgroundTransparency = v7_6_
    v7_7_ = v0_5_
    v7_6_ = v7_7_.FontBold
    v7_5_.FontFace = v7_6_
    local new = Color3.new
    v7_7_ = 1
    local v7_8_ = 1
    local v7_9_ = 1
    v7_6_ = new(v7_7_, v7_8_, v7_9_)
    v7_5_.TextColor3 = v7_6_
    local fromScale = UDim2.fromScale
    v7_7_ = 1
    v7_8_ = 1
    v7_6_ = fromScale(v7_7_, v7_8_)
    v7_5_.Size = v7_6_
    v7_4_ = v7_4_(v7_5_)
    v7_5_ = v0_26_
    v7_6_ = {}
    local fromScale = UDim2.fromScale
    v7_8_ = 0.700000
    v7_9_ = 0.900000
    v7_7_ = fromScale(v7_8_, v7_9_)
    v7_6_.Size = v7_7_
    local new = Vector2.new
    v7_8_ = 0
    v7_9_ = 0.500000
    v7_7_ = new(v7_8_, v7_9_)
    v7_6_.AnchorPoint = v7_7_
    local fromScale = UDim2.fromScale
    v7_8_ = 0.020000
    v7_9_ = 0.500000
    v7_7_ = fromScale(v7_8_, v7_9_)
    v7_6_.Position = v7_7_
    v7_7_ = a2
    v7_8_ = "Locked"
    v7_7_ = v7_7_(v7_8_)
    v7_9_ = function(a1, a2)
        local v8_2_ = not a2
        return v8_2_
    end
    v7_7_ = v7_7_:With(v7_9_)
    v7_6_.Visible = v7_7_
    v7_7_ = a2
    v7_8_ = "AuraName"
    v7_7_ = v7_7_(v7_8_)
    v7_6_.Aura = v7_7_
    local Left = Enum.TextXAlignment.Left
    v7_6_.TextXAlignment = Left
    v7_8_ = v0_15_
    v7_7_ = v7_8_.CreatedAsync
    v7_8_ = function(a1)
        local v9_1_ = function()
            local v10_2_ = a1
            local v10_1_ = v10_2_._Holder
            local v10_0_ = v10_1_.AbsoluteSize
            v10_1_ = pcall
            local v10_3_ = v0_2_
            v10_2_ = v10_3_.GetTextSize
            local fromOffset = UDim2.fromOffset
            local v10_6_ = v10_0_.X
            local v10_5_ = v10_6_ * 0.700000
            local ceil = math.ceil
            local v10_4_ = ceil(v10_5_)
            local v10_7_ = v10_0_.Y
            v10_6_ = v10_7_ * 0.900000
            local ceil = math.ceil
            v10_5_ = ceil(v10_6_)
            v10_3_ = fromOffset(v10_4_, v10_5_)
            v10_6_ = a1
            v10_5_ = v10_6_._AuraLabel
            v10_4_ = v10_5_.FontFace
            v10_7_ = a1
            v10_6_ = v10_7_._AuraLabel
            v10_5_ = v10_6_.LocalizedText
            v10_1_, v10_2_ = v10_1_(v10_2_, v10_3_, v10_4_, v10_5_)
            if v10_1_ then
                v10_4_ = v10_2_.X
                local ceil = math.ceil
                v10_3_ = ceil(v10_4_)
                v10_6_ = v10_0_.X
                v10_5_ = v10_6_ * 0.700000
                local ceil = math.ceil
                v10_4_ = ceil(v10_5_)
                if v10_3_ <= v10_4_ then
                    v10_3_ = a1
                    local new = UDim2.new
                    v10_5_ = 0
                    v10_7_ = v10_2_.X
                    local ceil = math.ceil
                    v10_6_ = ceil(v10_7_)
                    v10_7_ = 0.900000
                    local v10_8_ = 0
                    v10_4_ = new(v10_5_, v10_6_, v10_7_, v10_8_)
                    v10_3_.Size = v10_4_
                    return
                end
            end
            v10_3_ = a1
            local fromScale = UDim2.fromScale
            v10_5_ = 0.700000
            v10_6_ = 0.900000
            v10_4_ = fromScale(v10_5_, v10_6_)
            v10_3_.Size = v10_4_
        end
        local wait = task.wait
        wait()
        local v9_3_ = a1
        local v9_2_ = v9_3_._Holder
        while not v9_2_ do
        end
        v9_2_ = v9_1_
        v9_2_()
        v9_3_ = a1
        v9_2_ = v9_3_._Holder
        local v9_4_ = "AbsoluteSize"
        v9_2_ = v9_2_:GetPropertyChangedSignal(v9_4_)
        v9_4_ = v9_1_
        v9_2_:Connect(v9_4_)
        v9_2_ = a1.TextChanged
        v9_4_ = v9_1_
        v9_2_:Connect(v9_4_)
    end
    v7_6_[v7_7_] = v7_8_
    v7_5_ = v7_5_(v7_6_)
    v7_6_ = v0_20_
    v7_7_ = table.create(3)
    local v7_11_ = 1
    v7_7_.BackgroundTransparency = v7_11_
    local new = Vector2.new
    v7_12_ = 0
    v7_13_ = 0.500000
    v7_11_ = new(v7_12_, v7_13_)
    v7_7_.AnchorPoint = v7_11_
    local fromScale = UDim2.fromScale
    v7_12_ = 0.760000
    v7_13_ = 0.500000
    v7_11_ = fromScale(v7_12_, v7_13_)
    v7_7_.Position = v7_11_
    local fromScale = UDim2.fromScale
    v7_12_ = 0.180000
    v7_13_ = 0.700000
    v7_11_ = fromScale(v7_12_, v7_13_)
    v7_7_.Size = v7_11_
    v7_11_ = 0.100000
    v7_7_.GroupTransparency = v7_11_
    v7_11_ = a2
    v7_12_ = "Locked"
    v7_11_ = v7_11_(v7_12_)
    v7_13_ = function(a1, a2)
        local v11_2_ = not a2
        return v11_2_
    end
    v7_11_ = v7_11_:With(v7_13_)
    v7_7_.Visible = v7_11_
    v7_8_ = v0_22_
    v7_9_ = table.create(1)
    local new = Color3.new
    v7_12_ = 1
    v7_13_ = 1
    v7_14_ = 1
    v7_11_ = new(v7_12_, v7_13_, v7_14_)
    v7_9_.TextColor3 = v7_11_
    v7_11_ = 0.800000
    v7_9_.BackgroundTransparency = v7_11_
    v7_11_ = a2
    v7_12_ = "Mode"
    v7_11_ = v7_11_(v7_12_)
    v7_13_ = v0_32_
    v7_11_ = v7_11_:With(v7_13_)
    v7_9_.BackgroundColor3 = v7_11_
    local fromScale = UDim2.fromScale
    v7_12_ = 1
    v7_13_ = 1
    v7_11_ = fromScale(v7_12_, v7_13_)
    v7_9_.Size = v7_11_
    v7_11_ = a2
    v7_12_ = "Mode"
    v7_11_ = v7_11_(v7_12_)
    v7_13_ = v0_33_
    v7_11_ = v7_11_:With(v7_13_)
    v7_9_.Text = v7_11_
    v7_11_ = true
    v7_9_.TextScaled = v7_11_
    v7_12_ = v0_5_
    v7_11_ = v7_12_.FontBold
    v7_9_.FontFace = v7_11_
    local v7_10_ = v0_27_
    v7_11_ = {}
    -- WARNING: SETLIST_C0, output may be wrong!
    v7_9_ = {v7_10_, v7_10_(v7_11_)}
    v7_8_ = v7_8_(v7_9_)
    v7_9_ = v0_19_
    v7_10_ = table.create(1)
    v7_11_ = v0_23_
    v7_12_ = {}
    v7_13_ = a2
    v7_14_ = "Mode"
    v7_13_ = v7_13_(v7_14_)
    local v7_15_ = v0_31_
    v7_13_ = v7_13_:With(v7_15_)
    v7_12_.Color = v7_13_
    -- WARNING: SETLIST_C0, output may be wrong!
    v7_10_ = {v7_11_, v7_11_(v7_12_)}
    v7_9_ = v7_9_(v7_10_)
    v7_10_ = v0_23_
    v7_11_ = {}
    v7_12_ = a2
    v7_13_ = "Mode"
    v7_12_ = v7_12_(v7_13_)
    v7_14_ = v0_31_
    v7_12_ = v7_12_:With(v7_14_)
    v7_11_.Color = v7_12_
    -- WARNING: SETLIST_C0, output may be wrong!
    v7_7_ = {v7_8_, v7_10_(v7_11_)}
    v7_6_ = v7_6_(v7_7_)
    v7_7_ = v0_20_
    v7_8_ = table.create(3)
    v7_12_ = 1
    v7_8_.BackgroundTransparency = v7_12_
    local new = Vector2.new
    v7_13_ = 0
    v7_14_ = 0.500000
    v7_12_ = new(v7_13_, v7_14_)
    v7_8_.AnchorPoint = v7_12_
    local fromScale = UDim2.fromScale
    v7_13_ = 0.950000
    v7_14_ = 0.500000
    v7_12_ = fromScale(v7_13_, v7_14_)
    v7_8_.Position = v7_12_
    local fromScale = UDim2.fromScale
    v7_13_ = 0.800000
    v7_14_ = 0.800000
    v7_12_ = fromScale(v7_13_, v7_14_)
    v7_8_.Size = v7_12_
    local RelativeYY = Enum.SizeConstraint.RelativeYY
    v7_8_.SizeConstraint = RelativeYY
    v7_12_ = 0
    v7_8_.GroupTransparency = v7_12_
    v7_12_ = a2
    v7_13_ = "Locked"
    v7_12_ = v7_12_(v7_13_)
    v7_14_ = function(a1, a2)
        local v12_2_ = not a2
        return v12_2_
    end
    v7_12_ = v7_12_:With(v7_14_)
    v7_8_.Visible = v7_12_
    v7_9_ = v0_24_
    v7_10_ = table.create(1)
    v7_12_ = 0.800000
    v7_10_.BackgroundTransparency = v7_12_
    v7_12_ = a2
    v7_13_ = "Mode"
    v7_12_ = v7_12_(v7_13_)
    v7_14_ = v0_32_
    v7_12_ = v7_12_:With(v7_14_)
    v7_10_.BackgroundColor3 = v7_12_
    v7_12_ = a2
    v7_13_ = "Mode"
    v7_12_ = v7_12_(v7_13_)
    v7_14_ = v0_34_
    v7_12_ = v7_12_:With(v7_14_)
    v7_10_.Image = v7_12_
    local fromScale = UDim2.fromScale
    v7_13_ = 1
    v7_14_ = 1
    v7_12_ = fromScale(v7_13_, v7_14_)
    v7_10_.Size = v7_12_
    v7_12_ = v0_15_
    v7_13_ = "MouseButton1Down"
    v7_12_ = v7_12_(v7_13_)
    v7_13_ = function()
        local v13_1_ = a2
        local v13_0_ = v13_1_.Callback
        if v13_0_ then
            v13_1_ = v0_2_
            v13_0_ = v13_1_.PlaySFX
            v13_1_ = "Click"
            local v13_2_ = "UISounds"
            v13_0_(v13_1_, v13_2_)
            v13_1_ = a2
            v13_0_ = v13_1_.Callback
            v13_2_ = a2
            v13_1_ = v13_2_.AuraName
            v13_0_(v13_1_)
        end
    end
    v7_10_[v7_12_] = v7_13_
    v7_11_ = v0_27_
    v7_12_ = {}
    -- WARNING: SETLIST_C0, output may be wrong!
    v7_10_ = {v7_11_, v7_11_(v7_12_)}
    v7_9_ = v7_9_(v7_10_)
    v7_10_ = v0_23_
    v7_11_ = {}
    v7_12_ = a2
    v7_13_ = "Mode"
    v7_12_ = v7_12_(v7_13_)
    v7_14_ = v0_31_
    v7_12_ = v7_12_:With(v7_14_)
    v7_11_.Color = v7_12_
    v7_10_ = v7_10_(v7_11_)
    v7_11_ = v0_19_
    v7_12_ = table.create(1)
    v7_13_ = v0_23_
    v7_14_ = {}
    v7_15_ = a2
    local v7_16_ = "Mode"
    v7_15_ = v7_15_(v7_16_)
    local v7_17_ = v0_31_
    v7_15_ = v7_15_:With(v7_17_)
    v7_14_.Color = v7_15_
    -- WARNING: SETLIST_C0, output may be wrong!
    v7_12_ = {v7_13_, v7_13_(v7_14_)}
    -- WARNING: SETLIST_C0, output may be wrong!
    v7_8_ = {v7_9_, v7_11_(v7_12_)}
    v7_7_ = v7_7_(v7_8_)
    v7_8_ = v0_28_
    v7_9_ = {}
    v7_8_ = v7_8_(v7_9_)
    v7_9_ = v0_27_
    v7_10_ = {}
    v7_9_ = v7_9_(v7_10_)
    v7_10_ = v0_19_
    v7_11_ = {}
    v7_10_ = v7_10_(v7_11_)
    v7_3_[2] = v7_4_
    v7_3_[3] = v7_5_
    v7_3_[4] = v7_6_
    v7_3_[5] = v7_7_
    v7_3_[6] = v7_8_
    v7_3_[7] = v7_9_
    v7_3_[8] = v7_10_
    v7_13_ = v0_15_
    v7_12_ = v7_13_.Created
    v7_13_ = function()
        local v14_0_ = v0_29_
        local v14_2_ = a2
        local v14_1_ = v14_2_.Index
        v14_2_ = a1
        v14_0_[v14_1_] = v14_2_
    end
    v7_3_[v7_12_] = v7_13_
    return v7_2_(v7_3_)
end
v0_30_.Render = v0_35_
return v0_30_
