-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "Players"
v0_0_ = v0_0_:GetService(v0_2_)
local v0_1_ = game
local v0_3_ = "ReplicatedStorage"
v0_1_ = v0_1_:GetService(v0_3_)
local v0_4_ = "Modules"
v0_2_ = v0_1_:WaitForChild(v0_4_)
v0_3_ = require
local v0_6_ = "Utility"
v0_3_ = v0_3_(v0_2_:WaitForChild(v0_6_))
v0_6_ = "UI"
v0_4_ = v0_2_:WaitForChild(v0_6_)
local v0_7_ = "Components"
local v0_5_ = v0_4_:WaitForChild(v0_7_)
v0_6_ = require
local v0_9_ = "Quad"
v0_6_ = v0_6_(v0_4_:WaitForChild(v0_9_))
v0_7_ = v0_6_.Lang
local v0_8_ = v0_6_.Round
v0_9_ = v0_6_.Class
local v0_10_ = v0_6_.Mount
local v0_11_ = v0_6_.Store
local v0_12_ = v0_6_.Event
local v0_13_ = v0_6_.Tween
local v0_14_ = v0_6_.Signal
local v0_15_ = v0_9_
local v0_16_ = "UIStroke"
v0_15_ = v0_15_(v0_16_)
v0_16_ = v0_9_
local v0_17_ = "ImageLabel"
v0_16_ = v0_16_(v0_17_)
v0_17_ = v0_9_
local v0_18_ = "CanvasGroup"
v0_17_ = v0_17_(v0_18_)
v0_18_ = v0_9_
local v0_19_ = "TextButton"
v0_18_ = v0_18_(v0_19_)
v0_19_ = v0_9_
local v0_22_ = "Shadow"
v0_19_ = v0_19_(v0_5_:WaitForChild(v0_22_))
local v0_20_ = v0_9_
local v0_23_ = "Corner"
v0_20_ = v0_20_(v0_5_:WaitForChild(v0_23_))
local v0_21_ = v0_9_.Extend
v0_21_ = v0_21_()
local new = Color3.new
v0_23_ = 1
local v0_24_ = 1
local v0_25_ = 1
v0_22_ = new(v0_23_, v0_24_, v0_25_)
v0_15_.Color = v0_22_
local Border = Enum.ApplyStrokeMode.Border
v0_15_.ApplyStrokeMode = Border
v0_22_ = 1.500000
v0_15_.Thickness = v0_22_
v0_22_ = 0.500000
v0_15_.Transparency = v0_22_
local new = Color3.new
v0_22_ = new()
v0_16_.BackgroundColor3 = v0_22_
v0_22_ = 0
v0_16_.BorderSizePixel = v0_22_
local new = Color3.new
v0_22_ = new()
v0_17_.BackgroundColor3 = v0_22_
v0_22_ = 0
v0_17_.BorderSizePixel = v0_22_
local new = Color3.new
v0_23_ = 1
v0_24_ = 1
v0_25_ = 1
v0_22_ = new(v0_23_, v0_24_, v0_25_)
v0_18_.TextColor3 = v0_22_
v0_22_ = v0_6_.FontBold
v0_18_.FontFace = v0_22_
v0_22_ = 0
v0_18_.BorderSizePixel = v0_22_
local new = Color3.new
v0_22_ = new()
v0_18_.BackgroundColor3 = v0_22_
v0_22_ = function(a1, a2)
    local v1_4_ = "Callback"
    local v1_5_ = function()
    end
    a2:Default(v1_4_, v1_5_)
    v1_4_ = "ImageId"
    v1_5_ = 131081946134034.000000
    a2:Default(v1_4_, v1_5_)
    v1_4_ = "Text"
    v1_5_ = "Credits"
    a2:Default(v1_4_, v1_5_)
    v1_4_ = "Order"
    v1_5_ = 0
    a2:Default(v1_4_, v1_5_)
end
v0_21_.Init = v0_22_
v0_22_ = function(a1, a2)
    local v3_2_ = v0_18_
    local v3_3_ = table.create(4)
    local v3_8_ = 0.600000
    v3_3_.BackgroundTransparency = v3_8_
    v3_8_ = a2
    local v3_9_ = "Order"
    v3_8_ = v3_8_(v3_9_)
    v3_3_.LayoutOrder = v3_8_
    local fromScale = UDim2.fromScale
    v3_9_ = 0.996000
    local v3_10_ = 0.151000
    v3_8_ = fromScale(v3_9_, v3_10_)
    v3_3_.Size = v3_8_
    v3_8_ = a2
    v3_9_ = "Text"
    v3_8_ = v3_8_(v3_9_)
    v3_3_.Text = v3_8_
    v3_8_ = true
    v3_3_.TextScaled = v3_8_
    v3_8_ = v0_12_
    v3_9_ = "MouseButton1Down"
    v3_8_ = v3_8_(v3_9_)
    v3_9_ = function()
        local v4_1_ = a2
        local v4_0_ = v4_1_.Callback
        if v4_0_ then
            v4_1_ = v0_3_
            v4_0_ = v4_1_.PlaySFX
            v4_1_ = "Click"
            local v4_2_ = "UISounds"
            v4_0_(v4_1_, v4_2_)
            v4_1_ = a2
            v4_0_ = v4_1_.Callback
            v4_0_()
        end
    end
    v3_3_[v3_8_] = v3_9_
    local v3_4_ = v0_17_
    local v3_5_ = table.create(1)
    local fromScale = UDim2.fromScale
    v3_8_ = 1
    v3_9_ = 1
    local v3_7_ = fromScale(v3_8_, v3_9_)
    v3_5_.Size = v3_7_
    v3_7_ = 1
    v3_5_.BackgroundTransparency = v3_7_
    local v3_6_ = v0_16_
    v3_7_ = {}
    local new = Vector2.new
    v3_9_ = 0.500000
    v3_10_ = 0.500000
    v3_8_ = new(v3_9_, v3_10_)
    v3_7_.AnchorPoint = v3_8_
    v3_8_ = 1
    v3_7_.BackgroundTransparency = v3_8_
    local fromScale = UDim2.fromScale
    v3_9_ = 0.150000
    v3_10_ = 0.500000
    v3_8_ = fromScale(v3_9_, v3_10_)
    v3_7_.Position = v3_8_
    local fromScale = UDim2.fromScale
    v3_9_ = 2
    v3_10_ = 2
    v3_8_ = fromScale(v3_9_, v3_10_)
    v3_7_.Size = v3_8_
    local RelativeYY = Enum.SizeConstraint.RelativeYY
    v3_7_.SizeConstraint = RelativeYY
    v3_8_ = 0.500000
    v3_7_.ImageTransparency = v3_8_
    v3_8_ = a2
    v3_9_ = "ImageId"
    v3_8_ = v3_8_(v3_9_)
    v3_10_ = function(a1, a2)
        local v5_3_ = "rbxassetid://%*"
        local v5_5_ = a2
        v5_3_ = v5_3_:format(v5_5_)
        local v5_2_ = v5_3_
        return v5_2_
    end
    v3_8_ = v3_8_:With(v3_10_)
    v3_7_.Image = v3_8_
    -- WARNING: SETLIST_C0, output may be wrong!
    v3_5_ = {v3_6_, v3_6_(v3_7_)}
    v3_4_ = v3_4_(v3_5_)
    v3_5_ = v0_15_
    v3_6_ = {}
    v3_5_ = v3_5_(v3_6_)
    v3_6_ = v0_20_
    v3_7_ = {}
    v3_6_ = v3_6_(v3_7_)
    v3_7_ = v0_19_
    v3_8_ = {}
    -- WARNING: SETLIST_C0, output may be wrong!
    v3_3_ = {v3_4_, v3_7_(v3_8_)}
    return v3_2_(v3_3_)
end
v0_21_.Render = v0_22_
return v0_21_
