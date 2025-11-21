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
v0_10_ = require
v0_11_ = v0_8_
v0_10_ = v0_10_(v0_11_)
v0_11_ = v0_10_.Class
local v0_12_ = v0_10_.Event
local v0_13_ = v0_10_.Tween
local v0_14_ = v0_10_.Mount
local v0_15_ = v0_10_.Store
local v0_16_ = v0_10_.Style
local v0_17_ = v0_11_
local v0_18_ = "Frame"
v0_17_ = v0_17_(v0_18_)
v0_18_ = v0_11_
local v0_19_ = "TextLabel"
v0_18_ = v0_18_(v0_19_)
v0_19_ = v0_11_
local v0_20_ = "TextButton"
v0_19_ = v0_19_(v0_20_)
v0_20_ = v0_11_
local v0_21_ = "TextBox"
v0_20_ = v0_20_(v0_21_)
v0_21_ = v0_11_
local v0_22_ = "ImageLabel"
v0_21_ = v0_21_(v0_22_)
v0_22_ = v0_11_
local v0_23_ = "ImageButton"
v0_22_ = v0_22_(v0_23_)
v0_23_ = v0_11_
local v0_24_ = "UIAspectRatioConstraint"
v0_23_ = v0_23_(v0_24_)
v0_24_ = v0_11_
local v0_25_ = "UIListLayout"
v0_24_ = v0_24_(v0_25_)
v0_25_ = v0_11_
local v0_26_ = "UIStroke"
v0_25_ = v0_25_(v0_26_)
v0_26_ = v0_11_
local v0_29_ = "Corner"
v0_26_ = v0_26_(v0_9_:WaitForChild(v0_29_))
local v0_27_ = v0_11_
local v0_30_ = "Shadow"
v0_27_ = v0_27_(v0_9_:WaitForChild(v0_30_))
local v0_28_ = v0_11_.Extend
v0_28_ = v0_28_()
v0_29_ = function(a1, ...)
    local v1_2_ = {}
    -- WARNING: SETLIST_C0, output may be wrong!
    v1_2_ = {nil, ...}
    local v1_1_ = v1_2_[a1]
    return v1_1_
end
v0_30_ = function(a1, a2)
    local v2_4_ = "Content"
    local v2_5_ = "Choice"
    a2:Default(v2_4_, v2_5_)
    v2_4_ = "Color"
    local fromRGB = Color3.fromRGB
    local v2_6_ = 255
    local v2_7_ = 255
    local v2_8_ = 255
    a2:Default(fromRGB(v2_6_, v2_7_, v2_8_))
    v2_4_ = "LayoutOrder"
    v2_5_ = 0
    a2:Default(v2_4_, v2_5_)
    v2_4_ = "NumberOfChoices"
    v2_5_ = 1
    a2:Default(v2_4_, v2_5_)
    v2_4_ = "Result"
    v2_5_ = "_finished"
    a2:Default(v2_4_, v2_5_)
end
v0_28_.Init = v0_30_
v0_30_ = function(a1, a2)
    local v3_2_ = v0_19_
    local v3_3_ = "Choice\n_"
    v3_2_ = v3_2_(v3_3_)
    v3_3_ = table.create(3)
    local v3_7_ = a2
    local v3_8_ = "NumberOfChoices"
    v3_7_ = v3_7_(v3_8_)
    local v3_9_ = function(a1, a2)
        local fromScale = UDim2.fromScale
        local v4_4_ = 1
        if v4_4_ < a2 then
            nil /= "fromScale"
            if not v4_3_ then
                local v4_3_ = 1
            end
        end
        local v4_3_ = 1
        v4_4_ = 1
        return fromScale(v4_3_, v4_4_)
    end
    v3_7_ = v3_7_:With(v3_9_)
    v3_3_.Size = v3_7_
    v3_7_ = a2
    v3_8_ = "Color"
    v3_7_ = v3_7_(v3_8_)
    v3_9_ = function(a1, a2)
        local v5_3_ = v0_29_
        local v5_4_ = 2
        v5_3_ = v5_3_(a2:ToHSV())
        if v5_3_ ~= 0.000000 then
            local new = Color3.new
            v5_4_ = new()
            local v5_5_ = 0.900000
            local v5_2_ = a2:Lerp(v5_4_, v5_5_)
            if not v5_2_ then
                local new = Color3.new
                v5_2_ = new()
            end
        end
        local new = Color3.new
        local v5_2_ = new()
        return v5_2_
    end
    v3_7_ = v3_7_:With(v3_9_)
    v3_3_.BackgroundColor3 = v3_7_
    v3_7_ = 0.400000
    v3_3_.BackgroundTransparency = v3_7_
    v3_7_ = a2
    v3_8_ = "Content"
    v3_7_ = v3_7_(v3_8_)
    v3_3_.Text = v3_7_
    v3_7_ = a2
    v3_8_ = "Color"
    v3_7_ = v3_7_(v3_8_)
    v3_3_.TextColor3 = v3_7_
    v3_7_ = true
    v3_3_.TextScaled = v3_7_
    local new = Font.new
    v3_8_ = "rbxasset://fonts/families/Sarpanch.json"
    local Bold = Enum.FontWeight.Bold
    v3_7_ = new(v3_8_, Bold)
    v3_3_.FontFace = v3_7_
    local v3_4_ = v0_25_
    local v3_5_ = {}
    local Border = Enum.ApplyStrokeMode.Border
    v3_5_.ApplyStrokeMode = Border
    local v3_6_ = a2
    v3_7_ = "Color"
    v3_6_ = v3_6_(v3_7_)
    v3_5_.Color = v3_6_
    v3_6_ = 0.500000
    v3_5_.Transparency = v3_6_
    v3_6_ = 1.500000
    v3_5_.Thickness = v3_6_
    v3_4_ = v3_4_(v3_5_)
    v3_5_ = v0_26_
    v3_6_ = {}
    v3_7_ = 0.260000
    v3_6_.Size = v3_7_
    v3_7_ = a2
    v3_8_ = "Color"
    v3_7_ = v3_7_(v3_8_)
    v3_6_.Color3 = v3_7_
    v3_5_ = v3_5_(v3_6_)
    v3_6_ = v0_27_
    v3_7_ = {}
    v3_6_ = v3_6_(v3_7_)
    v3_3_[1] = v3_4_
    v3_3_[2] = v3_5_
    v3_3_[3] = v3_6_
    v3_7_ = v0_12_
    v3_8_ = "MouseButton1Click"
    v3_7_ = v3_7_(v3_8_)
    v3_9_ = a2.__self
    v3_8_ = v3_9_.Click
    v3_3_[v3_7_] = v3_8_
    return v3_2_(v3_3_)
end
v0_28_.Render = v0_30_
return v0_28_
