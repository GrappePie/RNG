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
v0_3_ = game
local v0_5_ = "UserInputService"
v0_3_ = v0_3_:GetService(v0_5_)
v0_4_ = v0_0_.LocalPlayer
local v0_7_ = "PlayerGui"
v0_5_ = v0_4_:WaitForChild(v0_7_)
local v0_8_ = "MainInterface"
local v0_6_ = v0_5_:WaitForChild(v0_8_)
local v0_9_ = "Modules"
v0_7_ = v0_1_:WaitForChild(v0_9_)
v0_8_ = require
local v0_11_ = "Utility"
v0_8_ = v0_8_(v0_7_:WaitForChild(v0_11_))
v0_11_ = "UI"
v0_9_ = v0_7_:WaitForChild(v0_11_)
local v0_12_ = "Quad"
local v0_10_ = v0_9_:WaitForChild(v0_12_)
local v0_13_ = "Components"
v0_11_ = v0_9_:WaitForChild(v0_13_)
local v0_14_ = "Storage"
v0_12_ = v0_1_:WaitForChild(v0_14_)
v0_13_ = require
local v0_16_ = "Buffs"
v0_13_ = v0_13_(v0_12_:WaitForChild(v0_16_))
v0_14_ = require
local v0_15_ = v0_10_
v0_14_ = v0_14_(v0_15_)
v0_15_ = v0_14_.Class
v0_16_ = v0_14_.Event
local v0_17_ = v0_14_.Tween
local v0_18_ = v0_14_.Mount
local v0_19_ = v0_14_.Store
local v0_20_ = v0_14_.Style
local v0_21_ = v0_15_
local v0_22_ = "Frame"
v0_21_ = v0_21_(v0_22_)
v0_22_ = v0_15_
local v0_23_ = "TextLabel"
v0_22_ = v0_22_(v0_23_)
v0_23_ = v0_15_
local v0_24_ = "TextButton"
v0_23_ = v0_23_(v0_24_)
v0_24_ = v0_15_
local v0_25_ = "TextBox"
v0_24_ = v0_24_(v0_25_)
v0_25_ = v0_15_
local v0_26_ = "ImageLabel"
v0_25_ = v0_25_(v0_26_)
v0_26_ = v0_15_
local v0_27_ = "ImageButton"
v0_26_ = v0_26_(v0_27_)
v0_27_ = v0_15_
local v0_28_ = "UIAspectRatioConstraint"
v0_27_ = v0_27_(v0_28_)
v0_28_ = v0_15_
local v0_29_ = "UIListLayout"
v0_28_ = v0_28_(v0_29_)
v0_29_ = v0_15_
local v0_30_ = "UIGradient"
v0_29_ = v0_29_(v0_30_)
v0_30_ = v0_15_
local v0_31_ = "UIStroke"
v0_30_ = v0_30_(v0_31_)
v0_31_ = v0_15_
local v0_32_ = "UITextSizeConstraint"
v0_31_ = v0_31_(v0_32_)
v0_32_ = v0_15_
local v0_35_ = "Corner"
v0_32_ = v0_32_(v0_11_:WaitForChild(v0_35_))
local v0_33_ = v0_15_
local v0_36_ = "Shadow"
v0_33_ = v0_33_(v0_11_:WaitForChild(v0_36_))
local v0_34_ = v0_15_.Extend
v0_34_ = v0_34_()
v0_35_ = nil
v0_36_ = nil
local v0_37_ = nil
local v0_40_ = "Assets"
local v0_38_ = v0_1_:WaitForChild(v0_40_)
v0_40_ = "Icons"
v0_38_ = v0_38_:WaitForChild(v0_40_)
local v0_39_ = nil
v0_40_ = nil
local v0_41_ = function()
    local v1_1_ = v0_35_
    local v1_0_ = v1_1_.Visible
    if v1_0_ then
        v1_0_ = v0_3_
        v1_0_ = v1_0_:GetMouseLocation()
        v1_1_ = v0_35_
        local fromOffset = UDim2.fromOffset
        local v1_5_ = v1_0_.X
        local v1_4_ = v1_5_ - 10.000000
        v1_5_ = 0
        local v1_8_ = v0_6_
        local v1_7_ = v1_8_.AbsoluteSize
        local v1_6_ = v1_7_.X
        local clamp = math.clamp
        local v1_3_ = clamp(v1_4_, v1_5_, v1_6_)
        v1_6_ = v1_0_.Y
        v1_5_ = v1_6_ - 10.000000
        v1_6_ = 0
        local v1_9_ = v0_6_
        v1_8_ = v1_9_.AbsoluteSize
        v1_7_ = v1_8_.Y
        local clamp = math.clamp
        v1_4_ = clamp(v1_5_, v1_6_, v1_7_)
        local v1_2_ = fromOffset(v1_3_, v1_4_)
        v1_1_.Position = v1_2_
    end
end
local v0_42_ = v0_21_
local v0_43_ = table.create(6)
local new = Vector2.new
local v0_51_ = 1
local v0_52_ = 1
local v0_50_ = new(v0_51_, v0_52_)
v0_43_.AnchorPoint = v0_50_
local fromScale = UDim2.fromScale
v0_51_ = 0.200000
v0_52_ = 0.070000
v0_50_ = fromScale(v0_51_, v0_52_)
v0_43_.Size = v0_50_
local new = Color3.new
v0_50_ = new()
v0_43_.BackgroundColor3 = v0_50_
v0_50_ = 0.400000
v0_43_.BackgroundTransparency = v0_50_
v0_50_ = false
v0_43_.Visible = v0_50_
local v0_44_ = v0_22_
local v0_45_ = {}
local fromScale = UDim2.fromScale
local v0_47_ = 1
local v0_48_ = 0.350000
local v0_46_ = fromScale(v0_47_, v0_48_)
v0_45_.Size = v0_46_
v0_46_ = 1
v0_45_.BackgroundTransparency = v0_46_
v0_46_ = ""
v0_45_.Text = v0_46_
local new = Color3.new
v0_47_ = 1
v0_48_ = 1
local v0_49_ = 1
v0_46_ = new(v0_47_, v0_48_, v0_49_)
v0_45_.TextColor3 = v0_46_
v0_46_ = v0_14_.FontBold
v0_45_.FontFace = v0_46_
v0_46_ = true
v0_45_.TextScaled = v0_46_
v0_46_ = true
v0_45_.RichText = v0_46_
v0_46_ = v0_16_.CreatedAsync
v0_47_ = function(a1)
    v0_37_ = a1
end
v0_45_[v0_46_] = v0_47_
v0_44_ = v0_44_(v0_45_)
v0_45_ = v0_21_
v0_46_ = {}
local new = Vector2.new
v0_48_ = 0.500000
v0_49_ = 0.500000
v0_47_ = new(v0_48_, v0_49_)
v0_46_.AnchorPoint = v0_47_
local fromScale = UDim2.fromScale
v0_48_ = 0.500000
v0_49_ = 0.375000
v0_47_ = fromScale(v0_48_, v0_49_)
v0_46_.Position = v0_47_
local new = UDim2.new
v0_48_ = 0.950000
v0_49_ = 0
v0_50_ = 0
v0_51_ = 1
v0_47_ = new(v0_48_, v0_49_, v0_50_, v0_51_)
v0_46_.Size = v0_47_
v0_45_ = v0_45_(v0_46_)
v0_46_ = v0_22_
v0_47_ = table.create(1)
local new = Vector2.new
v0_50_ = 0.500000
v0_51_ = 0
v0_49_ = new(v0_50_, v0_51_)
v0_47_.AnchorPoint = v0_49_
local fromScale = UDim2.fromScale
v0_50_ = 0.500000
v0_51_ = 0.450000
v0_49_ = fromScale(v0_50_, v0_51_)
v0_47_.Position = v0_49_
local fromScale = UDim2.fromScale
v0_50_ = 0.970000
v0_51_ = 0.550000
v0_49_ = fromScale(v0_50_, v0_51_)
v0_47_.Size = v0_49_
v0_49_ = 1
v0_47_.BackgroundTransparency = v0_49_
v0_49_ = ""
v0_47_.Text = v0_49_
local new = Color3.new
v0_50_ = 1
v0_51_ = 1
v0_52_ = 1
v0_49_ = new(v0_50_, v0_51_, v0_52_)
v0_47_.TextColor3 = v0_49_
v0_49_ = v0_14_.FontBold
v0_47_.FontFace = v0_49_
v0_49_ = true
v0_47_.TextScaled = v0_49_
v0_49_ = true
v0_47_.RichText = v0_49_
local Left = Enum.TextXAlignment.Left
v0_47_.TextXAlignment = Left
local Top = Enum.TextYAlignment.Top
v0_47_.TextYAlignment = Top
v0_48_ = v0_31_
v0_49_ = {}
v0_50_ = 14
v0_49_.MaxTextSize = v0_50_
v0_50_ = 1
v0_49_.MinTextSize = v0_50_
v0_48_ = v0_48_(v0_49_)
v0_47_[1] = v0_48_
v0_49_ = v0_16_.CreatedAsync
v0_50_ = function(a1)
    v0_36_ = a1
end
v0_47_[v0_49_] = v0_50_
v0_46_ = v0_46_(v0_47_)
v0_47_ = v0_27_
v0_48_ = {}
v0_49_ = 3.427000
v0_48_.AspectRatio = v0_49_
v0_47_ = v0_47_(v0_48_)
v0_48_ = v0_32_
v0_49_ = {}
v0_50_ = 0.100000
v0_49_.Size = v0_50_
v0_48_ = v0_48_(v0_49_)
v0_49_ = v0_33_
v0_50_ = {}
v0_49_ = v0_49_(v0_50_)
v0_43_[1] = v0_44_
v0_43_[2] = v0_45_
v0_43_[3] = v0_46_
v0_43_[4] = v0_47_
v0_43_[5] = v0_48_
v0_43_[6] = v0_49_
v0_50_ = 200
v0_43_.ZIndex = v0_50_
v0_42_ = v0_42_(v0_43_)
v0_35_ = v0_42_
v0_42_ = function(a1, a2)
    local v4_4_ = "AnchorPoint"
    local new = Vector2.new
    a2:Default(new())
    v4_4_ = "Position"
    local new_0 = UDim2.new
    a2:Default(new_0())
    v4_4_ = "Size"
    local fromScale = UDim2.fromScale
    local v4_6_ = 0.900000
    local v4_7_ = 0.900000
    a2:Default(fromScale(v4_6_, v4_7_))
    v4_4_ = "SizeConstraint"
    local RelativeXY = Enum.SizeConstraint.RelativeXY
    a2:Default(v4_4_, RelativeXY)
    v4_4_ = "CornerSize"
    local v4_5_ = 0.260000
    a2:Default(v4_4_, v4_5_)
    v4_4_ = "EffectName"
    v4_5_ = ""
    a2:Default(v4_4_, v4_5_)
    v4_4_ = "EffectDuration"
    v4_5_ = 0
    a2:Default(v4_4_, v4_5_)
end
v0_34_.Init = v0_42_
v0_42_ = function(a1, a2)
    local v5_2_ = v0_21_
    local v5_3_ = table.create(3)
    local v5_7_ = a2
    local v5_8_ = "AnchorPoint"
    v5_7_ = v5_7_(v5_8_)
    v5_3_.AnchorPoint = v5_7_
    v5_7_ = a2
    v5_8_ = "Position"
    v5_7_ = v5_7_(v5_8_)
    v5_3_.Position = v5_7_
    v5_7_ = a2
    v5_8_ = "Size"
    v5_7_ = v5_7_(v5_8_)
    v5_3_.Size = v5_7_
    v5_7_ = a2
    v5_8_ = "SizeConstraint"
    v5_7_ = v5_7_(v5_8_)
    v5_3_.SizeConstraint = v5_7_
    local new = Color3.new
    v5_7_ = new()
    v5_3_.BackgroundColor3 = v5_7_
    v5_7_ = 0.400000
    v5_3_.BackgroundTransparency = v5_7_
    local v5_4_ = v0_22_
    local v5_5_ = {}
    local new = Vector2.new
    v5_7_ = 0.500000
    v5_8_ = 0
    local v5_6_ = new(v5_7_, v5_8_)
    v5_5_.AnchorPoint = v5_6_
    local fromScale = UDim2.fromScale
    v5_7_ = 0.500000
    v5_8_ = 0.100000
    v5_6_ = fromScale(v5_7_, v5_8_)
    v5_5_.Position = v5_6_
    local fromScale = UDim2.fromScale
    v5_7_ = 1
    v5_8_ = 0.300000
    v5_6_ = fromScale(v5_7_, v5_8_)
    v5_5_.Size = v5_6_
    v5_6_ = 1
    v5_5_.BackgroundTransparency = v5_6_
    v5_6_ = a2
    v5_7_ = "EffectDuration"
    v5_6_ = v5_6_(v5_7_)
    v5_8_ = function(a1, a2)
        if a2 ~= 0.000000 then
            if a2 == 0 then
                local v6_2_ = ""
                return v6_2_
            end
        end
        local v6_2_ = ""
        return v6_2_
    end
    v5_6_ = v5_6_:With(v5_8_)
    v5_5_.Text = v5_6_
    local new = Color3.new
    v5_7_ = 1
    v5_8_ = 1
    local v5_9_ = 1
    v5_6_ = new(v5_7_, v5_8_, v5_9_)
    v5_5_.TextColor3 = v5_6_
    local GothamMedium = Enum.Font.GothamMedium
    v5_5_.Font = GothamMedium
    v5_6_ = true
    v5_5_.TextScaled = v5_6_
    v5_6_ = false
    v5_5_.AutoLocalize = v5_6_
    v5_6_ = 0.500000
    v5_5_.TextStrokeTransparency = v5_6_
    v5_6_ = 2
    v5_5_.ZIndex = v5_6_
    v5_4_ = v5_4_(v5_5_)
    v5_5_ = v0_32_
    v5_6_ = {}
    v5_7_ = 0.150000
    v5_6_.Size = v5_7_
    v5_5_ = v5_5_(v5_6_)
    v5_6_ = v0_33_
    v5_7_ = {}
    v5_6_ = v5_6_(v5_7_)
    v5_3_[1] = v5_4_
    v5_3_[2] = v5_5_
    v5_3_[3] = v5_6_
    v5_8_ = v0_16_
    v5_7_ = v5_8_.CreatedAsync
    v5_8_ = function(a1)
        local v7_1_ = v0_13_
        local v7_4_ = a2
        local v7_3_ = v7_4_.EffectName
        v7_1_ = v7_1_:GetValue(v7_3_)
        local v7_2_ = a2
        v7_3_ = v7_1_.DisplayName
        if not v7_3_ then
            v7_4_ = a2
            v7_3_ = v7_4_.EffectName
        end
        v7_2_.DisplayName = v7_3_
        v7_3_ = v7_1_.IconAsset
        if v7_3_ then
            v7_2_ = v0_38_
            v7_4_ = v7_1_.IconAsset
            v7_2_ = v7_2_:WaitForChild(v7_4_)
            v7_2_ = v7_2_:Clone()
            if not v7_2_ then
                v7_3_ = v7_1_.IconText
                if v7_3_ then
                    v7_2_ = v0_22_
                    v7_3_ = table.create(2)
                    local new = Vector2.new
                    local v7_7_ = 0.500000
                    local v7_8_ = 0.500000
                    local v7_6_ = new(v7_7_, v7_8_)
                    v7_3_.AnchorPoint = v7_6_
                    local fromScale = UDim2.fromScale
                    v7_7_ = 0.500000
                    v7_8_ = 0.500000
                    v7_6_ = fromScale(v7_7_, v7_8_)
                    v7_3_.Position = v7_6_
                    local fromScale = UDim2.fromScale
                    v7_8_ = v7_1_.IconScale
                    v7_7_ = v7_8_ or 1.000000
                    local v7_9_ = v7_1_.IconScale
                    v7_8_ = v7_9_ or 1.000000
                    v7_6_ = fromScale(v7_7_, v7_8_)
                    v7_3_.Size = v7_6_
                    v7_6_ = v7_1_.IconText
                    v7_3_.Text = v7_6_
                    v7_6_ = v7_1_.IconColor3
                    if not v7_6_ then
                        local new = Color3.new
                        v7_7_ = 1
                        v7_8_ = 1
                        v7_9_ = 1
                        v7_6_ = new(v7_7_, v7_8_, v7_9_)
                    end
                    v7_3_.TextColor3 = v7_6_
                    v7_7_ = v7_1_.IconRotation
                    v7_6_ = v7_7_ or 0.000000
                    v7_3_.Rotation = v7_6_
                    v7_6_ = 1
                    v7_3_.BackgroundTransparency = v7_6_
                    local v7_5_ = v7_1_.IconGradient
                    if v7_5_ then
                        v7_4_ = v0_29_
                        v7_5_ = {}
                        v7_7_ = v7_1_.IconGradient
                        v7_6_ = v7_7_.Color
                        if not v7_6_ then
                            local new = ColorSequence.new
                            local new_0 = Color3.new
                            v7_8_ = 1
                            v7_9_ = 1
                            local v7_10_ = 1
                            v7_6_ = new(new_0(v7_8_, v7_9_, v7_10_))
                        end
                        v7_5_.Color = v7_6_
                        v7_7_ = v7_1_.IconGradient
                        v7_6_ = v7_7_.Rotation
                        v7_5_.Rotation = v7_6_
                        v7_7_ = v7_1_.IconGradient
                        v7_6_ = v7_7_.Transparency
                        if not v7_6_ then
                            local new = NumberSequence.new
                            v7_7_ = 0
                            v7_6_ = new(v7_7_)
                        end
                        v7_5_.Transparency = v7_6_
                        v7_7_ = v7_1_.IconGradient
                        v7_6_ = v7_7_.Offset
                        v7_5_.Offset = v7_6_
                        v7_4_ = v7_4_(v7_5_)
                        if not v7_4_ then
                            v7_4_ = nil
                        end
                    end
                    v7_4_ = nil
                    v7_6_ = v7_1_.IconStroke
                    if v7_6_ then
                        v7_5_ = v0_29_
                        v7_6_ = {}
                        v7_8_ = v7_1_.IconStroke
                        v7_7_ = v7_8_.Color
                        if not v7_7_ then
                            local new = Color3.new
                            v7_7_ = new()
                        end
                        v7_6_.Color3 = v7_7_
                        v7_9_ = v7_1_.IconStroke
                        v7_8_ = v7_9_.Thickness
                        v7_7_ = v7_8_ or 1.000000
                        v7_6_.Thickness = v7_7_
                        v7_5_ = v7_5_(v7_6_)
                        if not v7_5_ then
                            v7_5_ = nil
                        end
                    end
                    v7_5_ = nil
                    v7_3_[1] = v7_4_
                    v7_3_[2] = v7_5_
                    v7_2_ = v7_2_(v7_3_)
                else
                    v7_2_ = v0_25_
                    v7_3_ = table.create(2)
                    local new = Vector2.new
                    local v7_7_ = 0.500000
                    local v7_8_ = 0.500000
                    local v7_6_ = new(v7_7_, v7_8_)
                    v7_3_.AnchorPoint = v7_6_
                    local fromScale = UDim2.fromScale
                    v7_7_ = 0.500000
                    v7_8_ = 0.500000
                    v7_6_ = fromScale(v7_7_, v7_8_)
                    v7_3_.Position = v7_6_
                    local fromScale = UDim2.fromScale
                    v7_8_ = v7_1_.IconScale
                    v7_7_ = v7_8_ or 1.000000
                    local v7_9_ = v7_1_.IconScale
                    v7_8_ = v7_9_ or 1.000000
                    v7_6_ = fromScale(v7_7_, v7_8_)
                    v7_3_.Size = v7_6_
                    v7_7_ = v7_1_.IconId
                    if v7_7_ then
                        v7_7_ = "rbxassetid://%*"
                        v7_9_ = v7_1_.IconId
                        v7_7_ = v7_7_:format(v7_9_)
                        v7_6_ = v7_7_
                        if not v7_6_ then
                            v7_6_ = "http://www.roblox.com/asset/?id=6022668911"
                        end
                    end
                    v7_6_ = "http://www.roblox.com/asset/?id=6022668911"
                    v7_3_.Image = v7_6_
                    v7_7_ = v7_1_.IconColor3
                    if v7_7_ then
                        v7_6_ = v7_1_.IconColor3
                        if not v7_6_ then
                            local new = Color3.new
                            v7_7_ = 1
                            v7_8_ = 1
                            v7_9_ = 1
                            v7_6_ = new(v7_7_, v7_8_, v7_9_)
                        end
                    end
                    local new = Color3.new
                    v7_7_ = 1
                    v7_8_ = 1
                    v7_9_ = 1
                    v7_6_ = new(v7_7_, v7_8_, v7_9_)
                    v7_3_.ImageColor3 = v7_6_
                    v7_7_ = v7_1_.IconRotation
                    v7_6_ = v7_7_ or 0.000000
                    v7_3_.Rotation = v7_6_
                    v7_6_ = 1
                    v7_3_.BackgroundTransparency = v7_6_
                    local v7_5_ = v7_1_.IconGradient
                    if v7_5_ then
                        v7_4_ = v0_29_
                        v7_5_ = {}
                        v7_7_ = v7_1_.IconGradient
                        v7_6_ = v7_7_.Color
                        if not v7_6_ then
                            local new = ColorSequence.new
                            local new_0 = Color3.new
                            v7_8_ = 1
                            v7_9_ = 1
                            local v7_10_ = 1
                            v7_6_ = new(new_0(v7_8_, v7_9_, v7_10_))
                        end
                        v7_5_.Color = v7_6_
                        v7_7_ = v7_1_.IconGradient
                        v7_6_ = v7_7_.Rotation
                        v7_5_.Rotation = v7_6_
                        v7_7_ = v7_1_.IconGradient
                        v7_6_ = v7_7_.Transparency
                        if not v7_6_ then
                            local new = NumberSequence.new
                            v7_7_ = 0
                            v7_6_ = new(v7_7_)
                        end
                        v7_5_.Transparency = v7_6_
                        v7_7_ = v7_1_.IconGradient
                        v7_6_ = v7_7_.Offset
                        v7_5_.Offset = v7_6_
                        v7_4_ = v7_4_(v7_5_)
                        if not v7_4_ then
                            v7_4_ = nil
                        end
                    end
                    v7_4_ = nil
                    v7_6_ = v7_1_.IconStroke
                    if v7_6_ then
                        v7_5_ = v0_29_
                        v7_6_ = {}
                        v7_8_ = v7_1_.IconStroke
                        v7_7_ = v7_8_.Color
                        if not v7_7_ then
                            local new = Color3.new
                            v7_7_ = new()
                        end
                        v7_6_.Color3 = v7_7_
                        v7_9_ = v7_1_.IconStroke
                        v7_8_ = v7_9_.Thickness
                        v7_7_ = v7_8_ or 1.000000
                        v7_6_.Thickness = v7_7_
                        v7_5_ = v7_5_(v7_6_)
                        if not v7_5_ then
                            v7_5_ = nil
                        end
                    end
                    v7_5_ = nil
                    v7_3_[1] = v7_4_
                    v7_3_[2] = v7_5_
                    v7_2_ = v7_2_(v7_3_)
                end
            end
        end
        v7_3_ = v7_1_.IconText
        if v7_3_ then
            v7_2_ = v0_22_
            v7_3_ = table.create(2)
            local new = Vector2.new
            local v7_7_ = 0.500000
            local v7_8_ = 0.500000
            local v7_6_ = new(v7_7_, v7_8_)
            v7_3_.AnchorPoint = v7_6_
            local fromScale = UDim2.fromScale
            v7_7_ = 0.500000
            v7_8_ = 0.500000
            v7_6_ = fromScale(v7_7_, v7_8_)
            v7_3_.Position = v7_6_
            local fromScale = UDim2.fromScale
            v7_8_ = v7_1_.IconScale
            v7_7_ = v7_8_ or 1.000000
            local v7_9_ = v7_1_.IconScale
            v7_8_ = v7_9_ or 1.000000
            v7_6_ = fromScale(v7_7_, v7_8_)
            v7_3_.Size = v7_6_
            v7_6_ = v7_1_.IconText
            v7_3_.Text = v7_6_
            v7_6_ = v7_1_.IconColor3
            if not v7_6_ then
                local new = Color3.new
                v7_7_ = 1
                v7_8_ = 1
                v7_9_ = 1
                v7_6_ = new(v7_7_, v7_8_, v7_9_)
            end
            v7_3_.TextColor3 = v7_6_
            v7_7_ = v7_1_.IconRotation
            v7_6_ = v7_7_ or 0.000000
            v7_3_.Rotation = v7_6_
            v7_6_ = 1
            v7_3_.BackgroundTransparency = v7_6_
            local v7_5_ = v7_1_.IconGradient
            if v7_5_ then
                v7_4_ = v0_29_
                v7_5_ = {}
                v7_7_ = v7_1_.IconGradient
                v7_6_ = v7_7_.Color
                if not v7_6_ then
                    local new = ColorSequence.new
                    local new_0 = Color3.new
                    v7_8_ = 1
                    v7_9_ = 1
                    local v7_10_ = 1
                    v7_6_ = new(new_0(v7_8_, v7_9_, v7_10_))
                end
                v7_5_.Color = v7_6_
                v7_7_ = v7_1_.IconGradient
                v7_6_ = v7_7_.Rotation
                v7_5_.Rotation = v7_6_
                v7_7_ = v7_1_.IconGradient
                v7_6_ = v7_7_.Transparency
                if not v7_6_ then
                    local new = NumberSequence.new
                    v7_7_ = 0
                    v7_6_ = new(v7_7_)
                end
                v7_5_.Transparency = v7_6_
                v7_7_ = v7_1_.IconGradient
                v7_6_ = v7_7_.Offset
                v7_5_.Offset = v7_6_
                v7_4_ = v7_4_(v7_5_)
                if not v7_4_ then
                    v7_4_ = nil
                end
            end
            v7_4_ = nil
            v7_6_ = v7_1_.IconStroke
            if v7_6_ then
                v7_5_ = v0_29_
                v7_6_ = {}
                v7_8_ = v7_1_.IconStroke
                v7_7_ = v7_8_.Color
                if not v7_7_ then
                    local new = Color3.new
                    v7_7_ = new()
                end
                v7_6_.Color3 = v7_7_
                v7_9_ = v7_1_.IconStroke
                v7_8_ = v7_9_.Thickness
                v7_7_ = v7_8_ or 1.000000
                v7_6_.Thickness = v7_7_
                v7_5_ = v7_5_(v7_6_)
                if not v7_5_ then
                    v7_5_ = nil
                end
            end
            v7_5_ = nil
            v7_3_[1] = v7_4_
            v7_3_[2] = v7_5_
            v7_2_ = v7_2_(v7_3_)
        else
            v7_2_ = v0_25_
            v7_3_ = table.create(2)
            local new = Vector2.new
            local v7_7_ = 0.500000
            local v7_8_ = 0.500000
            local v7_6_ = new(v7_7_, v7_8_)
            v7_3_.AnchorPoint = v7_6_
            local fromScale = UDim2.fromScale
            v7_7_ = 0.500000
            v7_8_ = 0.500000
            v7_6_ = fromScale(v7_7_, v7_8_)
            v7_3_.Position = v7_6_
            local fromScale = UDim2.fromScale
            v7_8_ = v7_1_.IconScale
            v7_7_ = v7_8_ or 1.000000
            local v7_9_ = v7_1_.IconScale
            v7_8_ = v7_9_ or 1.000000
            v7_6_ = fromScale(v7_7_, v7_8_)
            v7_3_.Size = v7_6_
            v7_7_ = v7_1_.IconId
            if v7_7_ then
                v7_7_ = "rbxassetid://%*"
                v7_9_ = v7_1_.IconId
                v7_7_ = v7_7_:format(v7_9_)
                v7_6_ = v7_7_
                if not v7_6_ then
                    v7_6_ = "http://www.roblox.com/asset/?id=6022668911"
                end
            end
            v7_6_ = "http://www.roblox.com/asset/?id=6022668911"
            v7_3_.Image = v7_6_
            v7_7_ = v7_1_.IconColor3
            if v7_7_ then
                v7_6_ = v7_1_.IconColor3
                if not v7_6_ then
                    local new = Color3.new
                    v7_7_ = 1
                    v7_8_ = 1
                    v7_9_ = 1
                    v7_6_ = new(v7_7_, v7_8_, v7_9_)
                end
            end
            local new = Color3.new
            v7_7_ = 1
            v7_8_ = 1
            v7_9_ = 1
            v7_6_ = new(v7_7_, v7_8_, v7_9_)
            v7_3_.ImageColor3 = v7_6_
            v7_7_ = v7_1_.IconRotation
            v7_6_ = v7_7_ or 0.000000
            v7_3_.Rotation = v7_6_
            v7_6_ = 1
            v7_3_.BackgroundTransparency = v7_6_
            local v7_5_ = v7_1_.IconGradient
            if v7_5_ then
                v7_4_ = v0_29_
                v7_5_ = {}
                v7_7_ = v7_1_.IconGradient
                v7_6_ = v7_7_.Color
                if not v7_6_ then
                    local new = ColorSequence.new
                    local new_0 = Color3.new
                    v7_8_ = 1
                    v7_9_ = 1
                    local v7_10_ = 1
                    v7_6_ = new(new_0(v7_8_, v7_9_, v7_10_))
                end
                v7_5_.Color = v7_6_
                v7_7_ = v7_1_.IconGradient
                v7_6_ = v7_7_.Rotation
                v7_5_.Rotation = v7_6_
                v7_7_ = v7_1_.IconGradient
                v7_6_ = v7_7_.Transparency
                if not v7_6_ then
                    local new = NumberSequence.new
                    v7_7_ = 0
                    v7_6_ = new(v7_7_)
                end
                v7_5_.Transparency = v7_6_
                v7_7_ = v7_1_.IconGradient
                v7_6_ = v7_7_.Offset
                v7_5_.Offset = v7_6_
                v7_4_ = v7_4_(v7_5_)
                if not v7_4_ then
                    v7_4_ = nil
                end
            end
            v7_4_ = nil
            v7_6_ = v7_1_.IconStroke
            if v7_6_ then
                v7_5_ = v0_29_
                v7_6_ = {}
                v7_8_ = v7_1_.IconStroke
                v7_7_ = v7_8_.Color
                if not v7_7_ then
                    local new = Color3.new
                    v7_7_ = new()
                end
                v7_6_.Color3 = v7_7_
                v7_9_ = v7_1_.IconStroke
                v7_8_ = v7_9_.Thickness
                v7_7_ = v7_8_ or 1.000000
                v7_6_.Thickness = v7_7_
                v7_5_ = v7_5_(v7_6_)
                if not v7_5_ then
                    v7_5_ = nil
                end
            end
            v7_5_ = nil
            v7_3_[1] = v7_4_
            v7_3_[2] = v7_5_
            v7_2_ = v7_2_(v7_3_)
        end
        v7_4_ = v7_1_.IconBackground
        if v7_4_ then
            v7_4_ = v7_1_.IconBackground
            v7_3_ = v7_4_.Transparency
            if not v7_3_ then
                v7_3_ = 0.400000
            end
        end
        v7_3_ = 0.400000
        a1.BackgroundTransparency = v7_3_
        v7_4_ = v7_1_.IconBackground
        if v7_4_ then
            v7_4_ = v7_1_.IconBackground
            v7_3_ = v7_4_.Color3
            if not v7_3_ then
                local new = Color3.new
                v7_3_ = new()
            end
        end
        local new = Color3.new
        v7_3_ = new()
        a1.BackgroundColor3 = v7_3_
        v7_3_ = a1
        v7_3_.__buffData = v7_1_
        v7_3_ = v0_18_
        v7_4_ = a1
        local v7_5_ = v7_2_
        v7_3_(v7_4_, v7_5_)
    end
    v5_3_[v5_7_] = v5_8_
    v5_7_ = v0_16_
    v5_8_ = "MouseEnter"
    v5_7_ = v5_7_(v5_8_)
    v5_8_ = function()
        local v8_1_ = v0_8_
        local v8_0_ = v8_1_.PlaySFX
        v8_1_ = "MouseHover"
        local v8_2_ = "UISounds"
        v8_0_(v8_1_, v8_2_)
        v8_0_ = a1
        v0_39_ = v8_1_
        v8_0_ = v0_37_
        v8_2_ = a2
        v8_1_ = v8_2_.DisplayName
        v8_0_.Text = v8_1_
        v8_1_ = a1
        v8_0_ = v8_1_.__buffData
        v8_1_ = ""
        v8_2_ = {}
        local v8_3_ = 1
        v8_2_.Stack = v8_3_
        local v8_8_ = v8_0_.Luck
        local v8_7_ = v8_8_ or 0.000000
        local v8_6_ = v8_7_ * 1.000000
        local v8_5_ = v8_6_ * 100.000000
        local floor = math.floor
        local v8_4_ = floor(v8_5_)
        v8_3_ = v8_4_ / 100.000000
        v8_2_.Luck = v8_3_
        v8_8_ = v8_0_.Speed
        v8_7_ = v8_8_ or 0.000000
        v8_6_ = v8_7_ * 1.000000
        v8_5_ = v8_6_ * 100.000000
        local floor = math.floor
        v8_4_ = floor(v8_5_)
        v8_3_ = v8_4_ / 100.000000
        v8_2_.Speed = v8_3_
        v8_8_ = v8_0_.EffectPerBuff
        v8_7_ = v8_8_ or 0.000000
        v8_6_ = v8_7_ * 1.000000
        v8_5_ = v8_6_ * 100.000000
        local floor = math.floor
        v8_4_ = floor(v8_5_)
        v8_3_ = v8_4_ / 100.000000
        v8_2_.Effect = v8_3_
        v8_3_ = v8_0_.IsCustomBuff
        if v8_3_ then
            v8_1_ = v8_0_.0ormation
        else
            v8_3_ = v8_0_.0ormation
            if v8_3_ then
                v8_3_ = v8_1_
                v8_4_ = v8_0_.0ormation
                v8_5_ = "\n"
                v8_1_ = v8_3_ .. v8_4_
            end
            v8_3_ = v8_0_.Luck
            if v8_3_ then
                v8_4_ = v8_0_.Luck
                v8_5_ = 0
                if v8_5_ >= v8_4_ then
                    v8_3_ = false
                end
                v8_3_ = true
                v8_4_ = v8_1_
                v8_6_ = "<font color=\"rgb(84,252,124)\"><font color=\"rgb(%*)\">%*{Luck}</font>%% Luck</font>"
                if v8_3_ then
                    v8_8_ = "84,252,124"
                else
                    v8_8_ = "84,252,205"
                end
                if v8_3_ then
                    local v8_9_ = "+"
                else
                    local v8_9_ = "-"
                end
                v8_6_ = v8_6_:format(v8_8_, nil)
                v8_5_ = v8_6_
                v8_1_ = v8_4_
            end
            v8_3_ = v8_0_.Speed
            if v8_3_ then
                v8_4_ = v8_0_.Speed
                v8_5_ = 0
                if v8_5_ >= v8_4_ then
                    v8_3_ = false
                end
                v8_3_ = true
                v8_4_ = v8_1_
                v8_6_ = "%*<font color=\"rgb(84,252,205)\"><font color=\"rgb(%*)\">%*{Speed}</font>%% Roll Speed</font>"
                local v8_9_ = v8_0_.Luck
                if v8_9_ then
                    v8_8_ = ", "
                else
                    v8_8_ = ""
                end
                if v8_3_ then
                    v8_9_ = "84,252,205"
                else
                    v8_9_ = "84,252,205"
                end
                if v8_3_ then
                    local v8_10_ = "+"
                else
                    local v8_10_ = "-"
                end
                v8_6_ = v8_6_:format(v8_8_, v8_9_, nil)
                v8_5_ = v8_6_
                v8_1_ = v8_4_
            end
        end
        v8_3_ = v0_36_
        v8_5_ = v0_8_
        v8_4_ = v8_5_.Format
        v8_5_ = v8_1_
        v8_6_ = v8_2_
        v8_4_ = v8_4_(v8_5_, v8_6_)
        v8_3_.Text = v8_4_
        v8_3_ = v0_35_
        v8_4_ = true
        v8_3_.Visible = v8_4_
    end
    v5_3_[v5_7_] = v5_8_
    v5_7_ = v0_16_
    v5_8_ = "MouseLeave"
    v5_7_ = v5_7_(v5_8_)
    v5_8_ = function()
        local wait = task.wait
        wait()
        local v9_0_ = v0_39_
        local v9_1_ = a1
        if v9_0_ == v9_1_ then
            v9_0_ = nil
            v0_39_ = v9_0_
            v9_0_ = v0_35_
            v9_1_ = false
            v9_0_.Visible = v9_1_
        end
    end
    v5_3_[v5_7_] = v5_8_
    return v5_2_(v5_3_)
end
v0_34_.Render = v0_42_
v0_42_ = v0_18_
v0_43_ = v0_6_
v0_44_ = v0_35_
v0_42_(v0_43_, v0_44_)
v0_42_ = v0_2_.RenderStepped
v0_44_ = v0_41_
v0_42_ = v0_42_:Connect(v0_44_)
v0_40_ = v0_42_
return v0_34_
