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
v0_6_ = v0_5_.Lang
local v0_7_ = v0_5_.Round
v0_8_ = v0_5_.Class
local v0_9_ = v0_5_.Mount
local v0_10_ = v0_5_.Store
local v0_11_ = v0_5_.Event
local v0_12_ = v0_5_.Tween
local v0_13_ = v0_5_.Signal
local v0_14_ = v0_8_
local v0_15_ = "Frame"
v0_14_ = v0_14_(v0_15_)
v0_15_ = v0_8_
local v0_16_ = "UIListLayout"
v0_15_ = v0_15_(v0_16_)
local new = ColorSequence.new
local fromHex = Color3.fromHex
local v0_18_ = "aaff9d"
local v0_17_ = fromHex(v0_18_)
local fromHex = Color3.fromHex
local v0_19_ = "6bff60"
v0_16_ = new(fromHex(v0_19_))
v0_17_ = v0_8_.Extend
v0_17_ = v0_17_()
local LayoutOrder = Enum.SortOrder.LayoutOrder
v0_15_.SortOrder = LayoutOrder
local new = Color3.new
v0_18_ = new()
v0_14_.BackgroundColor3 = v0_18_
v0_18_ = 0
v0_14_.BorderSizePixel = v0_18_
v0_18_ = function(a1, a2)
    local v1_3_ = 1
    if a2 <= v1_3_ then
        local v1_2_ = 0
        return v1_2_
    end
    local new = UDim.new
    local v1_4_ = a2 - 1.000000
    v1_3_ /= 1.000000
    v1_4_ = 0
    local v1_2_ = new(v1_3_, v1_4_)
    return v1_2_
end
v0_19_ = function(a1, a2)
    local v2_4_ = "Items"
    local v2_5_ = 2
    a2:Default(v2_4_, v2_5_)
    v2_4_ = "Order"
    v2_5_ = 1
    a2:Default(v2_4_, v2_5_)
end
v0_17_.Init = v0_19_
v0_19_ = function(a1, a2)
    local v3_2_ = v0_14_
    local v3_3_ = table.create(1)
    local v3_5_ = a2
    local v3_6_ = "Order"
    v3_5_ = v3_5_(v3_6_)
    v3_3_.LayoutOrder = v3_5_
    v3_5_ = 1
    v3_3_.BackgroundTransparency = v3_5_
    local fromScale = UDim2.fromScale
    v3_6_ = 1
    local v3_7_ = 0.110000
    v3_5_ = fromScale(v3_6_, v3_7_)
    v3_3_.Size = v3_5_
    local v3_4_ = v0_15_
    v3_5_ = {}
    v3_6_ = a2
    v3_7_ = "Items"
    v3_6_ = v3_6_(v3_7_)
    local v3_8_ = v0_18_
    v3_6_ = v3_6_:With(v3_8_)
    v3_5_.Padding = v3_6_
    local Horizontal = Enum.FillDirection.Horizontal
    v3_5_.FillDirection = Horizontal
    -- WARNING: SETLIST_C0, output may be wrong!
    v3_3_ = {v3_4_, v3_4_(v3_5_)}
    return v3_2_(v3_3_)
end
v0_17_.Render = v0_19_
return v0_17_
