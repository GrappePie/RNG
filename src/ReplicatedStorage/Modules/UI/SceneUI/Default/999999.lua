-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "TweenService"
v0_0_ = v0_0_:GetService(v0_2_)
local new = TweenInfo.new
v0_2_ = 2
local Quart = Enum.EasingStyle.Quart
local v0_1_ = new(v0_2_, Quart)
local new = TweenInfo.new
local v0_3_ = 0.500000
local Quart = Enum.EasingStyle.Quart
v0_2_ = new(v0_3_, Quart)
local new = TweenInfo.new
local v0_4_ = 6
local Quart = Enum.EasingStyle.Quart
local In = Enum.EasingDirection.In
v0_3_ = new(v0_4_, Quart, In)
v0_4_ = function(a1, a2)
    local v1_2_ = a2.BlackBoard
    local v1_3_ = a2.GradientBoard
    local v1_4_ = a2.Colorboard
    local v1_5_ = a2.Star2
    local running = coroutine.running
    local v1_6_ = running()
    local v1_7_ = a2.BlackBoardAppear
    v1_7_:Play()
    v1_7_ = v0_0_
    local v1_9_ = v1_3_
    local v1_10_ = v0_2_
    local v1_11_ = {}
    local v1_12_ = 0.800000
    v1_11_.ImageTransparency = v1_12_
    v1_7_ = v1_7_:Create(v1_9_, v1_10_, v1_11_)
    v1_7_:Play()
    v1_7_ = "http://www.roblox.com/asset/?id=12353440665"
    v1_4_.Image = v1_7_
    v1_7_ = 1
    v1_4_.ImageTransparency = v1_7_
    v1_7_ = a2.ApplyLabelColor
    local v1_8_ = v1_4_
    v1_9_ = a1
    v1_7_(v1_8_, v1_9_)
    v1_7_ = a2.ApplyLabelColor
    v1_8_ = v1_5_
    v1_9_ = a1
    v1_7_(v1_8_, v1_9_)
    local fromScale = UDim2.fromScale
    v1_8_ = 1.500000
    v1_9_ = 1.500000
    v1_7_ = fromScale(v1_8_, v1_9_)
    v1_5_.Size = v1_7_
    v1_7_ = true
    v1_5_.Visible = v1_7_
    v1_7_ = a2.PlaySFX
    v1_8_ = "OneMilPlus"
    v1_7_(v1_8_)
    v1_7_ = v0_0_
    v1_9_ = v1_5_
    v1_10_ = v0_1_
    v1_11_ = {}
    local fromScale = UDim2.fromScale
    local v1_13_ = 0.600000
    local v1_14_ = 0.600000
    v1_12_ = fromScale(v1_13_, v1_14_)
    v1_11_.Size = v1_12_
    v1_7_ = v1_7_:Create(v1_9_, v1_10_, v1_11_)
    v1_7_:Play()
    v1_7_ = a2.StarSpinSpeed
    v1_8_ = 7
    v1_7_.Value = v1_8_
    v1_7_ = v0_0_
    v1_9_ = a2.StarSpinSpeed
    v1_10_ = v0_1_
    v1_11_ = {}
    v1_12_ = 1
    v1_11_.Value = v1_12_
    v1_7_ = v1_7_:Create(v1_9_, v1_10_, v1_11_)
    v1_7_:Play()
    v1_7_ = true
    local defer = task.defer
    v1_9_ = function()
        local wait = task.wait
        local v2_1_ = 0.050000
        local v2_0_ = wait(v2_1_)
        while v2_0_ do
            local status = coroutine.status
            v2_1_ = v1_6_
            v2_0_ = status(v2_1_)
            while v2_0_ ~= "dead" do
                v2_0_ = v1_7_
                while v2_0_ do
                    v2_1_ = a2
                    v2_0_ = v2_1_.CreateParticleEmit
                    v2_1_ = v1_2_
                    local v2_2_ = "rbxassetid://8030760338"
                    local v2_4_ = v1_5_
                    local v2_3_ = v2_4_.ImageColor3
                    local random = math.random
                    local v2_6_ = 5
                    local v2_7_ = 20
                    local v2_5_ = random(v2_6_, v2_7_)
                    v2_4_ = v2_5_ / 1000.000000
                    v2_5_ = a1
                    v2_0_(v2_1_, v2_2_, v2_3_, v2_4_, v2_5_)
                end
            end
        end
    end
    defer(v1_9_)
    local wait = task.wait
    v1_9_ = 3.230000
    wait(v1_9_)
    v1_8_ = v0_0_
    v1_10_ = a2.StarSpinSpeed
    v1_11_ = v0_3_
    v1_12_ = {}
    v1_13_ = 10
    v1_12_.Value = v1_13_
    v1_8_ = v1_8_:Create(v1_10_, v1_11_, v1_12_)
    v1_8_:Play()
    v1_8_ = v0_0_
    v1_10_ = v1_5_
    v1_11_ = v0_3_
    v1_12_ = {}
    local fromScale = UDim2.fromScale
    v1_14_ = 1.500000
    local v1_15_ = 1.500000
    v1_13_ = fromScale(v1_14_, v1_15_)
    v1_12_.Size = v1_13_
    v1_8_ = v1_8_:Create(v1_10_, v1_11_, v1_12_)
    v1_8_:Play()
    local wait = task.wait
    v1_9_ = 4
    wait(v1_9_)
    v1_8_ = a2.ColorboardAppear
    v1_8_:Play()
    local wait = task.wait
    v1_9_ = 2
    wait(v1_9_)
    v1_8_ = 1
    v1_3_.ImageTransparency = v1_8_
    v1_7_ = false
    v1_8_ = false
    v1_5_.Visible = v1_8_
    v1_8_ = "http://www.roblox.com/asset/?id=1195495135"
    v1_4_.Image = v1_8_
    v1_8_ = a2.ColorboardDisappear
    v1_8_:Play()
    v1_8_ = a2.BlackBoard
    v1_9_ = 1
    v1_8_.BackgroundTransparency = v1_9_
    v1_8_ = a2.SetShake
    v1_9_ = 0.020000
    local new = TweenInfo.new
    v1_11_ = 2
    local Quart = Enum.EasingStyle.Quart
    v1_8_(new(v1_11_, Quart))
end
return v0_4_
