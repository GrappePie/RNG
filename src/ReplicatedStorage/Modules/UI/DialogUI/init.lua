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
local v0_5_ = "TextService"
v0_3_ = v0_3_:GetService(v0_5_)
v0_4_ = game
local v0_6_ = "HttpService"
v0_4_ = v0_4_:GetService(v0_6_)
v0_5_ = {}
v0_6_ = v0_0_.LocalPlayer
local v0_9_ = "PlayerGui"
local v0_7_ = v0_6_:WaitForChild(v0_9_)
local v0_10_ = "MainInterface"
local v0_8_ = v0_7_:WaitForChild(v0_10_)
local v0_11_ = "Assets"
v0_9_ = v0_1_:WaitForChild(v0_11_)
v0_11_ = "Voices"
v0_9_ = v0_9_:WaitForChild(v0_11_)
v0_11_ = "DefaultChat"
v0_9_ = v0_9_:WaitForChild(v0_11_)
local v0_12_ = "Modules"
v0_10_ = v0_1_:WaitForChild(v0_12_)
local v0_13_ = "Utility"
v0_11_ = v0_10_:WaitForChild(v0_13_)
v0_12_ = require
v0_13_ = v0_11_
v0_12_ = v0_12_(v0_13_)
v0_13_ = require
local v0_16_ = "Serializer"
v0_13_ = v0_13_(v0_10_:WaitForChild(v0_16_))
v0_16_ = "UI"
local v0_14_ = v0_10_:WaitForChild(v0_16_)
local v0_17_ = "Quad"
local v0_15_ = v0_14_:WaitForChild(v0_17_)
local v0_18_ = "Components"
v0_16_ = v0_14_:WaitForChild(v0_18_)
local v0_19_ = "Storage"
v0_17_ = v0_1_:WaitForChild(v0_19_)
v0_18_ = require
local v0_21_ = "ItemDB"
v0_18_ = v0_18_(v0_17_:WaitForChild(v0_21_))
v0_19_ = require
local v0_22_ = "PreviewModels"
v0_19_ = v0_19_(v0_17_:WaitForChild(v0_22_))
v0_22_ = "Packets"
local v0_20_ = v0_1_:WaitForChild(v0_22_)
v0_21_ = require
local v0_24_ = "Dialog"
v0_21_ = v0_21_(v0_20_:WaitForChild(v0_24_))
v0_22_ = require
local v0_23_ = v0_15_
v0_22_ = v0_22_(v0_23_)
v0_23_ = v0_22_.Class
v0_24_ = v0_22_.Event
local v0_25_ = v0_22_.Tween
local v0_26_ = v0_22_.Mount
local v0_27_ = v0_22_.Store
local v0_28_ = v0_22_.Style
local v0_29_ = v0_23_
local v0_30_ = "Frame"
v0_29_ = v0_29_(v0_30_)
v0_30_ = v0_23_
local v0_31_ = "ScrollingFrame"
v0_30_ = v0_30_(v0_31_)
v0_31_ = v0_23_
local v0_32_ = "ViewportFrame"
v0_31_ = v0_31_(v0_32_)
v0_32_ = v0_23_
local v0_33_ = "TextLabel"
v0_32_ = v0_32_(v0_33_)
v0_33_ = v0_23_
local v0_34_ = "TextButton"
v0_33_ = v0_33_(v0_34_)
v0_34_ = v0_23_
local v0_35_ = "TextBox"
v0_34_ = v0_34_(v0_35_)
v0_35_ = v0_23_
local v0_36_ = "ImageLabel"
v0_35_ = v0_35_(v0_36_)
v0_36_ = v0_23_
local v0_37_ = "ImageButton"
v0_36_ = v0_36_(v0_37_)
v0_37_ = v0_23_
local v0_38_ = "UIAspectRatioConstraint"
v0_37_ = v0_37_(v0_38_)
v0_38_ = v0_23_
local v0_39_ = "UIListLayout"
v0_38_ = v0_38_(v0_39_)
v0_39_ = v0_23_
local v0_40_ = "UIGradient"
v0_39_ = v0_39_(v0_40_)
v0_40_ = v0_23_
local v0_41_ = "UIGridLayout"
v0_40_ = v0_40_(v0_41_)
v0_41_ = v0_23_
local v0_42_ = "UIStroke"
v0_41_ = v0_41_(v0_42_)
v0_42_ = v0_23_
local v0_43_ = "UITextSizeConstraint"
v0_42_ = v0_42_(v0_43_)
v0_43_ = v0_23_
local v0_46_ = "Corner"
v0_43_ = v0_43_(v0_16_:WaitForChild(v0_46_))
local v0_44_ = v0_23_
local v0_47_ = "Shadow"
v0_44_ = v0_44_(v0_16_:WaitForChild(v0_47_))
local v0_45_ = v0_23_
v0_46_ = script
local v0_48_ = "Choice"
v0_45_ = v0_45_(v0_46_:WaitForChild(v0_48_))
v0_47_ = v0_12_.Replica
v0_46_ = v0_47_.WaitForReplica
v0_47_ = v0_6_
v0_46_ = v0_46_(v0_47_)
v0_47_ = script
local v0_49_ = "SpeakerCache"
v0_47_ = v0_47_:WaitForChild(v0_49_)
v0_48_ = nil
v0_49_ = nil
local v0_50_ = nil
local v0_51_ = nil
local v0_52_ = nil
local v0_53_ = nil
local v0_54_ = nil
local v0_55_ = nil
local v0_56_ = nil
local v0_57_ = nil
local v0_58_ = nil
local v0_59_ = false
local v0_60_ = nil
local v0_61_ = function()
    local v1_1_ = v0_25_
    local v1_0_ = v1_1_.RunTween
    v1_1_ = v0_48_
    local v1_2_ = {}
    local v1_5_ = v0_25_
    local v1_4_ = v1_5_.Easings
    local v1_3_ = v1_4_.Quart
    v1_2_.Easing = v1_3_
    v1_5_ = v0_25_
    v1_4_ = v1_5_.Directions
    v1_3_ = v1_4_.Out
    v1_2_.Direction = v1_3_
    v1_3_ = 0.500000
    v1_2_.Time = v1_3_
    v1_3_ = {}
    local fromScale = UDim2.fromScale
    v1_5_ = 0.500000
    local v1_6_ = 0.625000
    v1_4_ = fromScale(v1_5_, v1_6_)
    v1_3_.Position = v1_4_
    v1_0_ = v1_0_(v1_1_, v1_2_, v1_3_)
    v0_57_ = v1_0_
end
local v0_62_ = function()
    local v2_1_ = v0_25_
    local v2_0_ = v2_1_.RunTween
    v2_1_ = v0_48_
    local v2_2_ = {}
    local v2_5_ = v0_25_
    local v2_4_ = v2_5_.Easings
    local v2_3_ = v2_4_.Quart
    v2_2_.Easing = v2_3_
    v2_5_ = v0_25_
    v2_4_ = v2_5_.Directions
    v2_3_ = v2_4_.In
    v2_2_.Direction = v2_3_
    v2_3_ = 0.500000
    v2_2_.Time = v2_3_
    v2_3_ = {}
    local fromScale = UDim2.fromScale
    v2_5_ = 0.500000
    local v2_6_ = 1.500000
    v2_4_ = fromScale(v2_5_, v2_6_)
    v2_3_.Position = v2_4_
    v2_0_ = v2_0_(v2_1_, v2_2_, v2_3_)
    v0_58_ = v2_0_
end
local v0_63_ = function()
    local v3_0_ = v0_57_
    if v3_0_ then
        local v3_1_ = v0_25_
        v3_0_ = v3_1_.IsTweening
        v3_1_ = v0_57_
        v3_0_ = v3_0_(v3_1_)
        if v3_0_ then
            v3_1_ = v0_25_
            v3_0_ = v3_1_.StopTween
            v3_1_ = v0_57_
            v3_0_(v3_1_)
        end
        v3_0_ = nil
        v0_57_ = v3_0_
    end
end
local v0_64_ = function()
    local v4_0_ = v0_58_
    if v4_0_ then
        local v4_1_ = v0_25_
        v4_0_ = v4_1_.IsTweening
        v4_1_ = v0_58_
        v4_0_ = v4_0_(v4_1_)
        if v4_0_ then
            v4_1_ = v0_25_
            v4_0_ = v4_1_.StopTween
            v4_1_ = v0_58_
            v4_0_(v4_1_)
        end
        v4_0_ = nil
        v0_58_ = v4_0_
    end
end
local v0_65_ = function()
    local v5_0_ = v0_55_
    local v5_0_, v5_1_, v5_2_ = v5_0_:GetChildren()
    local v5_7_ = "TextButton"
    local v5_5_ = nil:IsA(v5_7_)
    if v5_5_ then
        nil:Destroy()
    end
end
local v0_66_ = function(a1)
    local lookAt = CFrame.lookAt
    local v6_5_ = a1.CFrame
    local new = CFrame.new
    local v6_7_ = 0
    local v6_8_ = 0
    local v6_9_ = -3
    local v6_6_ = new(v6_7_, v6_8_, v6_9_)
    local v6_4_ = v6_5_ * v6_6_
    local v6_3_ = v6_4_.Position
    v6_4_ = a1.Position
    local v6_2_ = lookAt(v6_3_, v6_4_)
    local new = CFrame.new
    v6_4_ = 0
    v6_5_ = 1.500000
    v6_6_ = 0
    v6_3_ = new(v6_4_, v6_5_, v6_6_)
    local v6_1_ = v6_2_ * v6_3_
    return v6_1_:Inverse()
end
local v0_67_ = function(a1)
    local v7_1_ = v0_49_
    local v7_3_ = "WorldModel"
    v7_1_ = v7_1_:FindFirstChildWhichIsA(v7_3_)
    if v7_1_ then
        local v7_2_ = v0_47_
        v7_1_.Parent = v7_2_
    end
    v7_1_ = v0_47_
    v7_3_ = a1.Name
    v7_1_ = v7_1_:FindFirstChild(v7_3_)
    if not v7_1_ then
        local v7_2_ = v0_50_
        local new = CFrame.new
        v7_3_ = new()
        v7_2_.CFrame = v7_3_
        local new = Instance.new
        v7_3_ = "WorldModel"
        v7_2_ = new(v7_3_)
        v7_1_ = v7_2_
        v7_2_ = a1.Name
        v7_1_.Name = v7_2_
        v7_2_ = v0_49_
        v7_1_.Parent = v7_2_
        v7_3_ = a1.ViewportData
        v7_2_ = v7_3_.Model
        v7_2_ = v7_2_:Clone()
        v7_2_.Parent = v7_1_
        local new = CFrame.new
        v7_2_:PivotTo(new())
        local v7_5_ = "HumanoidRootPart"
        v7_3_ = v7_2_:FindFirstChild(v7_5_)
        if v7_3_ then
            local v7_6_ = v0_66_
            local v7_7_ = v7_3_
            v7_2_:PivotTo(v7_6_(v7_7_))
            return v7_1_
        end
        local v7_6_ = "BasePart"
        local v7_4_ = v7_2_:IsA(v7_6_)
        if v7_4_ then
            local v7_7_ = v7_2_:GetPivot()
            local Angles = CFrame.Angles
            local v7_9_ = 0
            local v7_10_ = 3.141593
            local v7_11_ = 0
            local v7_8_ = Angles(v7_9_, v7_10_, v7_11_)
            v7_6_ = v7_7_ * v7_8_
            v7_2_:PivotTo(v7_6_)
        end
        v7_6_ = "Model"
        v7_4_ = v7_2_:IsA(v7_6_)
        if v7_4_ then
            local v7_7_ = v7_2_:GetPivot()
            local Angles = CFrame.Angles
            local v7_9_ = 0
            local v7_10_ = 3.141593
            local v7_11_ = 0
            local v7_8_ = Angles(v7_9_, v7_10_, v7_11_)
            v7_6_ = v7_7_ * v7_8_
            v7_2_:PivotTo(v7_6_)
            return v7_1_
        end
    end
    local v7_2_ = v0_49_
    v7_1_.Parent = v7_2_
    return v7_1_
end
local v0_68_ = function()
    local v8_0_ = v0_49_
    local v8_2_ = "WorldModel"
    v8_0_ = v8_0_:FindFirstChildWhichIsA(v8_2_)
    if v8_0_ then
        v8_0_ = v0_49_
        v8_2_ = "WorldModel"
        v8_0_ = v8_0_:FindFirstChildWhichIsA(v8_2_)
        local v8_1_ = v0_47_
        v8_0_.Parent = v8_1_
    end
    v8_0_ = v0_51_
    local v8_1_ = ""
    v8_0_.Image = v8_1_
    v8_0_ = v0_52_
    v8_1_ = ""
    v8_0_.Text = v8_1_
    v8_0_ = v0_53_
    v8_1_ = ""
    v8_0_.Text = v8_1_
end
local v0_69_ = function(a1)
    local v9_2_ = v0_13_
    local v9_1_ = v9_2_.Decode
    v9_2_ = a1
    v9_1_ = v9_1_(v9_2_)
    v9_2_ = function(a1)
        local v10_1_ = a1
        local v10_2_ = nil
        local v10_3_ = nil
        local v10_7_ = nil
        local v10_6_ = type
        v10_6_ = v10_6_(v10_7_)
        if v10_6_ == "table" then
            v10_6_ = v9_2_
            v10_7_ = nil
            v10_6_(v10_7_)
        else
            v10_7_ = nil
            v10_6_ = type
            v10_6_ = v10_6_(v10_7_)
            if v10_6_ == "string" then
                local v10_8_ = "^@Instance\0([%s%w%p]+)"
                v10_6_ = nil:match(v10_8_)
                if v10_6_ then
                    v10_8_ = "^@Instance\0([%s%w%p]+)"
                    v10_6_ = nil:match(v10_8_)
                    v10_8_ = "."
                    v10_6_ = v10_6_:split(v10_8_)
                    v10_8_ = v10_6_[-1]
                    if v10_8_ == "Workspace" then
                        v10_7_ = workspace
                        if not v10_7_ then
                            v10_7_ = game
                        end
                    end
                    v10_7_ = game
                    local remove = table.remove
                    local v10_9_ = v10_6_
                    local v10_10_ = 1
                    remove(v10_9_, v10_10_)
                    v10_8_ = v10_6_
                    v10_9_ = nil
                    v10_10_ = nil
                    local v10_15_ = nil
                    local v10_13_ = v10_7_:FindFirstChild(v10_15_)
                    if v10_13_ then
                        v10_15_ = nil
                        v10_13_ = v10_7_:FindFirstChild(v10_15_)
                        v10_7_ = v10_13_
                    else
                        v10_13_ = error
                        local v10_14_ = "Unexpected error occured while decoding dialog"
                        v10_13_(v10_14_)
                    end
                    a1[nil] = v10_7_
                end
            end
        end
        return a1
    end
    local v9_3_ = v9_2_
    local v9_4_ = v9_1_
    v9_3_ = v9_3_(v9_4_)
    return v9_3_
end
local v0_70_ = v0_29_
local v0_71_ = "Dialog"
v0_70_ = v0_70_(v0_71_)
v0_71_ = table.create(3)
local new = Vector2.new
local v0_76_ = 0.500000
local v0_77_ = 0
local v0_75_ = new(v0_76_, v0_77_)
v0_71_.AnchorPoint = v0_75_
local fromScale = UDim2.fromScale
v0_76_ = 0.500000
v0_77_ = 1.500000
v0_75_ = fromScale(v0_76_, v0_77_)
v0_71_.Position = v0_75_
local fromScale = UDim2.fromScale
v0_76_ = 0.500000
v0_77_ = 0.270000
v0_75_ = fromScale(v0_76_, v0_77_)
v0_71_.Size = v0_75_
v0_75_ = 1
v0_71_.BackgroundTransparency = v0_75_
v0_75_ = 200
v0_71_.ZIndex = v0_75_
local v0_72_ = v0_29_
local v0_73_ = "Speaking"
v0_72_ = v0_72_(v0_73_)
v0_73_ = table.create(8)
local fromScale = UDim2.fromScale
local v0_83_ = 1
local v0_84_ = 0.750000
local v0_82_ = fromScale(v0_83_, v0_84_)
v0_73_.Size = v0_82_
local new = Color3.new
v0_82_ = new()
v0_73_.BackgroundColor3 = v0_82_
v0_82_ = 0.400000
v0_73_.BackgroundTransparency = v0_82_
local v0_74_ = v0_29_
v0_75_ = "Speaker"
v0_74_ = v0_74_(v0_75_)
v0_75_ = table.create(4)
local new = Vector2.new
local v0_81_ = 0
v0_82_ = 0.500000
local v0_80_ = new(v0_81_, v0_82_)
v0_75_.AnchorPoint = v0_80_
local fromScale = UDim2.fromScale
v0_81_ = 0.020000
v0_82_ = 0.500000
v0_80_ = fromScale(v0_81_, v0_82_)
v0_75_.Position = v0_80_
local fromScale = UDim2.fromScale
v0_81_ = 0.850000
v0_82_ = 0.850000
v0_80_ = fromScale(v0_81_, v0_82_)
v0_75_.Size = v0_80_
local RelativeYY = Enum.SizeConstraint.RelativeYY
v0_75_.SizeConstraint = RelativeYY
local new = Color3.new
v0_80_ = new()
v0_75_.BackgroundColor3 = v0_80_
v0_80_ = 0.800000
v0_75_.BackgroundTransparency = v0_80_
v0_76_ = v0_31_
v0_77_ = "SpeakerViewport"
v0_76_ = v0_76_(v0_77_)
v0_77_ = {}
local fromScale = UDim2.fromScale
local v0_79_ = 1
v0_80_ = 1
local v0_78_ = fromScale(v0_79_, v0_80_)
v0_77_.Size = v0_78_
v0_78_ = 1
v0_77_.BackgroundTransparency = v0_78_
v0_78_ = v0_24_.CreatedAsync
v0_79_ = function(a1)
    local new = Instance.new
    local v11_2_ = "Camera"
    local v11_1_ = new(v11_2_)
    v11_1_.Parent = a1
    v0_49_ = a1
    v0_50_ = v11_1_
end
v0_77_[v0_78_] = v0_79_
v0_76_ = v0_76_(v0_77_)
v0_77_ = v0_35_
v0_78_ = "SpeakerImage"
v0_77_ = v0_77_(v0_78_)
v0_78_ = table.create(1)
local fromScale = UDim2.fromScale
v0_81_ = 1
v0_82_ = 1
v0_80_ = fromScale(v0_81_, v0_82_)
v0_78_.Size = v0_80_
v0_80_ = 1
v0_78_.BackgroundTransparency = v0_80_
v0_80_ = ""
v0_78_.Image = v0_80_
v0_79_ = v0_44_
v0_80_ = {}
v0_79_ = v0_79_(v0_80_)
v0_78_[1] = v0_79_
v0_80_ = v0_24_.CreatedAsync
v0_81_ = function(a1)
    v0_51_ = a1
end
v0_78_[v0_80_] = v0_81_
v0_77_ = v0_77_(v0_78_)
v0_78_ = v0_41_
v0_79_ = {}
local Border = Enum.ApplyStrokeMode.Border
v0_79_.ApplyStrokeMode = Border
local new = Color3.new
v0_81_ = 1
v0_82_ = 1
v0_83_ = 1
v0_80_ = new(v0_81_, v0_82_, v0_83_)
v0_79_.Color = v0_80_
v0_80_ = 0.500000
v0_79_.Transparency = v0_80_
v0_80_ = 1.500000
v0_79_.Thickness = v0_80_
v0_78_ = v0_78_(v0_79_)
v0_79_ = v0_43_
v0_80_ = {}
v0_81_ = 0.050000
v0_80_.Size = v0_81_
-- WARNING: SETLIST_C0, output may be wrong!
v0_75_ = {v0_76_, v0_79_(v0_80_)}
v0_74_ = v0_74_(v0_75_)
v0_75_ = v0_32_
v0_76_ = "SpeakerName"
v0_75_ = v0_75_(v0_76_)
v0_76_ = {}
local fromScale = UDim2.fromScale
v0_78_ = 0.250000
v0_79_ = 0.074000
v0_77_ = fromScale(v0_78_, v0_79_)
v0_76_.Position = v0_77_
local fromScale = UDim2.fromScale
v0_78_ = 0.700000
v0_79_ = 0.200000
v0_77_ = fromScale(v0_78_, v0_79_)
v0_76_.Size = v0_77_
v0_77_ = 1
v0_76_.BackgroundTransparency = v0_77_
v0_77_ = ""
v0_76_.Text = v0_77_
local new = Color3.new
v0_78_ = 1
v0_79_ = 1
v0_80_ = 1
v0_77_ = new(v0_78_, v0_79_, v0_80_)
v0_76_.TextColor3 = v0_77_
v0_77_ = true
v0_76_.TextScaled = v0_77_
v0_77_ = true
v0_76_.RichText = v0_77_
local new = Font.new
v0_78_ = "rbxasset://fonts/families/Sarpanch.json"
local Bold = Enum.FontWeight.Bold
v0_77_ = new(v0_78_, Bold)
v0_76_.FontFace = v0_77_
local Left = Enum.TextXAlignment.Left
v0_76_.TextXAlignment = Left
v0_77_ = v0_24_.CreatedAsync
v0_78_ = function(a1)
    v0_52_ = a1
end
v0_76_[v0_77_] = v0_78_
v0_75_ = v0_75_(v0_76_)
v0_76_ = v0_32_
v0_77_ = "Context"
v0_76_ = v0_76_(v0_77_)
v0_77_ = table.create(2)
local fromScale = UDim2.fromScale
v0_81_ = 0.250000
v0_82_ = 0.330000
v0_80_ = fromScale(v0_81_, v0_82_)
v0_77_.Position = v0_80_
local fromScale = UDim2.fromScale
v0_81_ = 0.700000
v0_82_ = 0.520000
v0_80_ = fromScale(v0_81_, v0_82_)
v0_77_.Size = v0_80_
v0_80_ = 1
v0_77_.BackgroundTransparency = v0_80_
v0_80_ = ""
v0_77_.Text = v0_80_
local new = Color3.new
v0_81_ = 1
v0_82_ = 1
v0_83_ = 1
v0_80_ = new(v0_81_, v0_82_, v0_83_)
v0_77_.TextColor3 = v0_80_
v0_80_ = true
v0_77_.TextScaled = v0_80_
v0_80_ = true
v0_77_.TextWrapped = v0_80_
v0_80_ = true
v0_77_.RichText = v0_80_
local new = Font.new
v0_81_ = "rbxasset://fonts/families/Sarpanch.json"
local Bold_0 = Enum.FontWeight.Bold
v0_80_ = new(v0_81_, Bold_0)
v0_77_.FontFace = v0_80_
local Left = Enum.TextXAlignment.Left
v0_77_.TextXAlignment = Left
local Top = Enum.TextYAlignment.Top
v0_77_.TextYAlignment = Top
v0_78_ = v0_33_
v0_79_ = "SkipDetector"
v0_78_ = v0_78_(v0_79_)
v0_79_ = {}
local fromScale = UDim2.fromScale
v0_81_ = 1
v0_82_ = 1
v0_80_ = fromScale(v0_81_, v0_82_)
v0_79_.Size = v0_80_
v0_80_ = 1
v0_79_.BackgroundTransparency = v0_80_
v0_80_ = ""
v0_79_.Text = v0_80_
v0_80_ = v0_24_.CreatedAsync
v0_81_ = function(a1)
    v0_54_ = a1
end
v0_79_[v0_80_] = v0_81_
v0_78_ = v0_78_(v0_79_)
v0_79_ = v0_42_
v0_80_ = "UITextSizeConstraint"
v0_79_ = v0_79_(v0_80_)
v0_80_ = {}
v0_81_ = 20
v0_80_.MaxTextSize = v0_81_
v0_81_ = 10
v0_80_.MinTextSize = v0_81_
v0_79_ = v0_79_(v0_80_)
v0_77_[1] = v0_78_
v0_77_[2] = v0_79_
v0_80_ = v0_24_.CreatedAsync
v0_81_ = function(a1)
    v0_53_ = a1
end
v0_77_[v0_80_] = v0_81_
v0_76_ = v0_76_(v0_77_)
v0_77_ = v0_29_
v0_78_ = "Bar"
v0_77_ = v0_77_(v0_78_)
v0_78_ = table.create(1)
local fromScale = UDim2.fromScale
v0_81_ = 0.249000
v0_82_ = 0.280000
v0_80_ = fromScale(v0_81_, v0_82_)
v0_78_.Position = v0_80_
local new = UDim2.new
v0_81_ = 0.600000
v0_82_ = 0
v0_83_ = 0
v0_84_ = 1
v0_80_ = new(v0_81_, v0_82_, v0_83_, v0_84_)
v0_78_.Size = v0_80_
local new = Color3.new
v0_81_ = 1
v0_82_ = 1
v0_83_ = 1
v0_80_ = new(v0_81_, v0_82_, v0_83_)
v0_78_.BackgroundColor3 = v0_80_
v0_80_ = 0.200000
v0_78_.BackgroundTransparency = v0_80_
v0_79_ = v0_39_
v0_80_ = {}
local new = NumberSequence.new
v0_82_ = table.create(3)
local new_0 = NumberSequenceKeypoint.new
v0_84_ = 0
local v0_85_ = 1
v0_83_ = new_0(v0_84_, v0_85_)
local new_0 = NumberSequenceKeypoint.new
v0_85_ = 0.100000
local v0_86_ = 0
v0_84_ = new_0(v0_85_, v0_86_)
local new_0 = NumberSequenceKeypoint.new
v0_86_ = 1
local v0_87_ = 1
-- WARNING: SETLIST_C0, output may be wrong!
v0_82_ = {v0_83_, new_0(v0_86_, v0_87_)}
v0_81_ = new(v0_82_)
v0_80_.Transparency = v0_81_
-- WARNING: SETLIST_C0, output may be wrong!
v0_78_ = {v0_79_, v0_79_(v0_80_)}
v0_77_ = v0_77_(v0_78_)
v0_78_ = v0_32_
v0_79_ = "Hold2Skip"
v0_78_ = v0_78_(v0_79_)
v0_79_ = {}
local new = Vector2.new
v0_81_ = 0
v0_82_ = 1
v0_80_ = new(v0_81_, v0_82_)
v0_79_.AnchorPoint = v0_80_
local fromScale = UDim2.fromScale
v0_81_ = 0.250000
v0_82_ = 0.925000
v0_80_ = fromScale(v0_81_, v0_82_)
v0_79_.Position = v0_80_
local fromScale = UDim2.fromScale
v0_81_ = 0.200000
v0_82_ = 0.075000
v0_80_ = fromScale(v0_81_, v0_82_)
v0_79_.Size = v0_80_
v0_80_ = 1
v0_79_.BackgroundTransparency = v0_80_
v0_80_ = "Hold to skip."
v0_79_.Text = v0_80_
local new = Color3.new
v0_81_ = 1
v0_82_ = 1
v0_83_ = 1
v0_80_ = new(v0_81_, v0_82_, v0_83_)
v0_79_.TextColor3 = v0_80_
v0_80_ = 0.500000
v0_79_.TextTransparency = v0_80_
v0_80_ = true
v0_79_.TextScaled = v0_80_
local new = Font.new
v0_81_ = "rbxasset://fonts/families/Sarpanch.json"
local Bold = Enum.FontWeight.Bold
v0_80_ = new(v0_81_, Bold)
v0_79_.FontFace = v0_80_
local Left = Enum.TextXAlignment.Left
v0_79_.TextXAlignment = Left
v0_78_ = v0_78_(v0_79_)
v0_79_ = v0_41_
v0_80_ = {}
local Border = Enum.ApplyStrokeMode.Border
v0_80_.ApplyStrokeMode = Border
local new = Color3.new
v0_82_ = 1
v0_83_ = 1
v0_84_ = 1
v0_81_ = new(v0_82_, v0_83_, v0_84_)
v0_80_.Color = v0_81_
v0_81_ = 0.500000
v0_80_.Transparency = v0_81_
v0_81_ = 1.500000
v0_80_.Thickness = v0_81_
v0_79_ = v0_79_(v0_80_)
v0_80_ = v0_43_
v0_81_ = {}
v0_82_ = 0.050000
v0_81_.Size = v0_82_
v0_80_ = v0_80_(v0_81_)
v0_81_ = v0_44_
v0_82_ = {}
-- WARNING: SETLIST_C0, output may be wrong!
v0_73_ = {v0_74_, v0_81_(v0_82_)}
v0_72_ = v0_72_(v0_73_)
v0_73_ = v0_29_
v0_74_ = "Choices"
v0_73_ = v0_73_(v0_74_)
v0_74_ = table.create(1)
local new = Vector2.new
v0_77_ = 0.500000
v0_78_ = 0
v0_76_ = new(v0_77_, v0_78_)
v0_74_.AnchorPoint = v0_76_
local fromScale = UDim2.fromScale
v0_77_ = 0.500000
v0_78_ = 0.830000
v0_76_ = fromScale(v0_77_, v0_78_)
v0_74_.Position = v0_76_
local fromScale = UDim2.fromScale
v0_77_ = 1
v0_78_ = 0.170000
v0_76_ = fromScale(v0_77_, v0_78_)
v0_74_.Size = v0_76_
v0_76_ = 1
v0_74_.BackgroundTransparency = v0_76_
v0_75_ = v0_38_
v0_76_ = {}
local new = UDim.new
v0_78_ = 0.100000
v0_79_ = 0
v0_77_ = new(v0_78_, v0_79_)
v0_76_.Padding = v0_77_
local Horizontal = Enum.FillDirection.Horizontal
v0_76_.FillDirection = Horizontal
local LayoutOrder = Enum.SortOrder.LayoutOrder
v0_76_.SortOrder = LayoutOrder
v0_77_ = v0_24_.CreatedAsync
v0_78_ = function(a1)
    v0_56_ = a1
end
v0_76_[v0_77_] = v0_78_
v0_75_ = v0_75_(v0_76_)
v0_74_[1] = v0_75_
v0_76_ = v0_24_.CreatedAsync
v0_77_ = function(a1)
    v0_55_ = a1
end
v0_74_[v0_76_] = v0_77_
v0_73_ = v0_73_(v0_74_)
v0_74_ = v0_37_
v0_75_ = {}
v0_76_ = 3.031000
v0_75_.AspectRatio = v0_76_
-- WARNING: SETLIST_C0, output may be wrong!
v0_71_ = {v0_72_, v0_74_(v0_75_)}
v0_70_ = v0_70_(v0_71_)
v0_48_ = v0_70_
v0_70_ = v0_26_
v0_71_ = v0_8_
v0_72_ = v0_48_
v0_70_(v0_71_, v0_72_)
v0_70_ = function(a1, a2, a3, a4, a5)
    local v18_6_ = a1
    local v18_5_ = type
    v18_5_ = v18_5_(v18_6_)
    if v18_5_ == "function" then
        v18_5_ = a1
        v18_5_ = v18_5_()
        v18_0_ = v18_5_
    end
    v18_5_ = v0_59_
    if v18_5_ then
        if not a5 then
            v18_5_ = "_failed"
            return v18_5_
        end
    end
    v18_5_ = true
    v0_59_ = a1
    if a4 == "" then
        v18_3_ = nil
    else
    end
    v18_5_ = v0_58_
    if v18_5_ then
        v18_6_ = v0_25_
        v18_5_ = v18_6_.IsTweening
        v18_6_ = v0_58_
        v18_5_ = v18_5_(v18_6_)
        if v18_5_ then
            v18_6_ = v0_25_
            v18_5_ = v18_6_.StopTween
            v18_6_ = v0_58_
            v18_5_(v18_6_)
        end
        v18_5_ = nil
        v0_58_ = a2
    end
    if not a2 then
        v18_5_ = v0_61_
        v18_5_()
    end
    v18_5_ = v0_65_
    v18_5_()
    v18_5_ = v0_53_
    v18_6_ = ""
    v18_5_.Text = v18_6_
    local wait = task.wait
    v18_6_ = 0.500000
    wait(v18_6_)
    v18_5_ = nil
    v0_57_ = v18_6_
    v18_5_ = nil
    v18_6_ = nil
    local v18_7_ = a4 or "_finished"
    local v18_8_ = false
    local v18_9_ = a1.Contexts
    local v18_10_ = nil
    local v18_11_ = nil
    local new = Instance.new
    local v18_15_ = "BindableEvent"
    local v18_14_ = new(v18_15_)
    v18_15_ = v0_51_
    local v18_18_ = nil.Speaker
    local v18_17_ = v18_18_.ImageId
    if v18_17_ == nil then
        local v18_16_ = false
    end
    local v18_16_ = true
    v18_15_.Visible = v18_16_
    v18_15_ = v0_51_
    v18_18_ = v0_51_
    v18_17_ = v18_18_.Visible
    if v18_17_ then
        v18_17_ = "rbxassetid://%*"
        local v18_20_ = nil.Speaker
        local v18_19_ = v18_20_.ImageId
        v18_17_ = v18_17_:format(v18_19_)
        v18_16_ = v18_17_
        if not v18_16_ then
            v18_16_ = "rbxassetid://114674108601917"
        end
    end
    v18_16_ = "rbxassetid://114674108601917"
    v18_15_.Image = v18_16_
    v18_15_ = v0_52_
    v18_17_ = nil.Speaker
    v18_16_ = v18_17_.Name
    v18_15_.Text = v18_16_
    v18_15_ = v0_49_
    v18_18_ = v0_51_
    v18_17_ = v18_18_.Visible
    v18_16_ = not v18_17_
    v18_15_.Visible = v18_16_
    v18_16_ = v0_49_
    v18_15_ = v18_16_.Visible
    if v18_15_ then
        v18_16_ = nil.Speaker
        v18_15_ = v18_16_.ViewportData
        if v18_15_ then
            v18_15_ = v0_67_
            v18_16_ = nil.Speaker
            v18_15_ = v18_15_(v18_16_)
            v18_18_ = nil.Speaker
            v18_17_ = v18_18_.ViewportData
            v18_16_ = v18_17_.Model
            if v18_16_ then
                v18_18_ = nil.Speaker
                v18_17_ = v18_18_.ViewportData
                v18_16_ = v18_17_.Model
                v18_18_ = "Model"
                v18_16_ = v18_16_:IsA(v18_18_)
                if v18_16_ then
                    local v18_19_ = nil.Speaker
                    v18_18_ = v18_19_.ViewportData
                    v18_17_ = v18_18_.Model
                    v18_17_ = v18_17_:GetChildren()
                    v18_16_ = #v18_17_
                    if v18_16_ == 0.000000 then
                        v18_16_ = v0_57_
                        if v18_16_ then
                            v18_17_ = v0_25_
                            v18_16_ = v18_17_.StopTween
                            v18_17_ = v0_57_
                            v18_16_(v18_17_)
                            v18_16_ = nil
                            v0_57_ = v18_6_
                        end
                        v18_16_ = v0_57_
                        if v18_16_ then
                            v18_17_ = v0_25_
                            v18_16_ = v18_17_.IsTweening
                            v18_17_ = v0_57_
                            v18_16_ = v18_16_(v18_17_)
                            if v18_16_ then
                                v18_17_ = v0_25_
                                v18_16_ = v18_17_.StopTween
                                v18_17_ = v0_57_
                                v18_16_(v18_17_)
                            end
                            v18_16_ = nil
                            v0_57_ = v18_6_
                        end
                        if not a3 then
                            v18_16_ = v0_62_
                            v18_16_()
                        end
                        v18_16_ = false
                        v0_59_ = a1
                        v18_16_ = "_left"
                        return v18_16_
                    end
                end
            end
        end
    end
    v18_15_ = v0_53_
    v18_16_ = ""
    v18_15_.Text = v18_16_
    local defer = task.defer
    v18_16_ = function()
        local v19_0_ = v0_53_
        local v19_1_ = 0
        v19_0_.MaxVisibleGraphemes = v19_1_
        v19_0_ = v0_53_
        local v19_2_ = nil
        v19_1_ = v19_2_.Text
        v19_0_.Text = v19_1_
        v19_0_ = v0_53_
        local v19_3_ = nil
        v19_2_ = v19_3_.RichText
        v19_1_ = v19_2_ or false
        v19_0_.RichText = v19_1_
        v19_0_ = 0
        local graphemes = utf8.graphemes
        local v19_4_ = v0_53_
        v19_2_ = v19_4_.ContentText
        v19_1_, v19_2_, v19_3_ = graphemes(v19_2_)
        v19_0_ += 1.000000
        local v19_6_ = v0_53_
        v19_6_.MaxVisibleGraphemes = v19_0_
        local v19_7_ = v0_53_
        v19_6_ = v19_7_.LocalizedText
        local v19_8_ = v19_4_
        local v19_9_ = nil
        v19_6_ = v19_6_:sub(v19_8_, v19_9_)
        if v19_6_ ~= " " then
            v19_7_ = v0_53_
            v19_6_ = v19_7_.LocalizedText
            v19_8_ = v19_4_
            v19_9_ = nil
            v19_6_ = v19_6_:sub(v19_8_, v19_9_)
            if v19_6_ ~= "\n" then
                v19_6_ = v0_9_
                v19_6_:Play()
            end
        end
        v19_6_ = v18_8_
        if v19_6_ then
            local wait = task.wait
            wait()
        else
            local wait = task.wait
            v19_7_ = 0.060000
            wait(v19_7_)
        end
        v19_1_ = v0_53_
        v19_2_ = -1
        v19_1_.MaxVisibleGraphemes = v19_2_
        v19_1_ = v18_14_
        v19_1_:Fire()
    end
    defer(v18_16_)
    v18_16_ = v0_54_
    v18_15_ = v18_16_.MouseButton1Down
    v18_17_ = function()
        local v20_1_ = v0_12_
        local v20_0_ = v20_1_.PlaySFX
        v20_1_ = "Click"
        local v20_2_ = "UISounds"
        v20_0_(v20_1_, v20_2_)
        v20_0_ = true
        v18_8_ = v20_1_
    end
    v18_15_ = v18_15_:Connect(v18_17_)
    v18_5_ = v18_15_
    v18_16_ = v0_54_
    v18_15_ = v18_16_.MouseButton1Up
    v18_17_ = function()
        local v21_0_ = false
        v18_8_ = v21_0_
    end
    v18_15_ = v18_15_:Connect(v18_17_)
    v18_6_ = v18_15_
    v18_15_ = v18_14_.Event
    v18_15_:Wait()
    v18_14_:Destroy()
    v18_15_ = nil.EndDelay
    if v18_15_ then
        v18_16_ = a1.Contexts
        v18_15_ = #v18_16_
        if nil == v18_15_ then
            v18_15_ = a1.Choices
            if v18_15_ == nil then
                local wait = task.wait
                v18_16_ = nil.EndDelay
                wait(v18_16_)
                local wait_0 = task.wait
                v18_16_ = nil.EndDelay
                wait_0(v18_16_)
            end
        else
            local wait = task.wait
            v18_16_ = nil.EndDelay
            wait(v18_16_)
        end
    end
    if v18_5_ then
        v18_8_ = false
        v18_5_:Disconnect()
        v18_6_:Disconnect()
        v18_5_ = nil
        v18_6_ = nil
    end
    v18_9_ = a1.Choices
    if v18_9_ then
        v18_9_ = nil
        v18_11_ = a1.Choices
        v18_10_ = #v18_11_
        local running = coroutine.running
        v18_11_ = running()
        v0_60_ = v18_15_
        v18_11_ = v0_56_
        local new = UDim.new
        v18_14_ = 1
        if v18_14_ < v18_10_ then
            v18_14_ = v18_10_ - 1.000000
            local v18_13_ = nil / "Instance"
            if not v18_13_ then
                v18_13_ = 0
            end
        end
        local v18_13_ = 0
        v18_14_ = 0
        local v18_12_ = new(v18_13_, v18_14_)
        v18_11_.Padding = v18_12_
        v18_11_ = a1.Choices
        v18_12_ = nil
        v18_13_ = nil
        v18_16_ = v0_26_
        v18_17_ = v0_55_
        v18_18_ = v0_45_
        local v18_19_ = {}
        local v18_20_ = v18_15_.ButtonText
        v18_19_.Content = v18_20_
        v18_20_ = v18_15_.ButtonColor3
        v18_19_.Color = v18_20_
        v18_19_.LayoutOrder = v18_14_
        v18_19_.NumberOfChoices = v18_10_
        v18_20_ = v18_15_.Result
        v18_19_.Result = v18_20_
        v18_20_ = function()
            local v22_1_ = v0_12_
            local v22_0_ = v22_1_.PlaySFX
            v22_1_ = "Click"
            local v22_2_ = "UISounds"
            v22_0_(v22_1_, v22_2_)
            v22_0_ = v0_65_
            v22_0_()
            v22_0_ = v18_15_
            v18_9_ = v22_2_
            local defer = task.defer
            v22_1_ = v0_60_
            defer(v22_1_)
        end
        v18_19_.Click = v18_20_
        v18_16_(v18_18_(v18_19_))
        local yield = coroutine.yield
        v18_11_, v18_12_ = yield()
        if not v18_11_ then
            v18_13_ = v18_9_.NextDialog
            if v18_13_ then
                v18_14_ = v0_5_
                v18_13_ = v18_14_.DisplayDialog
                v18_14_ = v18_9_.NextDialog
                v18_15_ = true
                v18_16_ = true
                v18_17_ = v18_9_.Result
                v18_18_ = true
                v18_13_ = v18_13_(v18_14_, v18_15_, v18_16_, v18_17_, v18_18_)
                v18_7_ = v18_13_
            else
                v18_7_ = v18_9_.Result
                v18_7_ = v18_12_
            end
        else
            v18_7_ = v18_12_
        end
    end
    v18_9_ = v0_57_
    if v18_9_ then
        v18_10_ = v0_25_
        v18_9_ = v18_10_.IsTweening
        v18_10_ = v0_57_
        v18_9_ = v18_9_(v18_10_)
        if v18_9_ then
            v18_10_ = v0_25_
            v18_9_ = v18_10_.StopTween
            v18_10_ = v0_57_
            v18_9_(v18_10_)
        end
        v18_9_ = nil
        v0_57_ = v18_6_
    end
    if not a3 then
        v18_9_ = v0_62_
        v18_9_()
        local wait = task.wait
        v18_10_ = 0.500000
        wait(v18_10_)
        v18_9_ = v0_49_
        v18_11_ = "WorldModel"
        v18_9_ = v18_9_:FindFirstChildWhichIsA(v18_11_)
        if v18_9_ then
            v18_9_ = v0_49_
            v18_11_ = "WorldModel"
            v18_9_ = v18_9_:FindFirstChildWhichIsA(v18_11_)
            v18_10_ = v0_47_
            v18_9_.Parent = v18_10_
        end
        v18_9_ = v0_51_
        v18_10_ = ""
        v18_9_.Image = v18_10_
        v18_9_ = v0_52_
        v18_10_ = ""
        v18_9_.Text = v18_10_
        v18_9_ = v0_53_
        v18_10_ = ""
        v18_9_.Text = v18_10_
    end
    v18_9_ = false
    v0_59_ = a1
    v18_9_ = v18_7_ or "_finished"
    return v18_9_
end
v0_5_.DisplayDialog = v0_70_
v0_70_ = function()
    local v23_0_ = v0_60_
    if v23_0_ then
        local defer = task.defer
        local v23_1_ = v0_60_
        local v23_2_ = true
        local v23_3_ = "_left"
        defer(v23_1_, v23_2_, v23_3_)
    end
end
v0_5_.CancelDialog = v0_70_
v0_71_ = v0_21_.DisplayDialog
v0_70_ = v0_71_.listen
v0_71_ = function(a1)
    local v24_2_ = a1.Dialog
    local v24_4_ = v0_13_
    local v24_3_ = v24_4_.Decode
    v24_4_ = v24_2_
    v24_3_ = v24_3_(v24_4_)
    v24_4_ = function(a1)
        local v25_1_ = a1
        local v25_2_ = nil
        local v25_3_ = nil
        local v25_7_ = nil
        local v25_6_ = type
        v25_6_ = v25_6_(v25_7_)
        if v25_6_ == "table" then
            v25_6_ = v24_4_
            v25_7_ = nil
            v25_6_(v25_7_)
        else
            v25_7_ = nil
            v25_6_ = type
            v25_6_ = v25_6_(v25_7_)
            if v25_6_ == "string" then
                local v25_8_ = "^@Instance\0([%s%w%p]+)"
                v25_6_ = nil:match(v25_8_)
                if v25_6_ then
                    v25_8_ = "^@Instance\0([%s%w%p]+)"
                    v25_6_ = nil:match(v25_8_)
                    v25_8_ = "."
                    v25_6_ = v25_6_:split(v25_8_)
                    v25_8_ = v25_6_[-1]
                    if v25_8_ == "Workspace" then
                        v25_7_ = workspace
                        if not v25_7_ then
                            v25_7_ = game
                        end
                    end
                    v25_7_ = game
                    local remove = table.remove
                    local v25_9_ = v25_6_
                    local v25_10_ = 1
                    remove(v25_9_, v25_10_)
                    v25_8_ = v25_6_
                    v25_9_ = nil
                    v25_10_ = nil
                    local v25_15_ = nil
                    local v25_13_ = v25_7_:FindFirstChild(v25_15_)
                    if v25_13_ then
                        v25_15_ = nil
                        v25_13_ = v25_7_:FindFirstChild(v25_15_)
                        v25_7_ = v25_13_
                    else
                        v25_13_ = error
                        local v25_14_ = "Unexpected error occured while decoding dialog"
                        v25_13_(v25_14_)
                    end
                    a1[nil] = v25_7_
                end
            end
        end
        return a1
    end
    local v24_5_ = v24_4_
    local v24_6_ = v24_3_
    v24_5_ = v24_5_(v24_6_)
    local v24_1_ = v24_5_
    v24_3_ = v0_5_
    v24_2_ = v24_3_.DisplayDialog
    v24_3_ = v24_1_
    v24_4_ = a1.SkipOpenTween
    v24_5_ = a1.SkipCloseTween
    v24_6_ = a1.Result
    local v24_7_ = a1.ForceStart
    v24_2_ = v24_2_(v24_3_, v24_4_, v24_5_, v24_6_, v24_7_)
    v24_5_ = v0_21_
    v24_4_ = v24_5_.DialogResult
    v24_3_ = v24_4_.send
    v24_4_ = v24_2_ or "_failed"
    v24_3_(v24_4_)
end
v0_70_(v0_71_)
v0_71_ = v0_21_.CancelDialog
v0_70_ = v0_71_.listen
v0_71_ = function(a1)
    local v26_2_ = v0_5_
    local v26_1_ = v26_2_.CancelDialog
    v26_1_()
    local v26_3_ = v0_21_
    v26_2_ = v26_3_.DialogCanceled
    v26_1_ = v26_2_.send
    v26_1_()
end
v0_70_(v0_71_)
return v0_5_
