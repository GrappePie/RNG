-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "Debris"
v0_0_ = v0_0_:GetService(v0_2_)
local v0_1_ = game
local v0_3_ = "Players"
v0_1_ = v0_1_:GetService(v0_3_)
v0_2_ = game
local v0_4_ = "SoundService"
v0_2_ = v0_2_:GetService(v0_4_)
v0_3_ = game
local v0_5_ = "TweenService"
v0_3_ = v0_3_:GetService(v0_5_)
v0_4_ = game
local v0_6_ = "ReplicatedStorage"
v0_4_ = v0_4_:GetService(v0_6_)
local v0_7_ = "Modules"
v0_5_ = v0_4_:WaitForChild(v0_7_)
local v0_8_ = "Assets"
v0_6_ = v0_4_:WaitForChild(v0_8_)
local v0_9_ = "Sounds"
v0_7_ = v0_6_:WaitForChild(v0_9_)
local v0_10_ = "UI"
v0_8_ = v0_5_:WaitForChild(v0_10_)
local v0_11_ = "Components"
v0_9_ = v0_8_:WaitForChild(v0_11_)
v0_10_ = require
local v0_13_ = "Quad"
v0_10_ = v0_10_(v0_8_:WaitForChild(v0_13_))
local new = Tween0o.new
local v0_12_ = 0.500000
local Quart = Enum.EasingStyle.Quart
v0_11_ = new(v0_12_, Quart)
local new = Tween0o.new
v0_13_ = 1
local Quart = Enum.EasingStyle.Quart
local InOut = Enum.EasingDirection.InOut
local v0_16_ = 0
local v0_17_ = false
local v0_18_ = 0.100000
v0_12_ = new(v0_13_, Quart, InOut, v0_16_, v0_17_, v0_18_)
local new = Tween0o.new
local v0_14_ = 0
v0_13_ = new(v0_14_)
local new = Tween0o.new
local v0_15_ = 1
local Exponential = Enum.EasingStyle.Exponential
local In = Enum.EasingDirection.In
v0_14_ = new(v0_15_, Exponential, In)
v0_15_ = {}
local fromRGB = Color3.fromRGB
v0_17_ = 255
v0_18_ = 97
local v0_19_ = 97
v0_16_ = fromRGB(v0_17_, v0_18_, v0_19_)
v0_15_.Warn = v0_16_
local fromRGB = Color3.fromRGB
v0_17_ = 111
v0_18_ = 181
v0_19_ = 255
v0_16_ = fromRGB(v0_17_, v0_18_, v0_19_)
v0_15_.Badge = v0_16_
local new = Color3.new
v0_17_ = 1
v0_18_ = 1
v0_19_ = 1
v0_16_ = new(v0_17_, v0_18_, v0_19_)
v0_15_.Normal = v0_16_
v0_16_ = v0_10_.Lang
v0_17_ = v0_10_.Round
v0_18_ = v0_10_.Class
v0_19_ = v0_10_.Mount
local v0_20_ = v0_10_.Store
local v0_21_ = v0_10_.Event
local v0_22_ = v0_10_.Tween
local v0_23_ = v0_10_.Signal
local v0_24_ = v0_18_
local v0_25_ = "TextLabel"
v0_24_ = v0_24_(v0_25_)
v0_25_ = v0_18_
local v0_26_ = "Frame"
v0_25_ = v0_25_(v0_26_)
v0_26_ = v0_18_
local v0_27_ = "UIGradient"
v0_26_ = v0_26_(v0_27_)
v0_27_ = v0_18_
local v0_28_ = "TextButton"
v0_27_ = v0_27_(v0_28_)
v0_28_ = v0_18_
local v0_29_ = "ImageLabel"
v0_28_ = v0_28_(v0_29_)
v0_29_ = v0_18_
local v0_30_ = "CanvasGroup"
v0_29_ = v0_29_(v0_30_)
v0_30_ = v0_18_
local v0_31_ = "UIStroke"
v0_30_ = v0_30_(v0_31_)
v0_31_ = v0_18_
local v0_32_ = "UITextSizeConstraint"
v0_31_ = v0_31_(v0_32_)
v0_32_ = v0_18_
local v0_35_ = "Corner"
v0_32_ = v0_32_(v0_9_:WaitForChild(v0_35_))
local v0_33_ = v0_18_
local v0_36_ = "Shadow"
v0_33_ = v0_33_(v0_9_:WaitForChild(v0_36_))
local v0_34_ = v0_18_.Extend
v0_34_ = v0_34_()
local new = Color3.new
v0_36_ = 1
local v0_37_ = 1
local v0_38_ = 1
v0_35_ = new(v0_36_, v0_37_, v0_38_)
v0_24_.TextColor3 = v0_35_
v0_35_ = v0_10_.FontBold
v0_24_.FontFace = v0_35_
v0_35_ = 0
v0_24_.BorderSizePixel = v0_35_
local new = Color3.new
v0_35_ = new()
v0_24_.BackgroundColor3 = v0_35_
local new = Color3.new
v0_35_ = new()
v0_25_.BackgroundColor3 = v0_35_
v0_35_ = 0
v0_25_.BorderSizePixel = v0_35_
local new = Color3.new
v0_36_ = 1
v0_37_ = 1
v0_38_ = 1
v0_35_ = new(v0_36_, v0_37_, v0_38_)
v0_27_.TextColor3 = v0_35_
v0_35_ = v0_10_.FontBold
v0_27_.FontFace = v0_35_
v0_35_ = 0
v0_27_.BorderSizePixel = v0_35_
local new = Color3.new
v0_35_ = new()
v0_27_.BackgroundColor3 = v0_35_
local new = Color3.new
v0_35_ = new()
v0_28_.BackgroundColor3 = v0_35_
v0_35_ = 0
v0_28_.BorderSizePixel = v0_35_
local new = Color3.new
v0_35_ = new()
v0_29_.BackgroundColor3 = v0_35_
v0_35_ = 0
v0_29_.BorderSizePixel = v0_35_
local new = Color3.new
v0_36_ = 1
v0_37_ = 1
v0_38_ = 1
v0_35_ = new(v0_36_, v0_37_, v0_38_)
v0_30_.Color = v0_35_
local Border = Enum.ApplyStrokeMode.Border
v0_30_.ApplyStrokeMode = Border
v0_35_ = 1.500000
v0_30_.Thickness = v0_35_
v0_35_ = 0.500000
v0_30_.Transparency = v0_35_
v0_35_ = function(a1, a2)
    local v1_2_ = a2 or "UISounds"
    local v1_3_ = v0_7_
    local v1_5_ = a1
    v1_3_ = v1_3_:WaitForChild(v1_5_)
    v1_3_ = v1_3_:Clone()
    local v1_6_ = "Volume"
    local v1_4_ = v1_3_:GetAttribute(v1_6_)
    if not v1_4_ then
        v1_6_ = "Volume"
        local v1_7_ = v1_3_.Volume
        v1_3_:SetAttribute(v1_6_, v1_7_)
    end
    v1_4_ = 0
    v1_3_.Volume = v1_4_
    v1_6_ = v1_2_
    v1_3_:AddTag(v1_6_)
    local random = math.random
    v1_4_ = random()
    v1_3_.Name = v1_4_
    v1_4_ = v0_2_
    v1_3_.Parent = v1_4_
    v1_3_:Play()
    v1_4_ = v1_3_.Ended
    v1_6_ = function()
        local v2_0_ = v1_3_
        v2_0_:Destroy()
        v2_0_ = nil
        v1_3_ = v2_0_
    end
    v1_4_:Once(v1_6_)
end
v0_36_ = function(a1, a2)
    local v3_3_ = v0_15_
    local v3_2_ = v3_3_[a2]
    return v3_2_
end
v0_37_ = function(a1, a2)
    local v4_4_ = "Title"
    local v4_5_ = "Ep1k Notification!"
    a2:Default(v4_4_, v4_5_)
    v4_4_ = "Context"
    v4_5_ = "Hello testers there"
    a2:Default(v4_4_, v4_5_)
    v4_4_ = "LifeTime"
    v4_5_ = 3
    a2:Default(v4_4_, v4_5_)
    v4_4_ = "Type"
    v4_5_ = "Normal"
    a2:Default(v4_4_, v4_5_)
    v4_4_ = "Image"
    v4_5_ = 0
    a2:Default(v4_4_, v4_5_)
    v4_4_ = "ImageColor"
    local new = Color3.new
    local v4_6_ = 1
    local v4_7_ = 1
    local v4_8_ = 1
    a2:Default(new(v4_6_, v4_7_, v4_8_))
    v4_4_ = "UseCustomSound"
    v4_5_ = false
    a2:Default(v4_4_, v4_5_)
end
v0_34_.Init = v0_37_
v0_37_ = function(a1, a2)
    local v5_2_ = v0_25_
    local v5_3_ = table.create(2)
    local v5_6_ = 1
    v5_3_.BackgroundTransparency = v5_6_
    local fromScale = UDim2.fromScale
    local v5_7_ = 0.500000
    local v5_8_ = 0.500000
    v5_6_ = fromScale(v5_7_, v5_8_)
    v5_3_.Position = v5_6_
    local fromScale = UDim2.fromScale
    v5_7_ = 1
    v5_8_ = 0
    v5_6_ = fromScale(v5_7_, v5_8_)
    v5_3_.Size = v5_6_
    local v5_4_ = v0_25_
    local v5_5_ = table.create(10)
    local new = Vector2.new
    local v5_17_ = 0
    local v5_18_ = 0.500000
    local v5_16_ = new(v5_17_, v5_18_)
    v5_5_.AnchorPoint = v5_16_
    v5_16_ = 0.300000
    v5_5_.BackgroundTransparency = v5_16_
    local fromScale = UDim2.fromScale
    v5_17_ = 1
    v5_18_ = 0.204000
    v5_16_ = fromScale(v5_17_, v5_18_)
    v5_5_.Size = v5_16_
    local new = UDim2.new
    v5_17_ = 1
    v5_18_ = 5
    local v5_19_ = 0
    local v5_20_ = 0
    v5_16_ = new(v5_17_, v5_18_, v5_19_, v5_20_)
    v5_5_.Position = v5_16_
    local fromRGB = Color3.fromRGB
    v5_17_ = 0
    v5_18_ = 0
    v5_19_ = 0
    v5_16_ = fromRGB(v5_17_, v5_18_, v5_19_)
    v5_5_.BackgroundColor3 = v5_16_
    v5_6_ = v0_25_
    v5_7_ = table.create(1)
    local v5_9_ = 0.500000
    v5_7_.BackgroundTransparency = v5_9_
    local fromScale = UDim2.fromScale
    local v5_10_ = 0
    local v5_11_ = 1
    v5_9_ = fromScale(v5_10_, v5_11_)
    v5_7_.Size = v5_9_
    local new = Color3.new
    v5_9_ = new()
    v5_7_.BackgroundColor3 = v5_9_
    v5_8_ = a1
    v5_9_ = "_Lifetime"
    -- WARNING: SETLIST_C0, output may be wrong!
    v5_7_ = {v5_8_, v5_8_(v5_9_)}
    v5_6_ = v5_6_(v5_7_)
    v5_7_ = v0_27_
    v5_8_ = {}
    v5_9_ = 1
    v5_8_.BackgroundTransparency = v5_9_
    v5_9_ = 1
    v5_8_.TextTransparency = v5_9_
    v5_9_ = ""
    v5_8_.Text = v5_9_
    local fromScale = UDim2.fromScale
    v5_10_ = 1
    v5_11_ = 1
    v5_9_ = fromScale(v5_10_, v5_11_)
    v5_8_.Size = v5_9_
    v5_9_ = 3
    v5_8_.ZIndex = v5_9_
    v5_9_ = v0_21_
    v5_10_ = "MouseButton1Down"
    v5_9_ = v5_9_(v5_10_)
    v5_10_ = function(a1)
        local v6_1_ = false
        a1.Visible = v6_1_
        v6_1_ = v0_3_
        local v6_4_ = a1
        local v6_3_ = v6_4_._Lifetime
        v6_4_ = v0_13_
        local v6_5_ = {}
        local fromScale = UDim2.fromScale
        local v6_7_ = 1
        local v6_8_ = 1
        local v6_6_ = fromScale(v6_7_, v6_8_)
        v6_5_.Size = v6_6_
        v6_1_ = v6_1_:Create(v6_3_, v6_4_, v6_5_)
        v6_1_:Play()
        v6_1_ = a1
        v6_1_:Remove()
    end
    v5_8_[v5_9_] = v5_10_
    v5_7_ = v5_7_(v5_8_)
    v5_8_ = v0_25_
    v5_9_ = table.create(1)
    local new = Vector2.new
    local v5_12_ = 0.500000
    local v5_13_ = 0.500000
    v5_11_ = new(v5_12_, v5_13_)
    v5_9_.AnchorPoint = v5_11_
    v5_11_ = a2
    v5_12_ = "Image"
    v5_11_ = v5_11_(v5_12_)
    v5_13_ = function(a1, a2)
        local fromScale = UDim2.fromScale
        local v7_4_ = 0
        if v7_4_ < a2 then
            local v7_3_ = 0.600000
        else
            local v7_3_ = 0.500000
        end
        v7_4_ = 0.350000
        local v7_2_ = fromScale(nil, v7_4_)
        return v7_2_
    end
    v5_11_ = v5_11_:With(v5_13_)
    v5_9_.Position = v5_11_
    v5_11_ = a2
    v5_12_ = "Image"
    v5_11_ = v5_11_(v5_12_)
    v5_13_ = function(a1, a2)
        local new = UDim2.new
        local v8_4_ = 0
        if v8_4_ < a2 then
            local v8_3_ = 0.650000
        else
            local v8_3_ = 0.900000
        end
        v8_4_ = 0
        local v8_5_ = 0
        local v8_6_ = 1
        local v8_2_ = new(nil, v8_4_, v8_5_, v8_6_)
        return v8_2_
    end
    v5_11_ = v5_11_:With(v5_13_)
    v5_9_.Size = v5_11_
    v5_11_ = 2
    v5_9_.ZIndex = v5_11_
    v5_11_ = a2
    v5_12_ = "Type"
    v5_11_ = v5_11_(v5_12_)
    v5_13_ = v0_36_
    v5_11_ = v5_11_:With(v5_13_)
    v5_9_.BackgroundColor3 = v5_11_
    v5_10_ = v0_26_
    v5_11_ = {}
    local new = NumberSequence.new
    v5_13_ = table.create(3)
    local new_0 = NumberSequenceKeypoint.new
    local v5_15_ = 0
    v5_16_ = 1
    local v5_14_ = new_0(v5_15_, v5_16_)
    local new_0 = NumberSequenceKeypoint.new
    v5_16_ = 0.500000
    v5_17_ = 0
    v5_15_ = new_0(v5_16_, v5_17_)
    local new_0 = NumberSequenceKeypoint.new
    v5_17_ = 1
    v5_18_ = 1
    -- WARNING: SETLIST_C0, output may be wrong!
    v5_13_ = {v5_14_, new_0(v5_17_, v5_18_)}
    v5_12_ = new(v5_13_)
    v5_11_.Transparency = v5_12_
    -- WARNING: SETLIST_C0, output may be wrong!
    v5_9_ = {v5_10_, v5_10_(v5_11_)}
    v5_8_ = v5_8_(v5_9_)
    v5_9_ = v0_24_
    v5_10_ = {}
    local new = Vector2.new
    v5_12_ = 0.500000
    v5_13_ = 0.500000
    v5_11_ = new(v5_12_, v5_13_)
    v5_10_.AnchorPoint = v5_11_
    v5_11_ = 1
    v5_10_.BackgroundTransparency = v5_11_
    v5_11_ = a2
    v5_12_ = "Image"
    v5_11_ = v5_11_(v5_12_)
    v5_13_ = function(a1, a2)
        local fromScale = UDim2.fromScale
        local v9_4_ = 0
        if v9_4_ < a2 then
            local v9_3_ = 0.620000
        else
            local v9_3_ = 0.500000
        end
        v9_4_ = 0.200000
        local v9_2_ = fromScale(nil, v9_4_)
        return v9_2_
    end
    v5_11_ = v5_11_:With(v5_13_)
    v5_10_.Position = v5_11_
    v5_11_ = a2
    v5_12_ = "Image"
    v5_11_ = v5_11_(v5_12_)
    v5_13_ = function(a1, a2)
        local fromScale = UDim2.fromScale
        local v10_4_ = 0
        if v10_4_ < a2 then
            local v10_3_ = 0.650000
        else
            local v10_3_ = 0.900000
        end
        v10_4_ = 0.300000
        local v10_2_ = fromScale(nil, v10_4_)
        return v10_2_
    end
    v5_11_ = v5_11_:With(v5_13_)
    v5_10_.Size = v5_11_
    v5_11_ = a2
    v5_12_ = "Title"
    v5_11_ = v5_11_(v5_12_)
    v5_10_.Text = v5_11_
    v5_11_ = a2
    v5_12_ = "Type"
    v5_11_ = v5_11_(v5_12_)
    v5_13_ = v0_36_
    v5_11_ = v5_11_:With(v5_13_)
    v5_10_.TextColor3 = v5_11_
    v5_11_ = 2
    v5_10_.ZIndex = v5_11_
    v5_11_ = true
    v5_10_.TextScaled = v5_11_
    v5_9_ = v5_9_(v5_10_)
    v5_10_ = v0_24_
    v5_11_ = table.create(1)
    local new = Vector2.new
    v5_14_ = 0.500000
    v5_15_ = 0.500000
    v5_13_ = new(v5_14_, v5_15_)
    v5_11_.AnchorPoint = v5_13_
    v5_13_ = 1
    v5_11_.BackgroundTransparency = v5_13_
    v5_13_ = a2
    v5_14_ = "Image"
    v5_13_ = v5_13_(v5_14_)
    v5_15_ = function(a1, a2)
        local fromScale = UDim2.fromScale
        local v11_4_ = 0
        if v11_4_ < a2 then
            local v11_3_ = 0.620000
        else
            local v11_3_ = 0.500000
        end
        v11_4_ = 0.700000
        local v11_2_ = fromScale(nil, v11_4_)
        return v11_2_
    end
    v5_13_ = v5_13_:With(v5_15_)
    v5_11_.Position = v5_13_
    v5_13_ = a2
    v5_14_ = "Image"
    v5_13_ = v5_13_(v5_14_)
    v5_15_ = function(a1, a2)
        local fromScale = UDim2.fromScale
        local v12_4_ = 0
        if v12_4_ < a2 then
            local v12_3_ = 0.650000
        else
            local v12_3_ = 0.900000
        end
        v12_4_ = 0.500000
        local v12_2_ = fromScale(nil, v12_4_)
        return v12_2_
    end
    v5_13_ = v5_13_:With(v5_15_)
    v5_11_.Size = v5_13_
    v5_13_ = a2
    v5_14_ = "Context"
    v5_13_ = v5_13_(v5_14_)
    v5_11_.Text = v5_13_
    v5_13_ = a2
    v5_14_ = "Type"
    v5_13_ = v5_13_(v5_14_)
    v5_15_ = v0_36_
    v5_13_ = v5_13_:With(v5_15_)
    v5_11_.TextColor3 = v5_13_
    v5_13_ = 2
    v5_11_.ZIndex = v5_13_
    v5_13_ = true
    v5_11_.TextScaled = v5_13_
    local Left = Enum.TextXAlignment.Left
    v5_11_.TextXAlignment = Left
    local Top = Enum.TextYAlignment.Top
    v5_11_.TextYAlignment = Top
    local RobotoMono = Enum.Font.RobotoMono
    v5_11_.Font = RobotoMono
    v5_12_ = v0_31_
    v5_13_ = {}
    v5_14_ = 14
    v5_13_.MaxTextSize = v5_14_
    v5_14_ = 1
    v5_13_.MinTextSize = v5_14_
    -- WARNING: SETLIST_C0, output may be wrong!
    v5_11_ = {v5_12_, v5_12_(v5_13_)}
    v5_10_ = v5_10_(v5_11_)
    v5_11_ = v0_28_
    v5_12_ = table.create(3)
    local new = Vector2.new
    v5_17_ = 0
    v5_18_ = 0.500000
    v5_16_ = new(v5_17_, v5_18_)
    v5_12_.AnchorPoint = v5_16_
    v5_16_ = 0.800000
    v5_12_.BackgroundTransparency = v5_16_
    local fromScale = UDim2.fromScale
    v5_17_ = 0.030000
    v5_18_ = 0.500000
    v5_16_ = fromScale(v5_17_, v5_18_)
    v5_12_.Position = v5_16_
    local fromScale = UDim2.fromScale
    v5_17_ = 0.800000
    v5_18_ = 0.800000
    v5_16_ = fromScale(v5_17_, v5_18_)
    v5_12_.Size = v5_16_
    local RelativeYY = Enum.SizeConstraint.RelativeYY
    v5_12_.SizeConstraint = RelativeYY
    v5_16_ = 2
    v5_12_.ZIndex = v5_16_
    v5_16_ = a2
    v5_17_ = "Image"
    v5_16_ = v5_16_(v5_17_)
    v5_18_ = function(a1, a2)
        local v13_3_ = 0
        if v13_3_ >= a2 then
            local v13_2_ = false
        end
        local v13_2_ = true
        return v13_2_
    end
    v5_16_ = v5_16_:With(v5_18_)
    v5_12_.Visible = v5_16_
    v5_16_ = a2
    v5_17_ = "Image"
    v5_16_ = v5_16_(v5_17_)
    v5_18_ = function(a1, a2)
        local v14_3_ = 0
        if v14_3_ < a2 then
            v14_3_ = "rbxassetid://%*"
            local v14_5_ = a2
            v14_3_ = v14_3_:format(v14_5_)
            local v14_2_ = v14_3_
            if not v14_2_ then
                v14_2_ = ""
            end
        end
        local v14_2_ = ""
        return v14_2_
    end
    v5_16_ = v5_16_:With(v5_18_)
    v5_12_.Image = v5_16_
    v5_16_ = a2
    v5_17_ = "ImageColor"
    v5_16_ = v5_16_(v5_17_)
    v5_12_.ImageColor3 = v5_16_
    v5_13_ = v0_32_
    v5_14_ = {}
    v5_15_ = 0.100000
    v5_14_.Size = v5_15_
    v5_15_ = a2
    v5_16_ = "Type"
    v5_15_ = v5_15_(v5_16_)
    v5_17_ = v0_36_
    v5_15_ = v5_15_:With(v5_17_)
    v5_14_.Color3 = v5_15_
    v5_13_ = v5_13_(v5_14_)
    v5_14_ = v0_33_
    v5_15_ = {}
    v5_14_ = v5_14_(v5_15_)
    v5_15_ = v0_30_
    v5_16_ = {}
    v5_17_ = a2
    v5_18_ = "Type"
    v5_17_ = v5_17_(v5_18_)
    v5_19_ = v0_36_
    v5_17_ = v5_17_:With(v5_19_)
    v5_16_.Color = v5_17_
    -- WARNING: SETLIST_C0, output may be wrong!
    v5_12_ = {v5_13_, v5_15_(v5_16_)}
    v5_11_ = v5_11_(v5_12_)
    v5_12_ = v0_33_
    v5_13_ = {}
    v5_12_ = v5_12_(v5_13_)
    v5_13_ = v0_30_
    v5_14_ = {}
    v5_15_ = a2
    v5_16_ = "Type"
    v5_15_ = v5_15_(v5_16_)
    v5_17_ = v0_36_
    v5_15_ = v5_15_:With(v5_17_)
    v5_14_.Color = v5_15_
    v5_13_ = v5_13_(v5_14_)
    v5_14_ = v0_32_
    v5_15_ = {}
    v5_16_ = 0.100000
    v5_15_.Size = v5_16_
    v5_16_ = a2
    v5_17_ = "Type"
    v5_16_ = v5_16_(v5_17_)
    v5_18_ = v0_36_
    v5_16_ = v5_16_:With(v5_18_)
    v5_15_.Color3 = v5_16_
    v5_14_ = v5_14_(v5_15_)
    v5_15_ = a1
    v5_16_ = "_Main"
    -- WARNING: SETLIST_C0, output may be wrong!
    v5_5_ = {v5_6_, v5_15_(v5_16_)}
    v5_4_ = v5_4_(v5_5_)
    v5_5_ = a1
    v5_6_ = "_This"
    -- WARNING: SETLIST_C0, output may be wrong!
    v5_3_ = {v5_4_, v5_5_(v5_6_)}
    return v5_2_(v5_3_)
end
v0_34_.Render = v0_37_
v0_37_ = function(a1)
    local v15_1_ = a1._This
    if v15_1_ then
        local v15_2_ = v15_1_.Parent
        if v15_2_ then
            local v15_4_ = "Disp"
            v15_2_ = v15_1_:GetAttribute(v15_4_)
            if v15_2_ then
                return
            end
        end
    end
    local v15_4_ = "Disp"
    local v15_5_ = true
    v15_1_:SetAttribute(v15_4_, v15_5_)
    local delay = task.delay
    local v15_3_ = 1
    v15_4_ = function()
        local v16_0_ = a1
        v16_0_:Destroy()
    end
    delay(v15_3_, v15_4_)
    local v15_2_ = a1._Main
    v15_3_ = a1._Lifetime
    local new = Color3.new
    v15_5_ = 1
    local v15_6_ = 1
    local v15_7_ = 1
    v15_4_ = new(v15_5_, v15_6_, v15_7_)
    v15_3_.BackgroundColor3 = v15_4_
    v15_3_ = a1._Lifetime
    v15_4_ = 0
    v15_3_.BackgroundTransparency = v15_4_
    v15_3_ = v0_3_
    v15_5_ = a1._Lifetime
    v15_6_ = v0_11_
    v15_7_ = {}
    local v15_8_ = 1
    v15_7_.BackgroundTransparency = v15_8_
    v15_3_ = v15_3_:Create(v15_5_, v15_6_, v15_7_)
    v15_3_:Play()
    v15_3_ = v0_3_
    v15_5_ = v15_2_
    v15_6_ = v0_14_
    v15_7_ = {}
    local new = UDim2.new
    local v15_9_ = 1
    local v15_10_ = 5
    local v15_11_ = 0
    local v15_12_ = 0
    v15_8_ = new(v15_9_, v15_10_, v15_11_, v15_12_)
    v15_7_.Position = v15_8_
    v15_3_ = v15_3_:Create(v15_5_, v15_6_, v15_7_)
    v15_3_:Play()
end
v0_34_.Remove = v0_37_
v0_37_ = function(a1, a2)
    local v17_2_ = a1._Main
    local v17_5_ = a2.AbsoluteSize
    local v17_4_ = v17_5_.Y
    local v17_3_ = v17_4_ * 0.200000
    v17_4_ = a1._This
    v17_4_.Parent = a2
    local new = UDim2.new
    v17_5_ = 1
    local v17_6_ = 0
    local v17_7_ = 0
    local v17_8_ = v17_3_
    v17_4_ = new(v17_5_, v17_6_, v17_7_, v17_8_)
    v17_2_.Size = v17_4_
    v17_4_ = v0_3_
    v17_6_ = v17_2_
    v17_7_ = v0_11_
    v17_8_ = {}
    local fromScale = UDim2.fromScale
    local v17_10_ = 0
    local v17_11_ = 0
    local v17_9_ = fromScale(v17_10_, v17_11_)
    v17_8_.Position = v17_9_
    v17_4_ = v17_4_:Create(v17_6_, v17_7_, v17_8_)
    v17_4_:Play()
    v17_4_ = v0_3_
    v17_6_ = a1._This
    v17_7_ = v0_12_
    v17_8_ = {}
    local fromScale = UDim2.fromScale
    v17_10_ = 1
    v17_11_ = 0.200000
    v17_9_ = fromScale(v17_10_, v17_11_)
    v17_8_.Size = v17_9_
    v17_4_ = v17_4_:Create(v17_6_, v17_7_, v17_8_)
    v17_4_:Play()
    local new = Tween0o.new
    v17_5_ = a1.LifeTime
    local Quad = Enum.EasingStyle.Quad
    local InOut = Enum.EasingDirection.InOut
    v17_4_ = new(v17_5_, Quad, InOut)
    v17_5_ = v0_3_
    v17_7_ = a1._Lifetime
    v17_8_ = v17_4_
    v17_9_ = {}
    local fromScale = UDim2.fromScale
    v17_11_ = 1
    local v17_12_ = 1
    v17_10_ = fromScale(v17_11_, v17_12_)
    v17_9_.Size = v17_10_
    v17_5_ = v17_5_:Create(v17_7_, v17_8_, v17_9_)
    v17_5_:Play()
    v17_5_ = a1.UseCustomSound
    if not v17_5_ then
        v17_5_ = v0_35_
        v17_6_ = a1.Type
        v17_7_ = "UISounds"
        v17_5_(v17_6_, v17_7_)
    end
    local delay = task.delay
    v17_6_ = a1.LifeTime
    v17_8_ = v0_34_
    v17_7_ = v17_8_.Remove
    v17_8_ = a1
    delay(v17_6_, v17_7_, v17_8_)
end
v0_34_.Notify = v0_37_
return v0_34_
