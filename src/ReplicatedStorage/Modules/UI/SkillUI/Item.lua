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
local v0_4_ = "UserInputService"
v0_2_ = v0_2_:GetService(v0_4_)
v0_3_ = game
local v0_5_ = "ReplicatedStorage"
v0_3_ = v0_3_:GetService(v0_5_)
v0_4_ = game
local v0_6_ = "ContextActionService"
v0_4_ = v0_4_:GetService(v0_6_)
local v0_7_ = "Modules"
v0_5_ = v0_3_:WaitForChild(v0_7_)
local v0_8_ = "UI"
v0_6_ = v0_5_:WaitForChild(v0_8_)
local v0_9_ = "Components"
v0_7_ = v0_6_:WaitForChild(v0_9_)
v0_8_ = require
local v0_11_ = "Quad"
v0_8_ = v0_8_(v0_6_:WaitForChild(v0_11_))
v0_9_ = v0_0_.LocalPlayer
local v0_10_ = v0_2_.TouchEnabled
v0_11_ = {}
local Backspace = Enum.KeyCode.Backspace
local v0_13_ = "rbxasset://textures/ui/Controls/backspace.png"
v0_11_[Backspace] = v0_13_
local Return = Enum.KeyCode.Return
v0_13_ = "rbxasset://textures/ui/Controls/return.png"
v0_11_[Return] = v0_13_
local LeftShift = Enum.KeyCode.LeftShift
v0_13_ = "rbxasset://textures/ui/Controls/shift.png"
v0_11_[LeftShift] = v0_13_
local RightShift = Enum.KeyCode.RightShift
v0_13_ = "rbxasset://textures/ui/Controls/shift.png"
v0_11_[RightShift] = v0_13_
local Tab = Enum.KeyCode.Tab
v0_13_ = "rbxasset://textures/ui/Controls/tab.png"
v0_11_[Tab] = v0_13_
local Comma = Enum.KeyCode.Comma
v0_13_ = "rbxasset://textures/ui/Controls/comma.png"
v0_11_[Comma] = v0_13_
local Backquote = Enum.KeyCode.Backquote
v0_13_ = "rbxasset://textures/ui/Controls/graveaccent.png"
v0_11_[Backquote] = v0_13_
local Period = Enum.KeyCode.Period
v0_13_ = "rbxasset://textures/ui/Controls/period.png"
v0_11_[Period] = v0_13_
local Space = Enum.KeyCode.Space
v0_13_ = "rbxasset://textures/ui/Controls/spacebar.png"
v0_11_[Space] = v0_13_
local v0_12_ = v0_8_.Lang
v0_13_ = v0_8_.Round
local v0_14_ = v0_8_.Class
local v0_15_ = v0_8_.Mount
local v0_16_ = v0_8_.Store
local v0_17_ = v0_8_.Event
local v0_18_ = v0_8_.Tween
local v0_19_ = v0_8_.Signal
local v0_20_ = v0_14_
local v0_21_ = "Frame"
v0_20_ = v0_20_(v0_21_)
v0_21_ = v0_14_
local v0_22_ = "UIStroke"
v0_21_ = v0_21_(v0_22_)
v0_22_ = v0_14_
local v0_23_ = "ImageLabel"
v0_22_ = v0_22_(v0_23_)
v0_23_ = v0_14_
local v0_24_ = "CanvasGroup"
v0_23_ = v0_23_(v0_24_)
v0_24_ = v0_14_
local v0_25_ = "TextLabel"
v0_24_ = v0_24_(v0_25_)
v0_25_ = v0_14_
local v0_26_ = "TextButton"
v0_25_ = v0_25_(v0_26_)
v0_26_ = v0_14_
local v0_27_ = "UIAspectRatioConstraint"
v0_26_ = v0_26_(v0_27_)
v0_27_ = v0_14_
local v0_30_ = "Corner"
v0_27_ = v0_27_(v0_7_:WaitForChild(v0_30_))
local v0_28_ = v0_14_
local v0_31_ = "Shadow"
v0_28_ = v0_28_(v0_7_:WaitForChild(v0_31_))
local v0_29_ = v0_14_.Extend
v0_29_ = v0_29_()
local new = Color3.new
v0_30_ = new()
v0_20_.BackgroundColor3 = v0_30_
v0_30_ = 0
v0_20_.BorderSizePixel = v0_30_
local new = Color3.new
v0_31_ = 1
local v0_32_ = 1
local v0_33_ = 1
v0_30_ = new(v0_31_, v0_32_, v0_33_)
v0_21_.Color = v0_30_
local Border = Enum.ApplyStrokeMode.Border
v0_21_.ApplyStrokeMode = Border
v0_30_ = 1.500000
v0_21_.Thickness = v0_30_
v0_30_ = 0.500000
v0_21_.Transparency = v0_30_
local new = Color3.new
v0_30_ = new()
v0_22_.BackgroundColor3 = v0_30_
v0_30_ = 0
v0_22_.BorderSizePixel = v0_30_
local new = Color3.new
v0_30_ = new()
v0_23_.BackgroundColor3 = v0_30_
v0_30_ = 0
v0_23_.BorderSizePixel = v0_30_
local new = Color3.new
v0_31_ = 1
v0_32_ = 1
v0_33_ = 1
v0_30_ = new(v0_31_, v0_32_, v0_33_)
v0_24_.TextColor3 = v0_30_
v0_30_ = v0_8_.FontBold
v0_24_.FontFace = v0_30_
v0_30_ = 0
v0_24_.BorderSizePixel = v0_30_
local new = Color3.new
v0_30_ = new()
v0_24_.BackgroundColor3 = v0_30_
local new = Color3.new
v0_31_ = 1
v0_32_ = 1
v0_33_ = 1
v0_30_ = new(v0_31_, v0_32_, v0_33_)
v0_25_.TextColor3 = v0_30_
v0_30_ = v0_8_.FontBold
v0_25_.FontFace = v0_30_
v0_30_ = 0
v0_25_.BorderSizePixel = v0_30_
local new = Color3.new
v0_30_ = new()
v0_25_.BackgroundColor3 = v0_30_
v0_30_ = function(a1, a2)
    local v1_3_ = v0_11_
    local v1_2_ = v1_3_[a2]
    if not v1_2_ then
        v1_2_ = v0_2_
        local v1_4_ = a2
        v1_2_ = v1_2_:GetImageForKeyCode(v1_4_)
    end
    return v1_2_
end
v0_31_ = function(a1, a2)
    local v2_2_ = v0_2_
    local v2_4_ = a2
    v2_2_ = v2_2_:GetStringForKeyCode(v2_4_)
    if v2_2_ then
        v2_4_ = #v2_2_
        local v2_5_ = 0
        if v2_5_ < v2_4_ then
            local v2_3_ = v2_2_
            if not v2_3_ then
                v2_3_ = a2.Name
            end
        end
    end
    local v2_3_ = a2.Name
    return v2_3_
end
v0_32_ = function(a1, a2)
    local v3_3_ = v0_11_
    local v3_2_ = v3_3_[a2]
    if not v3_2_ then
        v3_2_ = v0_2_
        local v3_4_ = a2
        v3_2_ = v3_2_:GetImageForKeyCode(v3_4_)
    end
    v3_3_ = v3_2_
    if v3_3_ then
        local v3_4_ = #v3_2_
        local v3_5_ = 0
        if v3_5_ >= v3_4_ then
            v3_3_ = false
        end
        v3_3_ = true
    end
    return v3_3_
end
v0_33_ = function(a1, a2)
    if a2 then
        local new = Color3.new
        local v4_3_ = 0.611765
        local v4_4_ = 0.611765
        local v4_5_ = 0.611765
        return new(v4_3_, v4_4_, v4_5_)
    end
    local new = Color3.new
    local v4_3_ = 1
    local v4_4_ = 1
    local v4_5_ = 1
    return new(v4_3_, v4_4_, v4_5_)
end
local v0_34_ = function(a1, a2)
    local v5_2_ = v0_20_
    local v5_3_ = table.create(2)
    local v5_6_ = 1
    v5_3_.BackgroundTransparency = v5_6_
    local fromScale = UDim2.fromScale
    local v5_7_ = 1
    local v5_8_ = 1
    v5_6_ = fromScale(v5_7_, v5_8_)
    v5_3_.Size = v5_6_
    local v5_4_ = v0_20_
    local v5_5_ = table.create(5)
    local v5_11_ = 0.400000
    v5_5_.BackgroundTransparency = v5_11_
    local fromScale = UDim2.fromScale
    local v5_12_ = 1
    local v5_13_ = 1
    v5_11_ = fromScale(v5_12_, v5_13_)
    v5_5_.Size = v5_11_
    local RelativeYY = Enum.SizeConstraint.RelativeYY
    v5_5_.SizeConstraint = RelativeYY
    v5_6_ = v0_24_
    v5_7_ = {}
    v5_8_ = 1
    v5_7_.BackgroundTransparency = v5_8_
    local fromScale = UDim2.fromScale
    local v5_9_ = 1
    local v5_10_ = 1
    v5_8_ = fromScale(v5_9_, v5_10_)
    v5_7_.Size = v5_8_
    v5_8_ = a1
    v5_9_ = "KeyCode"
    v5_8_ = v5_8_(v5_9_)
    v5_10_ = function(a1, a2)
        local v6_5_ = v0_11_
        local v6_4_ = v6_5_[a2]
        if not v6_4_ then
            v6_4_ = v0_2_
            local v6_6_ = a2
            v6_4_ = v6_4_:GetImageForKeyCode(v6_6_)
        end
        local v6_3_ = v6_4_
        if v6_3_ then
            v6_5_ = #v6_4_
            local v6_6_ = 0
            if v6_6_ >= v6_5_ then
                v6_3_ = false
            end
            v6_3_ = true
        end
        local v6_2_ = not v6_3_
        return v6_2_
    end
    v5_8_ = v5_8_:With(v5_10_)
    v5_7_.Visible = v5_8_
    v5_8_ = true
    v5_7_.TextScaled = v5_8_
    v5_8_ = a1
    v5_9_ = "KeyCode"
    v5_8_ = v5_8_(v5_9_)
    v5_10_ = v0_31_
    v5_8_ = v5_8_:With(v5_10_)
    v5_7_.Text = v5_8_
    v5_8_ = false
    v5_7_.AutoLocalize = v5_8_
    v5_6_ = v5_6_(v5_7_)
    v5_7_ = v0_22_
    v5_8_ = {}
    v5_9_ = 1
    v5_8_.BackgroundTransparency = v5_9_
    local fromScale = UDim2.fromScale
    v5_10_ = 1
    v5_11_ = 1
    v5_9_ = fromScale(v5_10_, v5_11_)
    v5_8_.Size = v5_9_
    v5_9_ = a1
    v5_10_ = "KeyCode"
    v5_9_ = v5_9_(v5_10_)
    v5_11_ = v0_30_
    v5_9_ = v5_9_:With(v5_11_)
    v5_8_.Image = v5_9_
    v5_9_ = a1
    v5_10_ = "KeyCode"
    v5_9_ = v5_9_(v5_10_)
    v5_11_ = v0_32_
    v5_9_ = v5_9_:With(v5_11_)
    v5_8_.Visible = v5_9_
    v5_7_ = v5_7_(v5_8_)
    v5_8_ = v0_21_
    v5_9_ = {}
    v5_8_ = v5_8_(v5_9_)
    v5_9_ = v0_28_
    v5_10_ = {}
    v5_9_ = v5_9_(v5_10_)
    v5_10_ = v0_27_
    v5_11_ = {}
    -- WARNING: SETLIST_C0, output may be wrong!
    v5_5_ = {v5_6_, v5_10_(v5_11_)}
    v5_4_ = v5_4_(v5_5_)
    v5_5_ = v0_20_
    v5_6_ = table.create(5)
    v5_12_ = 0.400000
    v5_6_.BackgroundTransparency = v5_12_
    local fromScale = UDim2.fromScale
    v5_13_ = 0.100000
    local v5_14_ = 0
    v5_12_ = fromScale(v5_13_, v5_14_)
    v5_6_.Position = v5_12_
    local fromScale = UDim2.fromScale
    v5_13_ = 0.900000
    v5_14_ = 1
    v5_12_ = fromScale(v5_13_, v5_14_)
    v5_6_.Size = v5_12_
    v5_7_ = v0_24_
    v5_8_ = {}
    v5_9_ = true
    v5_8_.TextScaled = v5_9_
    v5_9_ = 1
    v5_8_.BackgroundTransparency = v5_9_
    v5_9_ = a1
    v5_10_ = "SkillName"
    v5_9_ = v5_9_(v5_10_)
    v5_8_.Text = v5_9_
    local fromScale = UDim2.fromScale
    v5_10_ = 1
    v5_11_ = 1
    v5_9_ = fromScale(v5_10_, v5_11_)
    v5_8_.Size = v5_9_
    v5_7_ = v5_7_(v5_8_)
    v5_8_ = v0_20_
    v5_9_ = {}
    local new = Color3.new
    v5_11_ = 1
    v5_12_ = 1
    v5_13_ = 1
    v5_10_ = new(v5_11_, v5_12_, v5_13_)
    v5_9_.BackgroundColor3 = v5_10_
    v5_10_ = 0.800000
    v5_9_.BackgroundTransparency = v5_10_
    v5_11_ = v0_17_
    v5_10_ = v5_11_.CreatedAsync
    v5_11_ = function(a1)
        local v7_1_ = nil
        local v7_2_ = function()
            local v8_0_ = workspace
            v8_0_ = v8_0_:GetServerTimeNow()
            local v8_2_ = a1
            local v8_1_ = v8_2_.End
            if v8_1_ < v8_0_ then
                v8_1_ = v7_1_
                v8_1_:Disconnect()
                v8_1_ = a1
                local fromScale = UDim2.fromScale
                local v8_3_ = 1
                local v8_4_ = 1
                v8_2_ = fromScale(v8_3_, v8_4_)
                v8_1_.Size = v8_2_
                v8_1_ = a1
                v8_2_ = 0
                v8_1_.BackgroundTransparency = v8_2_
                v8_1_ = a2
                v8_2_ = false
                v8_1_.Disabled = v8_2_
                v8_2_ = v0_18_
                v8_1_ = v8_2_.RunTween
                v8_2_ = a1
                v8_3_ = {}
                v8_4_ = 1.500000
                v8_3_.Time = v8_4_
                v8_4_ = {}
                local v8_5_ = 1
                v8_4_.BackgroundTransparency = v8_5_
                v8_1_(v8_2_, v8_3_, v8_4_)
                return
            end
            v8_1_ = a1
            local fromScale = UDim2.fromScale
            local v8_6_ = a1
            local v8_5_ = v8_6_.End
            local v8_4_ = v8_5_ - v8_0_
            v8_6_ = a1
            v8_5_ = v8_6_.Time
            local v8_3_ = v8_4_ / v8_5_
            v8_4_ = 1
            v8_2_ = fromScale(v8_3_, v8_4_)
            v8_1_.Size = v8_2_
        end
        local v7_3_ = function()
            local v9_1_ = v0_18_
            local v9_0_ = v9_1_.StopTween
            v9_1_ = a1
            v9_0_(v9_1_)
            v9_0_ = v7_1_
            if v9_0_ then
                v9_0_ = v7_1_
                v9_0_:Disconnect()
                v9_0_ = nil
                v7_1_ = nil
            end
            v9_0_ = a1
            v9_1_ = 0.800000
            v9_0_.BackgroundTransparency = v9_1_
            v9_1_ = v0_1_
            v9_0_ = v9_1_.RenderStepped
            local v9_2_ = v7_2_
            v9_0_ = v9_0_:Connect(v9_2_)
            v7_1_ = v9_2_
        end
        local v7_5_ = v0_18_
        local v7_4_ = v7_5_.StopTween
        v7_5_ = a1
        v7_4_(v7_5_)
        if v7_1_ then
            v7_1_:Disconnect()
            v7_1_ = nil
        end
        v7_4_ = 0.800000
        a1.BackgroundTransparency = v7_4_
        v7_5_ = v0_1_
        v7_4_ = v7_5_.RenderStepped
        local v7_6_ = v7_2_
        v7_4_ = v7_4_:Connect(v7_6_)
        v7_1_ = v7_4_
        v7_4_ = a1
        v7_5_ = "End,Time"
        v7_4_ = v7_4_(v7_5_)
        v7_6_ = v7_3_
        v7_4_:Observe(v7_6_)
    end
    v5_9_[v5_10_] = v5_11_
    v5_8_ = v5_8_(v5_9_)
    v5_9_ = v0_21_
    v5_10_ = {}
    v5_11_ = a1
    v5_12_ = "Disabled"
    v5_11_ = v5_11_(v5_12_)
    v5_13_ = v0_33_
    v5_11_ = v5_11_:With(v5_13_)
    v5_10_.Color = v5_11_
    v5_9_ = v5_9_(v5_10_)
    v5_10_ = v0_28_
    v5_11_ = {}
    v5_10_ = v5_10_(v5_11_)
    v5_11_ = v0_27_
    v5_12_ = {}
    v5_13_ = a1
    v5_14_ = "Disabled"
    v5_13_ = v5_13_(v5_14_)
    local v5_15_ = v0_33_
    v5_13_ = v5_13_:With(v5_15_)
    v5_12_.Color3 = v5_13_
    -- WARNING: SETLIST_C0, output may be wrong!
    v5_6_ = {v5_7_, v5_11_(v5_12_)}
    -- WARNING: SETLIST_C0, output may be wrong!
    v5_3_ = {v5_4_, v5_5_(v5_6_)}
    return v5_2_(v5_3_)
end
local v0_35_ = function(a1, a2)
    local v10_2_ = v0_24_
    local v10_3_ = table.create(4)
    local v10_8_ = a1
    local v10_9_ = "SkillName"
    v10_8_ = v10_8_(v10_9_)
    v10_3_.Text = v10_8_
    local fromScale = UDim2.fromScale
    v10_9_ = 1
    local v10_10_ = 1
    v10_8_ = fromScale(v10_9_, v10_10_)
    v10_3_.Size = v10_8_
    v10_8_ = true
    v10_3_.TextScaled = v10_8_
    v10_8_ = 1
    v10_3_.BackgroundTransparency = v10_8_
    local v10_4_ = v0_20_
    local v10_5_ = {}
    local new = Vector2.new
    local v10_7_ = 0
    v10_8_ = 1
    local v10_6_ = new(v10_7_, v10_8_)
    v10_5_.AnchorPoint = v10_6_
    local fromScale = UDim2.fromScale
    v10_7_ = 0
    v10_8_ = 1
    v10_6_ = fromScale(v10_7_, v10_8_)
    v10_5_.Position = v10_6_
    local new = Color3.new
    v10_7_ = 1
    v10_8_ = 1
    v10_9_ = 1
    v10_6_ = new(v10_7_, v10_8_, v10_9_)
    v10_5_.BackgroundColor3 = v10_6_
    v10_6_ = 0.800000
    v10_5_.BackgroundTransparency = v10_6_
    v10_7_ = v0_17_
    v10_6_ = v10_7_.CreatedAsync
    v10_7_ = function(a1)
        local v11_1_ = nil
        local v11_2_ = function()
            local v12_0_ = workspace
            v12_0_ = v12_0_:GetServerTimeNow()
            local v12_2_ = a1
            local v12_1_ = v12_2_.End
            if v12_1_ < v12_0_ then
                v12_1_ = v11_1_
                v12_1_:Disconnect()
                v12_1_ = a1
                local fromScale = UDim2.fromScale
                local v12_3_ = 1
                local v12_4_ = 1
                v12_2_ = fromScale(v12_3_, v12_4_)
                v12_1_.Size = v12_2_
                v12_1_ = a1
                v12_2_ = 0
                v12_1_.BackgroundTransparency = v12_2_
                v12_1_ = a2
                v12_2_ = false
                v12_1_.Disabled = v12_2_
                v12_2_ = v0_18_
                v12_1_ = v12_2_.RunTween
                v12_2_ = a1
                v12_3_ = {}
                v12_4_ = 1.500000
                v12_3_.Time = v12_4_
                v12_4_ = {}
                local v12_5_ = 1
                v12_4_.BackgroundTransparency = v12_5_
                v12_1_(v12_2_, v12_3_, v12_4_)
                return
            end
            v12_1_ = a1
            local fromScale = UDim2.fromScale
            local v12_3_ = 1
            local v12_7_ = a1
            local v12_6_ = v12_7_.End
            local v12_5_ = v12_6_ - v12_0_
            v12_7_ = a1
            v12_6_ = v12_7_.Time
            local v12_4_ = v12_5_ / v12_6_
            v12_2_ = fromScale(v12_3_, v12_4_)
            v12_1_.Size = v12_2_
        end
        local v11_3_ = function()
            local v13_1_ = v0_18_
            local v13_0_ = v13_1_.StopTween
            v13_1_ = a1
            v13_0_(v13_1_)
            v13_0_ = v11_1_
            if v13_0_ then
                v13_0_ = v11_1_
                v13_0_:Disconnect()
                v13_0_ = nil
                v11_1_ = nil
            end
            v13_0_ = a1
            v13_1_ = 0.800000
            v13_0_.BackgroundTransparency = v13_1_
            v13_1_ = v0_1_
            v13_0_ = v13_1_.RenderStepped
            local v13_2_ = v11_2_
            v13_0_ = v13_0_:Connect(v13_2_)
            v11_1_ = v13_2_
        end
        local v11_5_ = v0_18_
        local v11_4_ = v11_5_.StopTween
        v11_5_ = a1
        v11_4_(v11_5_)
        if v11_1_ then
            v11_1_:Disconnect()
            v11_1_ = nil
        end
        v11_4_ = 0.800000
        a1.BackgroundTransparency = v11_4_
        v11_5_ = v0_1_
        v11_4_ = v11_5_.RenderStepped
        local v11_6_ = v11_2_
        v11_4_ = v11_4_:Connect(v11_6_)
        v11_1_ = v11_4_
        v11_4_ = a1
        v11_5_ = "End,Time"
        v11_4_ = v11_4_(v11_5_)
        v11_6_ = v11_3_
        v11_4_:Observe(v11_6_)
    end
    v10_5_[v10_6_] = v10_7_
    v10_4_ = v10_4_(v10_5_)
    v10_5_ = v0_21_
    v10_6_ = {}
    v10_7_ = a1
    v10_8_ = "Disabled"
    v10_7_ = v10_7_(v10_8_)
    v10_9_ = v0_33_
    v10_7_ = v10_7_:With(v10_9_)
    v10_6_.Color = v10_7_
    v10_5_ = v10_5_(v10_6_)
    v10_6_ = v0_28_
    v10_7_ = {}
    v10_6_ = v10_6_(v10_7_)
    v10_7_ = v0_27_
    v10_8_ = {}
    v10_9_ = a1
    v10_10_ = "Disabled"
    v10_9_ = v10_9_(v10_10_)
    local v10_11_ = v0_33_
    v10_9_ = v10_9_:With(v10_11_)
    v10_8_.Color3 = v10_9_
    v10_9_ = 0.150000
    v10_8_.Size = v10_9_
    v10_7_ = v10_7_(v10_8_)
    v10_3_[1] = v10_4_
    v10_3_[2] = v10_5_
    v10_3_[3] = v10_6_
    v10_3_[4] = v10_7_
    v10_9_ = v0_17_
    v10_8_ = v10_9_.CreatedAsync
    v10_9_ = function(a1)
        local v14_1_ = v0_4_
        local v14_4_ = a2
        local v14_3_ = v14_4_.SkillName
        v14_1_ = v14_1_:GetButton(v14_3_)
        v14_1_:ClearAllChildren()
        local new = Vector2.new
        v14_3_ = 1
        v14_4_ = 1
        local v14_2_ = new(v14_3_, v14_4_)
        v14_1_.AnchorPoint = v14_2_
        v14_2_ = 0.400000
        v14_1_.BackgroundTransparency = v14_2_
        local new = Color3.new
        v14_2_ = new()
        v14_1_.BackgroundColor3 = v14_2_
        v14_2_ = 1
        v14_1_.ImageTransparency = v14_2_
        v14_2_ = v0_15_
        v14_3_ = v14_1_
        v14_4_ = a1
        v14_2_(v14_3_, v14_4_)
    end
    v10_3_[v10_8_] = v10_9_
    return v10_2_(v10_3_)
end
local v0_36_ = function(a1, a2)
    local v15_4_ = "KeyCode"
    local X = Enum.KeyCode.X
    a2:Default(v15_4_, X)
    v15_4_ = "SkillName"
    local v15_5_ = "Teleport"
    a2:Default(v15_4_, v15_5_)
    v15_4_ = "Time"
    v15_5_ = 0
    a2:Default(v15_4_, v15_5_)
    v15_4_ = "End"
    v15_5_ = 0
    a2:Default(v15_4_, v15_5_)
    v15_4_ = "Disabled"
    v15_5_ = false
    a2:Default(v15_4_, v15_5_)
end
v0_29_.Default = v0_36_
v0_36_ = function(a1, a2)
    local v16_3_ = v0_10_
    if v16_3_ then
        local v16_2_ = v0_35_
        v16_3_ = a2
        local v16_4_ = a1
        v16_2_ = v16_2_(v16_3_, v16_4_)
        if not v16_2_ then
            v16_2_ = v0_34_
            v16_3_ = a2
            v16_4_ = a1
            v16_2_ = v16_2_(v16_3_, v16_4_)
        end
    end
    local v16_2_ = v0_34_
    v16_3_ = a2
    local v16_4_ = a1
    v16_2_ = v16_2_(v16_3_, v16_4_)
    return v16_2_
end
v0_29_.Render = v0_36_
return v0_29_
