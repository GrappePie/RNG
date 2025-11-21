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
local v0_4_ = "ReplicatedStorage"
v0_2_ = v0_2_:GetService(v0_4_)
local v0_5_ = "Modules"
v0_3_ = v0_2_:WaitForChild(v0_5_)
v0_4_ = require
local v0_7_ = "Utility"
v0_4_ = v0_4_(v0_3_:WaitForChild(v0_7_))
v0_7_ = "UI"
v0_5_ = v0_3_:WaitForChild(v0_7_)
local v0_8_ = "Components"
local v0_6_ = v0_5_:WaitForChild(v0_8_)
v0_7_ = require
local v0_10_ = "Quad"
v0_7_ = v0_7_(v0_5_:WaitForChild(v0_10_))
v0_8_ = v0_7_.Lang
local v0_9_ = v0_7_.Round
v0_10_ = v0_7_.Class
local v0_11_ = v0_7_.Mount
local v0_12_ = v0_7_.Store
local v0_13_ = v0_7_.Event
local v0_14_ = v0_7_.Tween
local v0_15_ = v0_7_.Signal
local v0_16_ = v0_10_
local v0_17_ = "TextLabel"
v0_16_ = v0_16_(v0_17_)
v0_17_ = v0_10_
local v0_18_ = "CanvasGroup"
v0_17_ = v0_17_(v0_18_)
v0_18_ = v0_10_
local v0_19_ = "UIGradient"
v0_18_ = v0_18_(v0_19_)
v0_19_ = v0_10_
local v0_20_ = "ImageLabel"
v0_19_ = v0_19_(v0_20_)
v0_20_ = v0_10_
local v0_21_ = "Frame"
v0_20_ = v0_20_(v0_21_)
v0_21_ = v0_10_
local v0_22_ = "UIStroke"
v0_21_ = v0_21_(v0_22_)
v0_22_ = v0_10_
local v0_23_ = "TextButton"
v0_22_ = v0_22_(v0_23_)
v0_23_ = v0_10_
local v0_26_ = "AuraLabel"
v0_23_ = v0_23_(v0_6_:WaitForChild(v0_26_))
local v0_24_ = v0_10_
local v0_27_ = "Corner"
v0_24_ = v0_24_(v0_6_:WaitForChild(v0_27_))
local v0_25_ = v0_10_.Extend
v0_25_ = v0_25_()
v0_26_ = v0_12_.GetStore
v0_27_ = "AuraStorage"
v0_26_ = v0_26_(v0_27_)
local new = Color3.new
local v0_28_ = 1
local v0_29_ = 1
local v0_30_ = 1
v0_27_ = new(v0_28_, v0_29_, v0_30_)
v0_16_.TextColor3 = v0_27_
v0_27_ = v0_7_.FontBold
v0_16_.FontFace = v0_27_
v0_27_ = 0
v0_16_.BorderSizePixel = v0_27_
local new = Color3.new
v0_27_ = new()
v0_16_.BackgroundColor3 = v0_27_
local new = Color3.new
v0_27_ = new()
v0_17_.BackgroundColor3 = v0_27_
v0_27_ = 0
v0_17_.BorderSizePixel = v0_27_
local new = Color3.new
v0_27_ = new()
v0_19_.BackgroundColor3 = v0_27_
v0_27_ = 0
v0_19_.BorderSizePixel = v0_27_
local new = Color3.new
v0_27_ = new()
v0_20_.BackgroundColor3 = v0_27_
v0_27_ = 0
v0_20_.BorderSizePixel = v0_27_
local new = Color3.new
v0_28_ = 1
v0_29_ = 1
v0_30_ = 1
v0_27_ = new(v0_28_, v0_29_, v0_30_)
v0_21_.Color = v0_27_
local Border = Enum.ApplyStrokeMode.Border
v0_21_.ApplyStrokeMode = Border
v0_27_ = 1.500000
v0_21_.Thickness = v0_27_
v0_27_ = 0.500000
v0_21_.Transparency = v0_27_
local new = Color3.new
v0_28_ = 1
v0_29_ = 1
v0_30_ = 1
v0_27_ = new(v0_28_, v0_29_, v0_30_)
v0_22_.TextColor3 = v0_27_
v0_27_ = v0_7_.FontBold
v0_22_.FontFace = v0_27_
v0_27_ = 0
v0_22_.BorderSizePixel = v0_27_
local new = Color3.new
v0_27_ = new()
v0_22_.BackgroundColor3 = v0_27_
v0_27_ = table.create(14)
v0_28_ = "Basic"
v0_29_ = "Epic"
v0_30_ = "Unique"
local v0_31_ = "Legendary"
local v0_32_ = "Mythic"
local v0_33_ = "Exalted"
local v0_34_ = "Glorious"
local v0_35_ = "Transcendent"
local v0_36_ = "Dimensional"
local v0_37_ = "Sequential"
local v0_38_ = "Challenged"
local v0_39_ = "Event"
local v0_40_ = "Unobtainable"
local v0_41_ = "Dev-Exclusive"
v0_27_[1] = v0_28_
v0_27_[2] = v0_29_
v0_27_[3] = v0_30_
v0_27_[4] = v0_31_
v0_27_[5] = v0_32_
v0_27_[6] = v0_33_
v0_27_[7] = v0_34_
v0_27_[8] = v0_35_
v0_27_[9] = v0_36_
v0_27_[10] = v0_37_
v0_27_[11] = v0_38_
v0_27_[12] = v0_39_
v0_27_[13] = v0_40_
v0_27_[14] = v0_41_
v0_28_ = function(a1, a2)
    local v1_4_ = "AuraName"
    local v1_5_ = "Common"
    a2:Default(v1_4_, v1_5_)
    v1_4_ = "AuraIndex"
    v1_5_ = 1
    a2:Default(v1_4_, v1_5_)
    v1_4_ = "SortIndex"
    v1_5_ = 1
    a2:Default(v1_4_, v1_5_)
    v1_4_ = "Amount"
    v1_5_ = 0
    a2:Default(v1_4_, v1_5_)
    v1_4_ = "AuraTier"
    v1_5_ = "Basic"
    a2:Default(v1_4_, v1_5_)
    v1_4_ = "Locked"
    v1_5_ = false
    a2:Default(v1_4_, v1_5_)
    v1_4_ = "IsSpecial"
    v1_5_ = false
    a2:Default(v1_4_, v1_5_)
    v1_4_ = "Callback"
    v1_5_ = function()
    end
    a2:Default(v1_4_, v1_5_)
end
v0_25_.Init = v0_28_
v0_28_ = function(a1, a2)
    local v3_2_ = v0_22_
    local v3_3_ = table.create(6)
    local fromRGB = Color3.fromRGB
    local v3_11_ = 66
    local v3_12_ = 66
    local v3_13_ = 66
    local v3_10_ = fromRGB(v3_11_, v3_12_, v3_13_)
    v3_3_.BackgroundColor3 = v3_10_
    v3_10_ = 0.650000
    v3_3_.BackgroundTransparency = v3_10_
    v3_10_ = ""
    v3_3_.Text = v3_10_
    v3_10_ = false
    v3_3_.AutoLocalize = v3_10_
    v3_10_ = 1
    v3_3_.TextTransparency = v3_10_
    local fromOffset = UDim2.fromOffset
    v3_11_ = 43
    v3_12_ = 43
    v3_10_ = fromOffset(v3_11_, v3_12_)
    v3_3_.Size = v3_10_
    local new = Vector2.new
    v3_11_ = 0.500000
    v3_12_ = 0.500000
    v3_10_ = new(v3_11_, v3_12_)
    v3_3_.AnchorPoint = v3_10_
    local fromScale = UDim2.fromScale
    v3_11_ = 0.500000
    v3_12_ = 0.500000
    v3_10_ = fromScale(v3_11_, v3_12_)
    v3_3_.Position = v3_10_
    v3_10_ = v0_26_
    v3_11_ = "SortType"
    v3_10_ = v3_10_(v3_11_)
    v3_12_ = function(a1, a2)
        if a2 == "Name" then
            local v4_4_ = a1
            local v4_3_ = v4_4_._AuraLabel
            if v4_3_ then
                local v4_5_ = a1
                v4_4_ = v4_5_._AuraLabel
                v4_3_ = v4_4_.__object
                if v4_3_ then
                    v4_5_ = a1
                    v4_4_ = v4_5_._AuraLabel
                    v4_3_ = v4_4_.__object
                    local v4_2_ = v4_3_.LocalizedText
                    if not v4_2_ then
                        v4_3_ = a2
                        v4_2_ = v4_3_.AuraName
                    end
                end
            end
            v4_3_ = a2
            local v4_2_ = v4_3_.AuraName
            return v4_2_
        end
        local random = math.random
        return random()
    end
    v3_10_ = v3_10_:With(v3_12_)
    v3_3_.Name = v3_10_
    v3_10_ = v0_26_
    v3_11_ = "SearchText"
    v3_10_ = v3_10_(v3_11_)
    v3_12_ = function(a1, a2)
        local v5_4_ = a1
        local v5_3_ = v5_4_._AuraLabel
        if v5_3_ then
            local v5_5_ = a1
            v5_4_ = v5_5_._AuraLabel
            v5_3_ = v5_4_.__object
            if v5_3_ then
                v5_5_ = a1
                v5_4_ = v5_5_._AuraLabel
                v5_3_ = v5_4_.__object
                local v5_2_ = v5_3_.LocalizedText
                if not v5_2_ then
                    v5_3_ = a2
                    v5_2_ = v5_3_.AuraName
                end
            end
        end
        v5_3_ = a2
        local v5_2_ = v5_3_.AuraName
        local v5_6_ = " "
        local v5_7_ = ""
        v5_4_ = v5_2_:gsub(v5_6_, v5_7_)
        v5_4_ = v5_4_:lower()
        local v5_8_ = " "
        local v5_9_ = ""
        v5_6_ = a2:gsub(v5_8_, v5_9_)
        v5_4_ = v5_4_:find(v5_6_:lower())
        if v5_4_ == nil then
            v5_3_ = false
        end
        v5_3_ = true
        return v5_3_
    end
    v3_10_ = v3_10_:With(v3_12_)
    v3_3_.Visible = v3_10_
    local v3_4_ = v0_23_
    local v3_5_ = table.create(1)
    local v3_7_ = a2
    local v3_8_ = "AuraName"
    v3_7_ = v3_7_(v3_8_)
    v3_5_.Aura = v3_7_
    local fromScale = UDim2.fromScale
    v3_8_ = 0.940000
    local v3_9_ = 0.940000
    v3_7_ = fromScale(v3_8_, v3_9_)
    v3_5_.Size = v3_7_
    local new = Vector2.new
    v3_8_ = 0.500000
    v3_9_ = 0.500000
    v3_7_ = new(v3_8_, v3_9_)
    v3_5_.AnchorPoint = v3_7_
    local fromScale = UDim2.fromScale
    v3_8_ = 0.500000
    v3_9_ = 0.500000
    v3_7_ = fromScale(v3_8_, v3_9_)
    v3_5_.Position = v3_7_
    local v3_6_ = a1
    v3_7_ = "_AuraLabel"
    -- WARNING: SETLIST_C0, output may be wrong!
    v3_5_ = {v3_6_, v3_6_(v3_7_)}
    v3_4_ = v3_4_(v3_5_)
    v3_5_ = v0_20_
    v3_6_ = table.create(1)
    v3_8_ = 1
    v3_6_.BackgroundTransparency = v3_8_
    local fromScale = UDim2.fromScale
    v3_9_ = 1
    v3_10_ = 1
    v3_8_ = fromScale(v3_9_, v3_10_)
    v3_6_.Size = v3_8_
    v3_8_ = -3
    v3_6_.ZIndex = v3_8_
    v3_8_ = a2
    v3_9_ = "Locked"
    v3_8_ = v3_8_(v3_9_)
    v3_6_.Visible = v3_8_
    v3_7_ = v0_19_
    v3_8_ = {}
    v3_9_ = 1
    v3_8_.BackgroundTransparency = v3_9_
    local fromScale = UDim2.fromScale
    v3_10_ = 0.800000
    v3_11_ = 0.800000
    v3_9_ = fromScale(v3_10_, v3_11_)
    v3_8_.Size = v3_9_
    local new = Vector2.new
    v3_10_ = 0.500000
    v3_11_ = 0.500000
    v3_9_ = new(v3_10_, v3_11_)
    v3_8_.AnchorPoint = v3_9_
    local fromScale = UDim2.fromScale
    v3_10_ = 0.500000
    v3_11_ = 0.500000
    v3_9_ = fromScale(v3_10_, v3_11_)
    v3_8_.Position = v3_9_
    v3_9_ = "http://www.roblox.com/asset/?id=6031082533"
    v3_8_.Image = v3_9_
    v3_9_ = 0.500000
    v3_8_.ImageTransparency = v3_9_
    -- WARNING: SETLIST_C0, output may be wrong!
    v3_6_ = {v3_7_, v3_7_(v3_8_)}
    v3_5_ = v3_5_(v3_6_)
    v3_6_ = v0_16_
    v3_7_ = {}
    local new = Vector2.new
    v3_9_ = 1
    v3_10_ = 1
    v3_8_ = new(v3_9_, v3_10_)
    v3_7_.AnchorPoint = v3_8_
    local fromRGB = Color3.fromRGB
    v3_9_ = 255
    v3_10_ = 255
    v3_11_ = 255
    v3_8_ = fromRGB(v3_9_, v3_10_, v3_11_)
    v3_7_.BackgroundColor3 = v3_8_
    v3_8_ = 1
    v3_7_.BackgroundTransparency = v3_8_
    local new = UDim2.new
    v3_9_ = 0.900000
    v3_10_ = 0
    v3_11_ = 0.900000
    v3_12_ = 0
    v3_8_ = new(v3_9_, v3_10_, v3_11_, v3_12_)
    v3_7_.Position = v3_8_
    local new = UDim2.new
    v3_9_ = 0.900000
    v3_10_ = 0
    v3_11_ = 0.250000
    v3_12_ = 0
    v3_8_ = new(v3_9_, v3_10_, v3_11_, v3_12_)
    v3_7_.Size = v3_8_
    v3_8_ = 5
    v3_7_.ZIndex = v3_8_
    v3_9_ = v0_7_
    v3_8_ = v3_9_.FontBold
    v3_7_.FontFace = v3_8_
    v3_8_ = a2
    v3_9_ = "Amount"
    v3_8_ = v3_8_(v3_9_)
    v3_10_ = function(a1, a2)
        local v6_3_ = "x%*"
        local v6_5_ = a2
        v6_3_ = v6_3_:format(v6_5_)
        local v6_2_ = v6_3_
        return v6_2_
    end
    v3_8_ = v3_8_:With(v3_10_)
    v3_7_.Text = v3_8_
    v3_8_ = a2
    v3_9_ = "Amount"
    v3_8_ = v3_8_(v3_9_)
    v3_10_ = function(a1, a2)
        local v7_3_ = 0
        if v7_3_ >= a2 then
            local v7_2_ = false
        end
        local v7_2_ = true
        return v7_2_
    end
    v3_8_ = v3_8_:With(v3_10_)
    v3_7_.Visible = v3_8_
    local fromRGB = Color3.fromRGB
    v3_9_ = 255
    v3_10_ = 255
    v3_11_ = 255
    v3_8_ = fromRGB(v3_9_, v3_10_, v3_11_)
    v3_7_.TextColor3 = v3_8_
    v3_8_ = true
    v3_7_.TextScaled = v3_8_
    local Right = Enum.TextXAlignment.Right
    v3_7_.TextXAlignment = Right
    v3_6_ = v3_6_(v3_7_)
    v3_7_ = v0_18_
    v3_8_ = {}
    v3_10_ = v0_13_
    v3_9_ = v3_10_.CreatedAsync
    v3_10_ = function(a1)
        local v8_3_ = "Follow"
        local v8_5_ = a2
        local v8_4_ = v8_5_.AuraTier
        a1:SetAttribute(v8_3_, v8_4_)
        local v8_1_ = a2
        local v8_2_ = "AuraTier"
        v8_1_ = v8_1_(v8_2_)
        v8_3_ = function()
            local v9_0_ = a1
            local v9_2_ = "Follow"
            local v9_4_ = a2
            local v9_3_ = v9_4_.AuraTier
            v9_0_:SetAttribute(v9_2_, v9_3_)
        end
        v8_1_:Observe(v8_3_)
    end
    v3_8_[v3_9_] = v3_10_
    v3_7_ = v3_7_(v3_8_)
    v3_8_ = v0_24_
    v3_9_ = table.create(1)
    v3_11_ = true
    v3_9_.UseCanvasGroup = v3_11_
    v3_11_ = 0.100000
    v3_9_.Size = v3_11_
    v3_10_ = v0_18_
    v3_11_ = {}
    v3_13_ = v0_13_
    v3_12_ = v3_13_.CreatedAsync
    v3_13_ = function(a1)
        local v10_3_ = "Follow"
        local v10_5_ = a2
        local v10_4_ = v10_5_.AuraTier
        a1:SetAttribute(v10_3_, v10_4_)
        local v10_1_ = a2
        local v10_2_ = "AuraTier"
        v10_1_ = v10_1_(v10_2_)
        v10_3_ = function()
            local v11_0_ = a1
            local v11_2_ = "Follow"
            local v11_4_ = a2
            local v11_3_ = v11_4_.AuraTier
            v11_0_:SetAttribute(v11_2_, v11_3_)
        end
        v10_1_:Observe(v10_3_)
    end
    v3_11_[v3_12_] = v3_13_
    -- WARNING: SETLIST_C0, output may be wrong!
    v3_9_ = {v3_10_, v3_10_(v3_11_)}
    v3_8_ = v3_8_(v3_9_)
    v3_9_ = v0_21_
    v3_10_ = table.create(1)
    v3_12_ = 1
    v3_10_.Transparency = v3_12_
    v3_12_ = 0
    v3_10_.Thickness = v3_12_
    v3_13_ = v0_13_
    v3_12_ = v3_13_.Created
    v3_13_ = function(a1)
        local v12_1_ = function()
            local find = table.find
            local v13_1_ = v0_27_
            local v13_3_ = a2
            local v13_2_ = v13_3_.AuraTier
            local v13_0_ = find(v13_1_, v13_2_)
            if not v13_0_ then
                v13_2_ = v0_27_
                v13_1_ = #v13_2_
                v13_0_ = v13_1_ + 1.000000
            end
            v13_1_ = 7
            if v13_1_ < v13_0_ then
                v13_1_ = a1
                v13_2_ = 1.500000
                v13_1_.Thickness = v13_2_
                v13_1_ = a1
                v13_3_ = 10
                if v13_3_ <= v13_0_ then
                    v13_2_ = 0
                else
                    v13_3_ = 8
                    if v13_0_ <= v13_3_ then
                        v13_2_ = 0.800000
                    else
                        v13_2_ = 0.500000
                    end
                end
                v13_1_.Transparency = v13_2_
                return
            end
            v13_1_ = a1
            v13_2_ = 0
            v13_1_.Thickness = v13_2_
            v13_1_ = a1
            v13_2_ = 1
            v13_1_.Transparency = v13_2_
        end
        local find = table.find
        local v12_3_ = v0_27_
        local v12_5_ = a2
        local v12_4_ = v12_5_.AuraTier
        local v12_2_ = find(v12_3_, v12_4_)
        if not v12_2_ then
            v12_4_ = v0_27_
            v12_3_ = #v12_4_
            v12_2_ = v12_3_ + 1.000000
        end
        v12_3_ = 7
        if v12_3_ < v12_2_ then
            v12_3_ = 1.500000
            a1.Thickness = v12_3_
            v12_4_ = 10
            if v12_4_ <= v12_2_ then
                v12_3_ = 0
            else
                v12_4_ = 8
                if v12_2_ <= v12_4_ then
                    v12_3_ = 0.800000
                else
                    v12_3_ = 0.500000
                end
            end
            a1.Transparency = v12_3_
        else
            v12_3_ = 0
            a1.Thickness = v12_3_
            v12_3_ = 1
            a1.Transparency = v12_3_
        end
        v12_2_ = a2
        v12_3_ = "AuraTier"
        v12_2_ = v12_2_(v12_3_)
        v12_4_ = v12_1_
        v12_2_:Observe(v12_4_)
    end
    v3_10_[v3_12_] = v3_13_
    v3_11_ = v0_18_
    v3_12_ = {}
    local v3_14_ = v0_13_
    v3_13_ = v3_14_.CreatedAsync
    v3_14_ = function(a1)
        local v14_3_ = "Follow"
        local v14_5_ = a2
        local v14_4_ = v14_5_.AuraTier
        a1:SetAttribute(v14_3_, v14_4_)
        local v14_1_ = a2
        local v14_2_ = "AuraTier"
        v14_1_ = v14_1_(v14_2_)
        v14_3_ = function()
            local v15_0_ = a1
            local v15_2_ = "Follow"
            local v15_4_ = a2
            local v15_3_ = v15_4_.AuraTier
            v15_0_:SetAttribute(v15_2_, v15_3_)
        end
        v14_1_:Observe(v14_3_)
    end
    v3_12_[v3_13_] = v3_14_
    -- WARNING: SETLIST_C0, output may be wrong!
    v3_10_ = {v3_11_, v3_11_(v3_12_)}
    v3_9_ = v3_9_(v3_10_)
    v3_3_[1] = v3_4_
    v3_3_[2] = v3_5_
    v3_3_[3] = v3_6_
    v3_3_[4] = v3_7_
    v3_3_[5] = v3_8_
    v3_3_[6] = v3_9_
    v3_11_ = v0_13_
    v3_10_ = v3_11_.Created
    v3_11_ = function(a1)
        local v16_1_ = function()
            local v17_1_ = v0_26_
            local v17_0_ = v17_1_.SortType
            if v17_0_ == "Tier" then
                v17_0_ = a1
                local v17_2_ = a2
                v17_1_ = v17_2_.SortIndex
                v17_0_.LayoutOrder = v17_1_
                return
            end
            local v17_2_ = a2
            v17_1_ = v17_2_.AuraIndex
            v17_0_ = typeof
            v17_0_ = v17_0_(v17_1_)
            if v17_0_ == "number" then
                v17_0_ = a1
                v17_2_ = a2
                v17_1_ = v17_2_.AuraIndex
                v17_0_.LayoutOrder = v17_1_
            end
        end
        local v16_2_ = v0_26_
        local v16_3_ = "SortType"
        v16_2_ = v16_2_(v16_3_)
        local v16_4_ = v16_1_
        v16_2_:Observe(v16_4_)
        v16_2_ = a2
        v16_3_ = "SortIndex,AuraIndex"
        v16_2_ = v16_2_(v16_3_)
        v16_4_ = v16_1_
        v16_2_:Observe(v16_4_)
    end
    v3_3_[v3_10_] = v3_11_
    v3_10_ = v0_13_
    v3_11_ = "MouseButton1Down"
    v3_10_ = v3_10_(v3_11_)
    v3_11_ = function(a1, ...)
        local v18_2_ = a2
        local v18_1_ = v18_2_.Callback
        if v18_1_ then
            v18_2_ = v0_4_
            v18_1_ = v18_2_.PlaySFX
            v18_2_ = "Click"
            local v18_3_ = "UISounds"
            v18_1_(v18_2_, v18_3_)
            v18_2_ = a2
            v18_1_ = v18_2_.Callback
            v18_2_ = a1
            v18_1_(...)
        end
    end
    v3_3_[v3_10_] = v3_11_
    return v3_2_(v3_3_)
end
v0_25_.Render = v0_28_
return v0_25_
