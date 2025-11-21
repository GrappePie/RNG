-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiled with the Synapse Z Luau decompiler.
-- NOTE: Currently in beta! Not representative of final product.

local v0_1_ = game
local v0_0_ = v0_1_.ReplicatedStorage
local v0_2_ = "_HiddenRIAPortalsFolder"
v0_0_ = v0_0_:FindFirstChild(v0_2_)
if v0_0_ == nil then
    local new = Instance.new
    v0_2_ = "Model"
    v0_1_ = new(v0_2_)
    v0_0_ = v0_1_
    v0_1_ = "_HiddenRIAPortalsFolder"
    v0_0_.Name = v0_1_
    v0_2_ = game
    v0_1_ = v0_2_.ReplicatedStorage
    v0_0_.Parent = v0_1_
end
v0_1_ = function(a1)
    local v1_1_ = v0_0_
    a1.Parent = v1_1_
end
local v0_3_ = game
v0_2_ = v0_3_.CollectionService
local v0_4_ = "RIAPortal"
v0_2_, v0_3_, v0_4_ = v0_2_:GetTagged(v0_4_)
nil.Parent = v0_0_
v0_3_ = game
v0_2_ = v0_3_.CollectionService
v0_4_ = "RIAPortal"
v0_2_ = v0_2_:GetInstanceAddedSignal(v0_4_)
v0_4_ = v0_1_
v0_2_:Connect(v0_4_)
