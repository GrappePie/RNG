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
local v0_4_ = "TweenService"
v0_2_ = v0_2_:GetService(v0_4_)
v0_3_ = game
local v0_5_ = "ReplicatedStorage"
v0_3_ = v0_3_:GetService(v0_5_)
v0_4_ = v0_0_.LocalPlayer
local v0_7_ = "PlayerGui"
v0_5_ = v0_4_:WaitForChild(v0_7_)
v0_7_ = script
local v0_6_ = v0_7_.Parent
local v0_9_ = "TextLabel"
v0_7_ = v0_6_:IsA(v0_9_)
if v0_7_ then
    v0_7_ = script
    v0_9_ = v0_5_
    v0_7_ = v0_7_:IsDescendantOf(v0_9_)
    if not v0_7_ then
        return
    end
end
return
