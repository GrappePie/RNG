-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- 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

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_3_ = script
local v0_2_ = v0_3_.Parent
local v0_1_ = v0_2_.Parent
local v0_0_ = v0_1_.Parent
v0_2_ = "AuraModel"
v0_0_ = v0_0_:WaitForChild(v0_2_)
v0_2_ = "Constellation"
v0_0_ = v0_0_:WaitForChild(v0_2_)
v0_2_ = "ConstellationMotor"
v0_0_ = v0_0_:WaitForChild(v0_2_)
local v0_4_ = script
v0_3_ = v0_4_.Parent
v0_2_ = v0_3_.Parent
v0_1_ = v0_2_.Parent
v0_3_ = "AuraModel"
v0_1_ = v0_1_:WaitForChild(v0_3_)
v0_3_ = "Constellation"
v0_1_ = v0_1_:WaitForChild(v0_3_)
v0_3_ = "Rotation"
v0_1_ = v0_1_:WaitForChild(v0_3_)
v0_2_ = game
v0_4_ = "TweenService"
v0_2_ = v0_2_:GetService(v0_4_)
local Quad = Enum.EasingStyle.Quad
local InOut = Enum.EasingDirection.InOut
local v0_5_ = function()
    local new = TweenInfo.new
    local v1_1_ = 2
    local v1_2_ = Quad
    local v1_3_ = InOut
    local v1_0_ = new(v1_1_, v1_2_, v1_3_)
    v1_1_ = {}
    local v1_4_ = v0_0_
    v1_3_ = v1_4_.C1
    local new = CFrame.new
    local v1_5_ = 0
    local v1_6_ = 0
    local v1_7_ = 2
    v1_4_ = new(v1_5_, v1_6_, v1_7_)
    v1_2_ = v1_3_ * v1_4_
    v1_1_.C1 = v1_2_
    v1_2_ = v0_2_
    v1_4_ = v0_0_
    v1_5_ = v1_0_
    v1_6_ = v1_1_
    v1_2_ = v1_2_:Create(v1_4_, v1_5_, v1_6_)
    v1_2_:Play()
    v1_3_ = v1_2_.Completed
    v1_3_:Wait()
    local new = TweenInfo.new
    v1_4_ = 2
    v1_5_ = Quad
    v1_6_ = InOut
    v1_3_ = new(v1_4_, v1_5_, v1_6_)
    v1_4_ = {}
    v1_7_ = v0_0_
    v1_6_ = v1_7_.C1
    local new = CFrame.new
    local v1_8_ = 0
    local v1_9_ = 0
    local v1_10_ = -2
    v1_7_ = new(v1_8_, v1_9_, v1_10_)
    v1_5_ = v1_6_ * v1_7_
    v1_4_.C1 = v1_5_
    v1_5_ = v0_2_
    v1_7_ = v0_0_
    v1_8_ = v1_3_
    v1_9_ = v1_4_
    v1_5_ = v1_5_:Create(v1_7_, v1_8_, v1_9_)
    v1_5_:Play()
    v1_6_ = v1_5_.Completed
    v1_6_:Wait()
end
local v0_6_ = function()
    local new = TweenInfo.new
    local v2_1_ = 2.500000
    local v2_2_ = Quad
    local v2_3_ = InOut
    local v2_0_ = new(v2_1_, v2_2_, v2_3_)
    v2_1_ = {}
    local v2_4_ = v0_1_
    v2_3_ = v2_4_.C1
    local Angles = CFrame.Angles
    local v2_5_ = 0
    local v2_6_ = 0.349066
    local v2_7_ = 0
    v2_4_ = Angles(v2_5_, v2_6_, v2_7_)
    v2_2_ = v2_3_ * v2_4_
    v2_1_.C1 = v2_2_
    v2_2_ = v0_2_
    v2_4_ = v0_1_
    v2_5_ = v2_0_
    v2_6_ = v2_1_
    v2_2_ = v2_2_:Create(v2_4_, v2_5_, v2_6_)
    v2_2_:Play()
    v2_3_ = v2_2_.Completed
    v2_3_:Wait()
    local new = TweenInfo.new
    v2_4_ = 2.500000
    v2_5_ = Quad
    v2_6_ = InOut
    v2_3_ = new(v2_4_, v2_5_, v2_6_)
    v2_4_ = {}
    v2_7_ = v0_1_
    v2_6_ = v2_7_.C1
    local Angles = CFrame.Angles
    local v2_8_ = 0
    local v2_9_ = -0.349066
    local v2_10_ = 0
    v2_7_ = Angles(v2_8_, v2_9_, v2_10_)
    v2_5_ = v2_6_ * v2_7_
    v2_4_.C1 = v2_5_
    v2_5_ = v0_2_
    v2_7_ = v0_1_
    v2_8_ = v2_3_
    v2_9_ = v2_4_
    v2_5_ = v2_5_:Create(v2_7_, v2_8_, v2_9_)
    v2_5_:Play()
    v2_6_ = v2_5_.Completed
    v2_6_:Wait()
end
local v0_7_ = wait
local v0_8_ = 3
v0_7_(v0_8_)
local wrap = coroutine.wrap
v0_8_ = v0_5_
v0_7_ = wrap(v0_8_)
v0_7_()
local wrap = coroutine.wrap
v0_8_ = v0_6_
v0_7_ = wrap(v0_8_)
v0_7_()
