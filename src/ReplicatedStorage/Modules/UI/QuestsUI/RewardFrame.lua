-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "Players"
v0_0_ = v0_0_:GetService(v0_2_)
local v0_1_ = game
local v0_3_ = "ReplicatedStorage"
v0_1_ = v0_1_:GetService(v0_3_)
v0_2_ = game
local v0_4_ = "RunService"
v0_2_ = v0_2_:GetService(v0_4_)
v0_3_ = v0_0_.LocalPlayer
local v0_6_ = "PlayerGui"
v0_4_ = v0_3_:WaitForChild(v0_6_)
local v0_7_ = "MainInterface"
local v0_5_ = v0_4_:WaitForChild(v0_7_)
local v0_8_ = "Modules"
v0_6_ = v0_1_:WaitForChild(v0_8_)
local v0_9_ = "UI"
v0_7_ = v0_6_:WaitForChild(v0_9_)
local v0_10_ = "Quad"
v0_8_ = v0_7_:WaitForChild(v0_10_)
local v0_11_ = "Components"
v0_9_ = v0_7_:WaitForChild(v0_11_)
local v0_12_ = "Storage"
v0_10_ = v0_1_:WaitForChild(v0_12_)
v0_11_ = require
local v0_14_ = "ItemDB"
v0_11_ = v0_11_(v0_10_:WaitForChild(v0_14_))
v0_12_ = require
local v0_13_ = v0_8_
v0_12_ = v0_12_(v0_13_)
v0_13_ = v0_12_.Class
v0_14_ = v0_12_.Event
local v0_15_ = v0_12_.Tween
local v0_16_ = v0_12_.Mount
local v0_17_ = v0_12_.Store
local v0_18_ = v0_12_.Style
local v0_19_ = v0_13_
local v0_20_ = "Frame"
v0_19_ = v0_19_(v0_20_)
v0_20_ = v0_13_
local v0_21_ = "CanvasGroup"
v0_20_ = v0_20_(v0_21_)
v0_21_ = v0_13_
local v0_22_ = "TextLabel"
v0_21_ = v0_21_(v0_22_)
v0_22_ = v0_13_
local v0_23_ = "TextButton"
v0_22_ = v0_22_(v0_23_)
v0_23_ = v0_13_
local v0_24_ = "TextBox"
v0_23_ = v0_23_(v0_24_)
v0_24_ = v0_13_
local v0_25_ = "ImageLabel"
v0_24_ = v0_24_(v0_25_)
v0_25_ = v0_13_
local v0_26_ = "ImageButton"
v0_25_ = v0_25_(v0_26_)
v0_26_ = v0_13_
local v0_27_ = "UIAspectRatioConstraint"
v0_26_ = v0_26_(v0_27_)
v0_27_ = v0_13_
local v0_28_ = "UIListLayout"
v0_27_ = v0_27_(v0_28_)
v0_28_ = v0_13_
local v0_29_ = "UIStroke"
v0_28_ = v0_28_(v0_29_)
v0_29_ = v0_13_
local v0_30_ = "UIGradient"
v0_29_ = v0_29_(v0_30_)
v0_30_ = v0_13_
local v0_33_ = "Corner"
v0_30_ = v0_30_(v0_9_:WaitForChild(v0_33_))
local v0_31_ = v0_13_
local v0_34_ = "Shadow"
v0_31_ = v0_31_(v0_9_:WaitForChild(v0_34_))
local v0_32_ = v0_13_
local v0_35_ = "AuraLabel"
v0_32_ = v0_32_(v0_9_:WaitForChild(v0_35_))
v0_33_ = v0_13_.Extend
v0_33_ = v0_33_()
v0_34_ = function(a1, a2)
    local v1_4_ = "Type"
    local v1_5_ = "Item"
    a2:Default(v1_4_, v1_5_)
    v1_4_ = "Content"
    v1_5_ = ""
    a2:Default(v1_4_, v1_5_)
    v1_4_ = "AuraName"
    v1_5_ = ""
    a2:Default(v1_4_, v1_5_)
    v1_4_ = "ItemName"
    v1_5_ = ""
    a2:Default(v1_4_, v1_5_)
    v1_4_ = "LayoutOrder"
    v1_5_ = 0
    a2:Default(v1_4_, v1_5_)
end
v0_33_.Init = v0_34_
v0_34_ = function(a1, a2)
    local v2_2_ = v0_19_
    local v2_3_ = "Reward\n_"
    v2_2_ = v2_2_(v2_3_)
    v2_3_ = table.create(2)
    local fromScale = UDim2.fromScale
    local v2_7_ = 1
    local v2_8_ = 0.300000
    local v2_6_ = fromScale(v2_7_, v2_8_)
    v2_3_.Size = v2_6_
    local new = Color3.new
    v2_6_ = new()
    v2_3_.BackgroundColor3 = v2_6_
    v2_6_ = 0.800000
    v2_3_.BackgroundTransparency = v2_6_
    v2_6_ = a2
    v2_7_ = "LayoutOrder"
    v2_6_ = v2_6_(v2_7_)
    v2_3_.LayoutOrder = v2_6_
    local v2_4_ = v0_21_
    local v2_5_ = "Content"
    v2_4_ = v2_4_(v2_5_)
    v2_5_ = {}
    local new = Vector2.new
    v2_7_ = 0.500000
    v2_8_ = 0.500000
    v2_6_ = new(v2_7_, v2_8_)
    v2_5_.AnchorPoint = v2_6_
    local fromScale = UDim2.fromScale
    v2_7_ = 0.500000
    v2_8_ = 0.500000
    v2_6_ = fromScale(v2_7_, v2_8_)
    v2_5_.Position = v2_6_
    local fromScale = UDim2.fromScale
    v2_7_ = 1
    v2_8_ = 0.700000
    v2_6_ = fromScale(v2_7_, v2_8_)
    v2_5_.Size = v2_6_
    v2_6_ = 1
    v2_5_.BackgroundTransparency = v2_6_
    v2_6_ = a2
    v2_7_ = "Content"
    v2_6_ = v2_6_(v2_7_)
    v2_8_ = function(a1, a2)
        local v3_4_ = a2
        local v3_3_ = v3_4_.__self
        local v3_2_ = v3_3_.Type
        if v3_2_ == "Coin" then
            v3_4_ = "x%* Coin"
            local v3_6_ = a2
            v3_4_ = v3_4_:format(v3_6_)
            v3_3_ = v3_4_
            return v3_3_
        end
        if v3_2_ == "RP" then
            v3_4_ = "x%* RIA Points"
            local v3_6_ = a2
            v3_4_ = v3_4_:format(v3_6_)
            v3_3_ = v3_4_
            return v3_3_
        end
        if v3_2_ == "Aura" then
            v3_3_ = ""
            return v3_3_
        end
        if v3_2_ == "Item" then
            v3_4_ = "%* [x%*]"
            local v3_8_ = a2
            local v3_7_ = v3_8_.__self
            local v3_6_ = v3_7_.ItemName
            v3_7_ = a2
            v3_4_ = v3_4_:format(v3_6_, v3_7_)
            v3_3_ = v3_4_
            return v3_3_
        end
        if v3_2_ == "Hidden" then
            v3_3_ = "???"
            return v3_3_
        end
        return a2
    end
    v2_6_ = v2_6_:With(v2_8_)
    v2_5_.Text = v2_6_
    v2_6_ = a2
    v2_7_ = "Type"
    v2_6_ = v2_6_(v2_7_)
    v2_8_ = function(a1, a2)
        if a2 == "Coin" then
            local fromRGB = Color3.fromRGB
            local v4_3_ = 255
            local v4_4_ = 221
            local v4_5_ = 26
            return fromRGB(v4_3_, v4_4_, v4_5_)
        end
        if a2 == "RP" then
            local fromRGB = Color3.fromRGB
            local v4_3_ = 133
            local v4_4_ = 255
            local v4_5_ = 241
            return fromRGB(v4_3_, v4_4_, v4_5_)
        end
        if a2 == "Item" then
            local v4_2_ = v0_11_
            local v4_6_ = a2
            local v4_5_ = v4_6_.__self
            local v4_4_ = v4_5_.ItemName
            v4_2_ = v4_2_:GetValueUnsafe(v4_4_)
            if v4_2_ then
                local v4_3_ = v4_2_.ItemNameColor3
                if not v4_3_ then
                    local new = Color3.new
                    v4_4_ = 1
                    v4_5_ = 1
                    v4_6_ = 1
                    v4_3_ = new(v4_4_, v4_5_, v4_6_)
                end
                return v4_3_
            end
            local new = Color3.new
            v4_4_ = 1
            v4_5_ = 1
            v4_6_ = 1
            return new(v4_4_, v4_5_, v4_6_)
        end
        if a2 == "Custom" then
            local v4_4_ = a2
            local v4_3_ = v4_4_.__self
            local v4_2_ = v4_3_.ContentColor3
            if not v4_2_ then
                local new = Color3.new
                v4_3_ = 1
                v4_4_ = 1
                local v4_5_ = 1
                v4_2_ = new(v4_3_, v4_4_, v4_5_)
            end
            return v4_2_
        end
        if a2 == "Hidden" then
            local fromRGB = Color3.fromRGB
            local v4_3_ = 150
            local v4_4_ = 150
            local v4_5_ = 150
            return fromRGB(v4_3_, v4_4_, v4_5_)
        end
        local new = Color3.new
        local v4_3_ = 1
        local v4_4_ = 1
        local v4_5_ = 1
        return new(v4_3_, v4_4_, v4_5_)
    end
    v2_6_ = v2_6_:With(v2_8_)
    v2_5_.TextColor3 = v2_6_
    v2_6_ = true
    v2_5_.TextScaled = v2_6_
    local new = Font.new
    v2_7_ = "rbxasset://fonts/families/Sarpanch.json"
    local Bold = Enum.FontWeight.Bold
    v2_6_ = new(v2_7_, Bold)
    v2_5_.FontFace = v2_6_
    v2_7_ = v0_14_
    v2_6_ = v2_7_.CreatedAsync
    v2_7_ = function(a1)
        local v5_3_ = a2
        local v5_2_ = v5_3_.__self
        local v5_1_ = v5_2_.Type
        if v5_1_ == "Aura" then
            v5_1_ = v0_16_
            v5_2_ = a1
            v5_3_ = v0_32_
            local v5_4_ = {}
            local new = Vector2.new
            local v5_6_ = 0.500000
            local v5_7_ = 0.500000
            local v5_5_ = new(v5_6_, v5_7_)
            v5_4_.AnchorPoint = v5_5_
            local fromScale = UDim2.fromScale
            v5_6_ = 0.500000
            v5_7_ = 0.500000
            v5_5_ = fromScale(v5_6_, v5_7_)
            v5_4_.Position = v5_5_
            local fromScale = UDim2.fromScale
            v5_6_ = 1
            v5_7_ = 1
            v5_5_ = fromScale(v5_6_, v5_7_)
            v5_4_.Size = v5_5_
            v5_7_ = a2
            v5_6_ = v5_7_.__self
            v5_5_ = v5_6_.Content
            v5_4_.Aura = v5_5_
            v5_1_(v5_3_(v5_4_))
        end
    end
    v2_5_[v2_6_] = v2_7_
    v2_4_ = v2_4_(v2_5_)
    v2_5_ = v0_30_
    v2_6_ = {}
    -- WARNING: SETLIST_C0, output may be wrong!
    v2_3_ = {v2_4_, v2_5_(v2_6_)}
    return v2_2_(v2_3_)
end
v0_33_.Render = v0_34_
return v0_33_
