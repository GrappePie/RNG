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
v0_6_ = v0_0_.LocalPlayer
local v0_9_ = "UI"
local v0_7_ = v0_4_:WaitForChild(v0_9_)
local v0_10_ = "Components"
v0_8_ = v0_7_:WaitForChild(v0_10_)
v0_9_ = require
local v0_12_ = "Quad"
v0_9_ = v0_9_(v0_7_:WaitForChild(v0_12_))
v0_10_ = {}
local v0_11_ = v0_9_.Lang
v0_12_ = v0_9_.Round
local v0_13_ = v0_9_.Class
local v0_14_ = v0_9_.Mount
local v0_15_ = v0_9_.Store
local v0_16_ = v0_9_.Event
local v0_17_ = v0_9_.Tween
local v0_18_ = v0_9_.Signal
local v0_19_ = v0_13_
local v0_20_ = "ImageLabel"
v0_19_ = v0_19_(v0_20_)
v0_20_ = v0_13_
local v0_21_ = "CanvasGroup"
v0_20_ = v0_20_(v0_21_)
v0_21_ = v0_13_
local v0_22_ = "TextLabel"
v0_21_ = v0_21_(v0_22_)
v0_22_ = v0_13_
local v0_23_ = "UIGradient"
v0_22_ = v0_22_(v0_23_)
v0_23_ = v0_13_
local v0_24_ = "ImageButton"
v0_23_ = v0_23_(v0_24_)
v0_24_ = v0_13_
local v0_25_ = "UIStroke"
v0_24_ = v0_24_(v0_25_)
v0_25_ = v0_13_
local v0_26_ = "Frame"
v0_25_ = v0_25_(v0_26_)
v0_26_ = v0_13_
local v0_29_ = "Corner"
v0_26_ = v0_26_(v0_8_:WaitForChild(v0_29_))
local v0_27_ = v0_15_.GetStore
local v0_28_ = "Leaderboard"
v0_27_ = v0_27_(v0_28_)
v0_29_ = v0_18_.Bindable
v0_28_ = v0_29_.New
v0_28_ = v0_28_()
local new = Color3.new
v0_29_ = new()
v0_19_.BackgroundColor3 = v0_29_
v0_29_ = 0
v0_19_.BorderSizePixel = v0_29_
local new = Color3.new
v0_29_ = new()
v0_20_.BackgroundColor3 = v0_29_
v0_29_ = 0
v0_20_.BorderSizePixel = v0_29_
local new = Color3.new
local v0_30_ = 1
local v0_31_ = 1
local v0_32_ = 1
v0_29_ = new(v0_30_, v0_31_, v0_32_)
v0_21_.TextColor3 = v0_29_
v0_29_ = v0_9_.FontBold
v0_21_.FontFace = v0_29_
v0_29_ = 0
v0_21_.BorderSizePixel = v0_29_
local new = Color3.new
v0_29_ = new()
v0_21_.BackgroundColor3 = v0_29_
local new = Color3.new
v0_29_ = new()
v0_23_.BackgroundColor3 = v0_29_
v0_29_ = 0
v0_23_.BorderSizePixel = v0_29_
local new = Color3.new
v0_30_ = 1
v0_31_ = 1
v0_32_ = 1
v0_29_ = new(v0_30_, v0_31_, v0_32_)
v0_24_.Color = v0_29_
local Border = Enum.ApplyStrokeMode.Border
v0_24_.ApplyStrokeMode = Border
v0_29_ = 1.500000
v0_24_.Thickness = v0_29_
v0_29_ = 0.500000
v0_24_.Transparency = v0_29_
local new = Color3.new
v0_29_ = new()
v0_25_.BackgroundColor3 = v0_29_
v0_29_ = 0
v0_25_.BorderSizePixel = v0_29_
v0_29_ = function(a1, a2)
    local v1_3_ = a1.Rolls
    local v1_4_ = a2.Rolls
    if v1_4_ >= v1_3_ then
        local v1_2_ = false
    end
    local v1_2_ = true
    return v1_2_
end
v0_30_ = v0_13_.Extend
v0_30_ = v0_30_()
v0_31_ = function(a1, a2)
    local v2_4_ = "Player"
    local v2_6_ = v0_0_
    local v2_5_ = v2_6_.LocalPlayer
    a2:Default(v2_4_, v2_5_)
    v2_4_ = "PVPEnabled"
    v2_5_ = false
    a2:Default(v2_4_, v2_5_)
    v2_4_ = "TitleName"
    v2_5_ = "None"
    a2:Default(v2_4_, v2_5_)
    v2_4_ = "TitleImage"
    v2_5_ = "rbxassetid://80655809326808"
    a2:Default(v2_4_, v2_5_)
    v2_4_ = "Callback"
    v2_5_ = function()
    end
    a2:Default(v2_4_, v2_5_)
end
v0_30_.Init = v0_31_
v0_31_ = function(a1, a2)
    local v4_2_ = v0_25_
    local v4_3_ = table.create(6)
    local fromScale = UDim2.fromScale
    local v4_11_ = 1
    local v4_12_ = 0.083000
    local v4_10_ = fromScale(v4_11_, v4_12_)
    v4_3_.Size = v4_10_
    v4_10_ = 0.400000
    v4_3_.BackgroundTransparency = v4_10_
    local v4_4_ = v0_23_
    local v4_5_ = {}
    local fromScale = UDim2.fromScale
    local v4_7_ = 1
    local v4_8_ = 1
    local v4_6_ = fromScale(v4_7_, v4_8_)
    v4_5_.Size = v4_6_
    v4_6_ = 1
    v4_5_.BackgroundTransparency = v4_6_
    v4_6_ = 3
    v4_5_.ZIndex = v4_6_
    v4_6_ = v0_16_
    v4_7_ = "MouseButton1Down"
    v4_6_ = v4_6_(v4_7_)
    v4_7_ = function(a1, ...)
        local v5_2_ = a2
        local v5_1_ = v5_2_.Callback
        if v5_1_ then
            v5_2_ = v0_5_
            v5_1_ = v5_2_.PlaySFX
            v5_2_ = "Click"
            local v5_3_ = "UISounds"
            v5_1_(v5_2_, v5_3_)
            v5_2_ = a2
            v5_1_ = v5_2_.Callback
            v5_2_ = a1
            v5_1_(...)
        end
    end
    v4_5_[v4_6_] = v4_7_
    v4_4_ = v4_4_(v4_5_)
    v4_5_ = v0_19_
    v4_6_ = table.create(1)
    local new = Vector2.new
    local v4_9_ = 0
    v4_10_ = 0.500000
    v4_8_ = new(v4_9_, v4_10_)
    v4_6_.AnchorPoint = v4_8_
    v4_8_ = 0.800000
    v4_6_.BackgroundTransparency = v4_8_
    local fromScale = UDim2.fromScale
    v4_9_ = 0.020000
    v4_10_ = 0.500000
    v4_8_ = fromScale(v4_9_, v4_10_)
    v4_6_.Position = v4_8_
    local fromScale = UDim2.fromScale
    v4_9_ = 0.800000
    v4_10_ = 0.800000
    v4_8_ = fromScale(v4_9_, v4_10_)
    v4_6_.Size = v4_8_
    local RelativeYY = Enum.SizeConstraint.RelativeYY
    v4_6_.SizeConstraint = RelativeYY
    v4_8_ = a2
    v4_9_ = "TitleImage"
    v4_8_ = v4_8_(v4_9_)
    v4_6_.Image = v4_8_
    v4_7_ = v0_26_
    v4_8_ = {}
    -- WARNING: SETLIST_C0, output may be wrong!
    v4_6_ = {v4_7_, v4_7_(v4_8_)}
    v4_5_ = v4_5_(v4_6_)
    v4_6_ = v0_21_
    v4_7_ = {}
    local new = Vector2.new
    v4_9_ = 0
    v4_10_ = 0.500000
    v4_8_ = new(v4_9_, v4_10_)
    v4_7_.AnchorPoint = v4_8_
    v4_8_ = 1
    v4_7_.BackgroundTransparency = v4_8_
    local fromScale = UDim2.fromScale
    v4_9_ = 0.610000
    v4_10_ = 0.500000
    v4_8_ = fromScale(v4_9_, v4_10_)
    v4_7_.Position = v4_8_
    local fromScale = UDim2.fromScale
    v4_9_ = 0.100000
    v4_10_ = 0.600000
    v4_8_ = fromScale(v4_9_, v4_10_)
    v4_7_.Size = v4_8_
    v4_8_ = true
    v4_7_.TextScaled = v4_8_
    v4_8_ = "[⚔️]"
    v4_7_.Text = v4_8_
    v4_8_ = false
    v4_7_.AutoLocalize = v4_8_
    v4_8_ = a2
    v4_9_ = "PVPEnabled"
    v4_8_ = v4_8_(v4_9_)
    v4_7_.Visible = v4_8_
    v4_6_ = v4_6_(v4_7_)
    v4_7_ = v0_25_
    v4_8_ = table.create(3)
    local fromScale = UDim2.fromScale
    local v4_13_ = 1
    local v4_14_ = 1
    v4_12_ = fromScale(v4_13_, v4_14_)
    v4_8_.Size = v4_12_
    v4_12_ = 1
    v4_8_.BackgroundTransparency = v4_12_
    v4_9_ = a1
    v4_10_ = "_PlayerNameHolder"
    v4_9_ = v4_9_(v4_10_)
    v4_10_ = v0_21_
    v4_11_ = table.create(2)
    v4_12_ = a1
    v4_13_ = "_PlayerName"
    v4_12_ = v4_12_(v4_13_)
    v4_11_[1] = v4_12_
    local new = Vector2.new
    local v4_15_ = 0
    local v4_16_ = 0.500000
    v4_14_ = new(v4_15_, v4_16_)
    v4_11_.AnchorPoint = v4_14_
    v4_14_ = 1
    v4_11_.BackgroundTransparency = v4_14_
    local fromScale = UDim2.fromScale
    v4_15_ = 0.140000
    v4_16_ = 0.500000
    v4_14_ = fromScale(v4_15_, v4_16_)
    v4_11_.Position = v4_14_
    v4_14_ = true
    v4_11_.TextScaled = v4_14_
    local Left = Enum.TextXAlignment.Left
    v4_11_.TextXAlignment = Left
    local fromScale = UDim2.fromScale
    v4_15_ = 0.550000
    v4_16_ = 0.600000
    v4_14_ = fromScale(v4_15_, v4_16_)
    v4_11_.Size = v4_14_
    v4_14_ = a2
    v4_15_ = "Player"
    v4_14_ = v4_14_(v4_15_)
    v4_16_ = function(a1, a2)
        local v6_2_ = a2.DisplayName
        return v6_2_
    end
    v4_14_ = v4_14_:With(v4_16_)
    v4_11_.Text = v4_14_
    v4_14_ = 2
    v4_11_.ZIndex = v4_14_
    v4_12_ = v0_24_
    v4_13_ = {}
    local Contextual = Enum.ApplyStrokeMode.Contextual
    v4_13_.ApplyStrokeMode = Contextual
    local new = Color3.new
    v4_14_ = new()
    v4_13_.Color = v4_14_
    v4_14_ = 0
    v4_13_.Transparency = v4_14_
    v4_12_ = v4_12_(v4_13_)
    v4_11_[2] = v4_12_
    v4_15_ = v0_16_
    v4_14_ = v4_15_.CreatedAsync
    v4_15_ = function(a1)
        local v7_3_ = "UserId"
        local v7_6_ = a2
        local v7_5_ = v7_6_.Player
        local v7_4_ = v7_5_.UserId
        a1:SetAttribute(v7_3_, v7_4_)
        local new = Instance.new
        local v7_2_ = "UIGradient"
        local v7_1_ = new(v7_2_)
        v7_4_ = "Follow"
        v7_6_ = a2
        v7_5_ = v7_6_.TitleName
        v7_1_:SetAttribute(v7_4_, v7_5_)
        v7_2_ = a2
        v7_3_ = "TitleName"
        v7_2_ = v7_2_(v7_3_)
        v7_4_ = function()
            local v8_0_ = v7_1_
            local v8_2_ = "Follow"
            local v8_4_ = a2
            local v8_3_ = v8_4_.TitleName
            v8_0_:SetAttribute(v8_2_, v8_3_)
        end
        v7_2_:Observe(v7_4_)
        v7_2_ = v0_14_
        v7_3_ = a1
        v7_4_ = v7_1_
        v7_2_(v7_3_, v7_4_)
    end
    v4_11_[v4_14_] = v4_15_
    v4_10_ = v4_10_(v4_11_)
    v4_11_ = v0_25_
    v4_12_ = table.create(1)
    v4_13_ = a1
    v4_14_ = "_EffectHolder"
    v4_13_ = v4_13_(v4_14_)
    v4_12_[1] = v4_13_
    v4_14_ = "EffectHolder"
    v4_12_.Name = v4_14_
    local new = Vector2.new
    v4_15_ = 0
    v4_16_ = 0.500000
    v4_14_ = new(v4_15_, v4_16_)
    v4_12_.AnchorPoint = v4_14_
    v4_14_ = 1
    v4_12_.BackgroundTransparency = v4_14_
    local fromScale = UDim2.fromScale
    v4_15_ = 0.140000
    v4_16_ = 0.500000
    v4_14_ = fromScale(v4_15_, v4_16_)
    v4_12_.Position = v4_14_
    -- WARNING: SETLIST_C0, output may be wrong!
    v4_8_ = {v4_9_, v4_11_(v4_12_)}
    v4_7_ = v4_7_(v4_8_)
    v4_8_ = v0_21_
    v4_9_ = table.create(2)
    v4_10_ = a1
    v4_11_ = "_Rolls"
    v4_10_ = v4_10_(v4_11_)
    v4_9_[1] = v4_10_
    local new = Vector2.new
    v4_13_ = 0
    v4_14_ = 0.500000
    v4_12_ = new(v4_13_, v4_14_)
    v4_9_.AnchorPoint = v4_12_
    v4_12_ = 1
    v4_9_.BackgroundTransparency = v4_12_
    local fromScale = UDim2.fromScale
    v4_13_ = 0.717000
    v4_14_ = 0.500000
    v4_12_ = fromScale(v4_13_, v4_14_)
    v4_9_.Position = v4_12_
    v4_12_ = true
    v4_9_.TextScaled = v4_12_
    local fromScale = UDim2.fromScale
    v4_13_ = 0.200000
    v4_14_ = 0.600000
    v4_12_ = fromScale(v4_13_, v4_14_)
    v4_9_.Size = v4_12_
    v4_12_ = "10K"
    v4_9_.Text = v4_12_
    v4_10_ = v0_24_
    v4_11_ = {}
    local Contextual = Enum.ApplyStrokeMode.Contextual
    v4_11_.ApplyStrokeMode = Contextual
    local new = Color3.new
    v4_12_ = new()
    v4_11_.Color = v4_12_
    v4_12_ = 0
    v4_11_.Transparency = v4_12_
    -- WARNING: SETLIST_C0, output may be wrong!
    v4_9_ = {v4_10_, v4_11_, v4_10_(v4_11_)}
    v4_8_ = v4_8_(v4_9_)
    v4_9_ = v0_26_
    v4_10_ = {}
    -- WARNING: SETLIST_C0, output may be wrong!
    v4_3_ = {v4_4_, v4_9_(v4_10_)}
    return v4_2_(v4_3_)
end
v0_30_.Render = v0_31_
v0_31_ = function(a1)
    local v9_1_ = {}
    local v9_2_ = v0_0_
    local v9_2_, v9_3_, v9_4_ = v9_2_:GetPlayers()
    local v9_7_ = {}
    v9_7_.Player = nil
    local v9_9_ = v0_6_
    if nil == v9_9_ then
        local v9_8_ = 0
    else
        local v9_10_ = "Rolls"
        local v9_8_ = nil:GetAttribute(v9_10_)
    end
    v9_7_.Rolls = nil
    local v9_8_ = v9_7_.Rolls
    if v9_8_ then
        v9_9_ = v9_1_
        local v9_10_ = v9_7_
        local insert = table.insert
        insert(v9_9_, v9_10_)
    end
    local sort = table.sort
    v9_3_ = v9_1_
    v9_4_ = v0_29_
    sort(v9_3_, v9_4_)
    v9_2_ = v9_1_
    v9_3_ = nil
    v9_4_ = nil
    v9_7_ = v0_28_
    v9_9_ = nil.Player
    local v9_10_ = nil
    v9_7_:Fire(v9_9_, v9_10_)
end
v0_30_.Sort = v0_31_
v0_31_ = function(a1, a2)
    local v10_2_ = a1._Rolls
    local v10_3_ = a1._PlayerNameHolder
    local v10_4_ = a1._EffectHolder
    local v10_5_ = a1._PlayerName
    local v10_6_ = function()
        local v11_2_ = v10_3_
        local v11_1_ = v11_2_.AbsoluteSize
        local new = Vector2.new
        local v11_3_ = 0.550000
        local v11_4_ = 0.600000
        v11_2_ = new(v11_3_, v11_4_)
        local v11_0_ = v11_1_ * v11_2_
        v11_2_ = v0_5_
        v11_1_ = v11_2_.GetTextSize
        local fromOffset = UDim2.fromOffset
        v11_3_ = v11_0_.X
        v11_4_ = v11_0_.Y
        v11_2_ = fromOffset(v11_3_, v11_4_)
        v11_4_ = v10_5_
        v11_3_ = v11_4_.FontFace
        local v11_5_ = v10_5_
        v11_4_ = v11_5_.Text
        v11_1_ = v11_1_(v11_2_, v11_3_, v11_4_)
        v11_3_ = v11_0_.X
        v11_4_ = v11_1_.X
        if v11_3_ >= v11_4_ then
            v11_2_ = false
        end
        v11_2_ = true
        v11_3_ = v10_5_
        if v11_2_ then
            local fromScale = UDim2.fromScale
            v11_5_ = 0.550000
            local v11_6_ = 0.600000
            v11_4_ = fromScale(v11_5_, v11_6_)
            if not v11_4_ then
                local new = UDim2.new
                v11_5_ = 0
                v11_6_ = v11_1_.X
                local v11_7_ = 0.600000
                local v11_8_ = 0
                v11_4_ = new(v11_5_, v11_6_, v11_7_, v11_8_)
            end
        end
        local new = UDim2.new
        v11_5_ = 0
        local v11_6_ = v11_1_.X
        local v11_7_ = 0.600000
        local v11_8_ = 0
        v11_4_ = new(v11_5_, v11_6_, v11_7_, v11_8_)
        v11_3_.Size = v11_4_
        v11_3_ = v10_5_
        v11_4_ = true
        v11_3_.TextScaled = v11_4_
        v11_3_ = v10_4_
        v11_5_ = v10_5_
        v11_4_ = v11_5_.Size
        v11_3_.Size = v11_4_
    end
    local v10_7_ = v10_6_
    v10_7_()
    local v10_9_ = "AbsoluteSize"
    v10_7_ = v10_3_:GetPropertyChangedSignal(v10_9_)
    v10_9_ = v10_6_
    v10_7_:Connect(v10_9_)
    v10_9_ = "Text"
    v10_7_ = v10_5_:GetPropertyChangedSignal(v10_9_)
    v10_9_ = v10_6_
    v10_7_:Connect(v10_9_)
    v10_9_ = "FontFace"
    v10_7_ = v10_5_:GetPropertyChangedSignal(v10_9_)
    v10_9_ = v10_6_
    v10_7_:Connect(v10_9_)
    v10_7_ = function()
        local v12_0_ = v10_2_
        local v12_2_ = v0_5_
        local v12_1_ = v12_2_.Shorten
        local v12_4_ = a1
        local v12_3_ = v12_4_.Player
        local v12_5_ = "Rolls"
        v12_3_ = v12_3_:GetAttribute(v12_5_)
        v12_2_ = v12_3_ or 0.000000
        v12_1_ = v12_1_(v12_2_)
        v12_0_.Text = v12_1_
        v12_1_ = v0_27_
        v12_0_ = v12_1_.TargetPlayer
        v12_2_ = a1
        v12_1_ = v12_2_.Player
        if v12_0_ == v12_1_ then
            v12_0_ = v0_27_
            v12_3_ = a1
            v12_2_ = v12_3_.Player
            v12_4_ = "Rolls"
            v12_2_ = v12_2_:GetAttribute(v12_4_)
            v12_1_ = v12_2_ or 0.000000
            v12_0_.Rolls = v12_1_
        end
        v12_0_ = a1
        v12_0_:Sort()
    end
    local v10_8_ = function()
        local v13_0_ = a1
        local v13_2_ = a1
        local v13_1_ = v13_2_.Player
        local v13_3_ = "PVP"
        v13_1_ = v13_1_:GetAttribute(v13_3_)
        v13_0_.PVPEnabled = v13_1_
    end
    v10_9_ = v0_28_
    local v10_11_ = function(a1, a2)
        local v14_3_ = a1
        local v14_2_ = v14_3_.Player
        if a1 == v14_2_ then
            if a2 == 1.000000 then
                v14_1_ = 0
            end
            v14_2_ = a2
            v14_2_.LayoutOrder = a2
        end
    end
    v10_9_ = v10_9_:Connect(v10_11_)
    local v10_10_ = v10_7_
    v10_10_()
    v10_10_ = a1.Player
    local v10_12_ = "PVP"
    v10_10_ = v10_10_:GetAttribute(v10_12_)
    a1.PVPEnabled = v10_10_
    v10_10_ = a1.Player
    v10_12_ = "Rolls"
    v10_10_ = v10_10_:GetAttributeChangedSignal(v10_12_)
    v10_12_ = v10_7_
    v10_10_:Connect(v10_12_)
    v10_10_ = a1.Player
    v10_12_ = "PVP"
    v10_10_ = v10_10_:GetAttributeChangedSignal(v10_12_)
    v10_12_ = v10_8_
    v10_10_:Connect(v10_12_)
    v10_11_ = a1.Player
    v10_10_ = v10_11_.Destroying
    v10_12_ = function()
        local v15_0_ = v10_9_
        v15_0_:Disconnect()
    end
    v10_10_:Once(v10_12_)
end
v0_30_.AfterRender = v0_31_
return v0_30_
