-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "ReplicatedStorage"
v0_0_ = v0_0_:GetService(v0_2_)
local v0_3_ = "Modules"
local v0_1_ = v0_0_:WaitForChild(v0_3_)
local v0_4_ = "UI"
v0_2_ = v0_1_:WaitForChild(v0_4_)
local v0_5_ = "Components"
v0_3_ = v0_2_:WaitForChild(v0_5_)
v0_4_ = require
local v0_7_ = "Quad"
v0_4_ = v0_4_(v0_2_:WaitForChild(v0_7_))
v0_5_ = require
local v0_8_ = "AuraLabel"
v0_5_ = v0_5_(v0_3_:WaitForChild(v0_8_))
local v0_6_ = require
local v0_9_ = "Corner"
v0_6_ = v0_6_(v0_3_:WaitForChild(v0_9_))
v0_7_ = require
local v0_10_ = "Shadow"
v0_7_ = v0_7_(v0_3_:WaitForChild(v0_10_))
v0_8_ = table.create(3)
local new = ColorSequence.new
local fromRGB = Color3.fromRGB
local v0_11_ = 170
local v0_12_ = 255
local v0_13_ = 157
v0_10_ = fromRGB(v0_11_, v0_12_, v0_13_)
local fromRGB = Color3.fromRGB
v0_12_ = 107
v0_13_ = 255
local v0_14_ = 96
v0_9_ = new(fromRGB(v0_12_, v0_13_, v0_14_))
local new = ColorSequence.new
local fromRGB_0 = Color3.fromRGB
v0_12_ = 255
v0_13_ = 172
v0_14_ = 223
v0_11_ = fromRGB_0(v0_12_, v0_13_, v0_14_)
local fromRGB = Color3.fromRGB
v0_13_ = 255
v0_14_ = 83
local v0_15_ = 86
v0_10_ = new(fromRGB(v0_13_, v0_14_, v0_15_))
local new = ColorSequence.new
local new_0 = Color3.new
v0_13_ = 1
v0_14_ = 1
v0_15_ = 1
-- WARNING: SETLIST_C0, output may be wrong!
v0_8_ = {v0_9_, new(new_0(v0_13_, v0_14_, v0_15_))}
v0_9_ = v0_4_.Lang
v0_10_ = v0_4_.Round
v0_11_ = v0_4_.Class
v0_12_ = v0_4_.Mount
v0_13_ = v0_4_.Store
v0_14_ = v0_4_.Event
v0_15_ = v0_4_.Tween
local v0_16_ = v0_4_.Signal
local v0_17_ = v0_11_
local v0_18_ = "Frame"
v0_17_ = v0_17_(v0_18_)
v0_18_ = v0_11_
local v0_19_ = "UIStroke"
v0_18_ = v0_18_(v0_19_)
v0_19_ = v0_11_
local v0_20_ = "CanvasGroup"
v0_19_ = v0_19_(v0_20_)
v0_20_ = v0_11_
local v0_21_ = "ImageLabel"
v0_20_ = v0_20_(v0_21_)
v0_21_ = v0_11_
local v0_22_ = "TextLabel"
v0_21_ = v0_21_(v0_22_)
v0_22_ = v0_11_
local v0_23_ = "UIGradient"
v0_22_ = v0_22_(v0_23_)
v0_23_ = v0_11_
local v0_24_ = "ImageButton"
v0_23_ = v0_23_(v0_24_)
v0_24_ = v0_11_
local v0_25_ = "TextButton"
v0_24_ = v0_24_(v0_25_)
v0_25_ = v0_11_
local v0_26_ = v0_5_
v0_25_ = v0_25_(v0_26_)
v0_26_ = v0_11_
local v0_27_ = v0_6_
v0_26_ = v0_26_(v0_27_)
v0_27_ = v0_11_
local v0_28_ = v0_7_
v0_27_ = v0_27_(v0_28_)
v0_28_ = v0_13_.GetStore
local v0_29_ = "Wiki"
v0_28_ = v0_28_(v0_29_)
v0_29_ = v0_11_.Extend
v0_29_ = v0_29_()
local new = Color3.new
local v0_30_ = new()
v0_17_.BackgroundColor3 = v0_30_
v0_30_ = 0
v0_17_.BorderSizePixel = v0_30_
v0_30_ = 0
v0_19_.BorderSizePixel = v0_30_
local new = Color3.new
local v0_31_ = 1
local v0_32_ = 1
local v0_33_ = 1
v0_30_ = new(v0_31_, v0_32_, v0_33_)
v0_18_.Color = v0_30_
local Border = Enum.ApplyStrokeMode.Border
v0_18_.ApplyStrokeMode = Border
v0_30_ = 1.500000
v0_18_.Thickness = v0_30_
v0_30_ = 0.500000
v0_18_.Transparency = v0_30_
v0_30_ = 90
v0_22_.Rotation = v0_30_
v0_30_ = function(a1)
    local v1_1_ = a1.IsSkin
    if v1_1_ then
        local v1_3_ = v0_28_
        local v1_2_ = v1_3_.WatchingAura
        local v1_4_ = "_"
        local unpack = table.unpack
        v1_1_, v1_2_ = unpack(v1_2_:split(v1_4_))
        v1_3_ = a1.RootAura
        if v1_1_ == v1_3_ then
            v1_3_ = a1.Visible
            return v1_3_
        end
    else
        v1_1_ = a1.Visible
        return v1_1_
    end
    v1_1_ = false
    return v1_1_
end
v0_31_ = function(a1, a2)
    local v2_4_ = "Index"
    local v2_5_ = ""
    a2:Default(v2_4_, v2_5_)
    v2_4_ = "Order"
    v2_5_ = 1
    a2:Default(v2_4_, v2_5_)
    v2_4_ = "AuraName"
    v2_5_ = "Common"
    a2:Default(v2_4_, v2_5_)
    v2_4_ = "IsSkin"
    v2_5_ = false
    a2:Default(v2_4_, v2_5_)
    v2_4_ = "RootAura"
    v2_5_ = ""
    a2:Default(v2_4_, v2_5_)
    v2_4_ = "RootIndex"
    v2_5_ = 0
    a2:Default(v2_4_, v2_5_)
    v2_4_ = "Callback"
    v2_5_ = function()
    end
    a2:Default(v2_4_, v2_5_)
    v2_4_ = "Locked"
    v2_5_ = true
    a2:Default(v2_4_, v2_5_)
    v2_4_ = "Visible"
    v2_5_ = true
    a2:Default(v2_4_, v2_5_)
end
v0_29_.Init = v0_31_
v0_31_ = function(a1, a2)
    local v4_2_ = v0_17_
    local v4_3_ = table.create(1)
    local v4_5_ = a2
    local v4_6_ = "Order"
    v4_5_ = v4_5_(v4_6_)
    v4_3_.LayoutOrder = v4_5_
    v4_5_ = 1
    v4_3_.BackgroundTransparency = v4_5_
    local fromScale = UDim2.fromScale
    v4_6_ = 1
    local v4_9_ = v0_4_
    local v4_8_ = v4_9_.IsMobile
    if v4_8_ then
        local v4_7_ = 0.080000
    else
        local v4_7_ = 0.050000
    end
    v4_5_ = fromScale(v4_6_, nil)
    v4_3_.Size = v4_5_
    local v4_4_ = v0_24_
    v4_5_ = table.create(5)
    local v4_11_ = false
    v4_5_.AutoButtonColor = v4_11_
    local new = Vector2.new
    local v4_12_ = 0.500000
    local v4_13_ = 0.500000
    v4_11_ = new(v4_12_, v4_13_)
    v4_5_.AnchorPoint = v4_11_
    local fromScale = UDim2.fromScale
    v4_12_ = 0.500000
    v4_13_ = 0.500000
    v4_11_ = fromScale(v4_12_, v4_13_)
    v4_5_.Position = v4_11_
    v4_11_ = 0.600000
    v4_5_.BackgroundTransparency = v4_11_
    v4_11_ = a2
    v4_12_ = "IsSkin"
    v4_11_ = v4_11_(v4_12_)
    v4_13_ = function(a1, a2)
        if a2 then
            local new = Color3.new
            local v5_3_ = 0.117647
            local v5_4_ = 0.203922
            local v5_5_ = 0.247059
            local v5_2_ = new(v5_3_, v5_4_, v5_5_)
            if not v5_2_ then
                local new = Color3.new
                v5_3_ = 0
                v5_4_ = 0
                v5_5_ = 0
                v5_2_ = new(v5_3_, v5_4_, v5_5_)
            end
        end
        local new = Color3.new
        local v5_3_ = 0
        local v5_4_ = 0
        local v5_5_ = 0
        local v5_2_ = new(v5_3_, v5_4_, v5_5_)
        return v5_2_
    end
    v4_11_ = v4_11_:With(v4_13_)
    v4_5_.BackgroundColor3 = v4_11_
    local fromScale = UDim2.fromScale
    v4_12_ = 0.950000
    v4_13_ = 0.800000
    v4_11_ = fromScale(v4_12_, v4_13_)
    v4_5_.Size = v4_11_
    v4_11_ = ""
    v4_5_.Text = v4_11_
    v4_11_ = 1
    v4_5_.TextTransparency = v4_11_
    v4_6_ = v0_24_
    local v4_7_ = {}
    v4_8_ = false
    v4_7_.AutoButtonColor = v4_8_
    v4_8_ = 3
    v4_7_.ZIndex = v4_8_
    v4_8_ = "Locked"
    v4_7_.Text = v4_8_
    v4_8_ = true
    v4_7_.TextScaled = v4_8_
    v4_8_ = a2
    v4_9_ = "Locked"
    v4_8_ = v4_8_(v4_9_)
    v4_7_.Visible = v4_8_
    v4_8_ = a2
    v4_9_ = "IsSkin"
    v4_8_ = v4_8_(v4_9_)
    local v4_10_ = function(a1, a2)
        if a2 then
            local new = Color3.new
            local v6_3_ = 0.117647
            local v6_4_ = 0.203922
            local v6_5_ = 0.247059
            local v6_2_ = new(v6_3_, v6_4_, v6_5_)
            if not v6_2_ then
                local new = Color3.new
                v6_3_ = 0
                v6_4_ = 0
                v6_5_ = 0
                v6_2_ = new(v6_3_, v6_4_, v6_5_)
            end
        end
        local new = Color3.new
        local v6_3_ = 0
        local v6_4_ = 0
        local v6_5_ = 0
        local v6_2_ = new(v6_3_, v6_4_, v6_5_)
        return v6_2_
    end
    v4_8_ = v4_8_:With(v4_10_)
    v4_7_.BackgroundColor3 = v4_8_
    v4_8_ = 0.700000
    v4_7_.BackgroundTransparency = v4_8_
    v4_9_ = v0_4_
    v4_8_ = v4_9_.FontBold
    v4_7_.FontFace = v4_8_
    local new = Color3.new
    v4_9_ = 1
    v4_10_ = 1
    v4_11_ = 1
    v4_8_ = new(v4_9_, v4_10_, v4_11_)
    v4_7_.TextColor3 = v4_8_
    local fromScale = UDim2.fromScale
    v4_9_ = 1
    v4_10_ = 1
    v4_8_ = fromScale(v4_9_, v4_10_)
    v4_7_.Size = v4_8_
    v4_6_ = v4_6_(v4_7_)
    v4_7_ = v0_25_
    v4_8_ = {}
    local fromScale = UDim2.fromScale
    v4_10_ = 1
    v4_11_ = 1
    v4_9_ = fromScale(v4_10_, v4_11_)
    v4_8_.Size = v4_9_
    local new = Vector2.new
    v4_10_ = 0.500000
    v4_11_ = 0.500000
    v4_9_ = new(v4_10_, v4_11_)
    v4_8_.AnchorPoint = v4_9_
    local fromScale = UDim2.fromScale
    v4_10_ = 0.500000
    v4_11_ = 0.500000
    v4_9_ = fromScale(v4_10_, v4_11_)
    v4_8_.Position = v4_9_
    v4_9_ = a2
    v4_10_ = "Locked"
    v4_9_ = v4_9_(v4_10_)
    v4_11_ = function(a1, a2)
        local v7_2_ = not a2
        return v7_2_
    end
    v4_9_ = v4_9_:With(v4_11_)
    v4_8_.Visible = v4_9_
    v4_9_ = a2
    v4_10_ = "AuraName"
    v4_9_ = v4_9_(v4_10_)
    v4_8_.Aura = v4_9_
    v4_7_ = v4_7_(v4_8_)
    v4_8_ = v0_27_
    v4_9_ = {}
    v4_8_ = v4_8_(v4_9_)
    v4_9_ = v0_26_
    v4_10_ = {}
    v4_11_ = a2
    v4_12_ = "IsSkin"
    v4_11_ = v4_11_(v4_12_)
    v4_13_ = function(a1, a2)
        if a2 then
            local new = Color3.new
            local v8_3_ = 0.470588
            local v8_4_ = 0.815686
            local v8_5_ = 1
            local v8_2_ = new(v8_3_, v8_4_, v8_5_)
            if not v8_2_ then
                local new = Color3.new
                v8_3_ = 1
                v8_4_ = 1
                v8_5_ = 1
                v8_2_ = new(v8_3_, v8_4_, v8_5_)
            end
        end
        local new = Color3.new
        local v8_3_ = 1
        local v8_4_ = 1
        local v8_5_ = 1
        local v8_2_ = new(v8_3_, v8_4_, v8_5_)
        return v8_2_
    end
    v4_11_ = v4_11_:With(v4_13_)
    v4_10_.Color3 = v4_11_
    v4_9_ = v4_9_(v4_10_)
    v4_10_ = v0_18_
    v4_11_ = {}
    v4_12_ = a2
    v4_13_ = "IsSkin"
    v4_12_ = v4_12_(v4_13_)
    local v4_14_ = function(a1, a2)
        if a2 then
            local new = Color3.new
            local v9_3_ = 0.470588
            local v9_4_ = 0.815686
            local v9_5_ = 1
            local v9_2_ = new(v9_3_, v9_4_, v9_5_)
            if not v9_2_ then
                local new = Color3.new
                v9_3_ = 1
                v9_4_ = 1
                v9_5_ = 1
                v9_2_ = new(v9_3_, v9_4_, v9_5_)
            end
        end
        local new = Color3.new
        local v9_3_ = 1
        local v9_4_ = 1
        local v9_5_ = 1
        local v9_2_ = new(v9_3_, v9_4_, v9_5_)
        return v9_2_
    end
    v4_12_ = v4_12_:With(v4_14_)
    v4_11_.Color = v4_12_
    v4_10_ = v4_10_(v4_11_)
    v4_5_[1] = v4_6_
    v4_5_[2] = v4_7_
    v4_5_[3] = v4_8_
    v4_5_[4] = v4_9_
    v4_5_[5] = v4_10_
    v4_11_ = v0_14_
    v4_13_ = a2.IsSkin
    if v4_13_ then
        v4_12_ = "MouseButton1Down"
    else
        v4_12_ = "MouseButton1Click"
    end
    v4_11_ = v4_11_(v4_12_)
    v4_12_ = function()
        local v10_1_ = a2
        local v10_0_ = v10_1_.Callback
        if v10_0_ then
            v10_1_ = a2
            v10_0_ = v10_1_.Callback
            v10_0_()
        end
    end
    v4_5_[v4_11_] = v4_12_
    -- WARNING: SETLIST_C0, output may be wrong!
    v4_3_ = {v4_4_, v4_4_(v4_5_)}
    return v4_2_(v4_3_)
end
v0_29_.Render = v0_31_
v0_31_ = function(a1, a2)
    local v11_3_ = a1.IsSkin
    if v11_3_ then
        local v11_5_ = v0_28_
        local v11_4_ = v11_5_.WatchingAura
        local v11_6_ = "_"
        local unpack = table.unpack
        v11_3_, v11_4_ = unpack(v11_4_:split(v11_6_))
        v11_5_ = a1.RootAura
        if v11_3_ == v11_5_ then
            local v11_2_ = a1.Visible
            v11_2_ = a1.Visible
        else
            local v11_2_ = false
        end
    else
        local v11_2_ = a1.Visible
    end
    local v11_2_ = false
    a2.Visible = v11_2_
    v11_2_ = a1.__prop
    v11_3_ = "Visible"
    v11_2_ = v11_2_(v11_3_)
    local v11_4_ = function()
        local v12_0_ = a2
        local v12_2_ = a1
        local v12_3_ = v12_2_.IsSkin
        if v12_3_ then
            local v12_5_ = v0_28_
            local v12_4_ = v12_5_.WatchingAura
            local v12_6_ = "_"
            local unpack = table.unpack
            v12_3_, v12_4_ = unpack(v12_4_:split(v12_6_))
            v12_5_ = v12_2_.RootAura
            if v12_3_ == v12_5_ then
                local v12_1_ = v12_2_.Visible
                v12_1_ = v12_2_.Visible
            else
                local v12_1_ = false
            end
        else
            local v12_1_ = v12_2_.Visible
        end
        local v12_1_ = false
        v12_0_.Visible = v12_1_
    end
    v11_2_:Observe(v11_4_)
    v11_2_ = v0_28_
    v11_3_ = "WatchingAura"
    v11_2_ = v11_2_(v11_3_)
    v11_4_ = function()
        local v13_0_ = a2
        local v13_2_ = a1
        local v13_3_ = v13_2_.IsSkin
        if v13_3_ then
            local v13_5_ = v0_28_
            local v13_4_ = v13_5_.WatchingAura
            local v13_6_ = "_"
            local unpack = table.unpack
            v13_3_, v13_4_ = unpack(v13_4_:split(v13_6_))
            v13_5_ = v13_2_.RootAura
            if v13_3_ == v13_5_ then
                local v13_1_ = v13_2_.Visible
                v13_1_ = v13_2_.Visible
            else
                local v13_1_ = false
            end
        else
            local v13_1_ = v13_2_.Visible
        end
        local v13_1_ = false
        v13_0_.Visible = v13_1_
    end
    v11_2_:Observe(v11_4_)
end
v0_29_.AfterRender = v0_31_
return v0_29_
