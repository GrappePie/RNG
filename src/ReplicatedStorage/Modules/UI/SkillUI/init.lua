-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "Players"
v0_0_ = v0_0_:GetService(v0_2_)
local v0_1_ = game
local v0_3_ = "UserInputService"
v0_1_ = v0_1_:GetService(v0_3_)
v0_2_ = game
local v0_4_ = "ReplicatedStorage"
v0_2_ = v0_2_:GetService(v0_4_)
local v0_5_ = "Modules"
v0_3_ = v0_2_:WaitForChild(v0_5_)
local v0_6_ = "UI"
v0_4_ = v0_3_:WaitForChild(v0_6_)
local v0_7_ = "Components"
v0_5_ = v0_4_:WaitForChild(v0_7_)
v0_6_ = require
local v0_9_ = "Quad"
v0_6_ = v0_6_(v0_4_:WaitForChild(v0_9_))
v0_7_ = v0_0_.LocalPlayer
local v0_8_ = {}
v0_9_ = {}
local v0_10_ = v0_1_.TouchEnabled
local v0_11_ = v0_6_.Lang
local v0_12_ = v0_6_.Round
local v0_13_ = v0_6_.Class
local v0_14_ = v0_6_.Mount
local v0_15_ = v0_6_.Store
local v0_16_ = v0_6_.Event
local v0_17_ = v0_6_.Tween
local v0_18_ = v0_6_.Signal
local v0_19_ = v0_13_
local v0_20_ = "UIListLayout"
v0_19_ = v0_19_(v0_20_)
v0_20_ = v0_13_
local v0_21_ = "UIAspectRatioConstraint"
v0_20_ = v0_20_(v0_21_)
v0_21_ = v0_13_
local v0_22_ = "Frame"
v0_21_ = v0_21_(v0_22_)
v0_22_ = v0_13_
local v0_23_ = script
local v0_25_ = "Item"
v0_22_ = v0_22_(v0_23_:WaitForChild(v0_25_))
local LayoutOrder = Enum.SortOrder.LayoutOrder
v0_19_.SortOrder = LayoutOrder
local new = Color3.new
v0_23_ = new()
v0_21_.BackgroundColor3 = v0_23_
v0_23_ = 0
v0_21_.BorderSizePixel = v0_23_
v0_23_ = v0_21_
local v0_24_ = table.create(2)
local new = Vector2.new
local v0_28_ = 1
local v0_29_ = 1
local v0_27_ = new(v0_28_, v0_29_)
v0_24_.AnchorPoint = v0_27_
v0_27_ = 1
v0_24_.BackgroundTransparency = v0_27_
local fromScale = UDim2.fromScale
v0_28_ = 0.990000
v0_29_ = 0.900000
v0_27_ = fromScale(v0_28_, v0_29_)
v0_24_.Position = v0_27_
local fromScale = UDim2.fromScale
v0_28_ = 0.200000
v0_29_ = 0.030000
v0_27_ = fromScale(v0_28_, v0_29_)
v0_24_.Size = v0_27_
v0_25_ = v0_19_
local v0_26_ = {}
local new = UDim.new
v0_28_ = 0.300000
v0_29_ = 0
v0_27_ = new(v0_28_, v0_29_)
v0_26_.Padding = v0_27_
local Bottom = Enum.VerticalAlignment.Bottom
v0_26_.VerticalAlignment = Bottom
v0_25_ = v0_25_(v0_26_)
v0_26_ = v0_20_
v0_27_ = {}
v0_28_ = 13.476000
v0_27_.AspectRatio = v0_28_
-- WARNING: SETLIST_C0, output may be wrong!
v0_24_ = {v0_25_, v0_26_(v0_27_)}
v0_23_ = v0_23_(v0_24_)
v0_24_ = function(a1, a2, a3, a4, a5)
    local v1_5_ = v0_9_
    local v1_6_ = v0_22_
    local v1_7_ = {}
    v1_7_.KeyCode = a2
    v1_7_.SkillName = a3
    v1_7_.End = a4
    v1_7_.Time = a5
    local v1_9_ = workspace
    v1_9_ = v1_9_:GetServerTimeNow()
    if v1_9_ > a4 then
        local v1_8_ = false
    end
    local v1_8_ = true
    v1_7_.Disabled = v1_8_
    v1_6_ = v1_6_(v1_7_)
    v1_5_[a3] = v1_6_
    v1_5_ = v0_10_
    if not v1_5_ then
        v1_5_ = v0_14_
        v1_6_ = v0_23_
        v1_8_ = v0_9_
        v1_7_ = v1_8_[a3]
        v1_5_(v1_6_, v1_7_)
    end
end
v0_8_.AddItem = v0_24_
v0_24_ = function(a1, a2, a3, a4)
    local v2_5_ = v0_9_
    local v2_4_ = v2_5_[a2]
    if v2_4_ then
        v2_5_ = v0_9_
        v2_4_ = v2_5_[a2]
        v2_4_.End = a3
        v2_5_ = v0_9_
        v2_4_ = v2_5_[a2]
        v2_4_.Time = a4
    end
end
v0_8_.UpdateItem = v0_24_
v0_24_ = function(a1, a2)
    local v3_3_ = v0_9_
    local v3_2_ = v3_3_[a2]
    if v3_2_ then
        v3_3_ = v0_9_
        v3_2_ = v3_3_[a2]
        v3_3_ = true
        v3_2_.Disabled = v3_3_
    end
end
v0_8_.SetDisabled = v0_24_
v0_24_ = function(a1, a2)
    local v4_3_ = v0_9_
    local v4_2_ = v4_3_[a2]
    if v4_2_ then
        v4_3_ = v0_9_
        v4_2_ = v4_3_[a2]
        v4_3_ = false
        v4_2_.Disabled = v4_3_
    end
end
v0_8_.SetEnabled = v0_24_
v0_24_ = function(a1, a2)
    local v5_3_ = v0_9_
    local v5_2_ = v5_3_[a2]
    if v5_2_ then
        local v5_4_ = v0_9_
        v5_3_ = v5_4_[a2]
        v5_2_ = v5_3_.Disabled
        return v5_2_
    end
end
v0_8_.GetDisabled = v0_24_
v0_24_ = function(a1)
    local v6_1_ = v0_9_
    local v6_2_ = nil
    local v6_3_ = nil
    nil:Destroy()
    local clear = table.clear
    v6_2_ = v0_9_
    clear(v6_2_)
end
v0_8_.ClearItems = v0_24_
v0_24_ = v0_14_
v0_25_ = v0_6_.MainInterface
v0_26_ = v0_23_
v0_24_(v0_25_, v0_26_)
return v0_8_
