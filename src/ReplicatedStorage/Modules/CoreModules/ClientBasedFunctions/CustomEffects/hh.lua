-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "StarterGui"
v0_0_ = v0_0_:GetService(v0_2_)
local v0_1_ = game
local v0_3_ = "TweenService"
v0_1_ = v0_1_:GetService(v0_3_)
local new = Tween0o.new
v0_3_ = 0.500000
local Quart = Enum.EasingStyle.Quart
v0_2_ = new(v0_3_, Quart)
local new = Tween0o.new
local v0_4_ = 0.500000
local Quart = Enum.EasingStyle.Quart
local In = Enum.EasingDirection.In
v0_3_ = new(v0_4_, Quart, In)
local new = Tween0o.new
local v0_5_ = 1
local Quart = Enum.EasingStyle.Quart
v0_4_ = new(v0_5_, Quart)
local new = Tween0o.new
local v0_6_ = 2
local Quart = Enum.EasingStyle.Quart
v0_5_ = new(v0_6_, Quart)
local new = Tween0o.new
local v0_7_ = 6
local Quart = Enum.EasingStyle.Quart
local In = Enum.EasingDirection.In
v0_6_ = new(v0_7_, Quart, In)
v0_7_ = game
local v0_9_ = "ReplicatedStorage"
v0_7_ = v0_7_:GetService(v0_9_)
local v0_8_ = game
local v0_10_ = "RunService"
v0_8_ = v0_8_:GetService(v0_10_)
v0_10_ = v0_7_.Assets
v0_9_ = v0_10_.SFXs
v0_10_ = {}
local v0_11_ = 0.600000
v0_10_.BackgroundTransparency = v0_11_
v0_11_ = {}
local v0_12_ = 1
v0_11_.BackgroundTransparency = v0_12_
v0_12_ = {}
local v0_13_ = 0
v0_12_.BackgroundTransparency = v0_13_
v0_13_ = game
local v0_15_ = "Debris"
v0_13_ = v0_13_:GetService(v0_15_)
local v0_14_ = function(a1, a2)
    local new = Instance.new
    local v1_3_ = "ImageLabel"
    local v1_4_ = a1
    local v1_2_ = new(v1_3_)
    local fromScale = UDim2.fromScale
    v1_3_ = fromScale()
    v1_2_.Size = v1_3_
    v1_3_ = "rbxassetid://915916073"
    v1_2_.Image = v1_3_
    v1_2_.ImageColor3 = a2
    local RelativeXX = Enum.SizeConstraint.RelativeXX
    v1_2_.SizeConstraint = RelativeXX
    v1_3_ = 1
    v1_2_.BackgroundTransparency = v1_3_
    local random = math.random
    local v1_5_ = 2
    local v1_6_ = 6
    v1_4_ = random(v1_5_, v1_6_)
    v1_3_ = v1_4_ / 100.000000
    local random = math.random
    v1_5_ = -80
    v1_6_ = 100
    v1_4_ = random(v1_5_, v1_6_)
    local random = math.random
    local v1_7_ = 5
    local v1_8_ = 10
    v1_6_ = random(v1_7_, v1_8_)
    local random = math.random
    local v1_9_ = 1
    local v1_10_ = 2
    v1_8_ = random(v1_9_, v1_10_)
    if v1_8_ == 1.000000 then
        v1_7_ = -1
    else
        v1_7_ = 1
    end
    v1_5_ = v1_6_ * v1_7_
    v1_2_.Rotation = v1_4_
    local new = Vector2.new
    v1_7_ = 0.500000
    v1_8_ = 0.500000
    v1_6_ = new(v1_7_, v1_8_)
    v1_2_.AnchorPoint = v1_6_
    v1_6_ = v0_1_
    v1_8_ = v1_2_
    v1_9_ = v0_2_
    v1_10_ = {}
    local fromScale = UDim2.fromScale
    local v1_12_ = v1_3_
    local v1_13_ = v1_3_
    local v1_11_ = fromScale(v1_12_, v1_13_)
    v1_10_.Size = v1_11_
    v1_6_ = v1_6_:Create(v1_8_, v1_9_, v1_10_)
    v1_6_:Play()
    local fromScale = UDim2.fromScale
    local random = math.random
    v1_9_ = 0
    v1_10_ = 100
    v1_8_ = random(v1_9_, v1_10_)
    v1_7_ = v1_8_ / 100.000000
    v1_8_ = 0
    v1_6_ = fromScale(v1_7_, v1_8_)
    local random = math.random
    v1_9_ = 50
    v1_10_ = 70
    v1_8_ = random(v1_9_, v1_10_)
    local random = math.random
    v1_11_ = 1
    v1_12_ = 2
    v1_10_ = random(v1_11_, v1_12_)
    if v1_10_ == 1.000000 then
        v1_9_ = -1
    else
        v1_9_ = 1
    end
    v1_7_ = v1_8_ * v1_9_
    local random = math.random
    v1_10_ = 2
    v1_11_ = 5
    v1_9_ = random(v1_10_, v1_11_)
    v1_8_ = v1_9_ / -500.000000
    local wrap = coroutine.wrap
    v1_10_ = function()
        local v2_0_ = time
        v2_0_ = v2_0_()
        local random = math.random
        local v2_4_ = 15
        local v2_5_ = 20
        local v2_3_ = random(v2_4_, v2_5_)
        local v2_2_ = v2_3_ / 10.000000
        local v2_1_ = v2_0_ + v2_2_
        v2_2_ = v1_2_
        while v2_2_ do
            v2_3_ = v1_2_
            v2_2_ = v2_3_.Parent
            while v2_2_ do
                v2_2_ = time
                v2_2_ = v2_2_()
                v2_3_ = v2_1_ - 0.500000
                if v2_3_ <= v2_2_ then
                    v2_2_ = v1_2_
                    v2_4_ = "Removing"
                    v2_2_ = v2_2_:GetAttribute(v2_4_)
                    if not v2_2_ then
                        v2_2_ = v1_2_
                        v2_4_ = "Removing"
                        v2_5_ = true
                        v2_2_:SetAttribute(v2_4_, v2_5_)
                        v2_2_ = v0_1_
                        v2_4_ = v1_2_
                        v2_5_ = v0_3_
                        local v2_6_ = {}
                        local fromScale = UDim2.fromScale
                        local v2_8_ = 0
                        local v2_9_ = 0
                        local v2_7_ = fromScale(v2_8_, v2_9_)
                        v2_6_.Size = v2_7_
                        v2_2_ = v2_2_:Create(v2_4_, v2_5_, v2_6_)
                        v2_2_:Play()
                        v2_2_ = v0_13_
                        v2_4_ = v1_2_
                        v2_5_ = 0.500000
                        v2_2_:AddItem(v2_4_, v2_5_)
                    end
                end
                v2_4_ = time
                v2_4_ = v2_4_()
                v2_3_ = v2_4_ - v2_0_
                v2_2_ = v2_3_ * 50.000000
                v2_3_ = v1_2_
                v2_5_ = v1_6_
                local fromScale = UDim2.fromScale
                local v2_8_ = 0.070000
                local v2_11_ = v1_7_
                local v2_10_ = v2_2_ / v2_11_
                local cos = math.cos
                local v2_9_ = cos(v2_10_)
                local v2_7_ = v2_8_ * v2_9_
                v2_10_ = v1_8_
                v2_9_ = -v2_10_
                v2_8_ = v2_2_ * v2_9_
                local v2_6_ = fromScale(v2_7_, v2_8_)
                v2_4_ = v2_5_ + v2_6_
                v2_3_.Position = v2_4_
                v2_3_ = v1_2_
                v2_5_ = v1_4_
                v2_7_ = v1_5_
                v2_11_ = v1_7_
                v2_10_ = v2_2_ / v2_11_
                v2_9_ = v2_10_ * 1.200000
                local cos = math.cos
                v2_8_ = cos(v2_9_)
                v2_6_ = v2_7_ * v2_8_
                v2_4_ = v2_5_ + v2_6_
                v2_3_.Rotation = v2_4_
                v2_4_ = v0_8_
                v2_3_ = v2_4_.Heartbeat
                v2_3_:Wait()
            end
        end
    end
    v1_9_ = wrap(v1_10_)
    v1_9_()
end
v0_15_ = function(a1, a2)
    local new = Instance.new
    local v3_3_ = "ImageLabel"
    local v3_4_ = a1
    local v3_2_ = new(v3_3_)
    local fromScale = UDim2.fromScale
    v3_4_ = 1
    local v3_5_ = 1
    v3_3_ = fromScale(v3_4_, v3_5_)
    v3_2_.Size = v3_3_
    v3_3_ = "rbxassetid://1946917526"
    v3_2_.Image = v3_3_
    v3_2_.ImageColor3 = a1
    local RelativeXX = Enum.SizeConstraint.RelativeXX
    v3_2_.SizeConstraint = RelativeXX
    v3_3_ = 1
    v3_2_.BackgroundTransparency = v3_3_
    v3_3_ = 1
    v3_2_.ImageTransparency = v3_3_
    local random = math.random
    v3_4_ = -3
    v3_5_ = 3
    v3_3_ = random(v3_4_, v3_5_)
    v3_2_.Rotation = v3_3_
    local new = Vector2.new
    v3_4_ = 0.500000
    v3_5_ = 0.500000
    v3_3_ = new(v3_4_, v3_5_)
    v3_2_.AnchorPoint = v3_3_
    v3_3_ = v0_1_
    v3_5_ = v3_2_
    local v3_6_ = v0_2_
    local v3_7_ = {}
    local v3_8_ = 0.700000
    v3_7_.ImageTransparency = v3_8_
    v3_3_ = v3_3_:Create(v3_5_, v3_6_, v3_7_)
    v3_3_:Play()
    local fromScale = UDim2.fromScale
    local random = math.random
    v3_6_ = 0
    v3_7_ = 100
    v3_5_ = random(v3_6_, v3_7_)
    v3_4_ = v3_5_ / 100.000000
    local random = math.random
    v3_7_ = 0
    v3_8_ = 100
    v3_6_ = random(v3_7_, v3_8_)
    v3_5_ = v3_6_ / 100.000000
    v3_3_ = fromScale(v3_4_, v3_5_)
    local random = math.random
    v3_7_ = 2
    v3_8_ = 5
    v3_6_ = random(v3_7_, v3_8_)
    v3_5_ = v3_6_ / 1400.000000
    local random = math.random
    v3_8_ = 1
    local v3_9_ = 2
    v3_7_ = random(v3_8_, v3_9_)
    if v3_7_ == 1.000000 then
        v3_6_ = -1
    else
        v3_6_ = 1
    end
    v3_4_ = v3_5_ * v3_6_
    local random = math.random
    v3_8_ = 2
    v3_9_ = 5
    v3_7_ = random(v3_8_, v3_9_)
    v3_6_ = v3_7_ / 1400.000000
    local random = math.random
    v3_9_ = 1
    local v3_10_ = 2
    v3_8_ = random(v3_9_, v3_10_)
    if v3_8_ == 1.000000 then
        v3_7_ = -1
    else
        v3_7_ = 1
    end
    v3_5_ = v3_6_ * v3_7_
    local wrap = coroutine.wrap
    v3_7_ = function()
        local v4_0_ = time
        v4_0_ = v4_0_()
        local random = math.random
        local v4_4_ = 15
        local v4_5_ = 20
        local v4_3_ = random(v4_4_, v4_5_)
        local v4_2_ = v4_3_ / 10.000000
        local v4_1_ = v4_0_ + v4_2_
        v4_2_ = v3_2_
        while v4_2_ do
            v4_3_ = v3_2_
            v4_2_ = v4_3_.Parent
            while v4_2_ do
                v4_2_ = time
                v4_2_ = v4_2_()
                v4_3_ = v4_1_ - 0.500000
                if v4_3_ <= v4_2_ then
                    v4_2_ = v3_2_
                    v4_4_ = "Removing"
                    v4_2_ = v4_2_:GetAttribute(v4_4_)
                    if not v4_2_ then
                        v4_2_ = v3_2_
                        v4_4_ = "Removing"
                        v4_5_ = true
                        v4_2_:SetAttribute(v4_4_, v4_5_)
                        v4_2_ = v0_1_
                        v4_4_ = v3_2_
                        v4_5_ = v0_3_
                        local v4_6_ = {}
                        local v4_7_ = 1
                        v4_6_.ImageTransparency = v4_7_
                        v4_2_ = v4_2_:Create(v4_4_, v4_5_, v4_6_)
                        v4_2_:Play()
                        v4_2_ = v0_13_
                        v4_4_ = v3_2_
                        v4_5_ = 0.500000
                        v4_2_:AddItem(v4_4_, v4_5_)
                    end
                end
                v4_4_ = time
                v4_4_ = v4_4_()
                v4_3_ = v4_4_ - v4_0_
                v4_2_ = v4_3_ * 50.000000
                v4_3_ = v3_2_
                v4_5_ = v3_3_
                local fromScale = UDim2.fromScale
                local v4_9_ = v3_4_
                local v4_8_ = -v4_9_
                local v4_7_ = v4_2_ * v4_8_
                local v4_10_ = v3_5_
                v4_9_ = -v4_10_
                v4_8_ = v4_2_ * v4_9_
                local v4_6_ = fromScale(v4_7_, v4_8_)
                v4_4_ = v4_5_ + v4_6_
                v4_3_.Position = v4_4_
                v4_4_ = v0_8_
                v4_3_ = v4_4_.Heartbeat
                v4_3_:Wait()
            end
        end
    end
    v3_6_ = wrap(v3_7_)
    v3_6_()
end
local v0_16_ = function(a1, a2, a3)
    local v5_3_ = script
    local v5_5_ = "Whoosh"
    v5_3_ = v5_3_:WaitForChild(v5_5_)
    v5_5_ = "Whoosh"
    local v5_4_ = 0.300000
    v5_3_.Volume = v5_4_
    v5_3_ = script
    v5_5_ = "Whoosh"
    v5_3_ = v5_3_:WaitForChild(v5_5_)
    v5_3_:Play()
    local new = Instance.new
    v5_4_ = "ImageLabel"
    v5_5_ = a1
    v5_3_ = new(v5_4_)
    local fromScale = UDim2.fromScale
    v5_5_ = 0.800000
    local v5_6_ = 0.800000
    v5_4_ = fromScale(v5_5_, v5_6_)
    v5_3_.Size = v5_4_
    v5_4_ = "rbxassetid://12389947566"
    v5_3_.Image = v5_4_
    v5_3_.ImageColor3 = a2
    local RelativeYY = Enum.SizeConstraint.RelativeYY
    v5_3_.SizeConstraint = RelativeYY
    v5_4_ = 1
    v5_3_.BackgroundTransparency = v5_4_
    v5_3_.ImageTransparency = a3
    local new = Vector2.new
    v5_5_ = 0.500000
    v5_6_ = 0.500000
    v5_4_ = new(v5_5_, v5_6_)
    v5_3_.AnchorPoint = v5_4_
    local fromScale = UDim2.fromScale
    v5_5_ = 0.500000
    v5_6_ = 0.500000
    v5_4_ = fromScale(v5_5_, v5_6_)
    v5_3_.Position = v5_4_
    v5_4_ = v0_1_
    v5_6_ = v5_3_
    local v5_7_ = v0_5_
    local v5_8_ = {}
    local fromScale = UDim2.fromScale
    local v5_10_ = 0.700000
    local v5_11_ = 0.700000
    local v5_9_ = fromScale(v5_10_, v5_11_)
    v5_8_.Size = v5_9_
    v5_9_ = 1
    v5_8_.ImageTransparency = v5_9_
    v5_4_ = v5_4_:Create(v5_6_, v5_7_, v5_8_)
    v5_4_:Play()
    v5_4_ = v0_13_
    v5_6_ = v5_3_
    v5_7_ = 2
    v5_4_:AddItem(v5_6_, v5_7_)
end
local v0_17_ = function(a1, a2, a3, a4, a5)
    local v6_5_ = script
    local v6_7_ = "Ambient"
    v6_5_ = v6_5_:WaitForChild(v6_7_)
    v6_5_:Play()
    v6_5_ = a2.Blackboard
    local v6_6_ = a2.Colorboard
    v6_7_ = a2.Background
    local v6_8_ = a2.EquipButton
    local v6_9_ = a2.SkipButton
    local v6_10_ = a2.Star
    local v6_11_ = a2.Break1
    local v6_12_ = a2.Break2
    local v6_15_ = "ShakeAmount"
    local v6_13_ = a3:WaitForChild(v6_15_)
    local v6_16_ = "StarSpinSpeed"
    local v6_14_ = a3:WaitForChild(v6_16_)
    v6_15_ = v0_1_
    local v6_17_ = v6_7_
    local new = Tween0o.new
    local v6_19_ = 1
    local Exponential = Enum.EasingStyle.Exponential
    local Out = Enum.EasingDirection.Out
    local v6_18_ = new(v6_19_, Exponential, Out)
    v6_19_ = v0_10_
    v6_15_:Create(v6_17_, v6_18_, v6_19_)
    v6_15_ = v0_1_
    v6_17_ = v6_7_
    local new = Tween0o.new
    v6_19_ = 1
    local Exponential_0 = Enum.EasingStyle.Exponential
    local Out_0 = Enum.EasingDirection.Out
    v6_18_ = new(v6_19_, Exponential_0, Out_0)
    v6_19_ = v0_11_
    v6_15_:Create(v6_17_, v6_18_, v6_19_)
    v6_15_ = v0_1_
    v6_17_ = v6_6_
    local new = Tween0o.new
    v6_19_ = 2
    local Quart = Enum.EasingStyle.Quart
    local In = Enum.EasingDirection.In
    v6_18_ = new(v6_19_, Quart, In)
    v6_19_ = {}
    local v6_20_ = 0
    v6_19_.ImageTransparency = v6_20_
    v6_15_ = v6_15_:Create(v6_17_, v6_18_, v6_19_)
    v6_16_ = v0_1_
    v6_18_ = v6_6_
    local new = Tween0o.new
    v6_20_ = 2
    local Quart = Enum.EasingStyle.Quart
    local Out = Enum.EasingDirection.Out
    v6_19_ = new(v6_20_, Quart, Out)
    v6_20_ = {}
    local v6_21_ = 1
    v6_20_.ImageTransparency = v6_21_
    v6_16_ = v6_16_:Create(v6_18_, v6_19_, v6_20_)
    v6_17_ = v0_1_
    v6_19_ = v6_5_
    v6_20_ = v0_2_
    v6_21_ = v0_12_
    v6_17_ = v6_17_:Create(v6_19_, v6_20_, v6_21_)
    v6_18_ = true
    v6_19_ = v0_0_
    local All = Enum.CoreGuiType.All
    local v6_22_ = false
    v6_19_:SetCoreGuiEnabled(All, v6_22_)
    v6_19_ = false
    a4.Visible = v6_19_
    v6_17_:Play()
    v6_19_ = "http://www.roblox.com/asset/?id=12353440665"
    v6_6_.Image = v6_19_
    v6_19_ = 1
    v6_6_.ImageTransparency = v6_19_
    local new = Color3.new
    v6_20_ = 1
    v6_21_ = 1
    v6_22_ = 1
    v6_19_ = new(v6_20_, v6_21_, v6_22_)
    v6_6_.ImageColor3 = v6_19_
    local new = Color3.new
    v6_20_ = 1
    v6_21_ = 1
    v6_22_ = 1
    v6_19_ = new(v6_20_, v6_21_, v6_22_)
    v6_10_.ImageColor3 = v6_19_
    v6_21_ = "IgnoreTextColor"
    v6_19_ = a4:GetAttribute(v6_21_)
    if not v6_19_ then
        v6_19_ = a4.TextColor3
        v6_6_.ImageColor3 = v6_19_
        v6_19_ = v6_6_.ImageColor3
        v6_10_.ImageColor3 = v6_19_
    end
    v6_19_ = v0_9_
    v6_21_ = "OneMilPlus"
    v6_19_ = v6_19_:WaitForChild(v6_21_)
    v6_19_:Play()
    local fromScale = UDim2.fromScale
    v6_20_ = 1.500000
    v6_21_ = 1.500000
    v6_19_ = fromScale(v6_20_, v6_21_)
    v6_10_.Size = v6_19_
    v6_19_ = "rbxassetid://17068400400"
    v6_10_.Image = v6_19_
    v6_19_ = true
    v6_10_.Visible = v6_19_
    local wrap = coroutine.wrap
    v6_20_ = function()
        local wait = task.wait
        local v7_1_ = 0.050000
        local v7_0_ = wait(v7_1_)
        while v7_0_ do
            v7_0_ = v0_14_
            v7_1_ = v6_5_
            local fromRGB = Color3.fromRGB
            local v7_3_ = 174
            local v7_4_ = 255
            local v7_5_ = 87
			v7_0_(fromRGB(v7_3_, v7_4_, v7_5_))
			wait()
        end
    end
    v6_19_ = wrap(v6_20_)
    v6_19_()
    local wrap = coroutine.wrap
    v6_20_ = function()
        local wait = task.wait
        local v8_1_ = 0.200000
        local v8_0_ = wait(v8_1_)
        while v8_0_ do
            v8_0_ = v0_15_
            v8_1_ = v6_5_
            local fromRGB = Color3.fromRGB
            local v8_3_ = 174
            local v8_4_ = 255
            local v8_5_ = 87
            v8_0_(fromRGB(v8_3_, v8_4_, v8_5_))
        end
    end
    v6_19_ = wrap(v6_20_)
    v6_19_()
    v6_19_ = v0_1_
    v6_21_ = v6_10_
    v6_22_ = v0_5_
    local v6_23_ = {}
    local fromScale = UDim2.fromScale
    local v6_25_ = 0.600000
    local v6_26_ = 0.600000
    local v6_24_ = fromScale(v6_25_, v6_26_)
    v6_23_.Size = v6_24_
    v6_19_ = v6_19_:Create(v6_21_, v6_22_, v6_23_)
    v6_19_:Play()
    v6_19_ = 5
    v6_14_.Value = v6_19_
    v6_19_ = v0_1_
    v6_21_ = v6_14_
    v6_22_ = v0_5_
    v6_23_ = {}
    v6_24_ = 1
    v6_23_.Value = v6_24_
    v6_19_ = v6_19_:Create(v6_21_, v6_22_, v6_23_)
    v6_19_:Play()
    local wait = task.wait
    v6_20_ = 3.230000
    wait(v6_20_)
    v6_19_ = v0_1_
    v6_21_ = v6_14_
    v6_22_ = v0_6_
    v6_23_ = {}
    v6_24_ = 4
    v6_23_.Value = v6_24_
    v6_19_ = v6_19_:Create(v6_21_, v6_22_, v6_23_)
    v6_19_:Play()
    v6_19_ = v0_1_
    v6_21_ = v6_10_
    v6_22_ = v0_6_
    v6_23_ = {}
    local fromScale = UDim2.fromScale
    v6_25_ = 1.500000
    v6_26_ = 1.500000
    v6_24_ = fromScale(v6_25_, v6_26_)
    v6_23_.Size = v6_24_
    v6_19_ = v6_19_:Create(v6_21_, v6_22_, v6_23_)
    v6_19_:Play()
    local wait = task.wait
    v6_20_ = 4
    wait(v6_20_)
    v6_19_ = true
    a4.Visible = v6_19_
    v6_15_:Play()
    v6_19_ = v0_16_
    v6_20_ = v6_5_
    local fromRGB = Color3.fromRGB
    v6_22_ = 174
    v6_23_ = 255
    v6_24_ = 87
    v6_21_ = fromRGB(v6_22_, v6_23_, v6_24_)
    v6_22_ = 0.600000
    v6_19_(v6_20_, v6_21_, v6_22_)
    local wait = task.wait
    v6_20_ = 1
    wait(v6_20_)
    v6_19_ = v0_16_
    v6_20_ = v6_5_
    local fromRGB = Color3.fromRGB
    v6_22_ = 174
    v6_23_ = 255
    v6_24_ = 87
    v6_21_ = fromRGB(v6_22_, v6_23_, v6_24_)
    v6_22_ = 0.200000
    v6_19_(v6_20_, v6_21_, v6_22_)
    local wait = task.wait
    v6_20_ = 1
    wait(v6_20_)
    v6_19_ = script
    v6_21_ = "Ambient"
    v6_19_ = v6_19_:WaitForChild(v6_21_)
    v6_19_:Stop()
    v6_19_ = script
    v6_21_ = "Omg"
    v6_19_ = v6_19_:WaitForChild(v6_21_)
    v6_19_:Play()
    v6_18_ = false
    v6_19_ = false
    v6_10_.Visible = v6_19_
    v6_19_ = "http://www.roblox.com/asset/?id=1195495135"
    v6_6_.Image = v6_19_
    local new = Color3.new
    v6_20_ = 1
    v6_21_ = 1
    v6_22_ = 1
    v6_19_ = new(v6_20_, v6_21_, v6_22_)
    v6_6_.ImageColor3 = v6_19_
    v6_21_ = "UIGradient"
    v6_19_ = v6_6_:FindFirstChildOfClass(v6_21_)
    if v6_19_ then
        v6_21_ = "UIGradient"
        v6_19_ = v6_6_:FindFirstChildOfClass(v6_21_)
        v6_19_:Destroy()
    end
    v6_16_:Play()
    v6_19_ = 0.020000
    v6_13_.Value = v6_19_
    v6_19_ = v0_1_
    v6_21_ = v6_13_
    v6_22_ = v0_5_
    v6_23_ = {}
    v6_24_ = 0
    v6_23_.Value = v6_24_
    v6_19_ = v6_19_:Create(v6_21_, v6_22_, v6_23_)
    v6_19_:Play()
    local fromScale = UDim2.fromScale
    v6_20_ = 0.500000
    v6_21_ = 0.500000
    v6_19_ = fromScale(v6_20_, v6_21_)
    a4.Position = v6_19_
    local fromScale = UDim2.fromScale
    v6_20_ = 0.600000
    v6_21_ = 0.200000
    v6_19_ = fromScale(v6_20_, v6_21_)
    a4.Size = v6_19_
    v6_19_ = v0_1_
    v6_21_ = a4
    v6_22_ = v0_4_
    v6_23_ = {}
    local fromScale = UDim2.fromScale
    v6_25_ = 0.400000
    v6_26_ = 0.100000
    v6_24_ = fromScale(v6_25_, v6_26_)
    v6_23_.Size = v6_24_
    v6_19_ = v6_19_:Create(v6_21_, v6_22_, v6_23_)
    v6_19_:Play()
    v6_19_ = 1
    v6_5_.BackgroundTransparency = v6_19_
    v6_19_ = script
    v6_19_:Destroy()
end
return v0_17_
