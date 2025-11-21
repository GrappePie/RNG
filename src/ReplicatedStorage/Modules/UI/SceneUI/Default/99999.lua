-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "TweenService"
v0_0_ = v0_0_:GetService(v0_2_)
local new = Tween0o.new
v0_2_ = 2
local Quart = Enum.EasingStyle.Quart
local v0_1_ = new(v0_2_, Quart)
local new = Tween0o.new
local v0_3_ = 6
local Quart = Enum.EasingStyle.Quart
local In = Enum.EasingDirection.In
v0_2_ = new(v0_3_, Quart, In)
v0_3_ = function(a1, a2, a3)
    local v1_5_ = 1
    local random = math.random
    local v1_7_ = 12
    local v1_8_ = 14
    local v1_6_ = random(v1_7_, v1_8_)
    local v1_3_ = v1_6_
    local v1_4_ = 1
    for v1_5_ = v1_5_, v1_3_, v1_4_ do
        local new = Instance.new
        v1_7_ = "Frame"
        v1_8_ = a1
        v1_6_ = new(v1_7_, v1_8_)
        v1_7_ = "SplashFrameParticle"
        v1_6_.Name = v1_7_
        local RelativeYY = Enum.SizeConstraint.RelativeYY
        v1_6_.SizeConstraint = RelativeYY
        v1_6_.ZIndex = a3
        local random = math.random
        local v1_9_ = 5
        local v1_10_ = 8
        v1_8_ = random(v1_9_, v1_10_)
        v1_7_ = v1_8_ / 100.000000
        local fromScale = UDim2.fromScale
        v1_9_ = v1_7_
        v1_10_ = v1_7_
        v1_8_ = fromScale(v1_9_, v1_10_)
        v1_6_.Size = v1_8_
        v1_6_.BackgroundColor3 = a2
        local new = Vector2.new
        v1_9_ = 0.500000
        v1_10_ = 0.500000
        v1_8_ = new(v1_9_, v1_10_)
        v1_6_.AnchorPoint = v1_8_
        local fromScale = UDim2.fromScale
        v1_9_ = 0.500000
        v1_10_ = 0.500000
        v1_8_ = fromScale(v1_9_, v1_10_)
        v1_6_.Position = v1_8_
        local random = math.random
        v1_9_ = 0
        v1_10_ = 360
        v1_8_ = random(v1_9_, v1_10_)
        v1_6_.Rotation = v1_8_
        v1_8_ = 0
        v1_6_.BorderSizePixel = v1_8_
        local random = math.random
        v1_10_ = 80
        local v1_11_ = 150
        v1_9_ = random(v1_10_, v1_11_)
        v1_8_ = v1_9_ / 100.000000
        v1_9_ = v0_0_
        v1_11_ = v1_6_
        local new = Tween0o.new
        local v1_13_ = v1_8_
        local Quart = Enum.EasingStyle.Quart
        local v1_12_ = new(v1_13_, Quart)
        v1_13_ = {}
        local fromScale = UDim2.fromScale
        local v1_15_ = 0
        local v1_16_ = 0
        local v1_14_ = fromScale(v1_15_, v1_16_)
        v1_13_.Size = v1_14_
        local fromScale = UDim2.fromScale
        local random = math.random
        local v1_17_ = 10
        local v1_18_ = 90
        v1_16_ = random(v1_17_, v1_18_)
        v1_15_ = v1_16_ / 100.000000
        local random = math.random
        v1_18_ = 10
        local v1_19_ = 90
        v1_17_ = random(v1_18_, v1_19_)
        v1_16_ = v1_17_ / 100.000000
        v1_14_ = fromScale(v1_15_, v1_16_)
        v1_13_.Position = v1_14_
        local random = math.random
        v1_15_ = 0
        v1_16_ = 360
        v1_14_ = random(v1_15_, v1_16_)
        v1_13_.Rotation = v1_14_
        v1_9_ = v1_9_:Create(v1_11_, v1_12_, v1_13_)
        v1_9_:Play()
        v1_9_ = game
        v1_11_ = "Debris"
        v1_9_ = v1_9_:GetService(v1_11_)
        v1_11_ = v1_6_
        v1_12_ = v1_8_
        v1_9_:AddItem(v1_11_, v1_12_)
    end
end
local v0_4_ = function(a1, a2)
    local v2_2_ = a2.StarSpinSpeed
    local v2_3_ = a2.Colorboard
    local v2_4_ = a2.Star
    local v2_5_ = a2.Break1
    local v2_6_ = a2.Break2
    local v2_7_ = a2.BlackBoardAppear
    v2_7_:Play()
    v2_7_ = "http://www.roblox.com/asset/?id=12353440665"
    v2_3_.Image = v2_7_
    v2_7_ = 1
    v2_3_.ImageTransparency = v2_7_
    v2_7_ = a2.ApplyLabelColor
    local v2_8_ = v2_3_
    local v2_9_ = a1
    v2_7_(v2_8_, v2_9_)
    v2_7_ = a2.PlaySFX
    v2_8_ = "MoreRareRollSound"
    v2_7_(v2_8_)
    v2_7_ = a2.ApplyLabelColor
    v2_8_ = v2_4_
    v2_9_ = a1
    v2_7_(v2_8_, v2_9_)
    local fromScale = UDim2.fromScale
    v2_8_ = 1.500000
    v2_9_ = 1.500000
    v2_7_ = fromScale(v2_8_, v2_9_)
    v2_4_.Size = v2_7_
    v2_7_ = true
    v2_4_.Visible = v2_7_
    v2_7_ = v0_0_
    v2_9_ = v2_4_
    local v2_10_ = v0_1_
    local v2_11_ = {}
    local fromScale = UDim2.fromScale
    local v2_13_ = 0.600000
    local v2_14_ = 0.600000
    local v2_12_ = fromScale(v2_13_, v2_14_)
    v2_11_.Size = v2_12_
    v2_7_ = v2_7_:Create(v2_9_, v2_10_, v2_11_)
    v2_7_:Play()
    v2_7_ = 6.200000
    v2_2_.Value = v2_7_
    v2_7_ = v0_0_
    v2_9_ = v2_2_
    v2_10_ = v0_1_
    v2_11_ = {}
    v2_12_ = 1
    v2_11_.Value = v2_12_
    v2_7_ = v2_7_:Create(v2_9_, v2_10_, v2_11_)
    v2_7_:Play()
    local wait = task.wait
    v2_8_ = 2
    wait(v2_8_)
    v2_7_ = v0_0_
    v2_9_ = v2_2_
    v2_10_ = v0_2_
    v2_11_ = {}
    v2_12_ = 5
    v2_11_.Value = v2_12_
    v2_7_ = v2_7_:Create(v2_9_, v2_10_, v2_11_)
    v2_7_:Play()
    v2_7_ = v0_0_
    v2_9_ = v2_4_
    v2_10_ = v0_2_
    v2_11_ = {}
    local fromScale = UDim2.fromScale
    v2_13_ = 1.500000
    v2_14_ = 1.500000
    v2_12_ = fromScale(v2_13_, v2_14_)
    v2_11_.Size = v2_12_
    v2_7_ = v2_7_:Create(v2_9_, v2_10_, v2_11_)
    v2_7_:Play()
    local wait = task.wait
    v2_8_ = 4
    wait(v2_8_)
    v2_7_ = a2.ColorboardAppear
    v2_7_:Play()
    local wait = task.wait
    v2_8_ = 2
    wait(v2_8_)
    v2_7_ = false
    v2_4_.Visible = v2_7_
    v2_7_ = "http://www.roblox.com/asset/?id=1195495135"
    v2_3_.Image = v2_7_
    v2_3_:ClearAllChildren()
    local new = Color3.new
    v2_8_ = 1
    v2_9_ = 1
    v2_10_ = 1
    v2_7_ = new(v2_8_, v2_9_, v2_10_)
    v2_3_.ImageColor3 = v2_7_
    local wait = task.wait
    v2_8_ = 2
    wait(v2_8_)
    v2_7_ = v0_3_
    v2_8_ = a2.Interface
    local new = Color3.new
    v2_9_ = new()
    v2_10_ = 11
    v2_7_(v2_8_, v2_9_, v2_10_)
    v2_7_ = a2.PlaySFX
    v2_8_ = "GlassBreak"
    v2_9_ = {}
    v2_10_ = 0.300000
    v2_9_.TimePosition = v2_10_
    v2_10_ = 1
    v2_9_.Pitch = v2_10_
    v2_7_(v2_8_, v2_9_)
    v2_7_ = true
    v2_5_.Visible = v2_7_
    local fromScale = UDim2.fromScale
    v2_8_ = 0.500000
    v2_9_ = 0.600000
    v2_7_ = fromScale(v2_8_, v2_9_)
    v2_5_.Size = v2_7_
    v2_7_ = print
    v2_8_ = v2_5_:GetFullName()
    v2_9_ = v2_5_.Visible
    v2_10_ = v2_5_.ZIndex
    v2_7_(v2_8_, v2_9_, v2_10_)
    v2_7_ = v0_0_
    v2_9_ = v2_5_
    v2_10_ = v0_1_
    v2_11_ = {}
    local fromScale = UDim2.fromScale
    v2_13_ = 1
    v2_14_ = 1.200000
    v2_12_ = fromScale(v2_13_, v2_14_)
    v2_11_.Size = v2_12_
    v2_7_ = v2_7_:Create(v2_9_, v2_10_, v2_11_)
    v2_7_:Play()
    v2_7_ = a2.SetShake
    v2_8_ = 0.020000
    v2_9_ = v0_1_
    v2_7_(v2_8_, v2_9_)
    local wait = task.wait
    v2_8_ = 1
    wait(v2_8_)
    v2_7_ = v0_3_
    v2_8_ = a2.Interface
    local new = Color3.new
    v2_9_ = new()
    v2_10_ = 11
    v2_7_(v2_8_, v2_9_, v2_10_)
    v2_7_ = a2.PlaySFX
    v2_8_ = "GlassBreak"
    v2_9_ = {}
    v2_10_ = 0.300000
    v2_9_.TimePosition = v2_10_
    v2_10_ = 0.900000
    v2_9_.Pitch = v2_10_
    v2_7_(v2_8_, v2_9_)
    v2_7_ = true
    v2_6_.Visible = v2_7_
    local fromScale = UDim2.fromScale
    v2_8_ = 0.500000
    v2_9_ = 0.500000
    v2_7_ = fromScale(v2_8_, v2_9_)
    v2_6_.Size = v2_7_
    v2_7_ = v0_0_
    v2_9_ = v2_6_
    v2_10_ = v0_1_
    v2_11_ = {}
    local fromScale = UDim2.fromScale
    v2_13_ = 1
    v2_14_ = 1
    v2_12_ = fromScale(v2_13_, v2_14_)
    v2_11_.Size = v2_12_
    v2_7_ = v2_7_:Create(v2_9_, v2_10_, v2_11_)
    v2_7_:Play()
    v2_7_ = a2.SetShake
    v2_8_ = 0.020000
    v2_9_ = v0_1_
    v2_7_(v2_8_, v2_9_)
    local wait = task.wait
    v2_8_ = 1
    wait(v2_8_)
    v2_7_ = a2.PlaySFX
    v2_8_ = "GlassBreak2"
    v2_7_(v2_8_)
    v2_7_ = false
    v2_5_.Visible = v2_7_
    v2_7_ = false
    v2_6_.Visible = v2_7_
    v2_7_ = a2.ColorboardDisappear
    v2_7_:Play()
    v2_7_ = a2.BlackBoard
    v2_8_ = 1
    v2_7_.BackgroundTransparency = v2_8_
    v2_7_ = a2.SetShake
    v2_8_ = 0.020000
    v2_9_ = v0_1_
    v2_7_(v2_8_, v2_9_)
end
return v0_4_
