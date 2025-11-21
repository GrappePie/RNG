-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_1_ = script
local v0_0_ = v0_1_.Parent
local v0_2_ = "TextLabel"
v0_0_ = v0_0_:IsA(v0_2_)
if not v0_0_ then
    return
end
v0_1_ = script
v0_0_ = v0_1_.Parent
v0_2_ = script
v0_1_ = v0_2_.Parent
local v0_3_ = "Shadow"
v0_1_ = v0_1_:WaitForChild(v0_3_)
v0_3_ = script
v0_2_ = v0_3_.Parent
local v0_4_ = "Visual"
v0_2_ = v0_2_:WaitForChild(v0_4_)
v0_3_ = v0_0_.Text
v0_1_.Text = v0_3_
v0_3_ = v0_0_.Text
v0_2_.Text = v0_3_
local v0_5_ = "Text"
v0_3_ = v0_0_:GetPropertyChangedSignal(v0_5_)
v0_5_ = function()
    local v1_0_ = v0_1_
    local v1_2_ = v0_0_
    local v1_1_ = v1_2_.Text
    v1_0_.Text = v1_1_
    v1_0_ = v0_2_
    v1_2_ = v0_0_
    v1_1_ = v1_2_.Text
    v1_0_.Text = v1_1_
end
v0_3_:Connect(v0_5_)
