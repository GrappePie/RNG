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
local v0_6_ = v0_4_.Replica
v0_5_ = v0_6_.GetServerReplica
v0_5_ = v0_5_()
v0_6_ = v0_0_.LocalPlayer
local v0_9_ = "PlayerGui"
v0_7_ = v0_6_:WaitForChild(v0_9_)
local v0_10_ = "MainInterface"
local v0_8_ = v0_7_:WaitForChild(v0_10_)
v0_9_ = {}
local fromRGB = Color3.fromRGB
local v0_11_ = 255
local v0_12_ = 251
local v0_13_ = 137
v0_10_ = fromRGB(v0_11_, v0_12_, v0_13_)
v0_9_.Day = v0_10_
local fromRGB = Color3.fromRGB
v0_11_ = 129
v0_12_ = 71
v0_13_ = 255
v0_10_ = fromRGB(v0_11_, v0_12_, v0_13_)
v0_9_.Night = v0_10_
local fromRGB = Color3.fromRGB
v0_11_ = 36
v0_12_ = 39
v0_13_ = 59
v0_10_ = fromRGB(v0_11_, v0_12_, v0_13_)
v0_9_.Unknown = v0_10_
v0_10_ = {}
v0_11_ = "Unknown"
v0_10_.RedFullMoon = v0_11_
v0_11_ = {}
local v0_14_ = "UI"
v0_12_ = v0_3_:WaitForChild(v0_14_)
v0_13_ = require
local v0_16_ = "Quad"
v0_13_ = v0_13_(v0_12_:WaitForChild(v0_16_))
v0_14_ = v0_13_.Mount
local v0_15_ = v0_13_.Class
v0_16_ = v0_13_.Event
local v0_17_ = v0_15_
local v0_18_ = "TextLabel"
v0_17_ = v0_17_(v0_18_)
v0_18_ = v0_13_.FontDefault
v0_17_.FontFace = v0_18_
v0_18_ = nil
local v0_19_ = nil
local v0_20_ = nil
local v0_21_ = nil
local v0_22_ = nil
local v0_23_ = {}
local v0_24_ = v0_14_
local v0_25_ = v0_8_
local v0_26_ = v0_17_
local v0_27_ = table.create(4)
local new = Vector2.new
local v0_33_ = 0
local v0_34_ = 1
local v0_32_ = new(v0_33_, v0_34_)
v0_27_.AnchorPoint = v0_32_
local new = UDim2.new
v0_33_ = 0
v0_34_ = 10
local v0_35_ = 0.890000
local v0_36_ = -10
v0_32_ = new(v0_33_, v0_34_, v0_35_, v0_36_)
v0_27_.Position = v0_32_
local fromScale = UDim2.fromScale
v0_33_ = 0.300000
v0_34_ = 0.030000
v0_32_ = fromScale(v0_33_, v0_34_)
v0_27_.Size = v0_32_
v0_32_ = true
v0_27_.TextScaled = v0_32_
v0_32_ = 1
v0_27_.BackgroundTransparency = v0_32_
v0_32_ = 0.600000
v0_27_.TextTransparency = v0_32_
local Left = Enum.TextXAlignment.Left
v0_27_.TextXAlignment = Left
local v0_28_ = v0_17_
local v0_29_ = {}
local v0_30_ = true
v0_29_.TextScaled = v0_30_
local new = Vector2.new
local v0_31_ = 0
v0_32_ = 1
v0_30_ = new(v0_31_, v0_32_)
v0_29_.AnchorPoint = v0_30_
local fromScale = UDim2.fromScale
v0_31_ = 0
v0_32_ = 0.700000
v0_30_ = fromScale(v0_31_, v0_32_)
v0_29_.Size = v0_30_
local X = Enum.AutomaticSize.X
v0_29_.AutomaticSize = X
v0_30_ = 1
v0_29_.BackgroundTransparency = v0_30_
v0_30_ = 0.600000
v0_29_.TextTransparency = v0_30_
local Left = Enum.TextXAlignment.Left
v0_29_.TextXAlignment = Left
v0_30_ = 2
v0_29_.ZIndex = v0_30_
v0_30_ = v0_16_.Created
v0_31_ = function(a1)
    v0_19_ = a1
end
v0_29_[v0_30_] = v0_31_
v0_28_ = v0_28_(v0_29_)
v0_29_ = v0_17_
v0_30_ = {}
v0_31_ = false
v0_30_.Visible = v0_31_
v0_31_ = true
v0_30_.TextScaled = v0_31_
local new = Vector2.new
v0_32_ = 0
v0_33_ = 1
v0_31_ = new(v0_32_, v0_33_)
v0_30_.AnchorPoint = v0_31_
local fromScale = UDim2.fromScale
v0_32_ = 0
v0_33_ = 0.700000
v0_31_ = fromScale(v0_32_, v0_33_)
v0_30_.Size = v0_31_
local X = Enum.AutomaticSize.X
v0_30_.AutomaticSize = X
v0_31_ = 1
v0_30_.BackgroundTransparency = v0_31_
v0_31_ = 0.600000
v0_30_.TextTransparency = v0_31_
local Left = Enum.TextXAlignment.Left
v0_30_.TextXAlignment = Left
local new = Color3.new
v0_32_ = 0.309804
v0_33_ = 0.756863
v0_34_ = 1
v0_31_ = new(v0_32_, v0_33_, v0_34_)
v0_30_.TextColor3 = v0_31_
v0_31_ = v0_16_.CreatedAsync
v0_32_ = function(a1)
    v0_21_ = a1
end
v0_30_[v0_31_] = v0_32_
v0_29_ = v0_29_(v0_30_)
v0_30_ = v0_17_
v0_31_ = {}
v0_32_ = false
v0_31_.Visible = v0_32_
v0_32_ = true
v0_31_.TextScaled = v0_32_
local new = Vector2.new
v0_33_ = 0
v0_34_ = 1
v0_32_ = new(v0_33_, v0_34_)
v0_31_.AnchorPoint = v0_32_
local fromScale = UDim2.fromScale
v0_33_ = 0
v0_34_ = 0.700000
v0_32_ = fromScale(v0_33_, v0_34_)
v0_31_.Size = v0_32_
local X = Enum.AutomaticSize.X
v0_31_.AutomaticSize = X
v0_32_ = 1
v0_31_.BackgroundTransparency = v0_32_
v0_32_ = 0.600000
v0_31_.TextTransparency = v0_32_
local Left = Enum.TextXAlignment.Left
v0_31_.TextXAlignment = Left
local new = Color3.new
v0_33_ = 1
v0_34_ = 0.341176
v0_35_ = 0.341176
v0_32_ = new(v0_33_, v0_34_, v0_35_)
v0_31_.TextColor3 = v0_32_
v0_32_ = v0_16_.CreatedAsync
v0_33_ = function(a1)
    v0_20_ = a1
end
v0_31_[v0_32_] = v0_33_
v0_30_ = v0_30_(v0_31_)
v0_31_ = v0_17_
v0_32_ = {}
v0_33_ = true
v0_32_.TextScaled = v0_33_
local new = Color3.new
v0_34_ = 1
v0_35_ = 1
v0_36_ = 1
v0_33_ = new(v0_34_, v0_35_, v0_36_)
v0_32_.TextColor3 = v0_33_
local new = Vector2.new
v0_34_ = 0
v0_35_ = 1
v0_33_ = new(v0_34_, v0_35_)
v0_32_.AnchorPoint = v0_33_
local fromScale = UDim2.fromScale
v0_34_ = 1
v0_35_ = 0.700000
v0_33_ = fromScale(v0_34_, v0_35_)
v0_32_.Size = v0_33_
local fromScale = UDim2.fromScale
v0_34_ = 0
v0_35_ = -0.700000
v0_33_ = fromScale(v0_34_, v0_35_)
v0_32_.Position = v0_33_
v0_33_ = 1
v0_32_.BackgroundTransparency = v0_33_
v0_33_ = 0.600000
v0_32_.TextTransparency = v0_33_
local Left = Enum.TextXAlignment.Left
v0_32_.TextXAlignment = Left
v0_34_ = "v%*"
local v0_38_ = game
local v0_37_ = v0_38_.PlaceVersion
v0_36_ = v0_37_ / 1000.000000
v0_34_ = v0_34_:format(v0_36_)
v0_33_ = v0_34_
v0_32_.Text = v0_33_
v0_31_ = v0_31_(v0_32_)
v0_27_[1] = v0_28_
v0_27_[2] = v0_29_
v0_27_[3] = v0_30_
v0_27_[4] = v0_31_
v0_32_ = v0_16_.Created
v0_33_ = function(a1)
    v0_18_ = a1
end
v0_27_[v0_32_] = v0_33_
v0_24_(v0_26_(v0_27_))
v0_24_ = function(a1)
    local v5_2_ = v0_23_
    local v5_1_ = v5_2_.Biome
    v5_2_ = v0_19_
    if v5_1_ then
        local v5_3_ = v5_1_.Color
        if not v5_3_ then
            v5_3_ = a1
        end
    end
    local v5_3_ = a1
    v5_2_.TextColor3 = v5_3_
end
v0_25_ = function()
    local v6_1_ = "[ %* ]"
    local random = math.random
    local v6_3_ = tostring
    v6_3_ = v6_3_(random())
    v6_1_ = v6_1_:format(v6_3_)
    local v6_0_ = v6_1_
    v6_1_ = v0_20_
    v6_1_.Text = v6_0_
    v6_1_ = v0_21_
    v6_1_.Text = v6_0_
    v6_1_ = v0_19_
    v6_1_.Text = v6_0_
    v6_1_ = v0_20_
    local fromOffset = UDim2.fromOffset
    local random_0 = math.random
    local v6_4_ = 0
    local v6_5_ = 10
    v6_3_ = random_0(v6_4_, v6_5_)
    v6_4_ = 0
    local v6_2_ = fromOffset(v6_3_, v6_4_)
    v6_1_.Position = v6_2_
    v6_1_ = v0_21_
    local fromOffset = UDim2.fromOffset
    local random = math.random
    v6_4_ = -10
    v6_5_ = 0
    v6_3_ = random(v6_4_, v6_5_)
    v6_4_ = 0
    v6_2_ = fromOffset(v6_3_, v6_4_)
    v6_1_.Position = v6_2_
end
v0_26_ = function(a1)
    local v7_2_ = v0_23_
    local v7_1_ = v7_2_.Biome
    v7_2_ = v0_19_
    if a1 ~= "Glitched" then
        local v7_3_ = v0_22_
        if v7_3_ then
            v7_3_ = v0_22_
            v7_3_:Disconnect()
            v7_3_ = nil
            v0_22_ = v7_2_
            v7_3_ = v0_20_
            local v7_4_ = false
            v7_3_.Visible = v7_4_
            v7_3_ = v0_21_
            v7_4_ = false
            v7_3_.Visible = v7_4_
        end
        if v7_1_ then
            local v7_4_ = "[ %* ]"
            local v7_6_ = v7_1_.Text
            v7_6_ = v7_6_:upper()
            v7_4_ = v7_4_:format(v7_6_)
            v7_3_ = v7_4_
            v7_2_.Text = v7_3_
            v7_3_ = v7_1_.Color
            v7_2_.TextColor3 = v7_3_
            return
        end
        local v7_5_ = v0_5_
        local v7_4_ = v7_5_.Data
        v7_3_ = v7_4_.BiomeName
        v7_5_ = "[ %* ]"
        local v7_7_ = v7_3_:upper()
        v7_5_ = v7_5_:format(v7_7_)
        v7_4_ = v7_5_
        v7_2_.Text = v7_4_
        return
    end
    local v7_3_ = v0_22_
    if not v7_3_ then
        local v7_4_ = v0_1_
        v7_3_ = v7_4_.RenderStepped
        local v7_5_ = v0_25_
        v7_3_ = v7_3_:Connect(v7_5_)
        v0_22_ = v7_2_
        v7_3_ = v0_20_
        v7_4_ = true
        v7_3_.Visible = v7_4_
        v7_3_ = v0_21_
        v7_4_ = true
        v7_3_.Visible = v7_4_
    end
end
v0_27_ = function(a1)
    local v8_2_ = v0_23_
    local v8_1_ = v8_2_.Time
    v8_2_ = v0_18_
    if v8_1_ then
        local v8_3_ = v8_1_.Text
        v8_3_ = v8_3_:upper()
        v8_2_.Text = v8_3_
        v8_3_ = v8_1_.Color
        v8_2_.TextColor3 = v8_3_
        return
    end
    local v8_4_ = "%*TIME"
    local v8_6_ = a1:upper()
    v8_4_ = v8_4_:format(v8_6_)
    local v8_3_ = v8_4_
    v8_2_.Text = v8_3_
    v8_4_ = v0_9_
    v8_3_ = v8_4_[a1]
    v8_2_.TextColor3 = v8_3_
end
v0_28_ = function()
    local v9_0_ = v0_26_
    local v9_3_ = v0_5_
    local v9_2_ = v9_3_.Data
    local v9_1_ = v9_2_.Biome
    v9_0_(v9_1_)
    v9_2_ = v0_5_
    v9_1_ = v9_2_.Data
    v9_0_ = v9_1_.Time
    v9_2_ = v0_23_
    v9_1_ = v9_2_.Time
    v9_2_ = v0_18_
    if v9_1_ then
        v9_3_ = v9_1_.Text
        v9_3_ = v9_3_:upper()
        v9_2_.Text = v9_3_
        v9_3_ = v9_1_.Color
        v9_2_.TextColor3 = v9_3_
    else
        local v9_4_ = "%*TIME"
        local v9_6_ = v9_0_:upper()
        v9_4_ = v9_4_:format(v9_6_)
        v9_3_ = v9_4_
        v9_2_.Text = v9_3_
        v9_4_ = v0_9_
        v9_3_ = v9_4_[v9_0_]
        v9_2_.TextColor3 = v9_3_
    end
    v9_2_ = v0_5_
    v9_1_ = v9_2_.Data
    v9_0_ = v9_1_.BiomeColor3
    if not v9_0_ then
        local new = Color3.new
        v9_1_ = 1
        v9_2_ = 1
        v9_3_ = 1
        v9_0_ = new(v9_1_, v9_2_, v9_3_)
    end
    v9_2_ = v0_23_
    v9_1_ = v9_2_.Biome
    v9_2_ = v0_19_
    if v9_1_ then
        v9_3_ = v9_1_.Color
        if not v9_3_ then
            v9_3_ = v9_0_
        end
    end
    v9_3_ = v9_0_
    v9_2_.TextColor3 = v9_3_
end
v0_29_ = function(a1)
    local v10_3_ = v0_5_
    local v10_2_ = v10_3_.Data
    local v10_1_ = v10_2_.BiomeName
    return v10_1_:upper()
end
v0_11_.GetBiomeText = v0_29_
v0_29_ = function(a1, a2, a3, a4)
    if a2 == "Biome" then
        local v11_4_ = v0_19_
        if not v11_4_ then
            v11_4_ = v0_18_
        end
    end
    local v11_4_ = v0_18_
    local v11_5_ = v0_23_
    local v11_6_ = {}
    v11_6_.Text = a3
    v11_6_.Color = a4
    v11_5_[a2] = v11_6_
    v11_5_ = v0_26_
    local v11_8_ = v0_5_
    local v11_7_ = v11_8_.Data
    v11_6_ = v11_7_.Biome
    v11_5_(v11_6_)
    v11_7_ = v0_5_
    v11_6_ = v11_7_.Data
    v11_5_ = v11_6_.Time
    v11_7_ = v0_23_
    v11_6_ = v11_7_.Time
    v11_7_ = v0_18_
    if v11_6_ then
        v11_8_ = v11_6_.Text
        v11_8_ = v11_8_:upper()
        v11_7_.Text = v11_8_
        v11_8_ = v11_6_.Color
        v11_7_.TextColor3 = v11_8_
    else
        local v11_9_ = "%*TIME"
        local v11_11_ = v11_5_:upper()
        v11_9_ = v11_9_:format(v11_11_)
        v11_8_ = v11_9_
        v11_7_.Text = v11_8_
        v11_9_ = v0_9_
        v11_8_ = v11_9_[v11_5_]
        v11_7_.TextColor3 = v11_8_
    end
    v11_7_ = v0_5_
    v11_6_ = v11_7_.Data
    v11_5_ = v11_6_.BiomeColor3
    if not v11_5_ then
        local new = Color3.new
        v11_6_ = 1
        v11_7_ = 1
        v11_8_ = 1
        v11_5_ = new(v11_6_, v11_7_, v11_8_)
    end
    v11_7_ = v0_23_
    v11_6_ = v11_7_.Biome
    v11_7_ = v0_19_
    if v11_6_ then
        v11_8_ = v11_6_.Color
        if not v11_8_ then
            v11_8_ = v11_5_
        end
    end
    v11_8_ = v11_5_
    v11_7_.TextColor3 = v11_8_
end
v0_11_.OverwriteText = v0_29_
v0_29_ = function(a1, a2)
    local v12_2_ = v0_23_
    local v12_3_ = nil
    v12_2_[a2] = v12_3_
    v12_2_ = v0_26_
    local v12_5_ = v0_5_
    local v12_4_ = v12_5_.Data
    v12_3_ = v12_4_.Biome
    v12_2_(v12_3_)
    v12_4_ = v0_5_
    v12_3_ = v12_4_.Data
    v12_2_ = v12_3_.Time
    v12_4_ = v0_23_
    v12_3_ = v12_4_.Time
    v12_4_ = v0_18_
    if v12_3_ then
        v12_5_ = v12_3_.Text
        v12_5_ = v12_5_:upper()
        v12_4_.Text = v12_5_
        v12_5_ = v12_3_.Color
        v12_4_.TextColor3 = v12_5_
    else
        local v12_6_ = "%*TIME"
        local v12_8_ = v12_2_:upper()
        v12_6_ = v12_6_:format(v12_8_)
        v12_5_ = v12_6_
        v12_4_.Text = v12_5_
        v12_6_ = v0_9_
        v12_5_ = v12_6_[v12_2_]
        v12_4_.TextColor3 = v12_5_
    end
    v12_4_ = v0_5_
    v12_3_ = v12_4_.Data
    v12_2_ = v12_3_.BiomeColor3
    if not v12_2_ then
        local new = Color3.new
        v12_3_ = 1
        v12_4_ = 1
        v12_5_ = 1
        v12_2_ = new(v12_3_, v12_4_, v12_5_)
    end
    v12_4_ = v0_23_
    v12_3_ = v12_4_.Biome
    v12_4_ = v0_19_
    if v12_3_ then
        v12_5_ = v12_3_.Color
        if not v12_5_ then
            v12_5_ = v12_2_
        end
    end
    v12_5_ = v12_2_
    v12_4_.TextColor3 = v12_5_
end
v0_11_.RemoveOverwriteState = v0_29_
v0_29_ = v0_26_
v0_31_ = v0_5_.Data
v0_30_ = v0_31_.Biome
v0_29_(v0_30_)
v0_30_ = v0_5_.Data
v0_29_ = v0_30_.Time
v0_30_ = v0_23_.Time
v0_31_ = v0_18_
if v0_30_ then
    v0_32_ = v0_30_.Text
    v0_32_ = v0_32_:upper()
    v0_31_.Text = v0_32_
    v0_32_ = v0_30_.Color
    v0_31_.TextColor3 = v0_32_
else
    v0_33_ = "%*TIME"
    v0_35_ = v0_29_:upper()
    v0_33_ = v0_33_:format(v0_35_)
    v0_32_ = v0_33_
    v0_31_.Text = v0_32_
    v0_32_ = v0_9_[v0_29_]
    v0_31_.TextColor3 = v0_32_
end
v0_30_ = v0_5_.Data
v0_29_ = v0_30_.BiomeColor3
if not v0_29_ then
    local new = Color3.new
    v0_30_ = 1
    v0_31_ = 1
    v0_32_ = 1
    v0_29_ = new(v0_30_, v0_31_, v0_32_)
end
v0_30_ = v0_23_.Biome
if v0_30_ then
    v0_31_ = v0_30_.Color
    if not v0_31_ then
        v0_31_ = v0_29_
    end
end
v0_31_ = v0_29_
v0_19_.TextColor3 = v0_31_
v0_31_ = "BiomeName"
v0_32_ = v0_26_
v0_5_:ListenToChange(v0_31_, v0_32_)
v0_31_ = "BiomeColor3"
v0_32_ = v0_24_
v0_5_:ListenToChange(v0_31_, v0_32_)
v0_31_ = "Time"
v0_32_ = v0_27_
v0_5_:ListenToChange(v0_31_, v0_32_)
return v0_11_
