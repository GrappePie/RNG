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
v0_4_ = require
local v0_7_ = "Queue"
v0_4_ = v0_4_(v0_2_:WaitForChild(v0_7_))
local v0_5_ = v0_4_.new
v0_6_ = "FilterCreate"
v0_5_ = v0_5_(v0_6_)
local v0_8_ = "Packets"
v0_6_ = v0_1_:WaitForChild(v0_8_)
v0_7_ = require
local v0_10_ = "Global"
v0_7_ = v0_7_(v0_6_:WaitForChild(v0_10_))
v0_10_ = "Storage"
v0_8_ = v0_1_:WaitForChild(v0_10_)
local v0_9_ = require
local v0_12_ = "RarityDB"
v0_9_ = v0_9_(v0_8_:WaitForChild(v0_12_))
v0_12_ = "UI"
v0_10_ = v0_2_:WaitForChild(v0_12_)
local v0_13_ = "Components"
local v0_11_ = v0_10_:WaitForChild(v0_13_)
v0_12_ = require
local v0_15_ = "Quad"
v0_12_ = v0_12_(v0_10_:WaitForChild(v0_15_))
v0_13_ = v0_0_.LocalPlayer
v0_15_ = v0_3_.Replica
local v0_14_ = v0_15_.WaitForReplica
v0_15_ = v0_13_
v0_14_ = v0_14_(v0_15_)
v0_15_ = {}
local v0_16_ = function(a1)
    local v1_2_ = v0_15_
    local v1_1_ = v1_2_[a1]
    if v1_1_ then
        return
    end
    v1_1_ = v0_15_
    v1_2_ = true
    v1_1_[a1] = v1_2_
    local v1_3_ = v0_7_
    v1_2_ = v1_3_.SetFilter
    v1_1_ = v1_2_.send
    v1_2_ = a1
    v1_1_(v1_2_)
end
local v0_17_ = v0_12_.Lang
local v0_18_ = v0_12_.Round
local v0_19_ = v0_12_.Class
local v0_20_ = v0_12_.Mount
local v0_21_ = v0_12_.Store
local v0_22_ = v0_12_.Event
local v0_23_ = v0_12_.Tween
local v0_24_ = v0_12_.Signal
local v0_25_ = v0_19_
local v0_26_ = "ImageLabel"
v0_25_ = v0_25_(v0_26_)
v0_26_ = v0_19_
local v0_27_ = "TextLabel"
v0_26_ = v0_26_(v0_27_)
v0_27_ = v0_19_
local v0_28_ = "ImageButton"
v0_27_ = v0_27_(v0_28_)
v0_28_ = v0_19_
local v0_29_ = "CanvasGroup"
v0_28_ = v0_28_(v0_29_)
v0_29_ = v0_19_
local v0_30_ = "TextButton"
v0_29_ = v0_29_(v0_30_)
v0_30_ = v0_19_
local v0_31_ = "UIStroke"
v0_30_ = v0_30_(v0_31_)
v0_31_ = v0_19_
local v0_32_ = "Frame"
v0_31_ = v0_31_(v0_32_)
v0_32_ = v0_19_
local v0_33_ = "ScrollingFrame"
v0_32_ = v0_32_(v0_33_)
v0_33_ = v0_19_
local v0_34_ = "UIListLayout"
v0_33_ = v0_33_(v0_34_)
v0_34_ = v0_19_
local v0_35_ = "UIAspectRatioConstraint"
v0_34_ = v0_34_(v0_35_)
v0_35_ = v0_19_
local v0_38_ = "Corner"
v0_35_ = v0_35_(v0_11_:WaitForChild(v0_38_))
local v0_36_ = v0_19_
local v0_39_ = "Shadow"
v0_36_ = v0_36_(v0_11_:WaitForChild(v0_39_))
local v0_37_ = v0_19_
v0_38_ = script
local v0_40_ = "Item"
v0_37_ = v0_37_(v0_38_:WaitForChild(v0_40_))
local LayoutOrder = Enum.SortOrder.LayoutOrder
v0_33_.SortOrder = LayoutOrder
local new = Color3.new
v0_38_ = new()
v0_31_.BackgroundColor3 = v0_38_
v0_38_ = 0
v0_31_.BorderSizePixel = v0_38_
v0_38_ = 0
v0_28_.BorderSizePixel = v0_38_
local new = Color3.new
v0_39_ = 1
v0_40_ = 1
local v0_41_ = 1
v0_38_ = new(v0_39_, v0_40_, v0_41_)
v0_30_.Color = v0_38_
local Border = Enum.ApplyStrokeMode.Border
v0_30_.ApplyStrokeMode = Border
v0_38_ = 1.500000
v0_30_.Thickness = v0_38_
v0_38_ = 0.500000
v0_30_.Transparency = v0_38_
v0_38_ = nil
v0_39_ = nil
v0_40_ = nil
v0_41_ = v0_31_
local v0_42_ = table.create(5)
local new = Vector2.new
local v0_49_ = 0.500000
local v0_50_ = 0.500000
local v0_48_ = new(v0_49_, v0_50_)
v0_42_.AnchorPoint = v0_48_
local fromScale = UDim2.fromScale
v0_49_ = 0.500000
v0_50_ = 0.500000
v0_48_ = fromScale(v0_49_, v0_50_)
v0_42_.Position = v0_48_
local fromScale = UDim2.fromScale
v0_49_ = 0.400000
v0_50_ = 0.400000
v0_48_ = fromScale(v0_49_, v0_50_)
v0_42_.Size = v0_48_
v0_48_ = 0.400000
v0_42_.BackgroundTransparency = v0_48_
v0_48_ = false
v0_42_.Visible = v0_48_
local v0_43_ = v0_26_
local v0_44_ = table.create(3)
local new = Color3.new
v0_48_ = new()
v0_44_.BackgroundColor3 = v0_48_
v0_48_ = 0.650000
v0_44_.BackgroundTransparency = v0_48_
local fromScale = UDim2.fromScale
v0_49_ = 1
v0_50_ = 0.080000
v0_48_ = fromScale(v0_49_, v0_50_)
v0_44_.Size = v0_48_
v0_48_ = "Filter Settings"
v0_44_.Text = v0_48_
v0_48_ = v0_12_.FontBold
v0_44_.FontFace = v0_48_
local new = Color3.new
v0_49_ = 1
v0_50_ = 1
local v0_51_ = 1
v0_48_ = new(v0_49_, v0_50_, v0_51_)
v0_44_.TextColor3 = v0_48_
v0_48_ = true
v0_44_.TextScaled = v0_48_
local v0_45_ = v0_27_
local v0_46_ = table.create(1)
v0_48_ = 1
v0_46_.BackgroundTransparency = v0_48_
local fromScale = UDim2.fromScale
v0_49_ = 0.950000
v0_50_ = 0
v0_48_ = fromScale(v0_49_, v0_50_)
v0_46_.Position = v0_48_
local fromScale = UDim2.fromScale
v0_49_ = 1
v0_50_ = 1
v0_48_ = fromScale(v0_49_, v0_50_)
v0_46_.Size = v0_48_
local RelativeYY = Enum.SizeConstraint.RelativeYY
v0_46_.SizeConstraint = RelativeYY
local v0_47_ = v0_25_
v0_48_ = {}
local new = Vector2.new
v0_50_ = 0.500000
v0_51_ = 0.500000
v0_49_ = new(v0_50_, v0_51_)
v0_48_.AnchorPoint = v0_49_
local fromScale = UDim2.fromScale
v0_50_ = 0.500000
v0_51_ = 0.500000
v0_49_ = fromScale(v0_50_, v0_51_)
v0_48_.Position = v0_49_
v0_49_ = "http://www.roblox.com/asset/?id=6031094678"
v0_48_.Image = v0_49_
local fromScale = UDim2.fromScale
v0_50_ = 0.800000
v0_51_ = 0.800000
v0_49_ = fromScale(v0_50_, v0_51_)
v0_48_.Size = v0_49_
local RelativeYY = Enum.SizeConstraint.RelativeYY
v0_48_.SizeConstraint = RelativeYY
v0_49_ = 1
v0_48_.BackgroundTransparency = v0_49_
v0_47_ = v0_47_(v0_48_)
v0_46_[1] = v0_47_
v0_48_ = v0_22_
v0_49_ = "MouseButton1Down"
v0_48_ = v0_48_(v0_49_)
v0_49_ = function()
    local v2_1_ = v0_3_
    local v2_0_ = v2_1_.PlaySFX
    v2_1_ = "Click"
    local v2_2_ = "UISounds"
    v2_0_(v2_1_, v2_2_)
    v2_0_ = v0_39_
    v2_1_ = false
    v2_0_.Visible = v2_1_
end
v0_46_[v0_48_] = v0_49_
v0_45_ = v0_45_(v0_46_)
v0_46_ = v0_30_
v0_47_ = {}
v0_46_ = v0_46_(v0_47_)
v0_47_ = v0_35_
v0_48_ = {}
-- WARNING: SETLIST_C0, output may be wrong!
v0_44_ = {v0_45_, v0_47_(v0_48_)}
v0_43_ = v0_43_(v0_44_)
v0_44_ = v0_31_
v0_45_ = table.create(1)
local new = Vector2.new
v0_48_ = 0.500000
v0_49_ = 0
v0_47_ = new(v0_48_, v0_49_)
v0_45_.AnchorPoint = v0_47_
v0_47_ = 1
v0_45_.BackgroundTransparency = v0_47_
local fromScale = UDim2.fromScale
v0_48_ = 0.500000
v0_49_ = 0.090000
v0_47_ = fromScale(v0_48_, v0_49_)
v0_45_.Position = v0_47_
local fromScale = UDim2.fromScale
v0_48_ = 0.990000
v0_49_ = 0.900000
v0_47_ = fromScale(v0_48_, v0_49_)
v0_45_.Size = v0_47_
v0_46_ = v0_31_
v0_47_ = table.create(4)
local v0_52_ = 0.650000
v0_47_.BackgroundTransparency = v0_52_
local fromScale = UDim2.fromScale
local v0_53_ = 1
local v0_54_ = 1
v0_52_ = fromScale(v0_53_, v0_54_)
v0_47_.Size = v0_52_
v0_48_ = v0_32_
v0_49_ = table.create(1)
local new = Vector2.new
v0_52_ = 0.500000
v0_53_ = 0.500000
v0_51_ = new(v0_52_, v0_53_)
v0_49_.AnchorPoint = v0_51_
local fromScale = UDim2.fromScale
v0_52_ = 0.500000
v0_53_ = 0.500000
v0_51_ = fromScale(v0_52_, v0_53_)
v0_49_.Position = v0_51_
v0_51_ = 1
v0_49_.BackgroundTransparency = v0_51_
local fromScale = UDim2.fromScale
v0_52_ = 0.980000
v0_53_ = 0.970000
v0_51_ = fromScale(v0_52_, v0_53_)
v0_49_.Size = v0_51_
local new = UDim2.new
v0_51_ = new()
v0_49_.CanvasSize = v0_51_
local Y = Enum.AutomaticSize.Y
v0_49_.AutomaticCanvasSize = Y
v0_51_ = 0
v0_49_.ScrollBarThickness = v0_51_
v0_51_ = 2
v0_49_.PaddingAllOffset = v0_51_
v0_50_ = v0_33_
v0_51_ = {}
local new = UDim.new
v0_53_ = 0.020000
v0_54_ = 0
v0_52_ = new(v0_53_, v0_54_)
v0_51_.Padding = v0_52_
v0_50_ = v0_50_(v0_51_)
v0_49_[1] = v0_50_
v0_51_ = v0_22_.CreatedAsync
v0_52_ = function(a1)
    v0_38_ = a1
    local v3_1_ = nil
    local v3_2_ = function()
        local v4_0_ = 0
        local v4_1_ = 0
        local v4_2_ = ipairs
        local v4_3_ = a1
        local v4_2_, v4_3_, v4_4_ = v4_2_(v4_3_:GetChildren())
        for v4_5_, v4_6_ in v4_2_, v4_3_, v4_4_ do
            local v4_9_ = "Frame"
            local v4_7_ = v4_6_:IsA(v4_9_)
            if v4_7_ then
                v4_7_ = v4_6_.Visible
                if v4_7_ then
                    v4_1_ += 1.000000
                    local v4_10_ = a1
                    v4_9_ = v4_10_.AbsoluteSize
                    local v4_8_ = v4_9_.Y
                    v4_7_ = v4_8_ * 0.110000
                    v4_0_ += v4_7_
                end
            end
        end
        v4_2_ = a1
        local fromOffset = UDim2.fromOffset
        v4_4_ = 0
        local v4_6_ = v4_0_ + 4.000000
        local v4_11_ = a1
        local v4_10_ = v4_11_.AbsoluteSize
        local v4_9_ = v4_10_.Y
        local v4_8_ = v4_9_ * 0.020000
        v4_9_ = v4_1_ - 1.000000
        local v4_7_ = v4_8_ * v4_9_
        local v4_5_ = v4_6_ + v4_7_
        v4_3_ = fromOffset(v4_4_, v4_5_)
        v4_2_.CanvasSize = v4_3_
    end
    local v3_3_ = function()
        local v5_0_ = v3_1_
        if v5_0_ then
            v5_0_ = v3_1_
            local running = coroutine.running
            local v5_1_ = running()
            if v5_0_ ~= v5_1_ then
                local cancel = task.cancel
                v5_1_ = v3_1_
                cancel(v5_1_)
            end
        end
        local defer = task.defer
        local v5_1_ = v3_2_
        v5_0_ = defer(v5_1_)
        v3_1_ = v5_0_
    end
    v0_40_ = v3_1_
    local v3_5_ = v0_12_
    local v3_4_ = v3_5_.ScreenUpdated
    local v3_6_ = v3_3_
    v3_4_:Connect(v3_6_)
    v3_4_ = a1.ChildAdded
    v3_6_ = v3_3_
    v3_4_:Connect(v3_6_)
end
v0_49_[v0_51_] = v0_52_
v0_51_ = v0_22_
v0_52_ = "ChildAdded"
v0_51_ = v0_51_(v0_52_)
v0_52_ = function(a1, a2)
    local v6_4_ = "ImageButton"
    local v6_2_ = a2:IsA(v6_4_)
    if v6_2_ then
        v6_4_ = "Visible"
        v6_2_ = a2:GetPropertyChangedSignal(v6_4_)
        v6_4_ = v0_40_
        v6_2_ = v6_2_:Connect(v6_4_)
        local v6_3_ = a2.Destroying
        local v6_5_ = function()
            local v7_0_ = v6_2_
            v7_0_:Disconnect()
        end
        v6_3_:Once(v6_5_)
    end
end
v0_49_[v0_51_] = v0_52_
v0_48_ = v0_48_(v0_49_)
v0_49_ = v0_30_
v0_50_ = {}
v0_49_ = v0_49_(v0_50_)
v0_50_ = v0_35_
v0_51_ = {}
v0_52_ = 0.026000
v0_51_.Size = v0_52_
v0_50_ = v0_50_(v0_51_)
v0_51_ = v0_36_
v0_52_ = {}
-- WARNING: SETLIST_C0, output may be wrong!
v0_47_ = {v0_48_, v0_51_(v0_52_)}
-- WARNING: SETLIST_C0, output may be wrong!
v0_45_ = {v0_46_, v0_46_(v0_47_)}
v0_44_ = v0_44_(v0_45_)
v0_45_ = v0_36_
v0_46_ = {}
v0_45_ = v0_45_(v0_46_)
v0_46_ = v0_30_
v0_47_ = {}
v0_46_ = v0_46_(v0_47_)
v0_47_ = v0_34_
v0_48_ = {}
v0_49_ = 1.823000
v0_48_.AspectRatio = v0_49_
-- WARNING: SETLIST_C0, output may be wrong!
v0_42_ = {v0_43_, v0_47_(v0_48_)}
v0_41_ = v0_41_(v0_42_)
v0_39_ = v0_41_
v0_41_ = v0_20_
v0_42_ = v0_12_.MainInterface
v0_43_ = v0_39_
v0_41_(v0_42_, v0_43_)
local defer = task.defer
v0_42_ = function()
    local v8_0_ = 0
    local v8_2_ = v0_21_
    local v8_1_ = v8_2_.GetStore
    v8_2_ = "FilterUIs"
    v8_1_ = v8_1_(v8_2_)
    v8_2_ = v0_9_
    v8_2_ = v8_2_:GetList()
    local v8_3_ = function(a1)
        local v9_1_ = v0_5_
        local v9_3_ = v0_37_
        local v9_4_ = a1
        v9_1_ = v9_1_:insert(v9_3_, v9_4_)
        v9_3_ = v0_20_
        v9_4_ = v0_38_
        v9_1_:andThen(v9_3_, v9_4_)
    end
    local v8_4_ = pairs
    local v8_5_ = v8_2_
    local v8_4_, v8_5_, v8_6_ = v8_4_(v8_5_)
    for v8_7_, v8_8_ in v8_4_, v8_5_, v8_6_ do
        local v8_9_ = v8_8_.CannotRoll
        if not v8_9_ then
            v8_0_ += 1.000000
            v8_9_ = v8_8_.Locked
            if v8_9_ then
                v8_9_ = {}
                v8_9_.Index = v8_7_
                local v8_10_ = true
                v8_9_.Locked = v8_10_
                v8_9_.Order = v8_0_
                local v8_11_ = v8_8_.Hidden
                v8_10_ = not v8_11_
                v8_9_.Visible = v8_10_
                v8_10_ = v0_5_
                local v8_12_ = v0_37_
                local v8_13_ = v8_9_
                v8_10_ = v8_10_:insert(v8_12_, v8_13_)
                v8_12_ = v0_20_
                v8_13_ = v0_38_
                v8_10_:andThen(v8_12_, v8_13_)
            else
                v8_9_ = {}
                v8_9_.Index = v8_7_
                local v8_10_ = false
                v8_9_.Locked = v8_10_
                v8_9_.Order = v8_0_
                v8_10_ = v8_8_.Value
                v8_9_.AuraName = v8_10_
                local v8_13_ = v0_14_
                local v8_12_ = v8_13_.Data
                local v8_11_ = v8_12_.SmartFilter
                v8_12_ = v8_8_.Value
                v8_10_ = v8_11_[v8_12_]
                v8_9_.Mode = v8_10_
                v8_10_ = v0_16_
                v8_9_.Callback = v8_10_
                v8_10_ = v0_5_
                v8_12_ = v0_37_
                v8_13_ = v8_9_
                v8_10_ = v8_10_:insert(v8_12_, v8_13_)
                v8_12_ = v0_20_
                v8_13_ = v0_38_
                v8_10_:andThen(v8_12_, v8_13_)
                v8_9_ = v0_14_
                v8_11_ = table.create(2)
                v8_12_ = "SmartFilter"
                v8_13_ = v8_8_.Value
                v8_11_[1] = v8_12_
                v8_11_[2] = v8_13_
                v8_12_ = function(a1)
                    local v10_2_ = v8_1_
                    local v10_3_ = v8_7_
                    local v10_1_ = v10_2_[v10_3_]
                    v10_1_.Mode = a1
                    local wait = task.wait
                    v10_3_ = 0.100000
                    local v10_4_ = v0_13_
                    v10_4_ = v10_4_:GetNetworkPing()
                    v10_2_ = v10_3_ + v10_4_
                    wait(v10_2_)
                    v10_1_ = v0_15_
                    v10_3_ = v8_8_
                    v10_2_ = v10_3_.Value
                    v10_3_ = nil
                    v10_1_[v10_2_] = v10_3_
                end
                v8_9_:ListenToChange(v8_11_, v8_12_)
            end
            v8_9_ = v8_8_.Skins
            if v8_9_ then
                v8_9_ = pairs
                local v8_10_ = v8_8_.Skins
                local v8_9_, v8_10_, v8_11_ = v8_9_(v8_10_)
                for v8_12_, v8_13_ in v8_9_, v8_10_, v8_11_ do
                    local v8_14_ = v8_13_.CannotRoll
                    if not v8_14_ then
                        v8_0_ += 1.000000
                        v8_14_ = v8_13_.Locked
                        if v8_14_ then
                            v8_14_ = {}
                            v8_14_.Index = v8_12_
                            local v8_15_ = true
                            v8_14_.Locked = v8_15_
                            v8_14_.Order = v8_0_
                            local v8_16_ = v8_13_.Hidden
                            v8_15_ = not v8_16_
                            v8_14_.Visible = v8_15_
                            v8_15_ = v0_5_
                            local v8_17_ = v0_37_
                            local v8_18_ = v8_14_
                            v8_15_ = v8_15_:insert(v8_17_, v8_18_)
                            v8_17_ = v0_20_
                            v8_18_ = v0_38_
                            v8_15_:andThen(v8_17_, v8_18_)
                        else
                            v8_14_ = {}
                            v8_14_.Index = v8_12_
                            local v8_15_ = false
                            v8_14_.Locked = v8_15_
                            v8_15_ = v8_13_.Value
                            v8_14_.AuraName = v8_15_
                            v8_14_.Order = v8_0_
                            local v8_18_ = v0_14_
                            local v8_17_ = v8_18_.Data
                            local v8_16_ = v8_17_.SmartFilter
                            v8_17_ = v8_13_.Value
                            v8_15_ = v8_16_[v8_17_]
                            v8_14_.Mode = v8_15_
                            v8_15_ = v0_16_
                            v8_14_.Callback = v8_15_
                            v8_15_ = v0_5_
                            v8_17_ = v0_37_
                            v8_18_ = v8_14_
                            v8_15_ = v8_15_:insert(v8_17_, v8_18_)
                            v8_17_ = v0_20_
                            v8_18_ = v0_38_
                            v8_15_:andThen(v8_17_, v8_18_)
                            v8_14_ = v0_14_
                            v8_16_ = table.create(2)
                            v8_17_ = "SmartFilter"
                            v8_18_ = v8_13_.Value
                            v8_16_[1] = v8_17_
                            v8_16_[2] = v8_18_
                            v8_17_ = function(a1)
                                local v11_2_ = v8_1_
                                local v11_3_ = v8_12_
                                local v11_1_ = v11_2_[v11_3_]
                                v11_1_.Mode = a1
                                local wait = task.wait
                                v11_3_ = 0.100000
                                local v11_4_ = v0_13_
                                v11_4_ = v11_4_:GetNetworkPing()
                                v11_2_ = v11_3_ + v11_4_
                                wait(v11_2_)
                                v11_1_ = v0_15_
                                v11_3_ = v8_13_
                                v11_2_ = v11_3_.Value
                                v11_3_ = nil
                                v11_1_[v11_2_] = v11_3_
                            end
                            v8_14_:ListenToChange(v8_16_, v8_17_)
                        end
                        local wait = task.wait
                        wait()
                    end
                end
            end
            local wait = task.wait
            wait()
        end
    end
    v8_5_ = v0_9_
    v8_4_ = v8_5_.ListUpdated
    v8_6_ = function(a1, a2)
        local v12_3_ = v8_1_
        local v12_2_ = v12_3_[a1]
        local v12_4_ = a1
        v12_3_ = typeof
        v12_3_ = v12_3_(v12_4_)
        if v12_3_ == "number" then
            local v12_5_ = v8_2_
            v12_4_ = v12_5_[a1]
            v12_3_ = v12_4_.Value
            v12_2_.AuraName = v12_3_
        else
            local v12_7_ = v8_2_
            local v12_9_ = v0_9_
            local v12_11_ = a2
            v12_9_ = v12_9_:GetValue(v12_11_)
            local v12_8_ = v12_9_.Index
            local v12_6_ = v12_7_[v12_8_]
            local v12_5_ = v12_6_.Skins
            v12_4_ = v12_5_[a1]
            v12_3_ = v12_4_.Value
            v12_2_.AuraName = v12_3_
        end
        v12_3_ = true
        v12_2_.Visible = v12_3_
        local v12_6_ = v0_14_
        local v12_5_ = v12_6_.Data
        v12_4_ = v12_5_.SmartFilter
        v12_5_ = v12_2_.AuraName
        v12_3_ = v12_4_[v12_5_]
        v12_2_.Mode = v12_3_
        v12_3_ = v0_16_
        v12_2_.Callback = v12_3_
        v12_3_ = false
        v12_2_.Locked = v12_3_
        v12_3_ = v0_14_
        v12_5_ = table.create(2)
        v12_6_ = "SmartFilter"
        local v12_7_ = v12_2_.AuraName
        v12_5_[1] = v12_6_
        v12_5_[2] = v12_7_
        v12_6_ = function(a1)
            local v13_1_ = v12_2_
            v13_1_.Mode = a1
            local wait = task.wait
            local v13_3_ = 0.100000
            local v13_4_ = v0_13_
            v13_4_ = v13_4_:GetNetworkPing()
            local v13_2_ = v13_3_ + v13_4_
            wait(v13_2_)
            v13_1_ = v0_15_
            v13_3_ = v12_2_
            v13_2_ = v13_3_.AuraName
            v13_3_ = nil
            v13_1_[v13_2_] = v13_3_
        end
        v12_3_:ListenToChange(v12_5_, v12_6_)
    end
    v8_4_:Connect(v8_6_)
end
defer(v0_42_)
v0_41_ = v0_21_.AddObject
v0_42_ = "Window"
v0_43_ = v0_39_
v0_41_(v0_42_, v0_43_)
return v0_39_
