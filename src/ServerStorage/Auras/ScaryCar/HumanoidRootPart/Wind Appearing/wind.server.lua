-- Saved by UniversalSynSaveInstance https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_3_ = "ParticleEmitter1"
local v0_1_ = script.Parent:WaitForChild(v0_3_)
local Particles2 = script.Parent:WaitForChild("Particles2")
local v0_4_ = "ParticleEmitter"
local v0_2_ = Particles2:WaitForChild(v0_4_)
local ParticleEmitter2 = script.Parent:WaitForChild("ParticleEmitter2")
local v0_6_ = script.Parent
local TargetChar = v0_6_.Parent:WaitForChild("TargetChar")
local Humanoid = TargetChar.Value:WaitForChild("Humanoid")
v0_6_ = script.Parent.Parent.HumanoidRootPart.Wheels
local v0_8_ = v0_6_.Miatawheels1
local v0_7_ = v0_8_.AnimationController:LoadAnimation(script.car)
local v0_9_ = v0_6_.Miatawheels2
local v0_10_ = script.car
v0_8_ = v0_9_.AnimationController:LoadAnimation(v0_10_)
v0_7_:Play()
v0_8_:Play()
wheelspeed = function(a1)
    v0_7_:AdjustSpeed(a1)
    v0_8_:AdjustSpeed(a1)
end
v0_10_ = wait(0.100000)
while v0_10_ do
    if 0 < Humanoid.MoveDirection.Magnitude then
        v0_1_.Enabled = true
        v0_2_.Enabled = true
        ParticleEmitter2.Enabled = true
    else
        v0_1_.Enabled = false
        v0_2_.Enabled = false
        ParticleEmitter2.Enabled = false
    end
    wheelspeed(Humanoid.Parent.HumanoidRootPart.AssemblyLinearVelocity.Magnitude / 16.000000)
end
