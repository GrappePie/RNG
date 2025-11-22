-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "StarterGui"
v0_0_ = v0_0_:GetService(v0_2_)
local v0_1_ = game
local v0_3_ = "TweenService"
v0_1_ = v0_1_:GetService(v0_3_)
local new = TweenInfo.new
v0_3_ = 0.500000
local Quart = Enum.EasingStyle.Quart
v0_2_ = new(v0_3_, Quart)
local new = TweenInfo.new
local v0_4_ = 0.300000
local Quart = Enum.EasingStyle.Quart
v0_3_ = new(v0_4_, Quart)
local new = TweenInfo.new
local v0_5_ = 0.500000
local Quart = Enum.EasingStyle.Quart
local In = Enum.EasingDirection.In
v0_4_ = new(v0_5_, Quart, In)
local new = TweenInfo.new
local v0_6_ = 1
local Quart = Enum.EasingStyle.Quart
v0_5_ = new(v0_6_, Quart)
local new = TweenInfo.new
local v0_7_ = 2
local Quart = Enum.EasingStyle.Quart
v0_6_ = new(v0_7_, Quart)
local new = TweenInfo.new
local v0_8_ = 6
local Quart = Enum.EasingStyle.Quart
local In = Enum.EasingDirection.In
v0_7_ = new(v0_8_, Quart, In)
v0_8_ = game
local v0_10_ = "ReplicatedStorage"
v0_8_ = v0_8_:GetService(v0_10_)
local v0_9_ = game
local v0_11_ = "RunService"
v0_9_ = v0_9_:GetService(v0_11_)
v0_11_ = v0_8_.Assets
v0_10_ = v0_11_.SFXs
v0_11_ = {}
local v0_12_ = 0.600000
v0_11_.BackgroundTransparency = v0_12_
v0_12_ = {}
local v0_13_ = 1
v0_12_.BackgroundTransparency = v0_13_
v0_13_ = {}
local v0_14_ = 0
v0_13_.BackgroundTransparency = v0_14_
v0_14_ = game
local v0_16_ = "Debris"
v0_14_ = v0_14_:GetService(v0_16_)
local v0_15_ = function(a1, a2, a3)
    local new = Instance.new
    local v1_4_ = "ImageLabel"
    local v1_5_ = a1
    local v1_3_ = new(v1_4_, v1_5_)
    v1_4_ = "rbxassetid://6909741538"
    v1_3_.Image = v1_4_
    v1_3_.ImageColor3 = a2
    local RelativeXX = Enum.SizeConstraint.RelativeXX
    v1_3_.SizeConstraint = RelativeXX
    v1_4_ = 1
    v1_3_.BackgroundTransparency = v1_4_
    local random = math.random
    local v1_6_ = 2
    local v1_7_ = 6
    v1_5_ = random(v1_6_, v1_7_)
    v1_4_ = v1_5_ / 100.000000
    local random = math.random
    v1_6_ = -15
    v1_7_ = 15
    v1_5_ = random(v1_6_, v1_7_)
    v1_3_.Rotation = v1_5_
    local new = Vector2.new
    v1_6_ = 0.500000
    v1_7_ = 0.500000
    v1_5_ = new(v1_6_, v1_7_)
    v1_3_.AnchorPoint = v1_5_
    local fromScale = UDim2.fromScale
    v1_6_ = v1_4_
    v1_7_ = v1_4_
    v1_5_ = fromScale(v1_6_, v1_7_)
    v1_3_.Size = v1_5_
    v1_5_ = 1
    v1_3_.ImageTransparency = v1_5_
    v1_5_ = v0_1_
    v1_7_ = v1_3_
    local v1_8_ = v0_2_
    local v1_9_ = {}
    local v1_10_ = 0
    v1_9_.ImageTransparency = v1_10_
    v1_5_ = v1_5_:Create(v1_7_, v1_8_, v1_9_)
    v1_5_:Play()
    local fromScale = UDim2.fromScale
    local random = math.random
    v1_8_ = 0
    v1_9_ = 100
    v1_7_ = random(v1_8_, v1_9_)
    v1_6_ = v1_7_ / 100.000000
    local random = math.random
    v1_9_ = 20
    v1_10_ = 100
    v1_8_ = random(v1_9_, v1_10_)
    v1_7_ = v1_8_ / 100.000000
    v1_5_ = fromScale(v1_6_, v1_7_)
    local random = math.random
    v1_8_ = 50
    v1_9_ = 70
    v1_7_ = random(v1_8_, v1_9_)
    local random = math.random
    v1_10_ = 1
    local v1_11_ = 2
    v1_9_ = random(v1_10_, v1_11_)
    if v1_9_ == 1.000000 then
        v1_8_ = -1
    else
        v1_8_ = 1
    end
    v1_6_ = v1_7_ * v1_8_
    local random = math.random
    v1_9_ = 2
    v1_10_ = 5
    v1_8_ = random(v1_9_, v1_10_)
    v1_7_ = v1_8_ / 1000.000000
    local wrap = coroutine.wrap
    v1_9_ = function()
        local v2_0_ = time
        v2_0_ = v2_0_()
        local random = math.random
        local v2_4_ = 15
        local v2_5_ = 20
        local v2_3_ = random(v2_4_, v2_5_)
        local v2_2_ = v2_3_ / 10.000000
        local v2_1_ = v2_0_ + v2_2_
        v2_2_ = v1_3_
        while v2_2_ do
            v2_3_ = v1_3_
            v2_2_ = v2_3_.Parent
            while v2_2_ do
                v2_2_ = time
                v2_2_ = v2_2_()
                v2_3_ = v2_1_ - 0.500000
                if v2_3_ <= v2_2_ then
                    v2_2_ = v1_3_
                    v2_4_ = "Removing"
                    v2_2_ = v2_2_:GetAttribute(v2_4_)
                    if not v2_2_ then
                        v2_2_ = v1_3_
                        v2_4_ = "Removing"
                        v2_5_ = true
                        v2_2_:SetAttribute(v2_4_, v2_5_)
                        v2_2_ = v0_1_
                        v2_4_ = v1_3_
                        v2_5_ = v0_4_
                        local v2_6_ = {}
                        local fromScale = UDim2.fromScale
                        local v2_8_ = 0
                        local v2_9_ = 0
                        local v2_7_ = fromScale(v2_8_, v2_9_)
                        v2_6_.Size = v2_7_
                        v2_2_ = v2_2_:Create(v2_4_, v2_5_, v2_6_)
                        v2_2_:Play()
                        v2_2_ = v0_14_
                        v2_4_ = v1_3_
                        v2_5_ = 0.500000
                        v2_2_:AddItem(v2_4_, v2_5_)
                    end
                end
                v2_4_ = time
                v2_4_ = v2_4_()
                v2_3_ = v2_4_ - v2_0_
                v2_2_ = v2_3_ * 50.000000
                v2_3_ = v1_3_
                v2_5_ = v1_5_
                local fromScale = UDim2.fromScale
                local v2_7_ = 0
                local v2_10_ = v1_7_
                local v2_9_ = -v2_10_
                local v2_8_ = v2_2_ * v2_9_
                local v2_6_ = fromScale(v2_7_, v2_8_)
                v2_4_ = v2_5_ + v2_6_
                v2_3_.Position = v2_4_
                v2_4_ = v0_9_
                v2_3_ = v2_4_.Heartbeat
                v2_3_:Wait()
            end
        end
    end
    v1_8_ = wrap(v1_9_)
    v1_8_()
end
v0_16_ = function(a1, a2, a3)
    local random = math.random
    local v3_5_ = 1
    local v3_6_ = 2
    local v3_4_ = random(v3_5_, v3_6_)
    local v3_3_ = v3_4_ / 20.000000
    local new = Instance.new
    v3_5_ = "ImageLabel"
    v3_6_ = a1
    v3_4_ = new(v3_5_, v3_6_)
    local fromScale = UDim2.fromScale
    local random = math.random
    local v3_8_ = 0
    local v3_9_ = 100
    local v3_7_ = random(v3_8_, v3_9_)
    v3_6_ = v3_7_ / 100.000000
    local random = math.random
    v3_9_ = 0
    local v3_10_ = 100
    v3_8_ = random(v3_9_, v3_10_)
    v3_7_ = v3_8_ / 100.000000
    v3_5_ = fromScale(v3_6_, v3_7_)
    v3_4_.Position = v3_5_
    local new = Color3.new
    v3_6_ = 1
    v3_7_ = 0
    v3_8_ = 0
    v3_5_ = new(v3_6_, v3_7_, v3_8_)
    v3_4_.ImageColor3 = v3_5_
    v3_5_ = "http://www.roblox.com/asset/?id=3128134647"
    v3_4_.Image = v3_5_
    local new = Vector2.new
    v3_6_ = 0.500000
    v3_7_ = 0.500000
    v3_5_ = new(v3_6_, v3_7_)
    v3_4_.AnchorPoint = v3_5_
    v3_5_ = 0
    v3_4_.BorderSizePixel = v3_5_
    v3_5_ = 1
    v3_4_.BackgroundTransparency = v3_5_
    local random = math.random
    v3_7_ = 0
    v3_8_ = 30
    v3_6_ = random(v3_7_, v3_8_)
    v3_5_ = v3_6_ / 100.000000
    v3_4_.ImageTransparency = v3_5_
    local fromScale = UDim2.fromScale
    local random = math.random
    v3_8_ = 40
    v3_9_ = 80
    v3_7_ = random(v3_8_, v3_9_)
    v3_6_ = v3_7_ / 100.000000
    local random = math.random
    v3_9_ = 20
    v3_10_ = 60
    v3_8_ = random(v3_9_, v3_10_)
    v3_7_ = v3_8_ / 100.000000
    v3_5_ = fromScale(v3_6_, v3_7_)
    v3_4_.Size = v3_5_
    v3_5_ = v0_14_
    v3_7_ = v3_4_
    v3_8_ = v3_3_
    v3_5_:AddItem(v3_7_, v3_8_)
    local wrap = coroutine.wrap
    v3_6_ = function()
        local v4_0_ = v3_4_
        while v4_0_ do
            local v4_1_ = v3_4_
            v4_0_ = v4_1_.Parent
            while v4_0_ do
                v4_0_ = v3_4_
                local fromScale = UDim2.fromScale
                local random = math.random
                local v4_4_ = 5
                local v4_5_ = 80
                local v4_3_ = random(v4_4_, v4_5_)
                local v4_2_ = v4_3_ / 100.000000
                local random = math.random
                v4_5_ = 5
                local v4_6_ = 60
                v4_4_ = random(v4_5_, v4_6_)
                v4_3_ = v4_4_ / 100.000000
                v4_1_ = fromScale(v4_2_, v4_3_)
                v4_0_.Size = v4_1_
                v4_1_ = v0_9_
                v4_0_ = v4_1_.Heartbeat
                v4_0_:Wait()
            end
        end
    end
    v3_5_ = wrap(v3_6_)
    v3_5_()
end
local v0_17_ = function(a1, a2)
    local new = Instance.new
    local v5_3_ = "ImageLabel"
    local v5_4_ = a1
    local v5_2_ = new(v5_3_, v5_4_)
    local fromScale = UDim2.fromScale
    v5_4_ = 1
    local v5_5_ = 1
    v5_3_ = fromScale(v5_4_, v5_5_)
    v5_2_.Size = v5_3_
    v5_3_ = "rbxassetid://7216855489"
    v5_2_.Image = v5_3_
    v5_2_.ImageColor3 = a2
    local RelativeXX = Enum.SizeConstraint.RelativeXX
    v5_2_.SizeConstraint = RelativeXX
    v5_3_ = 1
    v5_2_.BackgroundTransparency = v5_3_
    v5_3_ = 1
    v5_2_.ImageTransparency = v5_3_
    local random = math.random
    v5_4_ = 0
    v5_5_ = 360
    v5_3_ = random(v5_4_, v5_5_)
    v5_2_.Rotation = v5_3_
    local new = Vector2.new
    v5_4_ = 0.500000
    v5_5_ = 0.500000
    v5_3_ = new(v5_4_, v5_5_)
    v5_2_.AnchorPoint = v5_3_
    v5_3_ = v0_1_
    v5_5_ = v5_2_
    local v5_6_ = v0_2_
    local v5_7_ = {}
    local v5_8_ = 0.900000
    v5_7_.ImageTransparency = v5_8_
    v5_3_ = v5_3_:Create(v5_5_, v5_6_, v5_7_)
    v5_3_:Play()
    local fromScale = UDim2.fromScale
    local random = math.random
    v5_6_ = 0
    v5_7_ = 100
    v5_5_ = random(v5_6_, v5_7_)
    v5_4_ = v5_5_ / 100.000000
    local random = math.random
    v5_7_ = 0
    v5_8_ = 100
    v5_6_ = random(v5_7_, v5_8_)
    v5_5_ = v5_6_ / 100.000000
    v5_3_ = fromScale(v5_4_, v5_5_)
    local random = math.random
    v5_7_ = 2
    v5_8_ = 5
    v5_6_ = random(v5_7_, v5_8_)
    v5_5_ = v5_6_ / 2400.000000
    local random = math.random
    v5_8_ = 1
    local v5_9_ = 2
    v5_7_ = random(v5_8_, v5_9_)
    if v5_7_ == 1.000000 then
        v5_6_ = -1
    else
        v5_6_ = 1
    end
    v5_4_ = v5_5_ * v5_6_
    local random = math.random
    v5_8_ = 2
    v5_9_ = 5
    v5_7_ = random(v5_8_, v5_9_)
    v5_6_ = v5_7_ / 2400.000000
    local random = math.random
    v5_9_ = 1
    local v5_10_ = 2
    v5_8_ = random(v5_9_, v5_10_)
    if v5_8_ == 1.000000 then
        v5_7_ = -1
    else
        v5_7_ = 1
    end
    v5_5_ = v5_6_ * v5_7_
    local wrap = coroutine.wrap
    v5_7_ = function()
        local v6_0_ = time
        v6_0_ = v6_0_()
        local random = math.random
        local v6_4_ = 20
        local v6_5_ = 30
        local v6_3_ = random(v6_4_, v6_5_)
        local v6_2_ = v6_3_ / 10.000000
        local v6_1_ = v6_0_ + v6_2_
        v6_2_ = v5_2_
        while v6_2_ do
            v6_3_ = v5_2_
            v6_2_ = v6_3_.Parent
            while v6_2_ do
                v6_2_ = time
                v6_2_ = v6_2_()
                v6_3_ = v6_1_ - 0.500000
                if v6_3_ <= v6_2_ then
                    v6_2_ = v5_2_
                    v6_4_ = "Removing"
                    v6_2_ = v6_2_:GetAttribute(v6_4_)
                    if not v6_2_ then
                        v6_2_ = v5_2_
                        v6_4_ = "Removing"
                        v6_5_ = true
                        v6_2_:SetAttribute(v6_4_, v6_5_)
                        v6_2_ = v0_1_
                        v6_4_ = v5_2_
                        v6_5_ = v0_4_
                        local v6_6_ = {}
                        local v6_7_ = 1
                        v6_6_.ImageTransparency = v6_7_
                        v6_2_ = v6_2_:Create(v6_4_, v6_5_, v6_6_)
                        v6_2_:Play()
                        v6_2_ = v0_14_
                        v6_4_ = v5_2_
                        v6_5_ = 0.500000
                        v6_2_:AddItem(v6_4_, v6_5_)
                    end
                end
                v6_4_ = time
                v6_4_ = v6_4_()
                v6_3_ = v6_4_ - v6_0_
                v6_2_ = v6_3_ * 50.000000
                v6_3_ = v5_2_
                v6_5_ = v5_3_
                local fromScale = UDim2.fromScale
                local v6_9_ = v5_4_
                local v6_8_ = -v6_9_
                local v6_7_ = v6_2_ * v6_8_
                local v6_10_ = v5_5_
                v6_9_ = -v6_10_
                v6_8_ = v6_2_ * v6_9_
                local v6_6_ = fromScale(v6_7_, v6_8_)
                v6_4_ = v6_5_ + v6_6_
                v6_3_.Position = v6_4_
                v6_4_ = v0_9_
                v6_3_ = v6_4_.Heartbeat
                v6_3_:Wait()
            end
        end
    end
    v5_6_ = wrap(v5_7_)
    v5_6_()
end
local v0_18_ = function(a1, a2, a3, a4)
    local v7_4_ = script
    local v7_6_ = "Whoosh"
    v7_4_ = v7_4_:WaitForChild(v7_6_)
    v7_6_ = nil - "Whoosh"
    local v7_5_ = v7_6_ + 0.300000
    v7_4_.Volume = v7_5_
    v7_4_ = script
    v7_6_ = "Whoosh"
    v7_4_ = v7_4_:WaitForChild(v7_6_)
    v7_4_:Play()
    local new = Instance.new
    v7_5_ = "ImageLabel"
    v7_6_ = a1
    v7_4_ = new(v7_5_, v7_6_)
    local fromScale = UDim2.fromScale
    v7_6_ = 0.800000
    local v7_7_ = 0.800000
    v7_5_ = fromScale(v7_6_, v7_7_)
    v7_4_.Size = v7_5_
    v7_4_.Image = a4
    v7_4_.ImageColor3 = a2
    local RelativeYY = Enum.SizeConstraint.RelativeYY
    v7_4_.SizeConstraint = RelativeYY
    v7_5_ = 1
    v7_4_.BackgroundTransparency = v7_5_
    v7_4_.ImageTransparency = a3
    local new = Vector2.new
    v7_6_ = 0.500000
    v7_7_ = 0.500000
    v7_5_ = new(v7_6_, v7_7_)
    v7_4_.AnchorPoint = v7_5_
    local fromScale = UDim2.fromScale
    v7_6_ = 0.500000
    v7_7_ = 0.500000
    v7_5_ = fromScale(v7_6_, v7_7_)
    v7_4_.Position = v7_5_
    v7_5_ = math.huge
    v7_4_.ZIndex = v7_5_
    v7_5_ = v0_1_
    v7_7_ = v7_4_
    local v7_8_ = v0_6_
    local v7_9_ = {}
    local fromScale = UDim2.fromScale
    local v7_11_ = 0.700000
    local v7_12_ = 0.700000
    local v7_10_ = fromScale(v7_11_, v7_12_)
    v7_9_.Size = v7_10_
    v7_10_ = 1
    v7_9_.ImageTransparency = v7_10_
    v7_5_ = v7_5_:Create(v7_7_, v7_8_, v7_9_)
    v7_5_:Play()
    v7_5_ = v0_14_
    v7_7_ = v7_4_
    v7_8_ = 2
    v7_5_:AddItem(v7_7_, v7_8_)
end
local v0_19_ = function(a1, a2, a3, a4, a5)
    local v8_5_ = script
    local v8_7_ = "Ambient"
    v8_5_ = v8_5_:WaitForChild(v8_7_)
    v8_5_:Play()
    v8_5_ = a2.Blackboard
    local v8_6_ = a2.Colorboard
    v8_7_ = a2.Background
    local v8_8_ = a2.EquipButton
    local v8_9_ = a2.SkipButton
    local v8_10_ = a2.Star
    local v8_11_ = a2.Break1
    local v8_12_ = a2.Break2
    local v8_15_ = "ShakeAmount"
    local v8_13_ = a3:WaitForChild(v8_15_)
    local v8_16_ = "StarSpinSpeed"
    local v8_14_ = a3:WaitForChild(v8_16_)
    v8_15_ = v0_1_
    local v8_17_ = v8_7_
    local new = TweenInfo.new
    local v8_19_ = 1
    local Exponential = Enum.EasingStyle.Exponential
    local Out = Enum.EasingDirection.Out
    local v8_18_ = new(v8_19_, Exponential, Out)
    v8_19_ = v0_11_
    v8_15_ = v8_15_:Create(v8_17_, v8_18_, v8_19_)
    v8_16_ = v0_1_
    v8_18_ = v8_7_
    local new = TweenInfo.new
    local v8_20_ = 1
    local Exponential = Enum.EasingStyle.Exponential
    local Out = Enum.EasingDirection.Out
    v8_19_ = new(v8_20_, Exponential, Out)
    v8_20_ = v0_12_
    v8_16_ = v8_16_:Create(v8_18_, v8_19_, v8_20_)
    v8_17_ = v0_1_
    v8_19_ = v8_6_
    local new = TweenInfo.new
    local v8_21_ = 2
    local Quart = Enum.EasingStyle.Quart
    local In = Enum.EasingDirection.In
    v8_20_ = new(v8_21_, Quart, In)
    v8_21_ = {}
    local v8_22_ = 0
    v8_21_.ImageTransparency = v8_22_
    v8_17_ = v8_17_:Create(v8_19_, v8_20_, v8_21_)
    v8_18_ = v0_1_
    v8_20_ = v8_6_
    local new = TweenInfo.new
    v8_22_ = 2
    local Quart = Enum.EasingStyle.Quart
    local Out = Enum.EasingDirection.Out
    v8_21_ = new(v8_22_, Quart, Out)
    v8_22_ = {}
    local v8_23_ = 1
    v8_22_.ImageTransparency = v8_23_
    v8_18_ = v8_18_:Create(v8_20_, v8_21_, v8_22_)
    v8_19_ = v0_1_
    v8_21_ = v8_5_
    v8_22_ = v0_2_
    v8_23_ = v0_13_
    v8_19_ = v8_19_:Create(v8_21_, v8_22_, v8_23_)
    v8_20_ = true
    v8_21_ = v0_0_
    local All = Enum.CoreGuiType.All
    local v8_24_ = false
    v8_21_:SetCoreGuiEnabled(All, v8_24_)
    v8_21_ = false
    a4.Visible = v8_21_
    v8_19_:Play()
    v8_21_ = "http://www.roblox.com/asset/?id=12353440665"
    v8_6_.Image = v8_21_
    v8_21_ = 1
    v8_6_.ImageTransparency = v8_21_
    local new = Color3.new
    v8_22_ = 1
    v8_23_ = 1
    v8_24_ = 1
    v8_21_ = new(v8_22_, v8_23_, v8_24_)
    v8_6_.ImageColor3 = v8_21_
    local new = Color3.new
    v8_22_ = 1
    v8_23_ = 1
    v8_24_ = 1
    v8_21_ = new(v8_22_, v8_23_, v8_24_)
    v8_10_.ImageColor3 = v8_21_
    v8_23_ = "IgnoreTextColor"
    v8_21_ = a4:GetAttribute(v8_23_)
    if not v8_21_ then
        v8_21_ = a4.TextColor3
        v8_6_.ImageColor3 = v8_21_
        v8_21_ = v8_6_.ImageColor3
        v8_10_.ImageColor3 = v8_21_
    end
    v8_21_ = v0_10_
    v8_23_ = "OneMilPlus"
    v8_21_ = v8_21_:WaitForChild(v8_23_)
    v8_21_:Play()
    local fromScale = UDim2.fromScale
    v8_22_ = 1.500000
    v8_23_ = 1.500000
    v8_21_ = fromScale(v8_22_, v8_23_)
    v8_10_.Size = v8_21_
    v8_21_ = "rbxassetid://17068400400"
    v8_10_.Image = v8_21_
    v8_21_ = true
    v8_10_.Visible = v8_21_
    v8_23_ = "UIGradient"
    v8_21_ = v8_10_:FindFirstChildOfClass(v8_23_)
    if v8_21_ then
        v8_23_ = "UIGradient"
        v8_21_ = v8_10_:FindFirstChildOfClass(v8_23_)
        local new = ColorSequence.new
        local fromRGB = Color3.fromRGB
        v8_24_ = 167
        local v8_25_ = 0
        local v8_26_ = 3
        v8_23_ = fromRGB(v8_24_, v8_25_, v8_26_)
        local fromRGB = Color3.fromRGB
        v8_25_ = 255
        v8_26_ = 61
        local v8_27_ = 64
        v8_22_ = new(fromRGB(v8_25_, v8_26_, v8_27_))
        v8_21_.Color = v8_22_
    end
    v8_21_ = script
    v8_23_ = "Corners"
    v8_21_ = v8_21_:WaitForChild(v8_23_)
    v8_21_ = v8_21_:Clone()
    v8_21_.Parent = v8_5_
    v8_22_ = v0_1_
    v8_24_ = v8_21_
    local v8_25_ = v0_6_
    local v8_26_ = {}
    local fromScale = UDim2.fromScale
    local v8_28_ = 0.970000
    local v8_29_ = 0.940000
    local v8_27_ = fromScale(v8_28_, v8_29_)
    v8_26_.Size = v8_27_
    v8_22_ = v8_22_:Create(v8_24_, v8_25_, v8_26_)
    v8_22_:Play()
    v8_22_ = script
    v8_24_ = "CodeText"
    v8_22_ = v8_22_:WaitForChild(v8_24_)
    v8_22_ = v8_22_:Clone()
    v8_22_.Parent = v8_5_
    v8_23_ = time
    v8_23_ = v8_23_()
    local wrap = coroutine.wrap
    v8_25_ = function()
        local wait = task.wait
        local v9_1_ = 0.050000
        wait(v9_1_)
        local v9_0_ = v8_20_
        while v9_0_ do
            v9_0_ = v0_15_
            v9_1_ = v8_5_
            local fromRGB = Color3.fromRGB
            local v9_3_ = 255
            local v9_4_ = 0
            local v9_5_ = 4
            local v9_2_ = fromRGB(v9_3_, v9_4_, v9_5_)
            v9_3_ = "rbxassetid://6909741538"
            v9_0_(v9_1_, v9_2_, v9_3_)
            v9_1_ = time
            v9_1_ = v9_1_()
            v9_2_ = v8_23_
            v9_0_ = v9_1_ - v9_2_
            v9_1_ = 1
            if v9_0_ < v9_1_ then
                v9_0_ = v8_21_
                local random = math.random
                v9_3_ = 1
                v9_4_ = 2
                v9_2_ = random(v9_3_, v9_4_)
                if v9_2_ ~= 1.000000 then
                    v9_1_ = false
                end
                v9_1_ = true
                v9_0_.Visible = v9_1_
            else
                v9_1_ = v8_21_
                v9_0_ = v9_1_.Visible
                if not v9_0_ then
                    v9_0_ = v8_21_
                    v9_1_ = true
                    v9_0_.Visible = v9_1_
                    return
                end
            end
        end
    end
    v8_24_ = wrap(v8_25_)
    v8_24_()
    local wrap = coroutine.wrap
    v8_25_ = function()
        local wait = task.wait
        local v10_1_ = 0.010000
        wait(v10_1_)
        local v10_0_ = v8_20_
        while v10_0_ do
            v10_0_ = v8_21_
            local fromScale = UDim2.fromScale
            local v10_3_ = 0.500000
            local v10_4_ = 0.500000
            local v10_2_ = fromScale(v10_3_, v10_4_)
            local fromScale = UDim2.fromScale
            local random = math.random
            local v10_6_ = -5
            local v10_7_ = 5
            local v10_5_ = random(v10_6_, v10_7_)
            v10_4_ = v10_5_ / 1000.000000
            local random = math.random
            v10_7_ = -10
            local v10_8_ = 10
            v10_6_ = random(v10_7_, v10_8_)
            v10_5_ = v10_6_ / 1000.000000
            v10_3_ = fromScale(v10_4_, v10_5_)
            v10_1_ = v10_2_ + v10_3_
            v10_0_.Position = v10_1_
            v10_2_ = 1
            local random = math.random
            v10_4_ = 5
            v10_5_ = 9
            v10_3_ = random(v10_4_, v10_5_)
            v10_0_ = v10_3_
            v10_1_ = 1
            for v10_2_ = v10_2_, v10_0_, v10_1_ do
                local random = math.random
                v10_4_ = 1
                v10_5_ = 100
                v10_3_ = random(v10_4_, v10_5_)
                v10_5_ = 95
                if v10_5_ <= v10_3_ then
                    v10_4_ = " "
                else
                    v10_5_ = 50
                    if v10_5_ < v10_3_ then
                        v10_4_ = "1"
                    else
                        v10_4_ = "0"
                    end
                end
                v10_5_ = v8_22_
                local v10_9_ = v8_22_
                v10_7_ = v10_9_.Text
                v10_8_ = v10_4_
                v10_6_ = v10_7_
                v10_5_.Text = v10_6_
            end
            v10_0_ = v0_16_
            v10_1_ = v8_5_
            local fromRGB = Color3.fromRGB
            v10_3_ = 255
            v10_4_ = 0
            v10_5_ = 4
            v10_2_ = fromRGB(v10_3_, v10_4_, v10_5_)
            v10_3_ = "rbxassetid://6909741538"
            v10_0_(v10_1_, v10_2_, v10_3_)
            return
        end
    end
    v8_24_ = wrap(v8_25_)
    v8_24_()
    local wrap = coroutine.wrap
    v8_25_ = function()
        local wait = task.wait
        local v11_1_ = 0.200000
        local v11_0_ = wait(v11_1_)
        while v11_0_ do
            v11_0_ = v8_20_
            while v11_0_ do
                v11_0_ = v0_17_
                v11_1_ = v8_5_
                local fromRGB = Color3.fromRGB
                local v11_3_ = 255
                local v11_4_ = 0
                local v11_5_ = 4
                v11_0_(fromRGB(v11_3_, v11_4_, v11_5_))
            end
        end
    end
    v8_24_ = wrap(v8_25_)
    v8_24_()
    v8_24_ = v0_1_
    v8_26_ = v8_10_
    v8_27_ = v0_6_
    v8_28_ = {}
    local fromScale = UDim2.fromScale
    local v8_30_ = 0.600000
    local v8_31_ = 0.600000
    v8_29_ = fromScale(v8_30_, v8_31_)
    v8_28_.Size = v8_29_
    v8_24_ = v8_24_:Create(v8_26_, v8_27_, v8_28_)
    v8_24_:Play()
    v8_24_ = 5
    v8_14_.Value = v8_24_
    v8_24_ = v0_1_
    v8_26_ = v8_14_
    v8_27_ = v0_6_
    v8_28_ = {}
    v8_29_ = 1
    v8_28_.Value = v8_29_
    v8_24_ = v8_24_:Create(v8_26_, v8_27_, v8_28_)
    v8_24_:Play()
    local wait = task.wait
    v8_25_ = 3.230000
    wait(v8_25_)
    v8_24_ = v0_1_
    v8_26_ = v8_14_
    v8_27_ = v0_7_
    v8_28_ = {}
    v8_29_ = 4
    v8_28_.Value = v8_29_
    v8_24_ = v8_24_:Create(v8_26_, v8_27_, v8_28_)
    v8_24_:Play()
    v8_24_ = v0_1_
    v8_26_ = v8_10_
    v8_27_ = v0_7_
    v8_28_ = {}
    local fromScale = UDim2.fromScale
    v8_30_ = 1.500000
    v8_31_ = 1.500000
    v8_29_ = fromScale(v8_30_, v8_31_)
    v8_28_.Size = v8_29_
    v8_24_ = v8_24_:Create(v8_26_, v8_27_, v8_28_)
    v8_24_:Play()
    local wait = task.wait
    v8_25_ = 4
    wait(v8_25_)
    v8_24_ = true
    a4.Visible = v8_24_
    v8_17_:Play()
    v8_24_ = v0_18_
    v8_25_ = v8_5_
    local fromRGB = Color3.fromRGB
    v8_27_ = 255
    v8_28_ = 0
    v8_29_ = 4
    v8_26_ = fromRGB(v8_27_, v8_28_, v8_29_)
    v8_27_ = 0.600000
    v8_28_ = "rbxassetid://80078149518908"
    v8_24_(v8_25_, v8_26_, v8_27_, v8_28_)
    local wait = task.wait
    v8_25_ = 1
    wait(v8_25_)
    v8_24_ = v0_18_
    v8_25_ = v8_5_
    local fromRGB = Color3.fromRGB
    v8_27_ = 255
    v8_28_ = 0
    v8_29_ = 4
    v8_26_ = fromRGB(v8_27_, v8_28_, v8_29_)
    v8_27_ = 0.300000
    v8_28_ = "rbxassetid://80078149518908"
    v8_24_(v8_25_, v8_26_, v8_27_, v8_28_)
    local wait = task.wait
    v8_25_ = 1
    wait(v8_25_)
    v8_24_ = script
    v8_26_ = "Ambient"
    v8_24_ = v8_24_:WaitForChild(v8_26_)
    v8_24_:Stop()
    v8_24_ = script
    v8_26_ = "Omg"
    v8_24_ = v8_24_:WaitForChild(v8_26_)
    v8_24_:Play()
    v8_20_ = false
    v8_21_:Destroy()
    v8_22_:Destroy()
    v8_24_ = false
    v8_10_.Visible = v8_24_
    v8_24_ = "http://www.roblox.com/asset/?id=1195495135"
    v8_6_.Image = v8_24_
    local new = Color3.new
    v8_25_ = 1
    v8_26_ = 1
    v8_27_ = 1
    v8_24_ = new(v8_25_, v8_26_, v8_27_)
    v8_6_.ImageColor3 = v8_24_
    v8_26_ = "UIGradient"
    v8_24_ = v8_6_:FindFirstChildOfClass(v8_26_)
    if v8_24_ then
        v8_26_ = "UIGradient"
        v8_24_ = v8_6_:FindFirstChildOfClass(v8_26_)
        v8_24_:Destroy()
    end
    v8_18_:Play()
    v8_24_ = 0.020000
    v8_13_.Value = v8_24_
    v8_24_ = v0_1_
    v8_26_ = v8_13_
    v8_27_ = v0_6_
    v8_28_ = {}
    v8_29_ = 0
    v8_28_.Value = v8_29_
    v8_24_ = v8_24_:Create(v8_26_, v8_27_, v8_28_)
    v8_24_:Play()
    local fromScale = UDim2.fromScale
    v8_25_ = 0.500000
    v8_26_ = 0.500000
    v8_24_ = fromScale(v8_25_, v8_26_)
    a4.Position = v8_24_
    local fromScale = UDim2.fromScale
    v8_25_ = 0.600000
    v8_26_ = 0.200000
    v8_24_ = fromScale(v8_25_, v8_26_)
    a4.Size = v8_24_
    v8_24_ = v0_1_
    v8_26_ = a4
    v8_27_ = v0_5_
    v8_28_ = {}
    local fromScale = UDim2.fromScale
    v8_30_ = 0.400000
    v8_31_ = 0.100000
    v8_29_ = fromScale(v8_30_, v8_31_)
    v8_28_.Size = v8_29_
    v8_24_ = v8_24_:Create(v8_26_, v8_27_, v8_28_)
    v8_24_:Play()
    v8_24_ = 1
    v8_5_.BackgroundTransparency = v8_24_
    v8_24_ = script
    v8_24_:Destroy()
end
return v0_19_
