-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_0_ = game
local v0_2_ = "SoundService"
v0_0_ = v0_0_:GetService(v0_2_)
local v0_1_ = game
local v0_3_ = "TweenService"
v0_1_ = v0_1_:GetService(v0_3_)
v0_2_ = game
local v0_4_ = "ReplicatedStorage"
v0_2_ = v0_2_:GetService(v0_4_)
local new = TweenInfo.new
v0_4_ = 2
local Quart = Enum.EasingStyle.Quart
v0_3_ = new(v0_4_, Quart)
local new = TweenInfo.new
local v0_5_ = 0.500000
local Quart = Enum.EasingStyle.Quart
v0_4_ = new(v0_5_, Quart)
local new = TweenInfo.new
local v0_6_ = 6
local Quart = Enum.EasingStyle.Quart
local In = Enum.EasingDirection.In
v0_5_ = new(v0_6_, Quart, In)
v0_6_ = function(a1, a2, a3)
    local v1_3_ = a2.BlackBoard
    local v1_4_ = a2.GradientBoard
    local v1_5_ = a2.Colorboard
    local v1_6_ = a2.Star2
    local running = coroutine.running
    local v1_7_ = running()
    local v1_8_ = nil
    local v1_9_ = a2.BlackBoardAppear
    v1_9_:Play()
    v1_9_ = v0_1_
    local v1_11_ = v1_4_
    local v1_12_ = v0_4_
    local v1_13_ = {}
    local v1_14_ = 0.800000
    v1_13_.ImageTransparency = v1_14_
    v1_9_ = v1_9_:Create(v1_11_, v1_12_, v1_13_)
    v1_9_:Play()
    v1_9_ = "http://www.roblox.com/asset/?id=12353440665"
    v1_5_.Image = v1_9_
    v1_9_ = 1
    v1_5_.ImageTransparency = v1_9_
    v1_9_ = a2.ApplyLabelColor
    local v1_10_ = v1_5_
    v1_11_ = a1
    v1_9_(v1_10_, v1_11_)
    v1_9_ = a2.ApplyLabelColor
    v1_10_ = v1_4_
    v1_11_ = a1
    v1_9_(v1_10_, v1_11_)
    v1_9_ = a2.ApplyLabelColor
    v1_10_ = v1_6_
    v1_11_ = a1
    v1_9_(v1_10_, v1_11_)
    local fromScale = UDim2.fromScale
    v1_10_ = 1.500000
    v1_11_ = 1.500000
    v1_9_ = fromScale(v1_10_, v1_11_)
    v1_6_.Size = v1_9_
    v1_9_ = true
    v1_6_.Visible = v1_9_
    v1_9_ = a2.PlaySFX
    v1_10_ = "OneMilPlus"
    v1_9_(v1_10_)
    v1_9_ = v0_1_
    v1_11_ = v1_6_
    v1_12_ = v0_3_
    v1_13_ = {}
    local fromScale = UDim2.fromScale
    local v1_15_ = 0.600000
    local v1_16_ = 0.600000
    v1_14_ = fromScale(v1_15_, v1_16_)
    v1_13_.Size = v1_14_
    v1_9_ = v1_9_:Create(v1_11_, v1_12_, v1_13_)
    v1_9_:Play()
    v1_9_ = a2.StarSpinSpeed
    v1_10_ = 8
    v1_9_.Value = v1_10_
    v1_9_ = v0_1_
    v1_11_ = a2.StarSpinSpeed
    v1_12_ = v0_3_
    v1_13_ = {}
    v1_14_ = 1
    v1_13_.Value = v1_14_
    v1_9_ = v1_9_:Create(v1_11_, v1_12_, v1_13_)
    v1_9_:Play()
    v1_9_ = true
    local defer = task.defer
    v1_11_ = function()
        local wait = task.wait
        local v2_1_ = 0.050000
        local v2_0_ = wait(v2_1_)
        while v2_0_ do
            local status = coroutine.status
            v2_1_ = v1_7_
            v2_0_ = status(v2_1_)
            while v2_0_ ~= "dead" do
                v2_0_ = v1_9_
                while v2_0_ do
                    v2_1_ = a2
                    v2_0_ = v2_1_.CreateParticleEmit
                    v2_1_ = v1_3_
                    local v2_2_ = "rbxassetid://8030760338"
                    local v2_4_ = v1_6_
                    local v2_3_ = v2_4_.ImageColor3
                    local random = math.random
                    local v2_6_ = 5
                    local v2_7_ = 20
                    local v2_5_ = random(v2_6_, v2_7_)
                    v2_4_ = v2_5_ / 500.000000
                    v2_5_ = a1
                    v2_0_(v2_1_, v2_2_, v2_3_, v2_4_, v2_5_)
                end
            end
        end
    end
    defer(v1_11_)
    local wait = task.wait
    v1_11_ = 3.230000
    wait(v1_11_)
    v1_10_ = v0_1_
    v1_12_ = a2.StarSpinSpeed
    v1_13_ = v0_5_
    v1_14_ = {}
    v1_15_ = 12
    v1_14_.Value = v1_15_
    v1_10_ = v1_10_:Create(v1_12_, v1_13_, v1_14_)
    v1_10_:Play()
    v1_10_ = v0_1_
    v1_12_ = v1_6_
    v1_13_ = v0_5_
    v1_14_ = {}
    local fromScale = UDim2.fromScale
    v1_16_ = 1.500000
    local v1_17_ = 1.500000
    v1_15_ = fromScale(v1_16_, v1_17_)
    v1_14_.Size = v1_15_
    v1_10_ = v1_10_:Create(v1_12_, v1_13_, v1_14_)
    v1_10_:Play()
    local wait = task.wait
    v1_11_ = 4
    wait(v1_11_)
    v1_10_ = a2.ColorboardAppear
    v1_10_:Play()
    local wait = task.wait
    v1_11_ = 2
    wait(v1_11_)
    v1_10_ = 1
    v1_4_.ImageTransparency = v1_10_
    v1_9_ = false
    v1_10_ = false
    v1_6_.Visible = v1_10_
    v1_10_ = "http://www.roblox.com/asset/?id=1195495135"
    v1_5_.Image = v1_10_
    v1_10_ = a2.ColorboardDisappear
    v1_10_:Play()
    v1_10_ = a2.BlackBoard
    v1_11_ = 1
    v1_10_.BackgroundTransparency = v1_11_
    v1_10_ = a2.SetShake
    v1_11_ = 0.020000
    local new = TweenInfo.new
    v1_13_ = 2
    local Quart = Enum.EasingStyle.Quart
    v1_10_(new(v1_13_, Quart))
    if v1_8_ then
        v1_10_ = v0_1_
        v1_12_ = v1_8_
        local new = TweenInfo.new
        v1_14_ = 0.500000
        v1_13_ = new(v1_14_)
        v1_14_ = {}
        v1_15_ = 0
        v1_14_.Volume = v1_15_
        v1_10_ = v1_10_:Create(v1_12_, v1_13_, v1_14_)
        v1_10_:Play()
        local delay = task.delay
        v1_11_ = 0.500000
        v1_12_ = v1_8_.Destroy
        v1_13_ = v1_8_
        delay(v1_11_, v1_12_, v1_13_)
    end
end
return v0_6_
