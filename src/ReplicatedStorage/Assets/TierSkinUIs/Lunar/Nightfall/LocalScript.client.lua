-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_1_ = script
local v0_0_ = v0_1_.Parent
local v0_3_ = "TextLabel"
v0_1_ = v0_0_:WaitForChild(v0_3_)
local v0_2_ = v0_0_.Text
v0_1_.Text = v0_2_
local v0_4_ = "Text"
v0_2_ = v0_0_:GetPropertyChangedSignal(v0_4_)
v0_4_ = function()
    local v1_0_ = v0_1_
    local v1_2_ = v0_0_
    local v1_1_ = v1_2_.Text
    v1_0_.Text = v1_1_
end
v0_2_:Connect(v0_4_)
