-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "Players"
v0_0_ = v0_0_:GetService(v0_2_)
local v0_1_ = game
local v0_3_ = "RunService"
v0_1_ = v0_1_:GetService(v0_3_)
v0_2_ = game
local v0_4_ = "GuiService"
v0_2_ = v0_2_:GetService(v0_4_)
v0_3_ = game
local v0_5_ = "ReplicatedStorage"
v0_3_ = v0_3_:GetService(v0_5_)
local v0_6_ = "Modules"
v0_4_ = v0_3_:WaitForChild(v0_6_)
v0_5_ = require
local v0_8_ = "Utility"
v0_5_ = v0_5_(v0_4_:WaitForChild(v0_8_))
v0_8_ = "UI"
v0_6_ = v0_4_:WaitForChild(v0_8_)
local v0_9_ = "Components"
local v0_7_ = v0_6_:WaitForChild(v0_9_)
v0_8_ = require
local v0_11_ = "Quad"
v0_8_ = v0_8_(v0_6_:WaitForChild(v0_11_))
v0_9_ = {}
local v0_10_ = v0_8_.Lang
v0_11_ = v0_8_.Round
local v0_12_ = v0_8_.Class
local v0_13_ = v0_8_.Mount
local v0_14_ = v0_8_.Store
local v0_15_ = v0_8_.Event
local v0_16_ = v0_8_.Tween
local v0_17_ = v0_8_.Signal
local v0_18_ = v0_12_
local v0_19_ = "ScrollingFrame"
v0_18_ = v0_18_(v0_19_)
v0_19_ = v0_12_
local v0_20_ = "UIListLayout"
v0_19_ = v0_19_(v0_20_)
v0_20_ = v0_12_
local v0_21_ = "Frame"
v0_20_ = v0_20_(v0_21_)
v0_21_ = v0_12_
local v0_22_ = "TextLabel"
v0_21_ = v0_21_(v0_22_)
v0_22_ = v0_12_
local v0_23_ = "ImageButton"
v0_22_ = v0_22_(v0_23_)
v0_23_ = v0_12_
local v0_24_ = "CanvasGroup"
v0_23_ = v0_23_(v0_24_)
v0_24_ = v0_12_
local v0_25_ = "ImageLabel"
v0_24_ = v0_24_(v0_25_)
v0_25_ = v0_12_
local v0_26_ = "UIStroke"
v0_25_ = v0_25_(v0_26_)
v0_26_ = v0_12_
local v0_27_ = "UIAspectRatioConstraint"
v0_26_ = v0_26_(v0_27_)
v0_27_ = v0_12_
local v0_28_ = "UIGradient"
v0_27_ = v0_27_(v0_28_)
v0_28_ = v0_12_
local v0_29_ = "TextBox"
v0_28_ = v0_28_(v0_29_)
v0_29_ = require
local v0_32_ = "TextButton"
v0_29_ = v0_29_(v0_7_:WaitForChild(v0_32_))
local v0_30_ = v0_12_
local v0_33_ = "Shadow"
v0_30_ = v0_30_(v0_7_:WaitForChild(v0_33_))
local v0_31_ = v0_12_
local v0_34_ = "Corner"
v0_31_ = v0_31_(v0_7_:WaitForChild(v0_34_))
v0_32_ = v0_12_
v0_33_ = v0_29_
v0_32_ = v0_32_(v0_33_)
v0_33_ = v0_12_
v0_34_ = script
local v0_36_ = "Item"
v0_33_ = v0_33_(v0_34_:WaitForChild(v0_36_))
v0_34_ = v0_14_.GetStore
local v0_35_ = "Leaderboard"
v0_34_ = v0_34_(v0_35_)
v0_35_ = v0_0_.LocalPlayer
v0_36_ = true
v0_34_.IsOpened = v0_36_
v0_36_ = "None"
v0_34_.TitleName = v0_36_
v0_36_ = 0
v0_34_.Rolls = v0_36_
v0_34_.TargetPlayer = v0_35_
v0_36_ = false
v0_34_.IsPlayerBlocked = v0_36_
v0_36_ = false
v0_34_.0oVisible = v0_36_
v0_36_ = v0_2_.TopbarInset
v0_34_.TopbarSize = v0_36_
local LayoutOrder = Enum.SortOrder.LayoutOrder
v0_19_.SortOrder = LayoutOrder
local new = Color3.new
v0_36_ = new()
v0_20_.BackgroundColor3 = v0_36_
v0_36_ = 0
v0_20_.BorderSizePixel = v0_36_
local new = Color3.new
local v0_37_ = 1
local v0_38_ = 1
local v0_39_ = 1
v0_36_ = new(v0_37_, v0_38_, v0_39_)
v0_21_.TextColor3 = v0_36_
v0_36_ = v0_8_.FontBold
v0_21_.FontFace = v0_36_
v0_36_ = 0
v0_21_.BorderSizePixel = v0_36_
local new = Color3.new
v0_36_ = new()
v0_21_.BackgroundColor3 = v0_36_
local new = Color3.new
v0_36_ = new()
v0_22_.BackgroundColor3 = v0_36_
v0_36_ = 0
v0_22_.BorderSizePixel = v0_36_
local new = Color3.new
v0_36_ = new()
v0_23_.BackgroundColor3 = v0_36_
v0_36_ = 0
v0_23_.BorderSizePixel = v0_36_
local new = Color3.new
v0_36_ = new()
v0_24_.BackgroundColor3 = v0_36_
v0_36_ = 0
v0_24_.BorderSizePixel = v0_36_
local new = Color3.new
v0_37_ = 1
v0_38_ = 1
v0_39_ = 1
v0_36_ = new(v0_37_, v0_38_, v0_39_)
v0_25_.Color = v0_36_
local Border = Enum.ApplyStrokeMode.Border
v0_25_.ApplyStrokeMode = Border
v0_36_ = 1.500000
v0_25_.Thickness = v0_36_
v0_36_ = 0.500000
v0_25_.Transparency = v0_36_
local new = Color3.new
v0_37_ = 1
v0_38_ = 1
v0_39_ = 1
v0_36_ = new(v0_37_, v0_38_, v0_39_)
v0_32_.TextColor3 = v0_36_
v0_36_ = v0_8_.FontBold
v0_32_.FontFace = v0_36_
v0_36_ = 0
v0_32_.BorderSizePixel = v0_36_
local new = Color3.new
v0_36_ = new()
v0_32_.BackgroundColor3 = v0_36_
v0_36_ = function(a1)
    local v1_1_ = a1.Parent
    if v1_1_ then
        v1_1_ = a1.Parent
        local v1_3_ = "Frame"
        v1_1_ = v1_1_:IsA(v1_3_)
        if not v1_1_ then
            return
        end
    end
    return
end
v0_38_ = v0_8_.IsMobile
if v0_38_ then
    v0_37_ = 1.500000
else
    v0_37_ = 1
end
v0_38_ = nil
v0_39_ = v0_20_
local v0_40_ = table.create(4)
local new = Vector2.new
local v0_46_ = 1
local v0_47_ = 0
local v0_45_ = new(v0_46_, v0_47_)
v0_40_.AnchorPoint = v0_45_
v0_45_ = 1
v0_40_.BackgroundTransparency = v0_45_
local fromScale = UDim2.fromScale
v0_47_ = 0.225000
v0_46_ = v0_47_ * v0_37_
local v0_48_ = 0.500000
v0_47_ = v0_48_ * v0_37_
v0_45_ = fromScale(v0_46_, v0_47_)
v0_40_.Size = v0_45_
v0_45_ = v0_34_
v0_46_ = "IsOpened,TopbarSize"
v0_45_ = v0_45_(v0_46_)
v0_47_ = function()
    local v2_2_ = v0_34_
    local v2_1_ = v2_2_.IsOpened
    if v2_1_ then
        local new = UDim.new
        v2_1_ = 1
        v2_2_ = -5
        local v2_0_ = new(v2_1_, v2_2_)
        if not v2_0_ then
            local new = UDim.new
            v2_1_ = 1
            local v2_6_ = v0_38_
            local v2_5_ = v2_6_.AbsoluteSize
            local v2_4_ = v2_5_.X
            local v2_3_ = v2_4_ + 1.000000
            local ceil = math.ceil
            v2_2_ = ceil(v2_3_)
            v2_0_ = new(v2_1_, v2_2_)
        end
    end
    local new = UDim.new
    v2_1_ = 1
    local v2_6_ = v0_38_
    local v2_5_ = v2_6_.AbsoluteSize
    local v2_4_ = v2_5_.X
    local v2_3_ = v2_4_ + 1.000000
    local ceil = math.ceil
    v2_2_ = ceil(v2_3_)
    local v2_0_ = new(v2_1_, v2_2_)
    local new = UDim.new
    v2_2_ = 0
    v2_6_ = v0_34_
    v2_5_ = v2_6_.TopbarSize
    v2_4_ = v2_5_.Height
    v2_3_ = v2_4_ + 5.000000
    v2_1_ = new(v2_2_, v2_3_)
    local new = UDim2.new
    v2_3_ = v2_0_
    v2_4_ = v2_1_
    return new(v2_3_, v2_4_)
end
v0_45_ = v0_45_:With(v0_47_)
v0_47_ = {}
v0_48_ = 0.200000
v0_47_.Time = v0_48_
v0_45_ = v0_45_:Tween(v0_47_)
v0_40_.Position = v0_45_
local v0_41_ = v0_26_
local v0_42_ = {}
local v0_43_ = 0.769000
v0_42_.AspectRatio = v0_43_
v0_41_ = v0_41_(v0_42_)
v0_42_ = v0_20_
v0_43_ = table.create(11)
local new = Vector2.new
local v0_56_ = 1
local v0_57_ = 0
local v0_55_ = new(v0_56_, v0_57_)
v0_43_.AnchorPoint = v0_55_
v0_55_ = 0.400000
v0_43_.BackgroundTransparency = v0_55_
local fromScale = UDim2.fromScale
v0_56_ = -0.031000
v0_57_ = 0.062000
v0_55_ = fromScale(v0_56_, v0_57_)
v0_43_.Position = v0_55_
local fromScale = UDim2.fromScale
v0_56_ = 0.700000
v0_57_ = 0.507000
v0_55_ = fromScale(v0_56_, v0_57_)
v0_43_.Size = v0_55_
v0_55_ = v0_34_
v0_56_ = "0oVisible"
v0_55_ = v0_55_(v0_56_)
v0_43_.Visible = v0_55_
local v0_44_ = v0_20_
v0_45_ = table.create(5)
local new = Vector2.new
local v0_52_ = 1
local v0_53_ = 0
local v0_51_ = new(v0_52_, v0_53_)
v0_45_.AnchorPoint = v0_51_
v0_51_ = 0.800000
v0_45_.BackgroundTransparency = v0_51_
local fromScale = UDim2.fromScale
v0_52_ = 0.500000
v0_53_ = 0.225000
v0_51_ = fromScale(v0_52_, v0_53_)
v0_45_.Size = v0_51_
local fromScale = UDim2.fromScale
v0_52_ = 0.970000
v0_53_ = 0.380000
v0_51_ = fromScale(v0_52_, v0_53_)
v0_45_.Position = v0_51_
v0_46_ = v0_21_
v0_47_ = table.create(1)
local new = Vector2.new
local v0_50_ = 0.500000
v0_51_ = 0
local v0_49_ = new(v0_50_, v0_51_)
v0_47_.AnchorPoint = v0_49_
v0_49_ = 1
v0_47_.BackgroundTransparency = v0_49_
local fromScale = UDim2.fromScale
v0_50_ = 0.500000
v0_51_ = 0
v0_49_ = fromScale(v0_50_, v0_51_)
v0_47_.Position = v0_49_
local fromScale = UDim2.fromScale
v0_50_ = 0.900000
v0_51_ = 0.400000
v0_49_ = fromScale(v0_50_, v0_51_)
v0_47_.Size = v0_49_
v0_49_ = "Title"
v0_47_.Text = v0_49_
v0_49_ = true
v0_47_.TextScaled = v0_49_
v0_48_ = v0_20_
v0_49_ = table.create(1)
local new = Vector2.new
v0_52_ = 0
v0_53_ = 1
v0_51_ = new(v0_52_, v0_53_)
v0_49_.AnchorPoint = v0_51_
local new = UDim2.new
v0_52_ = 1
v0_53_ = 0
local v0_54_ = 0
v0_55_ = 1
v0_51_ = new(v0_52_, v0_53_, v0_54_, v0_55_)
v0_49_.Size = v0_51_
local fromScale = UDim2.fromScale
v0_52_ = 0
v0_53_ = 1.100000
v0_51_ = fromScale(v0_52_, v0_53_)
v0_49_.Position = v0_51_
local new = Color3.new
v0_52_ = 1
v0_53_ = 1
v0_54_ = 1
v0_51_ = new(v0_52_, v0_53_, v0_54_)
v0_49_.BackgroundColor3 = v0_51_
v0_50_ = v0_27_
v0_51_ = {}
local new = NumberSequence.new
v0_53_ = table.create(3)
local new_0 = NumberSequenceKeypoint.new
v0_55_ = 0
v0_56_ = 1
v0_54_ = new_0(v0_55_, v0_56_)
local new_0 = NumberSequenceKeypoint.new
v0_56_ = 0.500000
v0_57_ = 0
v0_55_ = new_0(v0_56_, v0_57_)
local new_0 = NumberSequenceKeypoint.new
v0_57_ = 1
local v0_58_ = 1
-- WARNING: SETLIST_C0, output may be wrong!
v0_53_ = {v0_54_, new_0(v0_57_, v0_58_)}
v0_52_ = new(v0_53_)
v0_51_.Transparency = v0_52_
-- WARNING: SETLIST_C0, output may be wrong!
v0_49_ = {v0_50_, v0_50_(v0_51_)}
-- WARNING: SETLIST_C0, output may be wrong!
v0_47_ = {v0_48_, v0_48_(v0_49_)}
v0_46_ = v0_46_(v0_47_)
v0_47_ = v0_21_
v0_48_ = {}
local new = Vector2.new
v0_50_ = 0.500000
v0_51_ = 0
v0_49_ = new(v0_50_, v0_51_)
v0_48_.AnchorPoint = v0_49_
v0_49_ = 1
v0_48_.BackgroundTransparency = v0_49_
local fromScale = UDim2.fromScale
v0_50_ = 0.500000
v0_51_ = 0.400000
v0_49_ = fromScale(v0_50_, v0_51_)
v0_48_.Position = v0_49_
local fromScale = UDim2.fromScale
v0_50_ = 0.900000
v0_51_ = 0.550000
v0_49_ = fromScale(v0_50_, v0_51_)
v0_48_.Size = v0_49_
v0_49_ = v0_34_
v0_50_ = "TitleName"
v0_49_ = v0_49_(v0_50_)
v0_51_ = function(a1, a2)
    local v3_2_ = a2 or "None"
    return v3_2_
end
v0_49_ = v0_49_:With(v0_51_)
v0_48_.Text = v0_49_
v0_49_ = true
v0_48_.TextScaled = v0_49_
v0_47_ = v0_47_(v0_48_)
v0_48_ = v0_25_
v0_49_ = {}
v0_48_ = v0_48_(v0_49_)
v0_49_ = v0_30_
v0_50_ = {}
v0_49_ = v0_49_(v0_50_)
v0_50_ = v0_31_
v0_51_ = {}
v0_52_ = 0.100000
v0_51_.Size = v0_52_
-- WARNING: SETLIST_C0, output may be wrong!
v0_45_ = {v0_46_, v0_50_(v0_51_)}
v0_44_ = v0_44_(v0_45_)
v0_45_ = v0_20_
v0_46_ = table.create(5)
v0_52_ = 0.800000
v0_46_.BackgroundTransparency = v0_52_
local fromScale = UDim2.fromScale
v0_53_ = 0.400000
v0_54_ = 0.225000
v0_52_ = fromScale(v0_53_, v0_54_)
v0_46_.Size = v0_52_
local fromScale = UDim2.fromScale
v0_53_ = 0.030000
v0_54_ = 0.380000
v0_52_ = fromScale(v0_53_, v0_54_)
v0_46_.Position = v0_52_
v0_47_ = v0_21_
v0_48_ = table.create(1)
local new = Vector2.new
v0_51_ = 0.500000
v0_52_ = 0
v0_50_ = new(v0_51_, v0_52_)
v0_48_.AnchorPoint = v0_50_
v0_50_ = 1
v0_48_.BackgroundTransparency = v0_50_
local fromScale = UDim2.fromScale
v0_51_ = 0.500000
v0_52_ = 0
v0_50_ = fromScale(v0_51_, v0_52_)
v0_48_.Position = v0_50_
local fromScale = UDim2.fromScale
v0_51_ = 0.900000
v0_52_ = 0.400000
v0_50_ = fromScale(v0_51_, v0_52_)
v0_48_.Size = v0_50_
v0_50_ = "Rolls"
v0_48_.Text = v0_50_
v0_50_ = true
v0_48_.TextScaled = v0_50_
v0_49_ = v0_20_
v0_50_ = table.create(1)
local new = Vector2.new
v0_53_ = 0
v0_54_ = 1
v0_52_ = new(v0_53_, v0_54_)
v0_50_.AnchorPoint = v0_52_
local new = UDim2.new
v0_53_ = 1
v0_54_ = 0
v0_55_ = 0
v0_56_ = 1
v0_52_ = new(v0_53_, v0_54_, v0_55_, v0_56_)
v0_50_.Size = v0_52_
local fromScale = UDim2.fromScale
v0_53_ = 0
v0_54_ = 1.100000
v0_52_ = fromScale(v0_53_, v0_54_)
v0_50_.Position = v0_52_
local new = Color3.new
v0_53_ = 1
v0_54_ = 1
v0_55_ = 1
v0_52_ = new(v0_53_, v0_54_, v0_55_)
v0_50_.BackgroundColor3 = v0_52_
v0_51_ = v0_27_
v0_52_ = {}
local new = NumberSequence.new
v0_54_ = table.create(3)
local new_0 = NumberSequenceKeypoint.new
v0_56_ = 0
v0_57_ = 1
v0_55_ = new_0(v0_56_, v0_57_)
local new_0 = NumberSequenceKeypoint.new
v0_57_ = 0.500000
v0_58_ = 0
v0_56_ = new_0(v0_57_, v0_58_)
local new_0 = NumberSequenceKeypoint.new
v0_58_ = 1
local v0_59_ = 1
-- WARNING: SETLIST_C0, output may be wrong!
v0_54_ = {v0_55_, new_0(v0_58_, v0_59_)}
v0_53_ = new(v0_54_)
v0_52_.Transparency = v0_53_
-- WARNING: SETLIST_C0, output may be wrong!
v0_50_ = {v0_51_, v0_51_(v0_52_)}
-- WARNING: SETLIST_C0, output may be wrong!
v0_48_ = {v0_49_, v0_49_(v0_50_)}
v0_47_ = v0_47_(v0_48_)
v0_48_ = v0_21_
v0_49_ = {}
local new = Vector2.new
v0_51_ = 0.500000
v0_52_ = 0
v0_50_ = new(v0_51_, v0_52_)
v0_49_.AnchorPoint = v0_50_
v0_50_ = 1
v0_49_.BackgroundTransparency = v0_50_
local fromScale = UDim2.fromScale
v0_51_ = 0.500000
v0_52_ = 0.400000
v0_50_ = fromScale(v0_51_, v0_52_)
v0_49_.Position = v0_50_
local fromScale = UDim2.fromScale
v0_51_ = 0.900000
v0_52_ = 0.550000
v0_50_ = fromScale(v0_51_, v0_52_)
v0_49_.Size = v0_50_
v0_50_ = v0_34_
v0_51_ = "Rolls"
v0_50_ = v0_50_(v0_51_)
v0_52_ = function(a1, a2)
    local v4_3_ = v0_5_
    local v4_2_ = v4_3_.FormatNumber
    v4_3_ = a2
    return v4_2_(v4_3_)
end
v0_50_ = v0_50_:With(v0_52_)
v0_49_.Text = v0_50_
v0_50_ = true
v0_49_.TextScaled = v0_50_
v0_48_ = v0_48_(v0_49_)
v0_49_ = v0_25_
v0_50_ = {}
v0_49_ = v0_49_(v0_50_)
v0_50_ = v0_30_
v0_51_ = {}
v0_50_ = v0_50_(v0_51_)
v0_51_ = v0_31_
v0_52_ = {}
v0_53_ = 0.100000
v0_52_.Size = v0_53_
-- WARNING: SETLIST_C0, output may be wrong!
v0_46_ = {v0_47_, v0_51_(v0_52_)}
v0_45_ = v0_45_(v0_46_)
v0_46_ = v0_32_
v0_47_ = table.create(1)
local new = Vector2.new
v0_50_ = 0.500000
v0_51_ = 0.500000
v0_49_ = new(v0_50_, v0_51_)
v0_47_.AnchorPoint = v0_49_
local fromRGB = Color3.fromRGB
v0_50_ = 50
v0_51_ = 50
v0_52_ = 50
v0_49_ = fromRGB(v0_50_, v0_51_, v0_52_)
v0_47_.BackgroundColor3 = v0_49_
v0_49_ = 0.800000
v0_47_.BackgroundTransparency = v0_49_
local fromScale = UDim2.fromScale
v0_50_ = 0.500000
v0_51_ = 0.690000
v0_49_ = fromScale(v0_50_, v0_51_)
v0_47_.Position = v0_49_
local fromScale = UDim2.fromScale
v0_50_ = 0.938000
v0_51_ = 0.100000
v0_49_ = fromScale(v0_50_, v0_51_)
v0_47_.Size = v0_49_
v0_49_ = 1
v0_47_.HoverScale = v0_49_
local fromScale = UDim2.fromScale
v0_50_ = 1
v0_51_ = 0.925000
v0_49_ = fromScale(v0_50_, v0_51_)
v0_47_.TextSize = v0_49_
v0_49_ = v0_34_
v0_50_ = "TargetPlayer"
v0_49_ = v0_49_(v0_50_)
v0_51_ = function(a1, a2)
    local v5_3_ = v0_35_
    if a2 ~= v5_3_ then
        local v5_2_ = false
    end
    local v5_2_ = true
    return v5_2_
end
v0_49_ = v0_49_:With(v0_51_)
v0_47_.Disabled = v0_49_
v0_49_ = v0_34_
v0_50_ = "TargetPlayer"
v0_49_ = v0_49_(v0_50_)
v0_51_ = function(a1, a2)
    local v6_5_ = v0_35_
    local v6_4_ = v6_5_.UserId
    local v6_2_ = a2:IsFriendsWith(v6_4_)
    if v6_2_ then
        v6_2_ = "Unfriend User"
        return v6_2_
    end
    v6_2_ = "Friend Request"
    return v6_2_
end
v0_49_ = v0_49_:With(v0_51_)
v0_47_.Text = v0_49_
v0_49_ = v0_34_
v0_50_ = "TargetPlayer"
v0_49_ = v0_49_(v0_50_)
v0_51_ = function(a1, a2)
    local v7_2_ = v0_35_
    if a2 == v7_2_ then
        local new = ColorSequence.new
        local fromRGB = Color3.fromRGB
        local v7_4_ = 191
        local v7_5_ = 191
        local v7_6_ = 191
        local v7_3_ = fromRGB(v7_4_, v7_5_, v7_6_)
        local fromRGB = Color3.fromRGB
        v7_5_ = 107
        v7_6_ = 107
        local v7_7_ = 107
        return new(fromRGB(v7_5_, v7_6_, v7_7_))
    end
    local v7_5_ = v0_35_
    local v7_4_ = v7_5_.UserId
    v7_2_ = a2:IsFriendsWith(v7_4_)
    if v7_2_ then
        local new = ColorSequence.new
        local fromHex = Color3.fromHex
        v7_4_ = "ffa0a2"
        local v7_3_ = fromHex(v7_4_)
        local fromHex = Color3.fromHex
        v7_5_ = "ff3a3d"
        return new(fromHex(v7_5_))
    end
    local new = ColorSequence.new
    local fromHex = Color3.fromHex
    v7_4_ = "aeffc5"
    local v7_3_ = fromHex(v7_4_)
    local fromHex = Color3.fromHex
    v7_5_ = "37ff34"
    return new(fromHex(v7_5_))
end
v0_49_ = v0_49_:With(v0_51_)
v0_47_.GlobalColor3 = v0_49_
v0_48_ = v0_24_
v0_49_ = table.create(1)
local fromScale = UDim2.fromScale
v0_52_ = 1
v0_53_ = 1
v0_51_ = fromScale(v0_52_, v0_53_)
v0_49_.Size = v0_51_
local RelativeYY = Enum.SizeConstraint.RelativeYY
v0_49_.SizeConstraint = RelativeYY
local fromScale = UDim2.fromScale
v0_52_ = 0.030000
v0_53_ = 0
v0_51_ = fromScale(v0_52_, v0_53_)
v0_49_.Position = v0_51_
v0_51_ = 1
v0_49_.BackgroundTransparency = v0_51_
v0_51_ = 0
v0_49_.ZIndex = v0_51_
v0_51_ = v0_34_
v0_52_ = "TargetPlayer"
v0_51_ = v0_51_(v0_52_)
v0_53_ = function(a1, a2)
    local v8_5_ = v0_35_
    local v8_4_ = v8_5_.UserId
    local v8_2_ = a2:IsFriendsWith(v8_4_)
    if v8_2_ then
        v8_2_ = "http://www.roblox.com/asset/?id=6034267996"
        return v8_2_
    end
    v8_2_ = "http://www.roblox.com/asset/?id=6034287519"
    return v8_2_
end
v0_51_ = v0_51_:With(v0_53_)
v0_49_.Image = v0_51_
v0_50_ = v0_27_
v0_51_ = {}
v0_52_ = 90
v0_51_.Rotation = v0_52_
v0_52_ = v0_34_
v0_53_ = "TargetPlayer"
v0_52_ = v0_52_(v0_53_)
v0_54_ = function(a1, a2)
    local v9_2_ = v0_35_
    if a2 == v9_2_ then
        local new = ColorSequence.new
        local fromRGB = Color3.fromRGB
        local v9_4_ = 191
        local v9_5_ = 191
        local v9_6_ = 191
        local v9_3_ = fromRGB(v9_4_, v9_5_, v9_6_)
        local fromRGB = Color3.fromRGB
        v9_5_ = 107
        v9_6_ = 107
        local v9_7_ = 107
        return new(fromRGB(v9_5_, v9_6_, v9_7_))
    end
    local v9_5_ = v0_35_
    local v9_4_ = v9_5_.UserId
    v9_2_ = a2:IsFriendsWith(v9_4_)
    if v9_2_ then
        local new = ColorSequence.new
        local fromHex = Color3.fromHex
        v9_4_ = "ffa0a2"
        local v9_3_ = fromHex(v9_4_)
        local fromHex = Color3.fromHex
        v9_5_ = "ff3a3d"
        return new(fromHex(v9_5_))
    end
    local new = ColorSequence.new
    local fromHex = Color3.fromHex
    v9_4_ = "aeffc5"
    local v9_3_ = fromHex(v9_4_)
    local fromHex = Color3.fromHex
    v9_5_ = "37ff34"
    return new(fromHex(v9_5_))
end
v0_52_ = v0_52_:With(v0_54_)
v0_51_.Color = v0_52_
-- WARNING: SETLIST_C0, output may be wrong!
v0_49_ = {v0_50_, v0_50_(v0_51_)}
v0_48_ = v0_48_(v0_49_)
v0_47_[1] = v0_48_
v0_49_ = v0_15_.Created
v0_50_ = function(a1)
    local v10_1_ = v0_34_
    v10_1_.AddPlayerButton = a1
end
v0_47_[v0_49_] = v0_50_
v0_46_ = v0_46_(v0_47_)
v0_47_ = v0_32_
v0_48_ = table.create(1)
local new = Vector2.new
v0_51_ = 0.500000
v0_52_ = 0.500000
v0_50_ = new(v0_51_, v0_52_)
v0_48_.AnchorPoint = v0_50_
local fromRGB = Color3.fromRGB
v0_51_ = 50
v0_52_ = 50
v0_53_ = 50
v0_50_ = fromRGB(v0_51_, v0_52_, v0_53_)
v0_48_.BackgroundColor3 = v0_50_
v0_50_ = 0.800000
v0_48_.BackgroundTransparency = v0_50_
local fromScale = UDim2.fromScale
v0_51_ = 0.500000
v0_52_ = 0.830000
v0_50_ = fromScale(v0_51_, v0_52_)
v0_48_.Position = v0_50_
local fromScale = UDim2.fromScale
v0_51_ = 0.938000
v0_52_ = 0.100000
v0_50_ = fromScale(v0_51_, v0_52_)
v0_48_.Size = v0_50_
v0_50_ = 1
v0_48_.HoverScale = v0_50_
local fromScale = UDim2.fromScale
v0_51_ = 1
v0_52_ = 0.925000
v0_50_ = fromScale(v0_51_, v0_52_)
v0_48_.TextSize = v0_50_
v0_50_ = v0_34_
v0_51_ = "TargetPlayer"
v0_50_ = v0_50_(v0_51_)
v0_52_ = function(a1, a2)
    local v11_3_ = v0_35_
    if a2 ~= v11_3_ then
        local v11_2_ = false
    end
    local v11_2_ = true
    return v11_2_
end
v0_50_ = v0_50_:With(v0_52_)
v0_48_.Disabled = v0_50_
v0_50_ = v0_34_
v0_51_ = "IsPlayerBlocked"
v0_50_ = v0_50_(v0_51_)
v0_52_ = function(a1, a2)
    if a2 then
        local v12_2_ = "Unblock"
        return v12_2_
    end
    local v12_2_ = "Block"
    return v12_2_
end
v0_50_ = v0_50_:With(v0_52_)
v0_48_.Text = v0_50_
v0_50_ = v0_34_
v0_51_ = "IsPlayerBlocked,TargetPlayer"
v0_50_ = v0_50_(v0_51_)
v0_52_ = function()
    local v13_1_ = v0_34_
    local v13_0_ = v13_1_.TargetPlayer
    local v13_2_ = v0_34_
    v13_1_ = v13_2_.IsPlayerBlocked
    v13_2_ = v0_35_
    if v13_0_ == v13_2_ then
        local new = ColorSequence.new
        local fromRGB = Color3.fromRGB
        local v13_4_ = 191
        local v13_5_ = 191
        local v13_6_ = 191
        local v13_3_ = fromRGB(v13_4_, v13_5_, v13_6_)
        local fromRGB = Color3.fromRGB
        v13_5_ = 107
        v13_6_ = 107
        local v13_7_ = 107
        return new(fromRGB(v13_5_, v13_6_, v13_7_))
    end
    if not v13_1_ then
        local new = ColorSequence.new
        local fromHex = Color3.fromHex
        local v13_4_ = "ffa0a2"
        local v13_3_ = fromHex(v13_4_)
        local fromHex = Color3.fromHex
        local v13_5_ = "ff3a3d"
        return new(fromHex(v13_5_))
    end
    local new = ColorSequence.new
    local fromHex = Color3.fromHex
    local v13_4_ = "aeffc5"
    local v13_3_ = fromHex(v13_4_)
    local fromHex = Color3.fromHex
    local v13_5_ = "37ff34"
    return new(fromHex(v13_5_))
end
v0_50_ = v0_50_:With(v0_52_)
v0_48_.GlobalColor3 = v0_50_
v0_49_ = v0_24_
v0_50_ = table.create(1)
local fromScale = UDim2.fromScale
v0_53_ = 1
v0_54_ = 1
v0_52_ = fromScale(v0_53_, v0_54_)
v0_50_.Size = v0_52_
local RelativeYY = Enum.SizeConstraint.RelativeYY
v0_50_.SizeConstraint = RelativeYY
local fromScale = UDim2.fromScale
v0_53_ = 0.030000
v0_54_ = 0
v0_52_ = fromScale(v0_53_, v0_54_)
v0_50_.Position = v0_52_
v0_52_ = 1
v0_50_.BackgroundTransparency = v0_52_
v0_52_ = 0
v0_50_.ZIndex = v0_52_
v0_52_ = v0_34_
v0_53_ = "IsPlayerBlocked"
v0_52_ = v0_52_(v0_53_)
v0_54_ = function(a1, a2)
    if a2 then
        local v14_2_ = "http://www.roblox.com/asset/?id=6023426909"
        return v14_2_
    end
    local v14_2_ = "http://www.roblox.com/asset/?id=6035047387"
    return v14_2_
end
v0_52_ = v0_52_:With(v0_54_)
v0_50_.Image = v0_52_
v0_51_ = v0_27_
v0_52_ = {}
v0_53_ = 90
v0_52_.Rotation = v0_53_
v0_53_ = v0_34_
v0_54_ = "IsPlayerBlocked,TargetPlayer"
v0_53_ = v0_53_(v0_54_)
v0_55_ = function()
    local v15_1_ = v0_34_
    local v15_0_ = v15_1_.TargetPlayer
    local v15_2_ = v0_34_
    v15_1_ = v15_2_.IsPlayerBlocked
    v15_2_ = v0_35_
    if v15_0_ == v15_2_ then
        local new = ColorSequence.new
        local fromRGB = Color3.fromRGB
        local v15_4_ = 191
        local v15_5_ = 191
        local v15_6_ = 191
        local v15_3_ = fromRGB(v15_4_, v15_5_, v15_6_)
        local fromRGB = Color3.fromRGB
        v15_5_ = 107
        v15_6_ = 107
        local v15_7_ = 107
        return new(fromRGB(v15_5_, v15_6_, v15_7_))
    end
    if not v15_1_ then
        local new = ColorSequence.new
        local fromHex = Color3.fromHex
        local v15_4_ = "ffa0a2"
        local v15_3_ = fromHex(v15_4_)
        local fromHex = Color3.fromHex
        local v15_5_ = "ff3a3d"
        return new(fromHex(v15_5_))
    end
    local new = ColorSequence.new
    local fromHex = Color3.fromHex
    local v15_4_ = "aeffc5"
    local v15_3_ = fromHex(v15_4_)
    local fromHex = Color3.fromHex
    local v15_5_ = "37ff34"
    return new(fromHex(v15_5_))
end
v0_53_ = v0_53_:With(v0_55_)
v0_52_.Color = v0_53_
-- WARNING: SETLIST_C0, output may be wrong!
v0_50_ = {v0_51_, v0_51_(v0_52_)}
v0_49_ = v0_49_(v0_50_)
v0_48_[1] = v0_49_
v0_50_ = v0_15_.Created
v0_51_ = function(a1)
    local v16_1_ = v0_34_
    v16_1_.BlockPlayerButton = a1
end
v0_48_[v0_50_] = v0_51_
v0_47_ = v0_47_(v0_48_)
v0_48_ = v0_32_
v0_49_ = {}
local new = Vector2.new
v0_51_ = 0.500000
v0_52_ = 0.500000
v0_50_ = new(v0_51_, v0_52_)
v0_49_.AnchorPoint = v0_50_
local fromRGB = Color3.fromRGB
v0_51_ = 50
v0_52_ = 50
v0_53_ = 50
v0_50_ = fromRGB(v0_51_, v0_52_, v0_53_)
v0_49_.BackgroundColor3 = v0_50_
v0_50_ = 0.800000
v0_49_.BackgroundTransparency = v0_50_
local fromScale = UDim2.fromScale
v0_51_ = 0.500000
v0_52_ = 0.945000
v0_50_ = fromScale(v0_51_, v0_52_)
v0_49_.Position = v0_50_
local fromScale = UDim2.fromScale
v0_51_ = 0.938000
v0_52_ = 0.070000
v0_50_ = fromScale(v0_51_, v0_52_)
v0_49_.Size = v0_50_
v0_50_ = "Close"
v0_49_.Text = v0_50_
v0_50_ = 1
v0_49_.HoverScale = v0_50_
local fromScale = UDim2.fromScale
v0_51_ = 1
v0_52_ = 0.925000
v0_50_ = fromScale(v0_51_, v0_52_)
v0_49_.TextSize = v0_50_
v0_50_ = function()
    local v17_0_ = v0_34_
    local v17_1_ = false
    v17_0_.0oVisible = v17_1_
end
v0_49_.Callback = v0_50_
v0_48_ = v0_48_(v0_49_)
v0_49_ = v0_28_
v0_50_ = table.create(1)
v0_52_ = 1
v0_50_.BackgroundTransparency = v0_52_
local fromScale = UDim2.fromScale
v0_53_ = 0.329000
v0_54_ = 0.015000
v0_52_ = fromScale(v0_53_, v0_54_)
v0_50_.Position = v0_52_
local fromScale = UDim2.fromScale
v0_53_ = 0.660000
v0_54_ = 0.107000
v0_52_ = fromScale(v0_53_, v0_54_)
v0_50_.Size = v0_52_
v0_52_ = v0_34_
v0_53_ = "TargetPlayer"
v0_52_ = v0_52_(v0_53_)
v0_54_ = function(a1, a2)
    local v18_2_ = a2.DisplayName
    return v18_2_
end
v0_52_ = v0_52_:With(v0_54_)
v0_50_.Text = v0_52_
v0_52_ = v0_8_.FontBold
v0_50_.FontFace = v0_52_
v0_52_ = true
v0_50_.TextScaled = v0_52_
local new = Color3.new
v0_53_ = 1
v0_54_ = 1
v0_55_ = 1
v0_52_ = new(v0_53_, v0_54_, v0_55_)
v0_50_.TextColor3 = v0_52_
local Left = Enum.TextXAlignment.Left
v0_50_.TextXAlignment = Left
v0_52_ = false
v0_50_.TextEditable = v0_52_
v0_52_ = false
v0_50_.AutoLocalize = v0_52_
v0_52_ = false
v0_50_.ClearTextOnFocus = v0_52_
v0_51_ = v0_20_
v0_52_ = table.create(1)
local new = Vector2.new
v0_55_ = 0
v0_56_ = 1
v0_54_ = new(v0_55_, v0_56_)
v0_52_.AnchorPoint = v0_54_
local new = UDim2.new
v0_55_ = 1
v0_56_ = 0
v0_57_ = 0
v0_58_ = 1
v0_54_ = new(v0_55_, v0_56_, v0_57_, v0_58_)
v0_52_.Size = v0_54_
local fromScale = UDim2.fromScale
v0_55_ = 0
v0_56_ = 1
v0_54_ = fromScale(v0_55_, v0_56_)
v0_52_.Position = v0_54_
local new = Color3.new
v0_55_ = 1
v0_56_ = 1
v0_57_ = 1
v0_54_ = new(v0_55_, v0_56_, v0_57_)
v0_52_.BackgroundColor3 = v0_54_
v0_53_ = v0_27_
v0_54_ = {}
local new = NumberSequence.new
v0_56_ = table.create(3)
local new_0 = NumberSequenceKeypoint.new
v0_58_ = 0
v0_59_ = 1
v0_57_ = new_0(v0_58_, v0_59_)
local new_0 = NumberSequenceKeypoint.new
v0_59_ = 0.500000
local v0_60_ = 0
v0_58_ = new_0(v0_59_, v0_60_)
local new_0 = NumberSequenceKeypoint.new
v0_60_ = 1
local v0_61_ = 1
-- WARNING: SETLIST_C0, output may be wrong!
v0_56_ = {v0_57_, new_0(v0_60_, v0_61_)}
v0_55_ = new(v0_56_)
v0_54_.Transparency = v0_55_
-- WARNING: SETLIST_C0, output may be wrong!
v0_52_ = {v0_53_, v0_53_(v0_54_)}
-- WARNING: SETLIST_C0, output may be wrong!
v0_50_ = {v0_51_, v0_51_(v0_52_)}
v0_49_ = v0_49_(v0_50_)
v0_50_ = v0_28_
v0_51_ = {}
v0_52_ = 1
v0_51_.BackgroundTransparency = v0_52_
local fromScale = UDim2.fromScale
v0_53_ = 0.329000
v0_54_ = 0.100000
v0_52_ = fromScale(v0_53_, v0_54_)
v0_51_.Position = v0_52_
local fromScale = UDim2.fromScale
v0_53_ = 0.660000
v0_54_ = 0.107000
v0_52_ = fromScale(v0_53_, v0_54_)
v0_51_.Size = v0_52_
v0_52_ = v0_34_
v0_53_ = "TargetPlayer"
v0_52_ = v0_52_(v0_53_)
v0_54_ = function(a1, a2)
    local v19_3_ = "(@%*)"
    local v19_5_ = a2.Name
    v19_3_ = v19_3_:format(v19_5_)
    local v19_2_ = v19_3_
    return v19_2_
end
v0_52_ = v0_52_:With(v0_54_)
v0_51_.Text = v0_52_
v0_52_ = v0_8_.FontBold
v0_51_.FontFace = v0_52_
v0_52_ = true
v0_51_.TextScaled = v0_52_
local new = Color3.new
v0_53_ = 1
v0_54_ = 1
v0_55_ = 1
v0_52_ = new(v0_53_, v0_54_, v0_55_)
v0_51_.TextColor3 = v0_52_
local Left = Enum.TextXAlignment.Left
v0_51_.TextXAlignment = Left
v0_52_ = false
v0_51_.TextEditable = v0_52_
v0_52_ = false
v0_51_.AutoLocalize = v0_52_
v0_52_ = false
v0_51_.ClearTextOnFocus = v0_52_
v0_50_ = v0_50_(v0_51_)
v0_51_ = v0_24_
v0_52_ = table.create(3)
v0_56_ = 0.800000
v0_52_.BackgroundTransparency = v0_56_
local fromScale = UDim2.fromScale
v0_57_ = 0.030000
v0_58_ = 0.040000
v0_56_ = fromScale(v0_57_, v0_58_)
v0_52_.Position = v0_56_
local fromScale = UDim2.fromScale
v0_57_ = 0.290000
v0_58_ = 0.293000
v0_56_ = fromScale(v0_57_, v0_58_)
v0_52_.Size = v0_56_
local RelativeYY = Enum.SizeConstraint.RelativeYY
v0_52_.SizeConstraint = RelativeYY
v0_56_ = v0_34_
v0_57_ = "TargetPlayer"
v0_56_ = v0_56_(v0_57_)
v0_58_ = function(a1, a2)
    local v20_3_ = "rbxthumb://type=AvatarHeadShot&id=%*&w=420&h=420"
    local v20_5_ = a2.UserId
    v20_3_ = v20_3_:format(v20_5_)
    local v20_2_ = v20_3_
    return v20_2_
end
v0_56_ = v0_56_:With(v0_58_)
v0_52_.Image = v0_56_
v0_53_ = v0_25_
v0_54_ = {}
v0_53_ = v0_53_(v0_54_)
v0_54_ = v0_30_
v0_55_ = {}
v0_54_ = v0_54_(v0_55_)
v0_55_ = v0_31_
v0_56_ = {}
v0_57_ = 0.100000
v0_56_.Size = v0_57_
-- WARNING: SETLIST_C0, output may be wrong!
v0_52_ = {v0_53_, v0_55_(v0_56_)}
v0_51_ = v0_51_(v0_52_)
v0_52_ = v0_25_
v0_53_ = {}
v0_52_ = v0_52_(v0_53_)
v0_53_ = v0_30_
v0_54_ = {}
v0_53_ = v0_53_(v0_54_)
v0_54_ = v0_31_
v0_55_ = {}
v0_56_ = 0.030000
v0_55_.Size = v0_56_
-- WARNING: SETLIST_C0, output may be wrong!
v0_43_ = {v0_44_, v0_54_(v0_55_)}
v0_42_ = v0_42_(v0_43_)
v0_43_ = v0_20_
v0_44_ = table.create(1)
local new = Vector2.new
v0_47_ = 0.500000
v0_48_ = 0
v0_46_ = new(v0_47_, v0_48_)
v0_44_.AnchorPoint = v0_46_
v0_46_ = 1
v0_44_.BackgroundTransparency = v0_46_
local fromScale = UDim2.fromScale
v0_47_ = 0.500000
v0_48_ = 0
v0_46_ = fromScale(v0_47_, v0_48_)
v0_44_.Position = v0_46_
local fromScale = UDim2.fromScale
v0_47_ = 1
v0_48_ = 1
v0_46_ = fromScale(v0_47_, v0_48_)
v0_44_.Size = v0_46_
v0_45_ = v0_18_
v0_46_ = table.create(3)
local new = Vector2.new
v0_51_ = 0.500000
v0_52_ = 0
v0_50_ = new(v0_51_, v0_52_)
v0_46_.AnchorPoint = v0_50_
v0_50_ = 1
v0_46_.BackgroundTransparency = v0_50_
local fromScale = UDim2.fromScale
v0_51_ = 0.500000
v0_52_ = 0.060000
v0_50_ = fromScale(v0_51_, v0_52_)
v0_46_.Position = v0_50_
local fromScale = UDim2.fromScale
v0_51_ = 1
v0_52_ = 0.940000
v0_50_ = fromScale(v0_51_, v0_52_)
v0_46_.Size = v0_50_
local new = UDim2.new
v0_50_ = new()
v0_46_.CanvasSize = v0_50_
local Y = Enum.AutomaticSize.Y
v0_46_.AutomaticCanvasSize = Y
v0_50_ = 2
v0_46_.ScrollBarThickness = v0_50_
v0_50_ = false
v0_46_.ScrollingEnabled = v0_50_
v0_50_ = 2
v0_46_.ZIndex = v0_50_
v0_50_ = 0.800000
v0_46_.ScrollBarImageTransparency = v0_50_
v0_50_ = "rbxassetid://2070896802"
v0_46_.BottomImage = v0_50_
v0_50_ = "rbxassetid://2070896802"
v0_46_.MidImage = v0_50_
v0_50_ = "rbxassetid://2070896802"
v0_46_.TopImage = v0_50_
v0_50_ = 0
v0_46_.BorderSizePixel = v0_50_
v0_47_ = v0_19_
v0_48_ = {}
local new = UDim.new
v0_50_ = 0.010000
v0_51_ = 0
v0_49_ = new(v0_50_, v0_51_)
v0_48_.Padding = v0_49_
v0_47_ = v0_47_(v0_48_)
v0_48_ = v0_12_
v0_49_ = "UIPadding"
v0_48_ = v0_48_(v0_49_)
v0_49_ = {}
v0_48_ = v0_48_(v0_49_)
v0_49_ = v0_20_
v0_50_ = table.create(1)
v0_52_ = 1
v0_50_.BackgroundTransparency = v0_52_
local new = UDim2.new
v0_53_ = 1
v0_54_ = 0
v0_55_ = 0
v0_56_ = 3
v0_52_ = new(v0_53_, v0_54_, v0_55_, v0_56_)
v0_50_.Size = v0_52_
v0_52_ = 1
v0_50_.LayoutOrder = v0_52_
v0_51_ = v0_20_
v0_52_ = table.create(1)
local new = Vector2.new
v0_55_ = 0
v0_56_ = 0.500000
v0_54_ = new(v0_55_, v0_56_)
v0_52_.AnchorPoint = v0_54_
local fromScale = UDim2.fromScale
v0_55_ = 0
v0_56_ = 0.500000
v0_54_ = fromScale(v0_55_, v0_56_)
v0_52_.Position = v0_54_
local new = Color3.new
v0_55_ = 1
v0_56_ = 1
v0_57_ = 1
v0_54_ = new(v0_55_, v0_56_, v0_57_)
v0_52_.BackgroundColor3 = v0_54_
local new = UDim2.new
v0_55_ = 1
v0_56_ = 0
v0_57_ = 0
v0_58_ = 1
v0_54_ = new(v0_55_, v0_56_, v0_57_, v0_58_)
v0_52_.Size = v0_54_
v0_53_ = v0_27_
v0_54_ = {}
v0_55_ = 0
v0_54_.Rotation = v0_55_
local new = NumberSequence.new
v0_56_ = table.create(3)
local new_1 = NumberSequenceKeypoint.new
v0_58_ = 0
v0_59_ = 1
v0_57_ = new_1(v0_58_, v0_59_)
local new_0 = NumberSequenceKeypoint.new
v0_59_ = 0.500000
v0_60_ = 0
v0_58_ = new_0(v0_59_, v0_60_)
local new_0 = NumberSequenceKeypoint.new
v0_60_ = 1
v0_61_ = 1
-- WARNING: SETLIST_C0, output may be wrong!
v0_56_ = {v0_57_, new_0(v0_60_, v0_61_)}
v0_55_ = new(v0_56_)
v0_54_.Transparency = v0_55_
-- WARNING: SETLIST_C0, output may be wrong!
v0_52_ = {v0_53_, v0_53_(v0_54_)}
-- WARNING: SETLIST_C0, output may be wrong!
v0_50_ = {v0_51_, v0_51_(v0_52_)}
v0_49_ = v0_49_(v0_50_)
v0_46_[1] = v0_47_
v0_46_[2] = v0_48_
v0_46_[3] = v0_49_
v0_50_ = v0_15_
v0_51_ = "ChildAdded"
v0_50_ = v0_50_(v0_51_)
v0_46_[v0_50_] = v0_36_
v0_50_ = v0_15_
v0_51_ = "ChildRemoved"
v0_50_ = v0_50_(v0_51_)
v0_46_[v0_50_] = v0_36_
v0_50_ = v0_15_.Created
v0_51_ = function(a1)
    local v21_1_ = v0_34_
    v21_1_.PlayerList = a1
    local v21_2_ = v0_8_
    v21_1_ = v21_2_.ScreenUpdated
    local v21_3_ = function()
        local v22_0_ = v0_36_
        local v22_1_ = a1
        v22_0_(v22_1_)
    end
    v21_1_:Connect(v21_3_)
end
v0_46_[v0_50_] = v0_51_
-- WARNING: SETLIST_C0, output may be wrong!
v0_44_ = {v0_45_, v0_45_(v0_46_)}
v0_43_ = v0_43_(v0_44_)
v0_44_ = v0_20_
v0_45_ = table.create(6)
local new = Vector2.new
v0_53_ = 0.500000
v0_54_ = 0
v0_52_ = new(v0_53_, v0_54_)
v0_45_.AnchorPoint = v0_52_
v0_52_ = 0.400000
v0_45_.BackgroundTransparency = v0_52_
local fromScale = UDim2.fromScale
v0_53_ = 0.500000
v0_54_ = 0
v0_52_ = fromScale(v0_53_, v0_54_)
v0_45_.Position = v0_52_
local fromScale = UDim2.fromScale
v0_53_ = 1
v0_54_ = 0.050000
v0_52_ = fromScale(v0_53_, v0_54_)
v0_45_.Size = v0_52_
v0_46_ = v0_21_
v0_47_ = {}
local new = Vector2.new
v0_49_ = 0
v0_50_ = 0.500000
v0_48_ = new(v0_49_, v0_50_)
v0_47_.AnchorPoint = v0_48_
v0_48_ = 1
v0_47_.BackgroundTransparency = v0_48_
local fromScale = UDim2.fromScale
v0_49_ = 0.180000
v0_50_ = 0.500000
v0_48_ = fromScale(v0_49_, v0_50_)
v0_47_.Position = v0_48_
local fromScale = UDim2.fromScale
v0_49_ = 0.460000
v0_50_ = 0.800000
v0_48_ = fromScale(v0_49_, v0_50_)
v0_47_.Size = v0_48_
v0_48_ = "Player"
v0_47_.Text = v0_48_
v0_48_ = true
v0_47_.TextScaled = v0_48_
v0_46_ = v0_46_(v0_47_)
v0_47_ = v0_21_
v0_48_ = {}
local new = Vector2.new
v0_50_ = 0
v0_51_ = 0.500000
v0_49_ = new(v0_50_, v0_51_)
v0_48_.AnchorPoint = v0_49_
v0_49_ = 1
v0_48_.BackgroundTransparency = v0_49_
local fromScale = UDim2.fromScale
v0_50_ = 0.670000
v0_51_ = 0.500000
v0_49_ = fromScale(v0_50_, v0_51_)
v0_48_.Position = v0_49_
local fromScale = UDim2.fromScale
v0_50_ = 0.300000
v0_51_ = 0.900000
v0_49_ = fromScale(v0_50_, v0_51_)
v0_48_.Size = v0_49_
v0_49_ = "Rolls"
v0_48_.Text = v0_49_
v0_49_ = true
v0_48_.TextScaled = v0_49_
v0_47_ = v0_47_(v0_48_)
v0_48_ = v0_22_
v0_49_ = table.create(4)
v0_54_ = 0.400000
v0_49_.BackgroundTransparency = v0_54_
local new = Vector2.new
v0_55_ = 1
v0_56_ = 0
v0_54_ = new(v0_55_, v0_56_)
v0_49_.AnchorPoint = v0_54_
local fromScale = UDim2.fromScale
v0_55_ = 1
v0_56_ = 1
v0_54_ = fromScale(v0_55_, v0_56_)
v0_49_.Size = v0_54_
local RelativeYY = Enum.SizeConstraint.RelativeYY
v0_49_.SizeConstraint = RelativeYY
local fromScale = UDim2.fromScale
v0_55_ = -0.030000
v0_56_ = 0
v0_54_ = fromScale(v0_55_, v0_56_)
v0_49_.Position = v0_54_
v0_54_ = 1
v0_49_.ImageTransparency = v0_54_
v0_50_ = v0_24_
v0_51_ = {}
local fromScale = UDim2.fromScale
v0_53_ = 1
v0_54_ = 1
v0_52_ = fromScale(v0_53_, v0_54_)
v0_51_.Size = v0_52_
v0_52_ = 1
v0_51_.BackgroundTransparency = v0_52_
v0_52_ = "http://www.roblox.com/asset/?id=6031090994"
v0_51_.Image = v0_52_
v0_52_ = v0_34_
v0_53_ = "IsOpened"
v0_52_ = v0_52_(v0_53_)
v0_54_ = function(a1, a2)
    if a2 then
        local v23_2_ = 0
        return v23_2_
    end
    local v23_2_ = 180
    return v23_2_
end
v0_52_ = v0_52_:With(v0_54_)
v0_54_ = {}
v0_55_ = 0.200000
v0_54_.Time = v0_55_
v0_52_ = v0_52_:Tween(v0_54_)
v0_51_.Rotation = v0_52_
v0_50_ = v0_50_(v0_51_)
v0_49_[1] = v0_50_
v0_54_ = v0_15_
v0_55_ = "MouseButton1Down"
v0_54_ = v0_54_(v0_55_)
v0_55_ = function()
    local v24_1_ = v0_5_
    local v24_0_ = v24_1_.PlaySFX
    v24_1_ = "Click"
    local v24_2_ = "UISounds"
    v24_0_(v24_1_, v24_2_)
    v24_0_ = v0_34_
    local v24_3_ = v0_34_
    v24_2_ = v24_3_.IsOpened
    v24_1_ = not v24_2_
    v24_0_.IsOpened = v24_1_
end
v0_49_[v0_54_] = v0_55_
v0_50_ = v0_25_
v0_51_ = {}
v0_50_ = v0_50_(v0_51_)
v0_51_ = v0_31_
v0_52_ = {}
v0_53_ = 0.300000
v0_52_.Size = v0_53_
v0_51_ = v0_51_(v0_52_)
v0_52_ = v0_30_
v0_53_ = {}
-- WARNING: SETLIST_C0, output may be wrong!
v0_49_ = {v0_50_, v0_51_, v0_52_(v0_53_)}
v0_48_ = v0_48_(v0_49_)
v0_49_ = v0_30_
v0_50_ = {}
v0_49_ = v0_49_(v0_50_)
v0_50_ = v0_31_
v0_51_ = {}
v0_52_ = 0.300000
v0_51_.Size = v0_52_
v0_50_ = v0_50_(v0_51_)
v0_51_ = v0_25_
v0_52_ = {}
-- WARNING: SETLIST_C0, output may be wrong!
v0_45_ = {v0_46_, v0_51_(v0_52_)}
-- WARNING: SETLIST_C0, output may be wrong!
v0_40_ = {v0_41_, v0_44_(v0_45_)}
v0_39_ = v0_39_(v0_40_)
v0_38_ = v0_39_
v0_39_ = v0_13_
v0_40_ = v0_8_.MainInterface
v0_41_ = v0_38_
v0_39_(v0_40_, v0_41_)
v0_39_ = {}
v0_42_ = v0_8_.Signal
v0_41_ = v0_42_.Bindable
v0_40_ = v0_41_.New
v0_41_ = "PlayerItemCreated"
v0_40_ = v0_40_(v0_41_)
v0_41_ = function(a1)
    local v25_3_ = "PlayBegin"
    local v25_1_ = a1:GetAttribute(v25_3_)
    if not v25_1_ then
        local running = coroutine.running
        v25_1_ = running()
        local v25_2_ = a1.AncestryChanged
        local v25_4_ = function()
            local defer = task.defer
            local v26_1_ = v25_1_
            local v26_2_ = false
            defer(v26_1_, v26_2_)
        end
        v25_2_ = v25_2_:Once(v25_4_)
        local v25_5_ = "PlayBegin"
        v25_3_ = a1:GetAttributeChangedSignal(v25_5_)
        v25_5_ = function()
            local defer = task.defer
            local v27_1_ = v25_1_
            local v27_2_ = true
            defer(v27_1_, v27_2_)
        end
        v25_3_ = v25_3_:Once(v25_5_)
        local yield = coroutine.yield
        v25_4_ = yield()
        v25_2_:Disconnect()
        v25_3_:Disconnect()
        return v25_4_
    end
    v25_1_ = true
    return v25_1_
end
v0_42_ = function(a1)
    local v28_1_ = v0_41_
    local v28_2_ = a1
    v28_1_ = v28_1_(v28_2_)
    if v28_1_ then
        v28_1_ = v0_33_
        v28_2_ = {}
        v28_2_.Player = a1
        v28_1_ = v28_1_(v28_2_)
        v28_2_ = v0_39_
        v28_2_[a1] = v28_1_
        v28_2_ = v0_13_
        local v28_4_ = v0_34_
        local v28_3_ = v28_4_.PlayerList
        v28_4_ = v28_1_
        v28_2_(v28_3_, v28_4_)
        v28_2_ = v0_40_
        v28_4_ = a1
        v28_2_:Fire(v28_4_)
        v28_2_ = a1.AncestryChanged
        v28_4_ = function()
            local v29_0_ = v0_39_
            local v29_1_ = a1
            local v29_2_ = nil
            v29_0_[v29_1_] = v29_2_
            v29_0_ = v28_1_
            v29_0_:Destroy()
        end
        v28_2_:Once(v28_4_)
    end
end
v0_43_, v0_44_, v0_45_ = v0_0_:GetPlayers()
local defer = task.defer
v0_49_ = v0_42_
v0_50_ = v0_47_
defer(v0_49_, v0_50_)
v0_43_ = v0_0_.PlayerAdded
v0_45_ = v0_42_
v0_43_:Connect(v0_45_)
v0_43_ = function(a1)
    if not a1 then
        return
    end
    local v30_3_ = game
    local v30_1_ = a1:IsDescendantOf(v30_3_)
    if v30_1_ then
        local v30_2_ = v0_39_
        v30_1_ = v30_2_[a1]
        if not v30_1_ then
            local running = coroutine.running
            v30_1_ = running()
            v30_2_ = a1.AncestryChanged
            local v30_4_ = function()
                local defer = task.defer
                local v31_1_ = v30_1_
                local v31_2_ = false
                defer(v31_1_, v31_2_)
            end
            v30_2_ = v30_2_:Once(v30_4_)
            v30_3_ = v0_40_
            local v30_5_ = function(a1)
                local v32_1_ = a1
                if a1 == v32_1_ then
                    local defer = task.defer
                    local v32_2_ = v30_1_
                    local v32_3_ = true
                    defer(v32_2_, v32_3_)
                end
            end
            v30_3_ = v30_3_:Connect(v30_5_)
            local yield = coroutine.yield
            v30_4_ = yield()
            v30_2_:Disconnect()
            v30_3_:Disconnect()
        end
    end
    local v30_2_ = v0_39_
    v30_1_ = v30_2_[a1]
    return v30_1_
end
v0_9_.GetPlayerItem = v0_43_
v0_45_ = "TopbarInset"
v0_43_ = v0_2_:GetPropertyChangedSignal(v0_45_)
v0_45_ = function()
    local v33_0_ = v0_34_
    local v33_2_ = v0_2_
    local v33_1_ = v33_2_.TopbarInset
    v33_0_.TopbarSize = v33_1_
end
v0_43_:Connect(v0_45_)
v0_9_.Store = v0_34_
return v0_9_
