-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "ReplicatedStorage"
v0_0_ = v0_0_:GetService(v0_2_)
local v0_3_ = "Modules"
local v0_1_ = v0_0_:WaitForChild(v0_3_)
v0_3_ = "UI"
v0_1_ = v0_1_:WaitForChild(v0_3_)
v0_2_ = require
local v0_5_ = "Quad"
v0_2_ = v0_2_(v0_1_:WaitForChild(v0_5_))
v0_3_ = v0_2_.Lang
local v0_4_ = v0_2_.Round
v0_5_ = v0_2_.Class
local v0_6_ = v0_2_.Mount
local v0_7_ = v0_2_.Store
local v0_8_ = v0_2_.Event
local v0_9_ = v0_2_.Tween
local v0_10_ = v0_2_.Signal
local v0_11_ = v0_5_
local v0_12_ = "Frame"
v0_11_ = v0_11_(v0_12_)
v0_12_ = v0_5_
local v0_13_ = "TextLabel"
v0_12_ = v0_12_(v0_13_)
v0_13_ = v0_5_
local v0_14_ = "CanvasGroup"
v0_13_ = v0_13_(v0_14_)
v0_14_ = v0_5_
local v0_15_ = "UIGradient"
v0_14_ = v0_14_(v0_15_)
v0_15_ = v0_5_
local v0_18_ = "Components"
local v0_16_ = v0_1_:WaitForChild(v0_18_)
v0_18_ = "Corner"
v0_15_ = v0_15_(v0_16_:WaitForChild(v0_18_))
v0_16_ = v0_5_.Extend
v0_16_ = v0_16_()
local v0_17_ = function(a1, a2)
    local v1_4_ = "Name"
    local v1_5_ = "Gaejook Potion"
    a2:Default(v1_4_, v1_5_)
    v1_4_ = "Color3"
    local fromRGB = Color3.fromRGB
    a2:Default(fromRGB())
    v1_4_ = "Amount"
    v1_5_ = 40
    a2:Default(v1_4_, v1_5_)
end
v0_16_.Init = v0_17_
v0_17_ = function(a1, a2)
    local v2_2_ = v0_13_
    local v2_3_ = table.create(2)
    local v2_6_ = 1
    v2_3_.BackgroundTransparency = v2_6_
    local fromScale = UDim2.fromScale
    local v2_7_ = 1
    local v2_8_ = 0.100000
    v2_6_ = fromScale(v2_7_, v2_8_)
    v2_3_.Size = v2_6_
    local v2_4_ = v0_11_
    local v2_5_ = table.create(2)
    local fromRGB = Color3.fromRGB
    local v2_9_ = 59
    local v2_10_ = 59
    local v2_11_ = 59
    v2_8_ = fromRGB(v2_9_, v2_10_, v2_11_)
    v2_5_.BackgroundColor3 = v2_8_
    v2_8_ = 0.800000
    v2_5_.BackgroundTransparency = v2_8_
    local fromScale = UDim2.fromScale
    v2_9_ = 1
    v2_10_ = 1
    v2_8_ = fromScale(v2_9_, v2_10_)
    v2_5_.Size = v2_8_
    v2_6_ = v0_12_
    v2_7_ = {}
    v2_8_ = 1
    v2_7_.BackgroundTransparency = v2_8_
    local new = Vector2.new
    v2_9_ = 0.500000
    v2_10_ = 0.500000
    v2_8_ = new(v2_9_, v2_10_)
    v2_7_.AnchorPoint = v2_8_
    local fromScale = UDim2.fromScale
    v2_9_ = 0.500000
    v2_10_ = 0.500000
    v2_8_ = fromScale(v2_9_, v2_10_)
    v2_7_.Position = v2_8_
    local fromScale = UDim2.fromScale
    v2_9_ = 1
    v2_10_ = 0.700000
    v2_8_ = fromScale(v2_9_, v2_10_)
    v2_7_.Size = v2_8_
    v2_9_ = v0_2_
    v2_8_ = v2_9_.FontBold
    v2_7_.FontFace = v2_8_
    local new = Color3.new
    v2_9_ = 1
    v2_10_ = 1
    v2_11_ = 1
    v2_8_ = new(v2_9_, v2_10_, v2_11_)
    v2_7_.TextColor3 = v2_8_
    v2_8_ = true
    v2_7_.TextScaled = v2_8_
    v2_8_ = a2
    v2_9_ = "Name,Amount"
    v2_8_ = v2_8_(v2_9_)
    v2_10_ = function()
        local v3_1_ = "%*%*"
        local v3_4_ = a2
        local v3_3_ = v3_4_.Name
        local v3_6_ = a2
        local v3_5_ = v3_6_.Amount
        v3_6_ = 0
        if v3_6_ < v3_5_ then
            v3_5_ = " [x%*]"
            local v3_8_ = a2
            local v3_7_ = v3_8_.Amount
            v3_5_ = v3_5_:format(v3_7_)
            v3_4_ = v3_5_
            if not v3_4_ then
                v3_4_ = ""
            end
        end
        v3_4_ = ""
        v3_1_ = v3_1_:format(v3_3_, v3_4_)
        local v3_0_ = v3_1_
        return v3_0_
    end
    v2_8_ = v2_8_:With(v2_10_)
    v2_7_.Text = v2_8_
    v2_6_ = v2_6_(v2_7_)
    v2_7_ = v0_15_
    v2_8_ = {}
    v2_9_ = 0.250000
    v2_8_.Size = v2_9_
    -- WARNING: SETLIST_C0, output may be wrong!
    v2_5_ = {v2_6_, v2_7_(v2_8_)}
    v2_4_ = v2_4_(v2_5_)
    v2_5_ = v0_14_
    v2_6_ = {}
    v2_7_ = 90
    v2_6_.Rotation = v2_7_
    v2_7_ = a2
    v2_8_ = "Color3"
    v2_7_ = v2_7_(v2_8_)
    v2_9_ = function(a1, a2)
        local new = ColorSequence.new
        local v4_3_ = table.create(2)
        local new_0 = ColorSequenceKeypoint.new
        local v4_5_ = 0
        local new_1 = Color3.new
        local v4_9_ = 1
        local v4_10_ = 1
        local v4_11_ = 1
        local v4_8_ = new_1(v4_9_, v4_10_, v4_11_)
        v4_9_ = 0.700000
        local v4_4_ = new_0(a2:Lerp(v4_8_, v4_9_))
        local new_0 = ColorSequenceKeypoint.new
        local v4_6_ = 1
        local v4_7_ = a2
        -- WARNING: SETLIST_C0, output may be wrong!
        v4_3_ = {v4_4_, new_0(v4_6_, v4_7_)}
        return new(v4_3_)
    end
    v2_7_ = v2_7_:With(v2_9_)
    v2_6_.Color = v2_7_
    -- WARNING: SETLIST_C0, output may be wrong!
    v2_3_ = {v2_4_, v2_5_(v2_6_)}
    return v2_2_(v2_3_)
end
v0_16_.Render = v0_17_
return v0_16_
